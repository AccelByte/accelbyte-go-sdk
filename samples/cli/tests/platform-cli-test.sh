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
    --body '{"context": {"item": {"appId": "1bqUW9jwrjKRrgZb", "appType": "DLC", "baseAppId": "fMQ5W5MdkjIRgP6R", "boothName": "c6XcmBFjS0RX8Qqp", "boundItemIds": ["DAIX6NyTydVqyj40", "Avf78cbxGZlGvuyX", "ezoXSfa0KOWnd0I8"], "categoryPath": "AlJKT4NhYWHuAQ7D", "clazz": "kHiEhXMIFi2F2arg", "createdAt": "1986-08-18T00:00:00Z", "description": "SC2K8ytvyxr1d1RM", "displayOrder": 28, "entitlementType": "DURABLE", "ext": {"GXEFHsZR5AxySELW": {}, "moyPIcJU6tIBvr3t": {}, "r1S0zXoKThof10Lp": {}}, "features": ["k08MZ6ahUBkwqN6W", "1bQCl3m2cuzgWi3r", "aoUGkU22h8a2Bm46"], "fresh": false, "images": [{"as": "WMvQ8zawHO8rvh4P", "caption": "F498FzA1e6R2xDVZ", "height": 71, "imageUrl": "NKlpk6G70QorPrvJ", "smallImageUrl": "O9d0TiCjfKv36c71", "width": 77}, {"as": "nEC9IctsrqeQZz01", "caption": "SYjEobov4RDKTwNI", "height": 59, "imageUrl": "NptX1iZ83yXoJiMJ", "smallImageUrl": "ZmkL5Sm1gvEuK3hm", "width": 53}, {"as": "Y3lw8o85M7cWrsPs", "caption": "uMAgj453PRMin03U", "height": 43, "imageUrl": "Hv0RO1sPtMVBqx97", "smallImageUrl": "GZe0mNCBd5ivAoqC", "width": 33}], "itemId": "xxDbxNNxiQeaB9f1", "itemIds": ["iJO4hrt3g2veXDsQ", "GHnjBVPwCTNXhVPZ", "xRl7UcZ9LJNH2HCA"], "itemQty": {"keCThYZEkuPtrC95": 79, "o0ADrqpRCNGuAIbK": 97, "u40TN5SZxCv5KT6X": 66}, "itemType": "EXTENSION", "language": "E7l3AVlesqw4qqha", "listable": false, "localExt": {"rKud05yclXpupZwb": {}, "UXMLQBo4DuXeWSiF": {}, "0XLtSbjxEZehGZ2A": {}}, "longDescription": "vpWWIVm7RGSlXWPN", "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 12, "duration": 8, "endDate": "1974-01-06T00:00:00Z", "itemId": "nObErRBw7j8hURAw", "itemSku": "fu1DWXwD7HUOMMxt", "itemType": "1toZ5JEMMo2hBQ1n"}, {"count": 75, "duration": 19, "endDate": "1984-01-22T00:00:00Z", "itemId": "gboTkaCHiB75hZql", "itemSku": "rvjFfXSGWEyrVe5U", "itemType": "UPOnw8FVyl9hLLBA"}, {"count": 52, "duration": 16, "endDate": "1990-07-10T00:00:00Z", "itemId": "DJ3ZAnVIUZJKkPCS", "itemSku": "fbnGpxcuYMeojKp2", "itemType": "nUvAC2XW0NQL0d5N"}], "name": "3xJ0G8jM9LveZxK7", "odds": 0.6306290685218962, "type": "REWARD", "weight": 63}, {"lootBoxItems": [{"count": 53, "duration": 42, "endDate": "1991-07-17T00:00:00Z", "itemId": "LcMXNyfWZwJYZoLl", "itemSku": "5HIR4dH2PNYGHAHS", "itemType": "jwBG8UVKxu8IhrZ7"}, {"count": 32, "duration": 69, "endDate": "1990-04-27T00:00:00Z", "itemId": "XTi3HpRJfCzSoG3o", "itemSku": "m6UyaT5jag2Q1vUE", "itemType": "o0Fdh8M2wUCAHnYC"}, {"count": 83, "duration": 10, "endDate": "1986-03-08T00:00:00Z", "itemId": "DYddfHxSgAO00hqb", "itemSku": "nFqFbbZ2b3ldGzyi", "itemType": "IC1kKHDDjN7ylm9Z"}], "name": "YWa7vyjcX9Oocppy", "odds": 0.7217322591663758, "type": "PROBABILITY_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 45, "duration": 89, "endDate": "1980-02-25T00:00:00Z", "itemId": "cab3lqXUXY0VIqJq", "itemSku": "I4x7qMgWpIFdFBBz", "itemType": "2OefPMyTkutTUaoD"}, {"count": 80, "duration": 92, "endDate": "1982-10-04T00:00:00Z", "itemId": "NrnhH5fn7A8rEMrY", "itemSku": "JBfqeGFBn4a6hmfZ", "itemType": "czJWZgfchGkRqwJG"}, {"count": 10, "duration": 9, "endDate": "1987-07-26T00:00:00Z", "itemId": "LidIdpjpSB3dossl", "itemSku": "hFpGXPWPioZ3sEf5", "itemType": "WnpJPNZmFMC4x8ib"}], "name": "tvtXzgENFkGVEkZa", "odds": 0.45532414598161564, "type": "REWARD_GROUP", "weight": 92}], "rollFunction": "DEFAULT"}, "maxCount": 7, "maxCountPerUser": 25, "name": "qMqc3NuR48fIjtc0", "namespace": "UN1PSzplDtcqaW2k", "optionBoxConfig": {"boxItems": [{"count": 68, "duration": 83, "endDate": "1974-12-09T00:00:00Z", "itemId": "dZGx4dHs7bc8ELU3", "itemSku": "mmqTDNzK1Z0OzPGO", "itemType": "CBkk1jDa0xtkerDZ"}, {"count": 37, "duration": 19, "endDate": "1988-05-13T00:00:00Z", "itemId": "TSCyZcBh5USCMWTB", "itemSku": "jwmrjXoRbgLozqzD", "itemType": "XgFrdzDdAl21td9z"}, {"count": 54, "duration": 38, "endDate": "1987-03-20T00:00:00Z", "itemId": "Q3ASG35ESBIEYvuW", "itemSku": "nex0sp2vCPEBXzTm", "itemType": "Cgj8sofetUCINTku"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 37, "comparison": "isNot", "name": "zAYhSBATbYssine9", "predicateType": "EntitlementPredicate", "value": "ohS9sBktTeC0LCTB", "values": ["j9VC3CrANjqFz7E9", "hxQef18WyUPte7EC", "rZe3oUHrWGizbGuz"]}, {"anyOf": 1, "comparison": "isLessThanOrEqual", "name": "wDWhdEzO7903QkQ5", "predicateType": "SeasonTierPredicate", "value": "iI21FUBiaGSHh0L0", "values": ["YX4UUeijwWq1jQbg", "VdtsLBJz4WvjJYwJ", "qIWZBVOLEpLhLg8S"]}, {"anyOf": 64, "comparison": "isLessThanOrEqual", "name": "11xd6uVV0RCA812Q", "predicateType": "SeasonTierPredicate", "value": "lLkR2HfOehUTSvdj", "values": ["FaGVaUYbi0I6EGwt", "MZ1kpXd4lPn4h3gt", "IYgjBvbNC1KSg8R3"]}]}, {"operator": "or", "predicates": [{"anyOf": 95, "comparison": "isLessThanOrEqual", "name": "4u2nLsC9A9Bc2TUB", "predicateType": "SeasonTierPredicate", "value": "lljFzoxc1515QRoI", "values": ["AtQ8uPASiB5gSFNH", "1TBQXcjJIuoKKsMy", "Mu4pYOIK75GY9ZbQ"]}, {"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "4Pp83b8xMhmjWbrG", "predicateType": "EntitlementPredicate", "value": "QBFv8EqpZ4rJ3H4Y", "values": ["VDkKfouguw6tesSU", "87OzHFTbhkn5xxsF", "nYzsD2C6Xy3xOzxE"]}, {"anyOf": 39, "comparison": "includes", "name": "zek2cjfIbrDNX3fv", "predicateType": "EntitlementPredicate", "value": "ze48iRzD7yv8Q7n7", "values": ["z8ygqmvek3a6fT0v", "5sqDWrHTorRryfOu", "qIpL3m3CycjBu6im"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "comparison": "isLessThan", "name": "viIpRyg7I1nSQr62", "predicateType": "SeasonTierPredicate", "value": "xAuM15ggDT79cQPN", "values": ["V29fG56d3ToqPW9l", "QP0BXvyRFtd2E1ZO", "xuI065lAzxsrjVcR"]}, {"anyOf": 31, "comparison": "includes", "name": "6U9p0BdE2bvEj5RF", "predicateType": "SeasonTierPredicate", "value": "N3rmEBazGzO6hlxE", "values": ["dPZFNIeLNMkuNdxz", "OxJ3CYdDI8w8ckB3", "N47DD3OrSyAOaOxK"]}, {"anyOf": 92, "comparison": "isLessThan", "name": "SEWN5G3tYigcG81l", "predicateType": "SeasonTierPredicate", "value": "FyDRG2yFgMgDCla1", "values": ["YuPx6KELkOag2cA2", "ny4bkE1NLu4iWZMj", "iweFnGbm5vyXVMjb"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 18, "fixedTrialCycles": 17, "graceDays": 80}, "region": "JaXZtE2ZgLB2DXrQ", "regionData": [{"currencyCode": "tS11kHhaMMT0o4YC", "currencyNamespace": "GRLd8Mru2Av6s89v", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1997-02-23T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1999-02-10T00:00:00Z", "discountedPrice": 62, "expireAt": "1995-03-16T00:00:00Z", "price": 15, "purchaseAt": "1999-10-14T00:00:00Z", "trialPrice": 17}, {"currencyCode": "oHhmXLmBi94WuMIm", "currencyNamespace": "nXqtkaQ4Mqbocn8R", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1994-06-08T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1984-11-14T00:00:00Z", "discountedPrice": 60, "expireAt": "1997-06-10T00:00:00Z", "price": 45, "purchaseAt": "1996-04-21T00:00:00Z", "trialPrice": 43}, {"currencyCode": "cm2rwXxHbyfAujIO", "currencyNamespace": "h47V65OepMNDNruh", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1991-09-25T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-01-03T00:00:00Z", "discountedPrice": 36, "expireAt": "1995-03-16T00:00:00Z", "price": 8, "purchaseAt": "1979-07-01T00:00:00Z", "trialPrice": 97}], "saleConfig": {"currencyCode": "W0tXwzE1P4hgTBlD", "price": 51}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "nuavZe6Trmgd7gS3", "stackable": false, "status": "INACTIVE", "tags": ["1r4jx0bBVfgPVigf", "4hIg0DkxiwMbDRiB", "QLA2ext1mcz7PBu4"], "targetCurrencyCode": "kH4wojFuxz6mQwjF", "targetItemId": "gUskV2NOymW4H2TE", "targetNamespace": "oqyEjMALU4FmfN31", "thumbnailUrl": "R7YBGTK04vdihIml", "title": "IFuVNZ1PgIR0hOvQ", "updatedAt": "1971-09-25T00:00:00Z", "useCount": 61}, "namespace": "KF9TxB12wQMJaE6f", "order": {"currency": {"currencyCode": "IRMhsasyBluc1ojr", "currencySymbol": "E7toIKjDw5MckMUw", "currencyType": "REAL", "decimals": 47, "namespace": "lOm1KVJrmVj8qfDa"}, "ext": {"oe5LtqHm8NF0tmFr": {}, "6c1RnWGC4A4A6A68": {}, "6J5OpG3yG40txu6L": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "CyKCg3xt7Gc8tYRM", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'W8UR3h8wANmMvkkc' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'A7bvZQJmw8W1lzRR' \
    --body '{"grantDays": "PYRbXecPksUYgRGa"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'qja3ylq1KRh7Uxn7' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'EXa57vjJtG86yGxf' \
    --body '{"grantDays": "ZOmTkmOvh2txRAYu"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "w6cXK6Bl27VIP3Ck", "dryRun": true, "fulfillmentUrl": "NEevTnqgnRPDtrDG", "itemType": "OPTIONBOX", "purchaseConditionUrl": "DGoONGvkVtDMMb5V"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Z5AaOJ6dEiFs7E28' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 't5E8hANnw2qeUSmU' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'tp8WPGBXtrmHo2Cp' \
    --body '{"clazz": "3mIYxFbrfIEeeRoY", "dryRun": true, "fulfillmentUrl": "aibsGm2lZ06tW6OW", "purchaseConditionUrl": "4kyNwhWxSNa17n3C"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'ZD5RtjxzWoRSw2Ih' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name '4NKVa02johi3FbXt' \
    --offset '39' \
    --tag 'ApYGxNJsnevrEVtb' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tA1Eox9qPLDhtfSN", "items": [{"extraSubscriptionDays": 39, "itemId": "aCJMs5JQusnw0VER", "itemName": "WX8F9wWTVEKijw3j", "quantity": 38}, {"extraSubscriptionDays": 57, "itemId": "hdWw7N1Jbk1h4VCx", "itemName": "tebRwmpUyBsR2zZC", "quantity": 72}, {"extraSubscriptionDays": 67, "itemId": "QlYwSQHvdXYFWZtx", "itemName": "63ekEPsgaiTgMA0y", "quantity": 76}], "maxRedeemCountPerCampaignPerUser": 6, "maxRedeemCountPerCode": 2, "maxRedeemCountPerCodePerUser": 49, "maxSaleCount": 46, "name": "1U9nUWydgDu8j707", "redeemEnd": "1981-02-25T00:00:00Z", "redeemStart": "1977-04-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["LjU6xsoFVk81ry4Y", "jzjVTW6IGROTRfhL", "Cf9tZGz63l5DXLsp"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'v0H7iF4AyUY3Uvl4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'VvxiOqO6kuTJxqFB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NjscMul4e9jdWdPE", "items": [{"extraSubscriptionDays": 14, "itemId": "V3EhfMROxi8WUKWs", "itemName": "HEIy5P3TS80hwCju", "quantity": 25}, {"extraSubscriptionDays": 90, "itemId": "yaTdBB7t9HJCJRUO", "itemName": "wHgdB4vOSMPbS9C2", "quantity": 36}, {"extraSubscriptionDays": 10, "itemId": "w42J1StcOTtyoLEJ", "itemName": "ztewqVgE3KK7ZPrk", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 70, "maxRedeemCountPerCode": 91, "maxRedeemCountPerCodePerUser": 18, "maxSaleCount": 39, "name": "xV6oKoHZCirie342", "redeemEnd": "1997-03-17T00:00:00Z", "redeemStart": "1974-12-05T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["BhlseBoUgvB67iPN", "91p3vs0Zn2u6StcP", "R9Tz5MoD2sH8FPgu"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'gqBNsVpMIleOuxz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'CquJg5DSa2dw1pJx' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'dyhL0DjBmh99ijLZ' \
    --body '{"categoryPath": "XjhzP8YxqyoVwuL8", "localizationDisplayNames": {"mrYbF4ULrmKXSBqR": "RpNTIzO0RSnLjLWU", "MgibHeHj0BotqU0c": "X85sbxJ4gcrNfAgO", "APiVeCwnH1iwHecI": "2u42vHhJghhnn7Hz"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '2kZmewhKDzDUv5ZL' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'ja3YNbyStXuMvMDp' \
    --namespace $AB_NAMESPACE \
    --storeId 'fecRxGtJNUslYIuT' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'tnaEm8zr58z909lg' \
    --namespace $AB_NAMESPACE \
    --storeId 'oPWmXlpv4CHNg3bB' \
    --body '{"localizationDisplayNames": {"RdtGGXbGk7MT4zpw": "ZiIlTyYKxns84g6A", "5ApRDNLC7vPLK5c2": "nizqWBNSwCfRn6Ql", "NX0OpTziPlXsHknt": "7PUfvsWr6MnaSM0s"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'bZuuNCtqCUxaXIpe' \
    --namespace $AB_NAMESPACE \
    --storeId '7PBGSONzT2V1027h' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'VhztVbNenXfv8rhy' \
    --namespace $AB_NAMESPACE \
    --storeId 'tZ5lifKFh6jOZu6Z' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'CjlcK3VnKI7CcLnM' \
    --namespace $AB_NAMESPACE \
    --storeId 'a18wrX3tbgGW00sX' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'YvtvGorMWdkN8KyL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '87' \
    --code 'BwzFYKC7s3lRQTZe' \
    --limit '79' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'MS0iDVZewbbcE03q' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 76}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'T5GiWPAFLD4BaxNx' \
    --namespace $AB_NAMESPACE \
    --batchNo '4' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'pqVhCBgkWYvfaOTh' \
    --namespace $AB_NAMESPACE \
    --batchNo '31' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'rlM0rPblBEh9VMWy' \
    --namespace $AB_NAMESPACE \
    --batchNo '67' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '9sKvNRGaPEr3D9oN' \
    --namespace $AB_NAMESPACE \
    --code 'CJZlF9vQeiqdtN4y' \
    --limit '5' \
    --offset '58' \
    --userId 'CSflnZ371dOBDLvj' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code '3Wg7K5ua0hNgF09M' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '7yWmRWeI8u61EzIH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'zaZmgLC4dBCfTCpG' \
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
    --body '{"grpcServerAddress": "Z96qRtRVWm1uOzkK"}' \
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
    --body '{"currencyCode": "fhL4lntUVxrjoxVi", "currencySymbol": "CLcR6uqTXBREnD0B", "currencyType": "REAL", "decimals": 60, "localizationDescriptions": {"DpF5nY0mGu01YzNo": "JvN9K1ezz7907GsA", "OrwhWcaYjSSIkMiB": "kTJ5GvVbwZ2kh1PM", "YEqLD7a365PijB7c": "tm7U6hkHzQzSCEGg"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'k3i2K1wzY29JhShO' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ehJI0zUABFsR4SKp": "2UtYOS75WBgAbqMP", "yldOAiBc8OmWP8du": "ZLB2PdRm1QqTgmGC", "rb47mwAZ3evxTRiw": "Ai4j6DaP8JtjJd7g"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'u6xmRHLpzZxtskD6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'WfkBGIrrwlp8c7jc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '9DVHu3h1nXRJPO6k' \
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
    --body '{"data": [{"id": "udMlZCCuiIwwoDsv", "rewards": [{"currency": {"currencyCode": "hg3TaanGO03K4BXU", "namespace": "e15dKhi0VrAYGasr"}, "item": {"itemId": "AgbMcNhE10LecAig", "itemSku": "NOB6QjWY9Wl2yC7t", "itemType": "FdDKjLGVspiAaV5Z"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "YN9IFVmd54euOmkJ", "namespace": "2bQuX1izuhVirsbr"}, "item": {"itemId": "L73DJyRMfLUed8Uu", "itemSku": "0X76XmydavumLRXU", "itemType": "qlBG4coGaPVZU596"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "SWCyNWMJIrsDgfLL", "namespace": "MFcZbWPf2cEyJn6P"}, "item": {"itemId": "E2Hb4byCm5hiOzsf", "itemSku": "MxSFAFgoBZsCGfCs", "itemType": "qSTjSOsxkeZvrbvC"}, "quantity": 93, "type": "CURRENCY"}]}, {"id": "ulV2ovJKRWBiohsv", "rewards": [{"currency": {"currencyCode": "tVLo20BuA1cWXXhh", "namespace": "CSZ91KA3gFIC4Gxq"}, "item": {"itemId": "8ZDgT4IIyNhBoPJ2", "itemSku": "azDiiaRyfA0ZksSH", "itemType": "3xlKQiULbS8raRid"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "ZuJXekjme9Xm4aMr", "namespace": "QB5CHoZiDq9dUGzW"}, "item": {"itemId": "p5YxUVif0RsIocl1", "itemSku": "cV56lrlomeYFYk66", "itemType": "k2lduc7dzvHZPXnv"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "nguoVjpW3QWBy5ys", "namespace": "u0kuTVzvcHhPriTb"}, "item": {"itemId": "ta16oKmuk9mGqg10", "itemSku": "QKJr4cnPgiDBVTQe", "itemType": "C7knwJQ5jIDnJTCv"}, "quantity": 0, "type": "CURRENCY"}]}, {"id": "hlC6AzE68dPcbxCg", "rewards": [{"currency": {"currencyCode": "zlsDy2p4wRgxPOWU", "namespace": "r04iftT73KBSMNhN"}, "item": {"itemId": "Nq2D4fQZTK0jBsbR", "itemSku": "YPAnp5foPiJ9Ngpk", "itemType": "DA3vIa4PA1qh6BcQ"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "56D4Kl6wRNPdJqBx", "namespace": "BZDFds0ZntxT7VkK"}, "item": {"itemId": "V43EDkKV0IlDYkeF", "itemSku": "hJkvPSBdjcprtzCt", "itemType": "lteZE3QCugdfznHQ"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "EyE2Cb0wow9xTdh9", "namespace": "nVmrnHZin3YBCRzc"}, "item": {"itemId": "Od5uQ6qvChj5qAyI", "itemSku": "FhjMYT7PRusWzMhQ", "itemType": "4nzJi3Ze5j7Ra7BY"}, "quantity": 71, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"QlNOlevoLtgJuAZD": "TiPvAZSvYRHLB32Q", "qBtwBbXm091NRaT3": "YIGpkJwGv2NcKjGO", "tcrZSGlSXCCrbMO0": "cNDjteZQTNrZ9I7I"}}, {"platform": "PSN", "platformDlcIdMap": {"DVN1l0t3OLctIKgq": "Rj1nfLg7smAyNPKy", "M2Xi6gNfNj0Vi5My": "feBzoATha7S4Y2iV", "Z1KVqHo24gJAdnNr": "zR44tMODd3upbbA4"}}, {"platform": "PSN", "platformDlcIdMap": {"VcgQKPWFahzfyb9y": "DLqoPkSFImriAqjM", "yF7EKlZ74FUC3Tad": "RXSMbSMPovzC0DhV", "3AHObu9NjotQNPcR": "8J5V6cLpSDzDHpIH"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'JR3iraH6ijcXJXMK' \
    --itemId '["Hy4whKRhXqgbho3k", "BHgUMy3kFkKWUJfA", "oqEksByNXIu0FwBE"]' \
    --limit '15' \
    --offset '78' \
    --userId 'jON5TI9BllHZqbAK' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["XnZb8lkqfryZzt2u", "poXgF9OcuqLvAbzm", "DWhOGERzEaeJYMRt"]' \
    --limit '50' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1975-12-15T00:00:00Z", "grantedCode": "XZ5QoUL7GWQ3PCfL", "itemId": "houdgLsYaex8VrwW", "itemNamespace": "lKUYwmH7xQySMPJd", "language": "enX_375", "quantity": 58, "region": "d9jioNAPqFzStrI4", "source": "REWARD", "startDate": "1986-12-27T00:00:00Z", "storeId": "fDsa8lREpSknZ8At"}, {"endDate": "1985-05-08T00:00:00Z", "grantedCode": "THu3hPL4kXq7ixeZ", "itemId": "ybOA2UKKKmFfgd1W", "itemNamespace": "3LZW926TgmbfoEQA", "language": "xZ-957", "quantity": 91, "region": "YBl5RIXi2iFYmL94", "source": "REWARD", "startDate": "1982-02-16T00:00:00Z", "storeId": "oBjVtVi22oV8HJ5M"}, {"endDate": "1974-08-24T00:00:00Z", "grantedCode": "BRcPv3coU6azWEBb", "itemId": "NR75qnFlMDQ18NKh", "itemNamespace": "XtzpCEcjEGqSMSpQ", "language": "negX-HYkZ", "quantity": 81, "region": "MUwrj8pay6u0J0KU", "source": "REDEEM_CODE", "startDate": "1997-01-27T00:00:00Z", "storeId": "4dm99ywUlcABVBYz"}], "userIds": ["r9oPkkxd2gP4Yjr9", "jt0e9do9ohpAh7PN", "PppUa9WYwlWeRlhd"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["o1t1jX60ZFztItuc", "1HbCbUU3dZqzpbUU", "VNmu1n3sW8rqeEVu"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'lrho37zioV4qs3yE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '93' \
    --status 'FAIL' \
    --userId '9hSk532SczxckRpu' \
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
    --body '{"bundleId": "sFFAqZKpw0NJT2kg", "password": "817w08RtnY9GZDPh"}' \
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
    --body '{"sandboxId": "EA72qXvGwftUyCVy"}' \
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
    --body '{"applicationName": "BFomcoiLq0OyvY7c", "serviceAccountId": "nsXOsVYjBBWBtl77"}' \
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
    --body '{"data": [{"itemIdentity": "owzZufIJpV4XhnMf", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"614QCozxL3h3LhNW": "uYoNao057hYbACJ3", "UHmZ9k1faYLooxtW": "fwhjNGZTIAcnJzfm", "osUxJ36B7X03gMI4": "kLzrHEHQKrqWULLC"}}, {"itemIdentity": "bAWvNbEVo2fPrcps", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"vMiPGJ6Wlk739Rro": "tqjDjNpgcFi9VxAQ", "Supi3WzsvMeYOUkH": "s1yvHhJcp4Y8G11P", "YEkBPKxJEfOyLseB": "mbR498L3IQiWnsYZ"}}, {"itemIdentity": "GZf0ArSbzZJ8qkCJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"qGPDjvB88HBPEAge": "lCYYlA5LXIL2WGPB", "v1kSbvJSpfrw9bed": "Xr4fpYH6PmwGgqVc", "PE0t7unlqfxrNaOP": "kI4ssvHEOz7ZSEPE"}}]}' \
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
    --body '{"environment": "asT1hVzMLitcR3Xk"}' \
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
    --body '{"appId": "q6h9NWWXxqIORIXZ", "publisherAuthenticationKey": "lfhNsH8uH7Wm7Apv"}' \
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
    --body '{"clientId": "wN28oYXcpMNgSgVJ", "clientSecret": "4S6RTK6CdhwEzfBI", "organizationId": "3ncRHR9hDrLF8IHh"}' \
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
    --body '{"relyingPartyCert": "oh6v9Pc1GKzo0Kfg"}' \
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
    --password 'CRWVmvVOxCidyjWr' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'ug0zODPEQCy1wP3U' \
    --itemId 'DapIPjnRlwPdhQEi' \
    --itemType 'MEDIA' \
    --endTime 'XDVpOEVffvd4xHew' \
    --startTime 'TZhxJRYRsqkaMb9j' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'nAFt70x7J7JJxaVd' \
    --itemId 'z2L0iR3WrsdOwScG' \
    --itemType 'MEDIA' \
    --endTime 'VFuBkKZo3eTDzbMV' \
    --startTime '3NsGCkmQtzob77Yi' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'afL2Tf6Dk9qyiwrf' \
    --body '{"categoryPath": "Gt5hyWLZB3GSuzJ5", "targetItemId": "QHWm9bCQA7FVdgSd", "targetNamespace": "u7kJYdjVafTXozg2"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '1DsU29IQuC9aQgm9' \
    --body '{"appId": "7vfbilkBFrdf7rao", "appType": "DEMO", "baseAppId": "zXCHWXXsthYsQ5xZ", "boothName": "zibOFpt81yREa2zZ", "categoryPath": "pDVB8ts3KZ3wuXpw", "clazz": "5GZH9DmYaGGxlxvR", "displayOrder": 79, "entitlementType": "CONSUMABLE", "ext": {"6SfPaZoiF945Ly4k": {}, "bnjgRhbThjOlksmM": {}, "dH6AymAyuoDuCIvi": {}}, "features": ["vOi3uF2KrEyMvXJF", "roXVJBlwpzqiIEB4", "909lVGETSBuAsmzd"], "images": [{"as": "6yztppURrnxBa3Yt", "caption": "cAej0mYE5TqY2soL", "height": 44, "imageUrl": "QAQONAVqS4HWsrRC", "smallImageUrl": "sHo15PiisXagjvTJ", "width": 7}, {"as": "3FKsUWIl8JIQUwaH", "caption": "8rdyVQ1jxmpWJIxo", "height": 57, "imageUrl": "aPJiCDZnxwh5QdWK", "smallImageUrl": "X3tSfw1e8bodLelK", "width": 89}, {"as": "NLlTPiEwNLf7BEoe", "caption": "u7g7QOVjEa7yqU7s", "height": 9, "imageUrl": "DtoIJAyS41gRFwUP", "smallImageUrl": "jNMVGxzfeAMDSAQf", "width": 21}], "itemIds": ["G316L7EyA7VPmLbW", "qXZmsVfP1H69wj5T", "hN1SvKKigdyxTnRI"], "itemQty": {"M186lyGzVHJ2eQgT": 4, "z3C0owApl0lZPNCj": 1, "WNGiJCuQeKsTyA5j": 51}, "itemType": "MEDIA", "listable": false, "localizations": {"GL5d3ZxMD36Nr1X3": {"description": "jHyPf4Rv84D0U4ZX", "localExt": {"ZaIRc5n2U4Gw4wWH": {}, "Elioo31lLUCI8i7X": {}, "rBYaAjgpxXmH6vWH": {}}, "longDescription": "9BVAvz3rvqgMnIsC", "title": "yAk1y4u1XCvYljv4"}, "j5jIJKuwMHkIJiXQ": {"description": "QO8OPoE6sYr2be7v", "localExt": {"Rl6mPe45G23Asi8l": {}, "NDbADRQkrrTWOfis": {}, "yzGYMSm1NgRXTUcD": {}}, "longDescription": "GuGnTPlZ1GlasBwT", "title": "U0P81U6AzNQCRw3X"}, "Vch0gg3UtFwMW8Vk": {"description": "L1VlIyIsqCINbkkt", "localExt": {"IPyfT0avtMFzC9er": {}, "R8nM6mkQppttVguZ": {}, "ZCVdntveR4kwlbUf": {}}, "longDescription": "fMJquTo4d6e74ifK", "title": "W53QlKRviq0cokD0"}}, "lootBoxConfig": {"rewardCount": 18, "rewards": [{"lootBoxItems": [{"count": 72, "duration": 78, "endDate": "1990-01-29T00:00:00Z", "itemId": "8NtgqVGAMKkqfIGQ", "itemSku": "U7IDy0QwkZkBIOuH", "itemType": "4cyrIfttE61V0XT5"}, {"count": 81, "duration": 75, "endDate": "1998-12-24T00:00:00Z", "itemId": "hlul5lQO3xIh2AXp", "itemSku": "eE6qGuZUUkztkuV6", "itemType": "66Dtc6tH7tRHfO79"}, {"count": 10, "duration": 67, "endDate": "1979-04-11T00:00:00Z", "itemId": "xwV0ktiPpdIU6uqN", "itemSku": "ObbJqIEJEeYzSrAP", "itemType": "v3T1L77FSCMpZs7g"}], "name": "mi4n7K2g5RfAMGqF", "odds": 0.936126643981907, "type": "REWARD", "weight": 25}, {"lootBoxItems": [{"count": 52, "duration": 50, "endDate": "1996-11-08T00:00:00Z", "itemId": "3cwZ2cHDmD9MDRkw", "itemSku": "tZ4vYj5qV7F5jZyI", "itemType": "krJhWq28GPZs7jJJ"}, {"count": 99, "duration": 26, "endDate": "1975-08-06T00:00:00Z", "itemId": "KoKgiZpkdxmTv02u", "itemSku": "ZfTzPp5f0FySeHXF", "itemType": "E785uHsQ1cgjrP2t"}, {"count": 46, "duration": 21, "endDate": "1998-05-08T00:00:00Z", "itemId": "yiSoaDmuUdtDo0l8", "itemSku": "qXNmYg2RrOkmoQWc", "itemType": "aIO3piV7vUSHPoH8"}], "name": "iRSeJESLcgOBm4x5", "odds": 0.2262865534549956, "type": "PROBABILITY_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 45, "duration": 86, "endDate": "1986-06-18T00:00:00Z", "itemId": "IKdzHxwgefoDTrtq", "itemSku": "AhxZPDn7iZyt5jb2", "itemType": "zLwnHgb8xzjtPZCq"}, {"count": 16, "duration": 22, "endDate": "1988-10-02T00:00:00Z", "itemId": "MTje6goyQAta8Aya", "itemSku": "yAr5tEgOChnBYdy1", "itemType": "MS2DMWJFOoyelafV"}, {"count": 26, "duration": 62, "endDate": "1989-08-08T00:00:00Z", "itemId": "Di5utktJ8oLbf5ms", "itemSku": "IQxvufnVz16fqMI4", "itemType": "01U6kpJU5Da2fOEi"}], "name": "mjIe5phv0toYrW2W", "odds": 0.6652109845895012, "type": "REWARD", "weight": 17}], "rollFunction": "CUSTOM"}, "maxCount": 5, "maxCountPerUser": 90, "name": "Yl98zMHJ7tMm1qG8", "optionBoxConfig": {"boxItems": [{"count": 6, "duration": 48, "endDate": "1998-08-31T00:00:00Z", "itemId": "EQ2BjS7sOmx6Q746", "itemSku": "dGBNfxeXSj3tz414", "itemType": "FhSbdbESqIIaScad"}, {"count": 78, "duration": 34, "endDate": "1983-11-05T00:00:00Z", "itemId": "pr9YL7MzNCa9kXV0", "itemSku": "ntoK0TCb3c2to3Ks", "itemType": "593KwAPLXToPB33v"}, {"count": 13, "duration": 67, "endDate": "1998-05-30T00:00:00Z", "itemId": "YhaFzeQGTjMR4BRf", "itemSku": "Ajkjg7FrRE90SvIR", "itemType": "coq5vOEtSj7b3pn7"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 0, "fixedTrialCycles": 90, "graceDays": 47}, "regionData": {"CDUFjQcBSkemoWRu": [{"currencyCode": "J1D2nO7QTT4mV334", "currencyNamespace": "hPVJa5xR0F5Sh713", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1974-02-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1971-04-15T00:00:00Z", "expireAt": "1990-10-08T00:00:00Z", "price": 86, "purchaseAt": "1989-07-09T00:00:00Z", "trialPrice": 36}, {"currencyCode": "PfF7qjNWJWMYiGWv", "currencyNamespace": "77hvRhOhJZ7kp927", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1972-06-02T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1996-03-20T00:00:00Z", "expireAt": "1985-10-09T00:00:00Z", "price": 39, "purchaseAt": "1997-12-08T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Azyl3Gl374c9rbXP", "currencyNamespace": "hfwBZ8XhL7V6EG1p", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1978-07-10T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1980-10-08T00:00:00Z", "expireAt": "1996-03-16T00:00:00Z", "price": 80, "purchaseAt": "1978-08-24T00:00:00Z", "trialPrice": 15}], "BkXqWvfM7I033TWz": [{"currencyCode": "ZAtBZsraetNeXa5R", "currencyNamespace": "fw08G044r2IBLhQm", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1985-03-09T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1979-02-26T00:00:00Z", "expireAt": "1989-04-14T00:00:00Z", "price": 32, "purchaseAt": "1978-12-16T00:00:00Z", "trialPrice": 67}, {"currencyCode": "PjM24YMcfI2c1fi3", "currencyNamespace": "9wwEBUd12mAoSe6i", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1983-11-28T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1973-08-13T00:00:00Z", "expireAt": "1980-07-25T00:00:00Z", "price": 23, "purchaseAt": "1984-04-16T00:00:00Z", "trialPrice": 61}, {"currencyCode": "X8zsfjuApMXi20yZ", "currencyNamespace": "EPelf2LX6hlnYhri", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1987-04-25T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-11-30T00:00:00Z", "expireAt": "1985-12-12T00:00:00Z", "price": 93, "purchaseAt": "1984-10-17T00:00:00Z", "trialPrice": 94}], "GG4e2mZaBE3T9kHc": [{"currencyCode": "WXIK5kdf9bRO3fqj", "currencyNamespace": "9eh1pNQ70zBnlvLm", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1990-12-19T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1980-12-06T00:00:00Z", "expireAt": "1981-10-27T00:00:00Z", "price": 24, "purchaseAt": "1995-02-28T00:00:00Z", "trialPrice": 35}, {"currencyCode": "kJR8mjOvm0blQ80u", "currencyNamespace": "4YNeizR57Vuo6kV8", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1999-05-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-03-12T00:00:00Z", "expireAt": "1993-07-21T00:00:00Z", "price": 83, "purchaseAt": "1976-04-29T00:00:00Z", "trialPrice": 88}, {"currencyCode": "e1CTzUXwaHgSrl2m", "currencyNamespace": "TH4QV2kb0saCf2WS", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1972-09-28T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1983-06-11T00:00:00Z", "expireAt": "1971-03-03T00:00:00Z", "price": 67, "purchaseAt": "1974-05-02T00:00:00Z", "trialPrice": 78}]}, "saleConfig": {"currencyCode": "dvAtP30AK3U11X2o", "price": 47}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "RbihcJLsMwzlCFTl", "stackable": true, "status": "ACTIVE", "tags": ["wUjUGGVrpkwXL35n", "n43nQS1V9A2cDS9B", "OMPPadMEB6yl2mDb"], "targetCurrencyCode": "iONVvaDq9070RCeD", "targetNamespace": "IUeutvOzfsc46iVq", "thumbnailUrl": "YxeeihS0ugKsKoNe", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'RCGK93qA3ea8ZKSA' \
    --appId 'OFFu1mlnVxIZADhy' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '1e4bPidxY92xM0wK' \
    --baseAppId 'f8HSkQy6XRtFZOo7' \
    --categoryPath 'PIRWYR8CbQY2gxBn' \
    --features 'z8GbpYAo0oRxwkpw' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --limit '1' \
    --offset '37' \
    --region 'tErrrey1dwrijoDc' \
    --sortBy '["displayOrder:desc", "displayOrder"]' \
    --storeId 'i000Ys7rEIV80Tlj' \
    --tags '7upKCIv2K7CDm9jP' \
    --targetNamespace 'dlB5JpzVJR8OuaRL' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["YgcoswQNB1V104hl", "GG2xxltx79ltx90s", "ktrx4IhNA8zEjBHX"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ldqr9mHNyu78AuPM' \
    --sku '2ouFiub0jUiyPbE5' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '36qxqrcXw5zvclZH' \
    --populateBundle 'true' \
    --region 'FuEzD5Iy8zJd45Nd' \
    --storeId 'w8jqh1HyG2gEINKN' \
    --sku 'Tj9tRFtVYCOVgc6Q' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'YBFVyneN2Z5niZ53' \
    --sku 'l8YzewQXQ5vUCBMq' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["q3rJC86V4tbxkFxa", "YsJIgbeQB27rpJVB", "nbwhZivWcuIuaDX0"]' \
    --storeId 'FKayCIIZk6m1SYYB' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'gy153YBFUTMXb1Sj' \
    --region 'jZnHlpN8OysHiqbo' \
    --storeId 'fAqYFAG5GF6pt9xx' \
    --itemIds 'bArb6qCDOTO81tU3' \
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
    --userId 'thsnoo3jELiliR1x' \
    --body '{"itemIds": ["h1QGFlvZA8dLZRkF", "B2HbjAmuitX3wx4d", "jOCuiFaTtezOm0yA"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '0jGtvCMhIyyUqXET' \
    --body '{"changes": [{"itemIdentities": ["yGfC1gIQt9VWSc2M", "noIngj9XdxXbEzHE", "5PLpy7c0w6FTVILv"], "itemIdentityType": "ITEM_ID", "regionData": {"Dk0R0Ahg1MU8MkJ7": [{"currencyCode": "bAwD5hHiScqGHmDv", "currencyNamespace": "gRmFgq6XH4mBxONB", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1973-03-28T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1987-09-20T00:00:00Z", "discountedPrice": 90, "expireAt": "1979-10-16T00:00:00Z", "price": 39, "purchaseAt": "1995-05-02T00:00:00Z", "trialPrice": 33}, {"currencyCode": "5tB6t8BTEdfy1Of3", "currencyNamespace": "HgmpASoAfWxjgxr6", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1996-06-25T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1997-04-28T00:00:00Z", "discountedPrice": 0, "expireAt": "1989-11-10T00:00:00Z", "price": 50, "purchaseAt": "1986-09-13T00:00:00Z", "trialPrice": 79}, {"currencyCode": "wOk7itBWzD2uHwmo", "currencyNamespace": "Zz2FWhx9KwsP5mTh", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1977-02-05T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1973-02-19T00:00:00Z", "discountedPrice": 85, "expireAt": "1981-07-27T00:00:00Z", "price": 56, "purchaseAt": "1973-09-11T00:00:00Z", "trialPrice": 92}], "Taf3oeYJVCJit4Rl": [{"currencyCode": "4ZAhwLGhLD6roHQu", "currencyNamespace": "qucbmjyQ3kvDoW9T", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1986-06-01T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1993-01-17T00:00:00Z", "discountedPrice": 45, "expireAt": "1997-05-17T00:00:00Z", "price": 79, "purchaseAt": "1980-12-05T00:00:00Z", "trialPrice": 78}, {"currencyCode": "XwBvZcKlqpracgc9", "currencyNamespace": "SaZxUIAsgg7E1hfx", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1977-02-13T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1983-01-28T00:00:00Z", "discountedPrice": 43, "expireAt": "1986-04-04T00:00:00Z", "price": 70, "purchaseAt": "1987-07-16T00:00:00Z", "trialPrice": 71}, {"currencyCode": "O9ivBQW4BmrlvDDA", "currencyNamespace": "wYeJYw8UNfpUii8h", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1993-09-07T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1978-02-13T00:00:00Z", "discountedPrice": 19, "expireAt": "1995-05-22T00:00:00Z", "price": 29, "purchaseAt": "1998-01-05T00:00:00Z", "trialPrice": 100}], "5JBD72d9p1TLH7Ay": [{"currencyCode": "UI3jVXui73XHYfdh", "currencyNamespace": "yKcCSPtvC9hdKLCs", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1996-01-22T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1980-04-05T00:00:00Z", "discountedPrice": 12, "expireAt": "1986-02-21T00:00:00Z", "price": 74, "purchaseAt": "1999-08-24T00:00:00Z", "trialPrice": 89}, {"currencyCode": "wS96TaFnwO9aLgPC", "currencyNamespace": "Gk9EarHdsSvZuw7J", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1984-10-14T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1997-10-03T00:00:00Z", "discountedPrice": 34, "expireAt": "1983-06-28T00:00:00Z", "price": 94, "purchaseAt": "1980-08-02T00:00:00Z", "trialPrice": 48}, {"currencyCode": "B4EtocQhVyz7w7QZ", "currencyNamespace": "zwxgAQH0aPQ7OtNf", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1989-06-21T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1994-07-03T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-04-13T00:00:00Z", "price": 19, "purchaseAt": "1974-08-14T00:00:00Z", "trialPrice": 75}]}}, {"itemIdentities": ["15tLvR9RlHtyMJFJ", "UpGoKL4XBjgMwtmQ", "fAE72Zt24ZBfSNU8"], "itemIdentityType": "ITEM_SKU", "regionData": {"t3vCMMVtZx8Z3oML": [{"currencyCode": "jHN8acuMEZuN4TUh", "currencyNamespace": "DCAZjkkSsVOvXx6G", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1986-08-03T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-08-02T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-10-01T00:00:00Z", "price": 0, "purchaseAt": "1985-06-04T00:00:00Z", "trialPrice": 72}, {"currencyCode": "ECbesoFQiagVR2oq", "currencyNamespace": "xnSfIaQ7wXtMoVx5", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1992-09-02T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1984-09-21T00:00:00Z", "discountedPrice": 54, "expireAt": "1987-08-01T00:00:00Z", "price": 35, "purchaseAt": "1971-04-04T00:00:00Z", "trialPrice": 80}, {"currencyCode": "EKMtElqs4SEebjqQ", "currencyNamespace": "GlBnKvtPA7JW8pIV", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1985-10-23T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1997-11-13T00:00:00Z", "discountedPrice": 14, "expireAt": "1986-09-12T00:00:00Z", "price": 74, "purchaseAt": "1998-10-15T00:00:00Z", "trialPrice": 100}], "3CPakMClDmMXCm4O": [{"currencyCode": "urnzDGEN4iAu07W9", "currencyNamespace": "Yx2stWtd1SnS93ux", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1996-02-08T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1994-07-23T00:00:00Z", "discountedPrice": 78, "expireAt": "1984-03-07T00:00:00Z", "price": 80, "purchaseAt": "1976-11-03T00:00:00Z", "trialPrice": 65}, {"currencyCode": "5uOiVzBBSEZkJtze", "currencyNamespace": "KisjODcR0v49Un8n", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1980-06-13T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1993-02-24T00:00:00Z", "discountedPrice": 63, "expireAt": "1972-11-13T00:00:00Z", "price": 61, "purchaseAt": "1979-09-25T00:00:00Z", "trialPrice": 50}, {"currencyCode": "uh64GKbEgjxVDp2u", "currencyNamespace": "9rLGDgQqMqzJyrnI", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1990-10-05T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1981-04-02T00:00:00Z", "discountedPrice": 70, "expireAt": "1997-10-10T00:00:00Z", "price": 91, "purchaseAt": "1987-06-14T00:00:00Z", "trialPrice": 56}], "TY4OQZG0LMQ8mkj1": [{"currencyCode": "pp9DYwA92biF6AVF", "currencyNamespace": "VzFadeQ6SxuTPQV9", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1994-12-09T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1995-02-17T00:00:00Z", "discountedPrice": 3, "expireAt": "1994-07-07T00:00:00Z", "price": 69, "purchaseAt": "1998-11-29T00:00:00Z", "trialPrice": 61}, {"currencyCode": "EtUIEqwGwIuWqTbY", "currencyNamespace": "UDBk5tZFlqnfg0Ct", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1983-12-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1992-06-21T00:00:00Z", "discountedPrice": 13, "expireAt": "1977-12-03T00:00:00Z", "price": 85, "purchaseAt": "1986-07-18T00:00:00Z", "trialPrice": 94}, {"currencyCode": "Doz2DRuTTomIFE8A", "currencyNamespace": "xLuZhhyvM7aWag7a", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1980-08-30T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1997-08-10T00:00:00Z", "discountedPrice": 61, "expireAt": "1991-03-29T00:00:00Z", "price": 17, "purchaseAt": "1990-05-02T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["Efd6sD6A70Us7Ooh", "0lsx63KooqoIkoXt", "qfvHPHClKReQOrS0"], "itemIdentityType": "ITEM_ID", "regionData": {"cT95yctxHcVqwz0e": [{"currencyCode": "EuCQU9PhryS3zoxX", "currencyNamespace": "Tdkh1RyNUTvGudMZ", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1973-01-21T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1995-09-22T00:00:00Z", "discountedPrice": 29, "expireAt": "1974-06-15T00:00:00Z", "price": 17, "purchaseAt": "1991-12-31T00:00:00Z", "trialPrice": 48}, {"currencyCode": "PF9XAGCIpOTOa7JO", "currencyNamespace": "XQgIWhTfydOaVgMp", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1974-12-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1978-06-18T00:00:00Z", "discountedPrice": 15, "expireAt": "1995-06-01T00:00:00Z", "price": 23, "purchaseAt": "1981-05-16T00:00:00Z", "trialPrice": 48}, {"currencyCode": "rLgew0f8LflWkY0E", "currencyNamespace": "y0ijj8poCAtTXkae", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1980-08-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1980-09-23T00:00:00Z", "discountedPrice": 3, "expireAt": "1987-12-08T00:00:00Z", "price": 97, "purchaseAt": "1990-02-26T00:00:00Z", "trialPrice": 7}], "hVmFnQZefcYADZoE": [{"currencyCode": "bpWZMEsa7PChNfrB", "currencyNamespace": "zXr4USMW3JdgdQvB", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1992-01-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-12-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1972-01-21T00:00:00Z", "price": 23, "purchaseAt": "1989-07-03T00:00:00Z", "trialPrice": 88}, {"currencyCode": "ciyC9orScSyzP7Sg", "currencyNamespace": "qjSvmsg8T37tLGuf", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1974-07-24T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1984-05-06T00:00:00Z", "discountedPrice": 99, "expireAt": "1978-04-12T00:00:00Z", "price": 56, "purchaseAt": "1978-06-18T00:00:00Z", "trialPrice": 35}, {"currencyCode": "VWUXGy3eBFB7tkab", "currencyNamespace": "84qRq2mNqEXcyvsK", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1973-06-06T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1973-10-21T00:00:00Z", "discountedPrice": 78, "expireAt": "1978-11-03T00:00:00Z", "price": 71, "purchaseAt": "1991-09-25T00:00:00Z", "trialPrice": 3}], "a2lvsMychbRF3OCx": [{"currencyCode": "8qWI7Z6If7VGG49M", "currencyNamespace": "ILDM8u1uM2EEZ2cn", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1987-07-24T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1978-09-11T00:00:00Z", "discountedPrice": 63, "expireAt": "1993-05-12T00:00:00Z", "price": 85, "purchaseAt": "1996-01-13T00:00:00Z", "trialPrice": 24}, {"currencyCode": "rVuQoDkVZwnc5VJS", "currencyNamespace": "MKJZhIGxFxcMfUPo", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1992-11-03T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1986-10-01T00:00:00Z", "discountedPrice": 66, "expireAt": "1985-01-30T00:00:00Z", "price": 8, "purchaseAt": "1997-09-18T00:00:00Z", "trialPrice": 62}, {"currencyCode": "QBT9FNFf4bGGbMWE", "currencyNamespace": "48564yikndZjbHe1", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1987-05-16T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-11-17T00:00:00Z", "discountedPrice": 27, "expireAt": "1983-12-13T00:00:00Z", "price": 2, "purchaseAt": "1997-01-15T00:00:00Z", "trialPrice": 10}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '94' \
    --offset '8' \
    --sortBy 'PlAZ5nMxeoFu2ofJ' \
    --storeId 'BIbEHlK1eX1Tjch4' \
    --keyword '02wVPOMVzqJAq1T5' \
    --language 'TYaF3mVulgN5I2PM' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '59' \
    --offset '38' \
    --sortBy '["updatedAt:asc", "displayOrder:desc"]' \
    --storeId '3QmSaTbCqyeaKzay' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '32CEXQRsuP8jVOda' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '8pboPmYNFbvKBRp8' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'y94p6tat2N6YJGcW' \
    --namespace $AB_NAMESPACE \
    --storeId 'MYNE60yEVuEDYVB8' \
    --body '{"appId": "JgwmFhtkxkA7vfpK", "appType": "GAME", "baseAppId": "6QJ2zeTEr6AFjCBP", "boothName": "uGEvS5b2iE1Gpshs", "categoryPath": "NF1D96nw8vgd6YaR", "clazz": "VFV57ItejQLQFaBt", "displayOrder": 11, "entitlementType": "DURABLE", "ext": {"dvMa1HPnqQVtI5un": {}, "plw9onhAmRAee52t": {}, "nFZ8fls789Y8PGpt": {}}, "features": ["e5tvepLapFHszzMz", "2YZGGuVnnTse2jNu", "heVGNGWCIyR7imMC"], "images": [{"as": "IEd6y85BpaGrPYNv", "caption": "xm9yUCtyEW8NVdrB", "height": 67, "imageUrl": "xq5VJwCqMMa5mlkX", "smallImageUrl": "z7LxYMkbUalGyDai", "width": 47}, {"as": "gqOcCGOKdMLoeXKU", "caption": "oklURyx5y7RtgRMg", "height": 16, "imageUrl": "xECZK8hQgFzJf3gy", "smallImageUrl": "dHy8kXnUVXILLO9U", "width": 64}, {"as": "h2fg2QOLfRcBC7YW", "caption": "EdNO02tnJTRzhCZV", "height": 3, "imageUrl": "mkqwZUJVyO4IwLO3", "smallImageUrl": "IgVtqx7Mys6lvzvl", "width": 37}], "itemIds": ["UglGdqHt1s2hJ2Gj", "9yIvid9tRixOa3Br", "11JNt57IjXq8SDpU"], "itemQty": {"dVQfoFKzFxYiJFJT": 100, "tDt3jNgq7sCdB1oP": 27, "iTjO4WP23DZYKz4u": 93}, "itemType": "COINS", "listable": false, "localizations": {"1MmLD40kJuu9A6TK": {"description": "NDBdJcqrKaXfyeAa", "localExt": {"tEhApLnOLbMNb8ZL": {}, "M1otqjl5ooAa1Iaq": {}, "kH7CXC2NbAnk2aVt": {}}, "longDescription": "ICyhco3dpXH2j5HB", "title": "SdRyWCPiJSFEk4Jq"}, "ypHx52AZW5ZiAMqN": {"description": "y3E1j8WY000zvBHu", "localExt": {"lh3YoM36E2j23WP9": {}, "Oif4nyPlrkP8rHYl": {}, "Xa481mV4pB3qKj8m": {}}, "longDescription": "QwnH99lUI08nsQh9", "title": "3J1ciFU6ucTvsk9H"}, "XKpYUaOaW0BoOnQH": {"description": "lrCmlXMDh69f1NEi", "localExt": {"B9nu72L2PrN5JaKh": {}, "kPAEQ5nRK5SxCBcT": {}, "W2aFGzpswC3UHj0o": {}}, "longDescription": "TI6Jdhi0vH0nqadS", "title": "UOHOUjtdopBMov2N"}}, "lootBoxConfig": {"rewardCount": 7, "rewards": [{"lootBoxItems": [{"count": 49, "duration": 75, "endDate": "1985-06-27T00:00:00Z", "itemId": "FYOYgQHzk2AuuNwI", "itemSku": "1RFR4JgQ8NOzpcOU", "itemType": "33pSQGQyQ7rCxf59"}, {"count": 78, "duration": 27, "endDate": "1998-10-22T00:00:00Z", "itemId": "YWgJ6fcgU46frETM", "itemSku": "T2CvKYAJO0JqbFkO", "itemType": "uaHIGZra9Qq5Yk6x"}, {"count": 7, "duration": 60, "endDate": "1994-06-13T00:00:00Z", "itemId": "ihqJfqLVxZe7QPwa", "itemSku": "qGmSQOn1VGG50Y1Q", "itemType": "tMGqqQXcjoxqNoyt"}], "name": "rn0tlVZ3ErHL2pZV", "odds": 0.3069593642403071, "type": "REWARD", "weight": 50}, {"lootBoxItems": [{"count": 50, "duration": 100, "endDate": "1985-10-08T00:00:00Z", "itemId": "JXICFxHmt0Y9efbD", "itemSku": "nOZUpiaCWR1WLaZy", "itemType": "croeIUWPP8apZAxF"}, {"count": 99, "duration": 70, "endDate": "1985-10-23T00:00:00Z", "itemId": "yWoC5yt3KxdQyt34", "itemSku": "JAbuXrs2UqrS3V5d", "itemType": "5Dy0h5ZwNwqmy1lv"}, {"count": 41, "duration": 41, "endDate": "1988-03-20T00:00:00Z", "itemId": "65rRRtFAxsSnHyJt", "itemSku": "mYWZbgY1vbYPUKPp", "itemType": "YDMJkZi1ZFeoIKQV"}], "name": "fevtLH1KTcpPpOUh", "odds": 0.6429771481433126, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 83, "duration": 40, "endDate": "1988-09-20T00:00:00Z", "itemId": "uXyVZIrp5jUVAfxv", "itemSku": "Grr95h533QRgwwg9", "itemType": "5OMfXP42GRlaNLbG"}, {"count": 91, "duration": 34, "endDate": "1999-04-11T00:00:00Z", "itemId": "KohrS762wH4l7D4V", "itemSku": "7T2oTYBcKbufm2yf", "itemType": "TY7Zj6TmABdZ9etl"}, {"count": 77, "duration": 68, "endDate": "1976-02-06T00:00:00Z", "itemId": "nEgVFkefx9qkwOzx", "itemSku": "rXNOW6dVJ0r90WY9", "itemType": "3vHs4STQVS8PKsru"}], "name": "pURWKAfPgAiDP7eX", "odds": 0.44991509907908456, "type": "REWARD_GROUP", "weight": 97}], "rollFunction": "CUSTOM"}, "maxCount": 89, "maxCountPerUser": 28, "name": "ZLWi66EgveIN1JtF", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 18, "endDate": "1983-10-04T00:00:00Z", "itemId": "ESbU9oKUccm4mgTw", "itemSku": "fLYKV1HnXQ79ilVM", "itemType": "gc3WEhag2p33iDDL"}, {"count": 57, "duration": 81, "endDate": "1993-03-12T00:00:00Z", "itemId": "yY4hatIOdnk8gXfw", "itemSku": "iEIigPbJxzrnYMGr", "itemType": "BOBPlaID5cSwqmFS"}, {"count": 42, "duration": 31, "endDate": "1972-06-04T00:00:00Z", "itemId": "69BaeMhYvZD2UPUd", "itemSku": "Z8m0ZxGDF1v1YCpY", "itemType": "FC5N7lutvWebsQP2"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 79, "fixedTrialCycles": 90, "graceDays": 39}, "regionData": {"NG9A8sIsIa358TVB": [{"currencyCode": "IHlkuiET3FwQ2JAR", "currencyNamespace": "f1YA6gyRs8XoPMZv", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1983-02-07T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1986-05-10T00:00:00Z", "expireAt": "1994-03-12T00:00:00Z", "price": 2, "purchaseAt": "1995-07-26T00:00:00Z", "trialPrice": 76}, {"currencyCode": "QgOSL1vEdmpjAbH9", "currencyNamespace": "c3N17r2HLKIUkjZs", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1973-06-30T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1996-07-29T00:00:00Z", "expireAt": "1989-10-04T00:00:00Z", "price": 34, "purchaseAt": "1989-02-27T00:00:00Z", "trialPrice": 21}, {"currencyCode": "XWC1KKOKksUHPmOr", "currencyNamespace": "ettCdacxBYXuf5gP", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1988-02-20T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-05-11T00:00:00Z", "expireAt": "1977-06-30T00:00:00Z", "price": 86, "purchaseAt": "1978-06-27T00:00:00Z", "trialPrice": 45}], "HJZFRRE1zTa2TSTC": [{"currencyCode": "zlB405V9FmoBYXR9", "currencyNamespace": "gJaXdcN3lhrsZ8Lx", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1981-10-13T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1987-08-09T00:00:00Z", "expireAt": "1993-03-19T00:00:00Z", "price": 69, "purchaseAt": "1990-02-15T00:00:00Z", "trialPrice": 17}, {"currencyCode": "f3BAemgLacPMv21a", "currencyNamespace": "AnQb1DEcyvxwFLjW", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1986-07-10T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1989-06-10T00:00:00Z", "expireAt": "1984-04-07T00:00:00Z", "price": 29, "purchaseAt": "1979-12-24T00:00:00Z", "trialPrice": 20}, {"currencyCode": "8S8hCsbnUQfN4Bl2", "currencyNamespace": "BF0boHg3F05x2acP", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1996-05-17T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1992-05-18T00:00:00Z", "expireAt": "1986-03-30T00:00:00Z", "price": 47, "purchaseAt": "1997-04-01T00:00:00Z", "trialPrice": 34}], "M8UkbwWxvwJjuCJ8": [{"currencyCode": "vkuF02oWTtSmCfum", "currencyNamespace": "2mt0pFCyM5u7zcKk", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1978-11-18T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1998-01-12T00:00:00Z", "expireAt": "1996-05-20T00:00:00Z", "price": 12, "purchaseAt": "1971-02-23T00:00:00Z", "trialPrice": 3}, {"currencyCode": "pneePWwK4Y3IQ8Z5", "currencyNamespace": "SUIIwMf8uMMEuMwc", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1998-03-19T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1998-06-04T00:00:00Z", "expireAt": "1985-08-19T00:00:00Z", "price": 22, "purchaseAt": "1976-05-24T00:00:00Z", "trialPrice": 66}, {"currencyCode": "bMAdnstey84QsimS", "currencyNamespace": "BkJsujwE5aqet9yJ", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1972-09-13T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1980-10-10T00:00:00Z", "expireAt": "1978-12-12T00:00:00Z", "price": 58, "purchaseAt": "1989-05-08T00:00:00Z", "trialPrice": 74}]}, "saleConfig": {"currencyCode": "GQJTB1WgEdY0Fv5G", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "fXLc0o4VloOGC1KN", "stackable": false, "status": "INACTIVE", "tags": ["nORWaSRlEKcCWFEG", "buVq3dYXUGVXdDtK", "uXXrmEQbimxFmH1H"], "targetCurrencyCode": "36tP9BN4U9aw28vS", "targetNamespace": "yz6UqmgFT1pT9J96", "thumbnailUrl": "pkfYugPvuBhTJNlt", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '4IDTBKhpGayKBQkK' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '2oeblnNSIkwMRvgr' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'o26a3GDSNr8Rtg0w' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "ANlP0jLm2Txf25tH"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'ZwtQcxLvnhywYcbt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'QYP7ALzTQMcuNBen' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '31WQTijYROsIEHB4' \
    --namespace $AB_NAMESPACE \
    --storeId 'OJ0M9bWo6lW0D0EV' \
    --body '{"carousel": [{"alt": "jkJhhL0upWTA1KMa", "previewUrl": "iFOFoa5emiyNufZD", "thumbnailUrl": "OZXB4ZMhEe9OfKQp", "type": "image", "url": "GB8CncuyD1Y1lb5E", "videoSource": "vimeo"}, {"alt": "aykQdhZA4JYk6hoK", "previewUrl": "khteuiU0ZsAalg7p", "thumbnailUrl": "elGCxBzRY9XAA4uR", "type": "video", "url": "fwyAfxUgBjk7Qa08", "videoSource": "generic"}, {"alt": "GBVLdM5d3AkMfS9h", "previewUrl": "V9HNPzMkGrzzgpKS", "thumbnailUrl": "yQ6S8BEjydZEHuZM", "type": "image", "url": "lJP1Om87Ii7X1VxD", "videoSource": "generic"}], "developer": "Gm00quDEhDFEaGYW", "forumUrl": "vrrriKuYI0WF2zuc", "genres": ["Strategy", "Sports", "MassivelyMultiplayer"], "localizations": {"pfU1ZHfbxkLK7lHo": {"announcement": "Qz37JVZ42K0x5agM", "slogan": "0wo4sYnlguk7LJkv"}, "zS9yAim3PAXY2sM5": {"announcement": "mZ5JMJUUVdLqj7J6", "slogan": "QWHbI59OlQIEfXHN"}, "s3gmtoW1EKhvia9r": {"announcement": "3yJ1YwgSylMDdsOG", "slogan": "6J3dh8lp7Fggk2Zu"}}, "platformRequirements": {"gf5hfYw8rSfvUmnl": [{"additionals": "tlPxAvDDdQ5CG0wT", "directXVersion": "9bItqyCLM5GGOGDR", "diskSpace": "19irXl6sE5litKiO", "graphics": "IZqYs1zJYQig8gkd", "label": "mMFEFJ06fTz6zF7Y", "osVersion": "asdPqfHPGPsXFug4", "processor": "OAvlklP6hSqeAyVW", "ram": "Akg7VFvF7BMatjtV", "soundCard": "RJUZ2MmBJFZRksBB"}, {"additionals": "ESDpsTZiRaXMv2xO", "directXVersion": "r30btHQrCvlUsSR5", "diskSpace": "5Af5MzYhdHViqWou", "graphics": "T6VBl77dK2Xicm9K", "label": "DjHQXp3BiffkUavv", "osVersion": "cSzea5A21F7BkZuR", "processor": "ZfkTjWiJseXRWSKv", "ram": "hNN4RKZmzmwEWPk2", "soundCard": "MH6fMi9L0eq3qrZe"}, {"additionals": "RHa1DGoui8g9tuFa", "directXVersion": "xkLNBks5xGfI5Haj", "diskSpace": "ukWaWNXzfLQ93sU3", "graphics": "4LlKCLV27g0KNfLT", "label": "sZbaNhZNJxKZwSMS", "osVersion": "dHmxvljVfPGa7flq", "processor": "hzqvpt7m6QCeqBIU", "ram": "mW6PYDKiADS7XU6X", "soundCard": "Nwe2p71mgveEXNIS"}], "ywH85JolnV0HIMnL": [{"additionals": "5aaoOInRplbJytTJ", "directXVersion": "5Br8vf0bdaiTqBqO", "diskSpace": "hgEfD9Gq26cAF5Nh", "graphics": "crQAlHi5UnR8Hpdl", "label": "SVCZI3TLxGkvSoJq", "osVersion": "7gEmp7OjdzmhBags", "processor": "LCJLCCjdkX4oAJL6", "ram": "c7k7CiW6ra2dpgO1", "soundCard": "L0KEhZPZNDNzzp4k"}, {"additionals": "N0Kk0jgH0PXojsUC", "directXVersion": "9GzdXa0Lg1jGy0u0", "diskSpace": "n0R5dviKL7Bih228", "graphics": "cyHYs4r3VepIqd4r", "label": "ROrN8mHvLksOOIjL", "osVersion": "TOVfQBANQijYOiY1", "processor": "S45xEdVu3tBRfC2b", "ram": "BKa9fuEbQchf30Yy", "soundCard": "Z32nl9xK2Ev2w88S"}, {"additionals": "MqkFLBhRLRDn8VO2", "directXVersion": "woHKLAq5RppDcevK", "diskSpace": "COpziHYwurJc7NoB", "graphics": "LUDWeMM4ur70Y7jW", "label": "G38NR2FlXuA3JqLD", "osVersion": "1dnoT5A01I42Dv8X", "processor": "2t2Vnrnc8jZS5D87", "ram": "6QMR2TmvCTpfq6FW", "soundCard": "s11Jptpr6Ur5tIuz"}], "5Q0WKOKLpQfJf3yX": [{"additionals": "U8GNM4Y1JyzcTvuJ", "directXVersion": "wwBVxVaNQaYyjPlv", "diskSpace": "3TEyqweTihF6zqHH", "graphics": "bzdfTGbaCMIS71Ob", "label": "3S70NtHP7zTChHTU", "osVersion": "won8KbgF7UAKoeXl", "processor": "MQJ5asZBWMxATg1O", "ram": "HIwlO4NHLwi2egrb", "soundCard": "dRfJJXcj6oQfCoa6"}, {"additionals": "PbjGqcq7teLYj809", "directXVersion": "oB2RI2BiKbp2AV4F", "diskSpace": "bObLxQuKQbMPQfvH", "graphics": "T4qKk0lmnilZKYZC", "label": "C3Jrv48uWj4VBGnd", "osVersion": "7AaMWNsqWH9mhFMc", "processor": "pUONRKjshEbVJkMf", "ram": "IUoyy5eowdNYGWac", "soundCard": "3Y8K4Gtdwwe6qUO8"}, {"additionals": "0M4AzKtxTDk6ixm5", "directXVersion": "b3Y9k6WLYg3lyYA9", "diskSpace": "t6LIxhpK4VqdQwza", "graphics": "jXyBXmATXXEl081A", "label": "YS8Vw5N1g8c4yhMO", "osVersion": "AFsvE9eSTwmRFkm8", "processor": "KHtLg9VXo3jkUG8A", "ram": "pl8zraD2O2JYvXwu", "soundCard": "ACTP2DW3rGUlo9g5"}]}, "platforms": ["Windows", "Android", "IOS"], "players": ["MMO", "CrossPlatformMulti", "LocalCoop"], "primaryGenre": "Adventure", "publisher": "RtfnZ7rAw1JIFkal", "releaseDate": "1991-08-30T00:00:00Z", "websiteUrl": "fqb2HYNhcC2VgZYR"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'gNNmQwlxox6WCjXa' \
    --namespace $AB_NAMESPACE \
    --storeId '8CshtPiS6GDyjkoc' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'GFKZ0CfI0KItFJVL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'XR8Hbqbou4cY1jyT' \
    --namespace $AB_NAMESPACE \
    --storeId 'QySUpBwdiP8Ysoqt' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '7ouqkM1ajPxkcz6p' \
    --itemId 'IQcEwmIT34hr971h' \
    --namespace $AB_NAMESPACE \
    --storeId 'Eaf5iDHQnzkFpAUc' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Z4u3edsJ7A1jWMfq' \
    --itemId '9uCAb6sChK0BXUna' \
    --namespace $AB_NAMESPACE \
    --storeId 'HhXFCWDSfoXo64ja' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Lf7agNtLfUSxyBBp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '9KFHS50E1Xh9ret4' \
    --populateBundle 'false' \
    --region '0PXZ6EEGgOohs8FN' \
    --storeId 'tDQQ4V0Av8hJsQWH' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'JSbdZr6oD4naRTFE' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZGLmcPkxxithVDWv' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 68, "comparison": "is", "name": "ZLW9xKSoqAv4Lqq9", "predicateType": "SeasonPassPredicate", "value": "PSwaLkoAXorEw4FL", "values": ["AzdZ7a99S08miMH2", "uN7AVmRXUY6SgJy5", "ygatWXLeOEFeMQyn"]}, {"anyOf": 89, "comparison": "isLessThanOrEqual", "name": "s4tQCeEevrqnq7vM", "predicateType": "EntitlementPredicate", "value": "JZpj5RuROPMor63v", "values": ["wJCJBOKdPSSWGl3I", "xr36tWpfSRpE0Px2", "YspzsLGKEikZhW18"]}, {"anyOf": 34, "comparison": "isNot", "name": "XNPZMmXFumje8IlI", "predicateType": "EntitlementPredicate", "value": "KVbj2GiGUnoAU1Uh", "values": ["afimCADHUfuQIMF9", "k7V3jk8GDLA4wgNe", "n7uZFvLdGqZEzEvO"]}]}, {"operator": "and", "predicates": [{"anyOf": 20, "comparison": "isGreaterThan", "name": "1JEXCeCfRvnerXfs", "predicateType": "SeasonPassPredicate", "value": "4tIijQrSjNArsBXb", "values": ["I77RV70fGWpVBAWd", "Y4llANmvpyOMeazI", "7woeWY0s1kBvTChR"]}, {"anyOf": 92, "comparison": "excludes", "name": "sjiO2W4LgTZfem2f", "predicateType": "EntitlementPredicate", "value": "C9R5Fihrb4ZiviXe", "values": ["IffgBiNOd4UrW2Sg", "3PxN74y4grVQanJE", "hjXhsESmf4uVS00O"]}, {"anyOf": 49, "comparison": "isLessThanOrEqual", "name": "LVYEzEBaG6kUuQJu", "predicateType": "SeasonPassPredicate", "value": "hzRLkUsNuADzKVYI", "values": ["jdlQzuFXZ06D9Szz", "onHcjNkXtBl10vkn", "aJhcGc9UzVBXCxi2"]}]}, {"operator": "or", "predicates": [{"anyOf": 47, "comparison": "includes", "name": "Qo2EEqo2eNntsVVa", "predicateType": "SeasonPassPredicate", "value": "4c52hqOSlyinQiNK", "values": ["AD8EC19Nvg3bW5k4", "hoLAAN6FEkEePjUX", "uvatQm5O1fvHUImq"]}, {"anyOf": 51, "comparison": "isNot", "name": "p5JEAw9cLJhiNGt9", "predicateType": "SeasonPassPredicate", "value": "NfgIme4OpXJKtq51", "values": ["E55dwf4h4N1FQoMY", "2xBaVabvLIGjjrB4", "4KA51iMyJIqmUyYg"]}, {"anyOf": 60, "comparison": "excludes", "name": "VHJAwN58898fEyUo", "predicateType": "SeasonPassPredicate", "value": "xBW6IyxPwGtNacLe", "values": ["dIsYXTxeufsSmbhm", "OEyWQjoKpoc1x1ut", "wRbnzVkiWWi2qd1p"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'pDRC6Un9ToLd2XGn' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "SWrBkC5TrIb14Yny"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'UoR7TUu5Dx1144zR' \
    --offset '37' \
    --tag 'IszipuBAUQ3UkJqZ' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "c24HL4qxneGIe3P6", "name": "FKVXJSGYNYlFhibe", "status": "ACTIVE", "tags": ["rsZTnlhNS9QdPf4Z", "7eYK9Luw5thrKw9A", "gyL8OVlhArcdWRBt"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'x1TzbWfaqv87wKLW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'VDAP7nHp1l1e2CIP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ziVMg5zU8crHuhAh", "name": "4Nriqvuq5N7gTh4s", "status": "INACTIVE", "tags": ["Vbnfjb6xOsjhoBTg", "vHFlLbYGarDikYHL", "KMRyLy0l2Hgsq4Ky"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Hjs1yc02I2deWjNQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'VjQKx5ZCb2drPIbg' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '54' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'KZGqIZnfdQ4A8TvV' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'te2wDGFjiWcsFnNj' \
    --limit '92' \
    --offset '95' \
    --orderNos '["H11b3CelchPtpUqD", "cF5EDWNGMn3C6WE4", "AgOoUSG6mdbCrZNQ"]' \
    --sortBy 'IQ1NfDDmTgzvtBMn' \
    --startTime '52rwtyL8eqe6RLuA' \
    --status 'DELETED' \
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
    --orderNo 'e6ZcoMAJuodOYaPk' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gIlorbjBSt8BceMD' \
    --body '{"description": "gFRcIbL3GTQX6M8z"}' \
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
    --body '{"dryRun": false, "notifyUrl": "EiEHfK54pLok5Lho", "privateKey": "aJ2N2HVmCyfirXkv"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'jnhtmkl05NL6ifMB' \
    --externalId '3GCy1t5XtPJUt31w' \
    --limit '90' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'CyWNlbrYzIJrHaGS' \
    --offset '58' \
    --paymentOrderNo 'IrHfGXDLcLo2wul9' \
    --startDate 'V2rmjJBVlV6fUqQl' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'r1LtB2O7DCFbMxzw' \
    --limit '52' \
    --offset '40' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "KHGHdIwCJz4SuIZt", "currencyNamespace": "9xrAtuLDIZ8SSpmh", "customParameters": {"sgj48DMdmY5soeHo": {}, "oFKQxOuTM0k6ZmjK": {}, "jd86bKzuvy8lW0Ve": {}}, "description": "i0kC9LS7h0wQ9zXz", "extOrderNo": "oXtX3AxJ15ttWeDt", "extUserId": "7Z12AM5G1XTcXDC2", "itemType": "INGAMEITEM", "language": "cRIK-AE", "metadata": {"ng8hC4bsjKJ8xJf4": "QSzqLeLhWW1dpqNJ", "EoJyJIDBfo68W2ul": "FpnZAuKiexoMXU5q", "FaYkexlPq5Yir5kP": "suRTDV0f0uHuesPL"}, "notifyUrl": "OyDWG9avHEUw7ak7", "omitNotification": false, "platform": "BmeSAJeWvADnhIHO", "price": 91, "recurringPaymentOrderNo": "uWOZZdb8P1xj9VR5", "region": "GFNHCydJGhuJt052", "returnUrl": "pa6euNwCwUreIEwB", "sandbox": true, "sku": "2sTCPT8w2UpHsMnA", "subscriptionId": "Yf8oOJdx5lmuevT7", "targetNamespace": "WZxxnwmzXaKCSjnV", "targetUserId": "M1uAPgDHo2NB49x5", "title": "j0fC146fCaPleTSs"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'wHY9OrB8yU6U6REI' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oMiAWfDUiPjt8Yzl' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D50sIzxdDZWk4l0I' \
    --body '{"extTxId": "LlyGOoG7nvDKcXls", "paymentMethod": "TKMyRtH6VqN1uD0y", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OY0XFaN8q87HAW7l' \
    --body '{"description": "DtRgPHXxUWTM679B"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SLtKWPyV0RTdQs7U' \
    --body '{"amount": 59, "currencyCode": "hVMC6GAIA563BJ96", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 98, "vat": 27}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IMlxNLHuB3sNPnir' \
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
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "IOS", "System"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime '3FlXs5lHHsIg47g4' \
    --limit '33' \
    --offset '42' \
    --source 'OTHER' \
    --startTime 'rFqHigBvVWkbybav' \
    --status 'SUCCESS' \
    --transactionId 'SFuMIC5s7uWtOcFi' \
    --userId 'iTBRoKhgdua8EWL0' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cbA0XKCh4vvRaeb6", "eventTopic": "vYYi5a5UD0TjB0F7", "maxAwarded": 68, "maxAwardedPerUser": 50, "namespaceExpression": "EtxJtd7I2IKfo0BV", "rewardCode": "35rNSowvOAdX2zeo", "rewardConditions": [{"condition": "HrwDERj976798STb", "conditionName": "NRCxGOhlmJXhY0sW", "eventName": "icVIJUHqya07D1w0", "rewardItems": [{"duration": 99, "endDate": "1989-07-15T00:00:00Z", "itemId": "tZUfSn7Lkalx2v0G", "quantity": 81}, {"duration": 3, "endDate": "1972-10-26T00:00:00Z", "itemId": "Sj2yZhUQsH07kiGh", "quantity": 40}, {"duration": 62, "endDate": "1992-01-12T00:00:00Z", "itemId": "nxgbE2dHw3iROJlu", "quantity": 57}]}, {"condition": "sRtWvRUkBzMaNjqK", "conditionName": "dZCG4LbBAvSEpUnF", "eventName": "Zft62eKp8UmHZacA", "rewardItems": [{"duration": 24, "endDate": "1980-05-12T00:00:00Z", "itemId": "haA9Sqm3MQ9nVEdt", "quantity": 17}, {"duration": 92, "endDate": "1988-11-06T00:00:00Z", "itemId": "HI8enQwXcfNO22QY", "quantity": 39}, {"duration": 66, "endDate": "1978-05-01T00:00:00Z", "itemId": "WxLGMRRr07AMMHUU", "quantity": 36}]}, {"condition": "6pfL0w4BkeP0azoT", "conditionName": "EfU90F8MbywAgNOM", "eventName": "bko4IEFfUXJ9BQ5d", "rewardItems": [{"duration": 59, "endDate": "1975-06-14T00:00:00Z", "itemId": "dY5b0NuX5FYbIDdd", "quantity": 51}, {"duration": 30, "endDate": "1996-12-07T00:00:00Z", "itemId": "umBOEMNF4aP5ruy4", "quantity": 61}, {"duration": 28, "endDate": "1983-09-11T00:00:00Z", "itemId": "qFJS3PViocfFvIOx", "quantity": 74}]}], "userIdExpression": "pVRlbTmMrGiLPzHR"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'c7yGJBJtVr89XZPi' \
    --limit '95' \
    --offset '48' \
    --sortBy '["namespace:asc", "namespace:desc"]' \
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
    --rewardId 'LchnhOSatGor8ftd' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'XSsjUhDkp4zkpqqg' \
    --body '{"description": "nYKeniXX76znpZUU", "eventTopic": "iQ1csEDKqCKkaNC9", "maxAwarded": 59, "maxAwardedPerUser": 43, "namespaceExpression": "bZJ9pni19agrVT1T", "rewardCode": "UuROD19eZCKUQLgj", "rewardConditions": [{"condition": "QUbMGGZSpov60ehP", "conditionName": "qAn0HPwDR63tcHva", "eventName": "3WptL1fxnsOPlEgG", "rewardItems": [{"duration": 66, "endDate": "1997-12-03T00:00:00Z", "itemId": "Pe7i8cy8tFt6LGNT", "quantity": 51}, {"duration": 81, "endDate": "1996-03-19T00:00:00Z", "itemId": "jI40vg6Xt8zaaRjw", "quantity": 71}, {"duration": 97, "endDate": "1999-07-11T00:00:00Z", "itemId": "SanPBXDRy8ITMfH6", "quantity": 96}]}, {"condition": "XUDeydUlXuOo0Bg7", "conditionName": "JoztMfJdiQZzW319", "eventName": "GpnxKHH0pkZ5N8q1", "rewardItems": [{"duration": 30, "endDate": "1990-11-29T00:00:00Z", "itemId": "wtE3RD1phKu4uXbB", "quantity": 23}, {"duration": 67, "endDate": "1991-05-03T00:00:00Z", "itemId": "hsp4dXNAMv8F6XQp", "quantity": 13}, {"duration": 21, "endDate": "1990-10-02T00:00:00Z", "itemId": "942aXkSEMS6squvJ", "quantity": 19}]}, {"condition": "IkGOdXWSsDB7PUZL", "conditionName": "8MzGqGpgJXnHhVxL", "eventName": "jM7VIgqOFL5rIedq", "rewardItems": [{"duration": 72, "endDate": "1997-02-18T00:00:00Z", "itemId": "ekDlL6ueKKv2zJMB", "quantity": 76}, {"duration": 33, "endDate": "1973-10-03T00:00:00Z", "itemId": "kQCZgct5PKUc7gmf", "quantity": 30}, {"duration": 72, "endDate": "1989-06-08T00:00:00Z", "itemId": "RFbjuoPdTDZEL9rM", "quantity": 37}]}], "userIdExpression": "W4l2PcMj6KXJDoF5"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'AGSNdATOgHHC81LK' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'yusHv2646g6Estqo' \
    --body '{"payload": {"uHrGJtFlXrERCqUS": {}, "LPiF2M5vQ3GQGdIa": {}, "BhP37wEIMQc7QX69": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '9mC6SQXyNZezi35Y' \
    --body '{"conditionName": "ymi2pvbJnN9bUzrC", "userId": "IkyClY8rbc9LmAix"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'za1p1tRlqxeYQuqv' \
    --limit '91' \
    --offset '80' \
    --start 'hNc20wl5NwYhqaPi' \
    --storeId 'nF2rPtYSQfSzRRxG' \
    --viewId 'BIDabi0WOdvXGTe7' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'v4zbf27Rdtpg7WWf' \
    --body '{"active": true, "displayOrder": 40, "endDate": "1975-01-22T00:00:00Z", "ext": {"5UVvKbDEfNkb1npd": {}, "nbQ5s02cIP1QUEwi": {}, "Iz4Mlm9j1KcVAVmF": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 7, "itemCount": 22, "rule": "SEQUENCE"}, "items": [{"id": "LolcRjNgIxpKLrKn", "sku": "tNBcNotG088JxF42"}, {"id": "QG6TOaXdCvG6pNVN", "sku": "BEZXusUagb6LwFAp"}, {"id": "ZbAbXH98nmxWCbab", "sku": "gw7ynXSbVve4QnPh"}], "localizations": {"6cPew9IeAWhIDvm2": {"description": "xYdo0r2DDON5er5J", "localExt": {"3sIFKvUKiZ08KCcC": {}, "l03TmTr2hsJCQLof": {}, "4G1tNLRSGIfav2B1": {}}, "longDescription": "zUFFcDVjDPmiNUbB", "title": "dT1DW9sRWUXhQlz5"}, "Jxbu0tCKPy9DQwai": {"description": "ofvb9BbNy58nC90B", "localExt": {"c9tmuB5XxJAFeouv": {}, "RNhZfUYateIzf2Hg": {}, "7KhAmdWKuanEuaZk": {}}, "longDescription": "qc1XTnRHWuYQHmTB", "title": "w37vQWgzIfri2X4b"}, "piQY2CyYRY5CQ6tE": {"description": "GY5G9dat4nMdbB8s", "localExt": {"QOz5C3wiV2GLaxcc": {}, "GXyIne5caphiBeEI": {}, "BeoR3DcIPE2XjAGo": {}}, "longDescription": "mC0BC36kOeylhuZ2", "title": "k50SsQImKqMyc10G"}}, "name": "5fo6LMbWGl6u4UyX", "rotationType": "CUSTOM", "startDate": "1995-03-07T00:00:00Z", "viewId": "mwtYSOwRsVyEUzc8"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '2zkDSSUTfqRlvN6b' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VFCAlKDcQGHNca8B' \
    --storeId '6flTWOCymVRnYK5p' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'suejDZw4BwmBRSah' \
    --storeId 'aC9p6vD1DgOVhcMP' \
    --body '{"active": true, "displayOrder": 59, "endDate": "1983-12-17T00:00:00Z", "ext": {"oFmHmFpTBoA9xStB": {}, "asqPVriZhPHFqySc": {}, "RjdnPshxXI4EQZC6": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 54, "itemCount": 78, "rule": "SEQUENCE"}, "items": [{"id": "1sXSlnp0epJ2IrAC", "sku": "Uz3CLCEA7qIh0FWu"}, {"id": "9iCAZZk9COtQTBAv", "sku": "ghPGmFKafZwrU2FV"}, {"id": "9xmJRNhZd39Gwjoo", "sku": "biNchEYdYWnovNQ1"}], "localizations": {"7Ul09TpKhxvPrgQv": {"description": "ihURI31uGU31wH6f", "localExt": {"qMW2BvYZkyPqkUIs": {}, "JTaWwM7xTr50cXhH": {}, "KrMguPaucY1MdTKR": {}}, "longDescription": "hay5FXHA0of6BlfY", "title": "HLs9ih4hnid7T7cr"}, "a1UGuL93Po8TUMvr": {"description": "9zU5I8YaoyWg2blQ", "localExt": {"UTylYcXCsjK0DKW6": {}, "XAjxZeVpLlPGi0Hq": {}, "r2D576Kz09JVEzkS": {}}, "longDescription": "I9f96pBxYFS4cPlT", "title": "kAS3Axg8tuPtxpmV"}, "sQvGpWWoDSiCwARe": {"description": "cDvxjQFZ7Yg7xiQk", "localExt": {"EYkUXqHqen0JZTkt": {}, "5rDWAYlikN2tPFO9": {}, "4cHSExflZJ1iQ2f3": {}}, "longDescription": "keFhq1md43epX5rZ", "title": "ZFV6jhVnYXzSj3Y2"}}, "name": "Kz6sv9KetFrlnu0w", "rotationType": "CUSTOM", "startDate": "1989-12-09T00:00:00Z", "viewId": "lQMkK78rGazWcGYQ"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'vY7WTJ3cXkO4hLhA' \
    --storeId 'yVndAOJwJoEiNA0G' \
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
    --body '{"defaultLanguage": "X4jmGHcYrAHAtbil", "defaultRegion": "jUqsfXBuP33b1caF", "description": "3DB7yxCq25OBeJKl", "supportedLanguages": ["ubmzG7rW4GMt0KFX", "XQKuBY3aB0UG35ML", "b5rp3N5Y7j21NLBZ"], "supportedRegions": ["Th0bIBqtRaWHTKLN", "4vQR5JzAC351tea9", "tRkAB1dFMW9DThXH"], "title": "mkNoCD8Ox3izoT3a"}' \
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
    --storeId 'VSTBgveooFqDVkmR' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'flOBwc5pWWukbLFk' \
    --body '{"defaultLanguage": "V6szte5dXHVz8bey", "defaultRegion": "7CDrD2YqXvugTTIJ", "description": "2kYDPHhYYre3jfGy", "supportedLanguages": ["hue1KzwsZVrR2xiq", "GLLhmDYRJHajjWSI", "SQcuP5ohV7wfPun1"], "supportedRegions": ["KSkecM1021GBRsWI", "IzKBnyOD8RIwtGjM", "OZ1oiN6nIjwsBwQI"], "title": "5wQ2uUJlDtRJoAvG"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tY2FnbTZmZUI5RoH' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'koW5L81Gvsni6Su7' \
    --action 'CREATE' \
    --itemSku 'NqcbRQJQtoaEvFTd' \
    --itemType 'COINS' \
    --limit '75' \
    --offset '13' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd '1HIZcrQuzq7AHWmt' \
    --updatedAtStart '2H5YPv2W3o9fdGvo' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'AQYyA8aKgeuMOkJr' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'dIC2PXPQLjE6Kvzv' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'P9gNQN9fLDYQlKlu' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'aiKIUkFRhJL6pj7R' \
    --action 'CREATE' \
    --itemSku 'xzG7l7kqJPYWyEnb' \
    --itemType 'SUBSCRIPTION' \
    --type 'STORE' \
    --updatedAtEnd 'ZKMQMa16H73nVGDa' \
    --updatedAtStart 'pUw9fh3cKlqWTL1K' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'YxFxMeVr3VOKIJph' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'ZNE7f1I73wTqlrXA' \
    --namespace $AB_NAMESPACE \
    --storeId 'HbvJ24Bn2O9p5gME' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'sCZiWatdKl8Csy4L' \
    --namespace $AB_NAMESPACE \
    --storeId 'NjMLQfmbkc3zzfz6' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'J1UbRvkVv0NzShlq' \
    --targetStoreId 'nwlIZPa28LgS7dDV' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'hdPiilw6Ms9klgio' \
    --limit '100' \
    --offset '63' \
    --sku 'nunpIm06mrNvy92b' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'Ix2WYx9O14dBvaby' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'aYRDZvwPn1QUrLjm' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'YZLmFzQAGyjmjtLq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'y7OkaGx1eicV2jqw' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "FFg4bCFQkZzK5rut"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'B9I9GldkIZ1xWA8Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'a6USbDs21rdHFlEc' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 40, "orderNo": "mLefOjDngDw5qt6P"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KgdDicrStEDNkL5u' \
    --body '{"achievements": [{"id": "YrzbWRa8PjqIgpLw", "value": 28}, {"id": "9vSFGhjKPWX5sVof", "value": 4}, {"id": "iImmMbOITEFWDb4j", "value": 92}], "steamUserId": "lKFJGq91kunpszji"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'cmNvprOBM1Uz3ED2' \
    --xboxUserId 'NcxcPpw2LA9chvMZ' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'HaIxhxl4DeQM2zN8' \
    --body '{"achievements": [{"id": "R7fO11UHTbGgDGmf", "value": 57}, {"id": "n8p7p1xLY2SKTAd9", "value": 56}, {"id": "WHhexntKyByyOY4r", "value": 14}], "serviceConfigId": "tdSWUKlSG1ev5J6K", "titleId": "tVbCBWktmet2JaeA", "xboxUserId": "WMvCzDWEXImGeC0S"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '9iK4a7gJ85SNlzaY' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'LzrEUYwmbl2zO9ED' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'CcqYZaGNk8qQIxTw' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'bHVTHv8Xub6b5WjA' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'RTeDUyWyVMCMxKMy' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'OweOcYUlqtXUfCj6' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'BjTgCY6VvcEdO3az' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'nhsFOECsC94Uto7w' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'e2NSx5uiDcZ8Mp2z' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '4QBRdNQiLV6T70ST' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '7nlOpmGBkV0cErTo' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'YM2EJRfp8qZvheSa' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'ZYfkEeuE1GR38wgu' \
    --features '["JuvmfE3l3JMbcH3k", "uPCokfKxwjOWxsI5", "P77g5dMWXzbVtag5"]' \
    --itemId '["TmtgPjS65CXcU9Wq", "QR2Rcrc5URZVfW0j", "7x1wGwRCtdkrj29v"]' \
    --limit '91' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tXX08SLLlzwZLFuq' \
    --body '[{"endDate": "1977-07-30T00:00:00Z", "grantedCode": "QEzMM51lmneyjcDk", "itemId": "9pZqO3p2iNpocMky", "itemNamespace": "hSDnIEWTq3j4YasW", "language": "pSgh-rtqi", "quantity": 5, "region": "qt5XUlAQMJJ1UJzB", "source": "REWARD", "startDate": "1987-12-01T00:00:00Z", "storeId": "vqNUOVPbFO77jDit"}, {"endDate": "1994-11-02T00:00:00Z", "grantedCode": "ZdIGzZ4rd3DEamin", "itemId": "FKzV9QnFutyXTpOu", "itemNamespace": "ce6yc5o7EAifWBEm", "language": "WHE", "quantity": 10, "region": "xXEOVgSd5F4ZeCQJ", "source": "REFERRAL_BONUS", "startDate": "1975-05-22T00:00:00Z", "storeId": "zO0nGvkM9N8doj54"}, {"endDate": "1973-10-23T00:00:00Z", "grantedCode": "E56Naon5pypI43fg", "itemId": "Uz5g8e8DRs4uuIVF", "itemNamespace": "Ucsx4e26mBDIjTuo", "language": "rdck-cq", "quantity": 18, "region": "X4rr06Mg1annIcL6", "source": "REWARD", "startDate": "1984-12-18T00:00:00Z", "storeId": "H3BFxKXz7q5HU8ff"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '7DyLWOFFDqcJ8Vmr' \
    --activeOnly 'false' \
    --appId 'pguNTmi4CiWzOwGz' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'P9zaJndZ2znzZKnX' \
    --activeOnly 'false' \
    --limit '90' \
    --offset '26' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'e40vN6AXsLC9XzMC' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --itemId 'tvYvapR0Q817TcXv' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '7oslutjIXVH9jROj' \
    --ids '["42nNU0ixG8T12j9H", "pPBDaE9e50WIW356", "oynRIuhWFAIVwjqI"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OOpG9JZho8tk0kFU' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'QSwbkMjZBQpAtsrr' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '29gcuofbAlPiiSSZ' \
    --appIds '["PD0sLudX2n3brsSb", "1pJLH2FtPQTeLF1p", "Cq6CBHO6Ygj7xgOc"]' \
    --itemIds '["wghPNjTdOeiHE2a2", "slYXii7YCYCjZ201", "yXkUsd5BnbA6vQUX"]' \
    --skus '["n1ImRP7htTbLgxF4", "8BRKZzKqZ7D6bENx", "e9lx6ZfzIFzk2UyY"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fna3WVFy9bATes8e' \
    --itemIds '["M3ALnybjITBEzwSE", "kSHuUKSS1gizOtLg", "RaIeTQCT8pmERZMC"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'oUWVNy3YKyxvXpOE' \
    --appId 'CNgRuRz3NN4vHIob' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'B2xvt20nM8tqyGgQ' \
    --entitlementClazz 'APP' \
    --itemId 'hOVbyFlFtRBWctZI' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tJzCVcnqxj8XMTDv' \
    --ids '["evONADOeHmy8iSJQ", "Zr3ogxCIXNAReRxQ", "QHYhG2U66q8ZJJ9P"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'sPrGX3SwLx5bIQxE' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'QylLEK6lj3c3fkKx' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1bUKfcjYz3cLP1Yn' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hc8FIprBksRb7X58' \
    --entitlementIds 'FkS0WtHifVyEX1MI' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'MzmbjNFFNbsJm2eT' \
    --namespace $AB_NAMESPACE \
    --userId 'JnozqMNwlBzX8NGQ' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'lsGxDxMPlRZzSGrh' \
    --namespace $AB_NAMESPACE \
    --userId 'jHkt4gGDSfFcF9M3' \
    --body '{"endDate": "1995-11-22T00:00:00Z", "nullFieldList": ["ypuqBt9W7fT9WwA0", "V3TDBmiKKEwythK2", "4pBVEYt8beyHmvoX"], "startDate": "1985-09-18T00:00:00Z", "status": "CONSUMED", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'diefWTEemy3KfxQ8' \
    --namespace $AB_NAMESPACE \
    --userId 'F9cREMKcQYahlbow' \
    --body '{"options": ["Cz5ci2YMFrH03ZQw", "J1rbK2aepHkQlTKX", "9hs37QlXadkuMwxm"], "requestId": "2bdLk9ialQlNUpSR", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'uq0RAYTuuZHgpZn9' \
    --namespace $AB_NAMESPACE \
    --userId 'QfTtNmBC8RY7Awk8' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'pXvvoiDOLpwLfswj' \
    --namespace $AB_NAMESPACE \
    --userId 'nuPXZFI9RlMEaPsQ' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '8peOXuAzb51jzXDd' \
    --namespace $AB_NAMESPACE \
    --userId 'nCdqH8MuNo482kgo' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'SoXs0by76VBhBgmX' \
    --namespace $AB_NAMESPACE \
    --userId '0jwQ1oHmwfg7SbnA' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'ltTfO0ULb7ZsGRsU' \
    --namespace $AB_NAMESPACE \
    --userId 'b12m9v3E4YrERdyY' \
    --body '{"reason": "6EnwUZ7Yx1BW8j5E", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '9LvPgvTK9S5H7LIc' \
    --namespace $AB_NAMESPACE \
    --userId 'Nf4xWpXp9tyk1hSW' \
    --body '{"requestId": "9vijR7Xp70ea6IRi", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'sSnbhjLRtl8sIInE' \
    --body '{"duration": 10, "endDate": "1993-04-24T00:00:00Z", "itemId": "Rq5LQeY2x4lxj5Z3", "itemSku": "m8JrxfHFJqmtKPiU", "language": "mOShUEpUMea9BUyY", "order": {"currency": {"currencyCode": "JFPYK0YRKYEovRsT", "currencySymbol": "ao0LihJAubzOzvzF", "currencyType": "REAL", "decimals": 87, "namespace": "klU1FaGtAbiTWxVD"}, "ext": {"8pfIwWIqE66sZ8VB": {}, "Jo2sMUleNrLjG7KP": {}, "vdKNXYmDzwoaXquk": {}}, "free": true}, "orderNo": "x80RrpNQaQ4nQDOZ", "origin": "Nintendo", "quantity": 11, "region": "7LCIZPn1UUICDNnx", "source": "PURCHASE", "startDate": "1994-04-08T00:00:00Z", "storeId": "2dlXUt4EmMqXOJJK"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '3dqeuq1hGP3ktQ4Q' \
    --body '{"code": "Rpi1v6RxHFs8wrbU", "language": "Uttp_XLgT_pX", "region": "toCNambPToFKAmg4"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ilkeqNxcOTXHdDdh' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "tbXX7ig5sNnWDfLk", "namespace": "V0F14BBwftdlCJkk"}, "item": {"itemId": "lTbO3K8crkkVz7nk", "itemSku": "WWL24XzjwjMsI3Bs", "itemType": "peU4ZafrkbzJhpbi"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "rREiNyWe0zYbQLpb", "namespace": "UqhQIwcy50sG9UL9"}, "item": {"itemId": "qvGxVjrRyeC9Ui8U", "itemSku": "Hk0dxsUsUfqgQjgw", "itemType": "Gdo1aydhuD7LEiOg"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "irMb75sFvQzKzY7O", "namespace": "pyUcfyZGyaGJXyp5"}, "item": {"itemId": "P56MHK5tu7Y3THIi", "itemSku": "gXreKr5NES8fDyum", "itemType": "uANncEYfeWLWyCJi"}, "quantity": 61, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'rCgRQoVfBcGGQrXH' \
    --endTime 'L0b4TCa5Uk8vVz6T' \
    --limit '58' \
    --offset '20' \
    --productId 'yYS3FD49vNTbvVyV' \
    --startTime 'vejOwax0SoGR6mMz' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'OJTg6AYu8yLvO2WQ' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'UnINWUhkY8hHWenB' \
    --endTime 'dPeP8cTqemh7XXwY' \
    --limit '26' \
    --offset '10' \
    --startTime 'IxTYepA2bWL3qtwi' \
    --status 'FAIL' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '4yuxbAV4sFlcP9ia' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "seM-lYRw_200", "productId": "HiFMEAR07qeYnZcz", "region": "T6SeNX5op1Nu415Y", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yi9jxkuh0LAV3zCe' \
    --itemId 'M2xBFXPVAoesEi2e' \
    --limit '56' \
    --offset '54' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 's0gMCB6Gnn9qnQ5K' \
    --body '{"currencyCode": "XRMkf1tFhtbCH9eJ", "currencyNamespace": "Ad6K69qDPf50igov", "discountedPrice": 77, "ext": {"ztn5umfBVICDRoOt": {}, "RG6AWc0QLUTsG9FJ": {}, "kUrY3Q5JoCQaErKo": {}}, "itemId": "LID10S6dPszVZI9Q", "language": "IHOScxNJ8o5F4yhZ", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 95, "quantity": 49, "region": "u3FAN9H1LjeAi0Ob", "returnUrl": "pqTIscehH035Xr9A", "sandbox": false, "sectionId": "3W80JNNEMpRStT7Y"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '9rTlOC5MdX9I6XJF' \
    --itemId 'qZNZ3uKoesf2m3Dx' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '19M2QU4VniK40P3m' \
    --userId 'LqWZitGtM0k8pFUQ' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'H9NbphUIto3PZ1dV' \
    --userId '4mHYmMoIKg9OHyjh' \
    --body '{"status": "CHARGED", "statusReason": "0W5dftJLJ8iQW9rL"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fOwgtIkrSLU3udgv' \
    --userId '8LrX9hs03l9OtDLT' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'dO5YpqmhK9ukXXF9' \
    --userId 'Mq2FIrGjNAopKoGX' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'q8q60gWVUxsP1l32' \
    --userId 'XHX6bk2mXR3Q24IL' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'TG0GDFp4rjBig1ca' \
    --userId 'qa7Pa4r71HBgdmVm' \
    --body '{"additionalData": {"cardSummary": "eQPMtZbSyqWtF5zc"}, "authorisedTime": "1972-10-20T00:00:00Z", "chargebackReversedTime": "1976-08-18T00:00:00Z", "chargebackTime": "1977-10-31T00:00:00Z", "chargedTime": "1978-01-03T00:00:00Z", "createdTime": "1985-11-04T00:00:00Z", "currency": {"currencyCode": "NIFOknBAObDRzTQt", "currencySymbol": "zyfG7vfMxsErsqzq", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "z0cxAzbTsa1XoKxv"}, "customParameters": {"dWG12LUKbc0optsh": {}, "xW6fBXemBRjdCiOy": {}, "AIC5T2GhrRs3kqoQ": {}}, "extOrderNo": "sBSM0gyaJ7YqEDHc", "extTxId": "kGPpNnnocUrc7if5", "extUserId": "SZIW1R0ReMfHxghz", "issuedAt": "1992-09-12T00:00:00Z", "metadata": {"6rbRefWx2eVj6ypQ": "ET7RDyFa2TThRosY", "je1oXqj0mx5mcczA": "8ZCebjjunsX3nYij", "tZdGYuBufXOrlixb": "aD4o93lXVBQok828"}, "namespace": "gfsFYwDQdhNCXp22", "nonceStr": "4QcWZEwBw5OYKnTn", "paymentMethod": "E9iIpomVwtmKDzXk", "paymentMethodFee": 89, "paymentOrderNo": "AcpPTdp3pP4qv55S", "paymentProvider": "CHECKOUT", "paymentProviderFee": 13, "paymentStationUrl": "cgjGyPjpxpLs1cNg", "price": 13, "refundedTime": "1974-07-11T00:00:00Z", "salesTax": 93, "sandbox": true, "sku": "q41SMywDe82uYjeD", "status": "CHARGEBACK_REVERSED", "statusReason": "SE7spbRl4M3dkY1x", "subscriptionId": "WQ6uHlqkebNy0S9U", "subtotalPrice": 93, "targetNamespace": "5SrxuoJ5AhEmChRH", "targetUserId": "1u5XP1z6832Tl3cz", "tax": 66, "totalPrice": 30, "totalTax": 17, "txEndTime": "1976-02-04T00:00:00Z", "type": "IjrfGgspPn9jS0em", "userId": "h4op1sRcjlAaRHj9", "vat": 63}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'CUBoBawFxanauN4T' \
    --userId 'eA96sLjhS0kvkvDl' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AOtXn8dwxtMnjzKg' \
    --body '{"currencyCode": "EX8KSCqINA2KTbdS", "currencyNamespace": "XFMA699Qzx0cc1rr", "customParameters": {"Lmy8tuZpUAx0Nt8g": {}, "ax1CXZncYJQ96aSQ": {}, "EWcbbfFAJiFzzBfF": {}}, "description": "7Q42tdrmQlQ9PzbS", "extOrderNo": "g80rT2Q2y6knDFxI", "extUserId": "1WAqcGIJtSuM4Mv6", "itemType": "EXTENSION", "language": "XOm", "metadata": {"ebX1BtpKWeJpyC63": "m0HCpx8ngZNs31mW", "fyUTzG1ZBU2inVc9": "6GQCZBMScXEBtAo2", "PFOGOOVsuenGTggy": "uQka2yQrSReQQ8RY"}, "notifyUrl": "o4KljcYB0ePybf9W", "omitNotification": true, "platform": "pQ164pbyUmgtOWyd", "price": 51, "recurringPaymentOrderNo": "00tTXYzGftdtJQOk", "region": "L0yi9YkW2K8rVHJx", "returnUrl": "Jrd9VQlpMaOJOt7t", "sandbox": false, "sku": "AidicEVCCZSXO3qO", "subscriptionId": "zlvofyY571fALo76", "title": "39muSXrdGHvCceCk"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lsHdyV70mP02Jvjs' \
    --userId '7SiyEem2GSaei4K4' \
    --body '{"description": "zu2EaTfIRPDVR6Kn"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '1wUSwsl26WGjXID6' \
    --body '{"code": "yrwHUy3t0tt881jU", "orderNo": "q7ibgHAFFhnLDRVr"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6LJ9xEqdPA6u1b7i' \
    --body '{"meta": {"wVMb3wmyBQznjb3W": {}, "hzLwSc8ekQ5ew0fm": {}, "HUU6CW0S4uuP9mDe": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "ojU1bZbGp0RXgHku", "namespace": "L3maZZw1INgEMggl"}, "entitlement": {"entitlementId": "QvkX7ozq0154bqsL"}, "item": {"itemIdentity": "ZlfBITjJXpIKYHIn", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 49, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "cqnCOv7nk3VBDIys", "namespace": "bNbZFUBcJExP7ARJ"}, "entitlement": {"entitlementId": "IgQcwfVuLfVcwv5t"}, "item": {"itemIdentity": "ccu1U9a6FR8Ruc8U", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 53, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "yU38hClOjSrWBtMA", "namespace": "PjjVz1C3zjCnIcff"}, "entitlement": {"entitlementId": "KMiFKJ40Q4I68YEc"}, "item": {"itemIdentity": "e0kKhERm8gSZOkUs", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 14, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "tErNXUmmJL0UnTuM"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'mPKQMvAZJEdVCu6r' \
    --body '{"gameSessionId": "ZTqCfSweNCbVCnl5", "payload": {"ebC1JkVELmq2SD4Y": {}, "1gOgLMEPpaqqupLx": {}, "Trw52vjFHY07USOD": {}}, "scid": "1mbcKmjlVoluFWua", "sessionTemplateName": "akkzimkztuZXoyRu"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'xHDSoMLYWhpqKmHY' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'OzZ7VYFIO6YqdHSn' \
    --limit '22' \
    --offset '81' \
    --sku 'jJ50wKD4zJvfMPlB' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Ki0OMqQPM35sqgD5' \
    --excludeSystem 'false' \
    --limit '19' \
    --offset '16' \
    --subscriptionId 'zYOO2XN31zuryD36' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'doDi67QcHz8fe0RU' \
    --body '{"grantDays": 56, "itemId": "l0yCKudBx5tE9dA5", "language": "0K5IKcJVFlV6M1Fj", "reason": "8BpO05Tbc0cWvKoH", "region": "jKSSrNJxa2vdhTsB", "source": "4TYNwsLoafg0Zvt7"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vrhl1obSkaMZzdX4' \
    --itemId 'VkJMsIixIhU1gyj1' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'V39et8TAOkqYE1iv' \
    --userId 'ARN2l3WXA9veUxjr' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Eh6Gf4GXky11AWu6' \
    --userId 'C0tQsaKedavxUhnc' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xzASxn6TythEssPt' \
    --userId 'Jd3kQPEc2pduRSgl' \
    --force 'true' \
    --body '{"immediate": false, "reason": "azYmY2reBiph4puL"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iEEB0YX7pQRNM8v0' \
    --userId 'iiss96pFKrR0NNuV' \
    --body '{"grantDays": 90, "reason": "Ty83T8kq61Ej4HFp"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'G3wU6pMneElXQQrI' \
    --userId 'CTVmK3W2A1E0ZmLV' \
    --excludeFree 'false' \
    --limit '39' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'toFWlPhSZlXMFDAC' \
    --userId 'CdNSmZQ8GOPvvZSy' \
    --body '{"additionalData": {"cardSummary": "oGNEsuqE2LmlJhsm"}, "authorisedTime": "1971-04-29T00:00:00Z", "chargebackReversedTime": "1971-02-09T00:00:00Z", "chargebackTime": "1971-10-04T00:00:00Z", "chargedTime": "1984-07-08T00:00:00Z", "createdTime": "1980-05-01T00:00:00Z", "currency": {"currencyCode": "M0CjlnSdQPHou9sd", "currencySymbol": "Yb6wVpROgXF27IZ8", "currencyType": "REAL", "decimals": 9, "namespace": "cQE3q1Qpuuif7tKS"}, "customParameters": {"Yr0hek2qND2ZvBE6": {}, "QeKLaL1hXQjYWDU6": {}, "9SsBczFNWflEcnct": {}}, "extOrderNo": "sWl8ey1jyKizKXNh", "extTxId": "wOe2V05vBXG1gsDE", "extUserId": "QIf2OrHTA1wsx66A", "issuedAt": "1989-03-30T00:00:00Z", "metadata": {"tWuMqBEVPmVLUTHm": "aum9r53hh2Xquut9", "bQDmyhY4GozUpAE1": "zHEg57TzX2n2Oad9", "eRFAuZ3L0HNB1QEy": "L44py7XaNpJjZx2q"}, "namespace": "vPkax2tXB0wykHsL", "nonceStr": "q9RIPpoP0Pd34kfY", "paymentMethod": "Ker8faQKickzKXzJ", "paymentMethodFee": 89, "paymentOrderNo": "6KihLttXPXVVmSAE", "paymentProvider": "ADYEN", "paymentProviderFee": 9, "paymentStationUrl": "iDbTkCsm8dXlBa6d", "price": 72, "refundedTime": "1977-03-05T00:00:00Z", "salesTax": 35, "sandbox": false, "sku": "Yd8V0C3dcaLyt4D4", "status": "CHARGEBACK_REVERSED", "statusReason": "d7SYNGWb5QRmpGsa", "subscriptionId": "tjXvtpUvHm2eJlbI", "subtotalPrice": 83, "targetNamespace": "nH8jrVdWQuF10O98", "targetUserId": "IILASoEdgsmYIk7I", "tax": 70, "totalPrice": 67, "totalTax": 43, "txEndTime": "1985-10-01T00:00:00Z", "type": "Hjt92DR9Z5fIHLqW", "userId": "728kVvIlcmWICdxd", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'SxVGalsQZybj99i0' \
    --namespace $AB_NAMESPACE \
    --userId 'kVsb0pbBhjAdCjJQ' \
    --body '{"count": 80, "orderNo": "41sacnB37aG7ieog"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'qTaOTPM9rJwZkZuM' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '6a0Ch9iEWOJBZ2XJ' \
    --namespace $AB_NAMESPACE \
    --userId '5McDgZIfMm2S3Mpx' \
    --body '{"allowOverdraft": false, "amount": 32, "balanceOrigin": "Nintendo", "reason": "uu2WgeooM0IMLm6b"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'MvBQMPMlQB7tS24m' \
    --namespace $AB_NAMESPACE \
    --userId 'MExQUwPNzwDmlSHI' \
    --limit '36' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'DjeLTPpzSGZJjcn8' \
    --namespace $AB_NAMESPACE \
    --userId 'H0idylkRBdzrBTys' \
    --body '{"amount": 21, "expireAt": "1975-04-17T00:00:00Z", "origin": "Xbox", "reason": "MC35kYKcagrECWHo", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'vPmKtwWcr2k318fT' \
    --namespace $AB_NAMESPACE \
    --userId '3c1eZfeo3B8i3w0r' \
    --body '{"amount": 34, "walletPlatform": "Other"}' \
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
    --storeId 'PW6EfSiEr8CxWR6Y' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'd6IrumVA97O3H4SJ' \
    --body '{"displayOrder": 40, "localizations": {"scg20U3ebs7KhOi9": {"description": "iBqJ9rsRfwvUBpIV", "localExt": {"Zadn1wodn0Quarev": {}, "NHfS9oaoomIyvOsM": {}, "TFngDlP81Wrt5YsC": {}}, "longDescription": "IzdLojzKe5UIS57x", "title": "7iZgkINXV6cZosoS"}, "cmZUfmVsp4fpa5z9": {"description": "NpJ6rEkJC75tgNgG", "localExt": {"0PxyHxgwxCZpARUg": {}, "Cg3mlAhAOtX6xFhR": {}, "cXtc1cRxXAe6EN6K": {}}, "longDescription": "oP6atT3AaHr2QR9X", "title": "P47QIjBmswovg9CJ"}, "1fo0gH2TAiNY1uAE": {"description": "rAGdOXpcPjRHE2bP", "localExt": {"EuvDC3TtGUor23Zn": {}, "4FzchfdvpJXdgAt7": {}, "Qnuwer6vZi7Cba79": {}}, "longDescription": "XiGUmGWQAw8R2C93", "title": "rYkJyf3nBXfDZvKS"}}, "name": "g65YfgkQ4qOwmi5w"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'gs2DOs7HurhDQb0d' \
    --storeId 'WsRmv2eUR9WC1USK' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'D97c7tF80XyTuCUs' \
    --storeId 'twHWVHZRRGmCHhgj' \
    --body '{"displayOrder": 50, "localizations": {"g6oxpI93tIqWpkSy": {"description": "LMECPezFk5J5aqpo", "localExt": {"xzLgbseZVxeKfcb8": {}, "9rtovYlEkJHnB955": {}, "c8idFjIZH7xDN8l4": {}}, "longDescription": "13BtvvQviBREh6QX", "title": "xLkMvfq6ttjoTE8C"}, "D6Ln41rBdgxtwzSf": {"description": "nkDfF5JPhLRczR4d", "localExt": {"byx88Qk9rWCaOgWi": {}, "hG4SkWWq7n4LHN7m": {}, "udE4MjMHwKnkxeME": {}}, "longDescription": "rIH7XYqmSzhUvdUh", "title": "tGkaNiLeY6z7eDsZ"}, "OWedQZlGzbkyS9bp": {"description": "EYjbzCkX4ceaegtN", "localExt": {"JrSKffaJZ199chEp": {}, "lQDAgarZhB2QLVRy": {}, "Eew7vgIXpPutFYAo": {}}, "longDescription": "SeDnumGCVWPCsT0g", "title": "xqmULBBhCdUloOsB"}}, "name": "pnFSpGZOxfT3S8zC"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'NdIeswW7G5UturJD' \
    --storeId 'AHzeqadvtuwskycg' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 90, "expireAt": "1991-02-15T00:00:00Z", "origin": "Epic", "reason": "UcBQolIBVoW4WP46", "source": "SELL_BACK"}, "currencyCode": "aNAsBzbf7zAhGaRq", "userIds": ["yziqqfUUtBjtS3uX", "KgVT6k3L7amJ0F5g", "otu9pGA0HLHeJ5Yt"]}, {"creditRequest": {"amount": 6, "expireAt": "1991-08-13T00:00:00Z", "origin": "Xbox", "reason": "tIshS64nQE3jOfMf", "source": "ACHIEVEMENT"}, "currencyCode": "kGwFHP79LcKOFWZv", "userIds": ["WRSu7wFkzaq4Ul53", "zZwUwKLKVDrhirCH", "YQVx9Xjwo0NNO7rM"]}, {"creditRequest": {"amount": 49, "expireAt": "1997-06-10T00:00:00Z", "origin": "IOS", "reason": "VC2AOVo6EHQZwhaZ", "source": "REFUND"}, "currencyCode": "tKP5OugN9SRdVrk7", "userIds": ["y0YNY3r7NQIQdiTC", "UZdd0iwKqCdkHxpV", "9M0O8G9fYhCDBEc3"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "SNjODBY72KLWhOp3", "request": {"allowOverdraft": false, "amount": 50, "balanceOrigin": "Other", "reason": "etNDWYmK62vnUurK"}, "userIds": ["k2pjAJurePCCQtU1", "dtKm0zKtmoIURHCS", "Qb4IsERCHZ1h3VtN"]}, {"currencyCode": "y5tZcABk9NsHP0GO", "request": {"allowOverdraft": true, "amount": 4, "balanceOrigin": "IOS", "reason": "dc91DyBzf2K3tcqQ"}, "userIds": ["RebsPDqaCP6bif2C", "tpZO7m1KuMEXgtNk", "zPu23VY9SFjPF85b"]}, {"currencyCode": "tH8yfjbOYjLu91MW", "request": {"allowOverdraft": true, "amount": 92, "balanceOrigin": "Playstation", "reason": "SIvDYvIvD6bLamB3"}, "userIds": ["USkW5LmDc1KcmQUT", "fA4eOwrxBTBkjyoC", "uv82UND0vMrUJYgQ"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'yNtROoGRZ55GOm4S' \
    --end 'EJWNikqh7IRbtfrr' \
    --start 'tXFcAjHl7y7SnjKU' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["2GiMB6Ix1b1RjlnA", "o5ZGKbD8TU7HMotq", "bmY38qRdytJoBhFw"], "apiKey": "LN0OMdfLDjkohyZy", "authoriseAsCapture": true, "blockedPaymentMethods": ["APVRyJaldDl1IPbB", "XdFH0MA38bSpF3pj", "cAvmKW3F3qqCVN7c"], "clientKey": "wrAwXGAkWAjAtHtM", "dropInSettings": "H8ooNpD0ojeWp1TP", "liveEndpointUrlPrefix": "lEV1qci6JqO9MPsm", "merchantAccount": "PQxidpOL6d1lM1ir", "notificationHmacKey": "4zXFMjOehQetRc0E", "notificationPassword": "MelzlLhnCgn3EaRD", "notificationUsername": "OmIK1ykixHYenKpZ", "returnUrl": "0gllM7MD3OpQne27", "settings": "B0o2ShblmqBrhP7o"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "njvfEowTJ6N734lj", "privateKey": "Y25RWfPZgoa8ECTf", "publicKey": "2PYvbBnNJRudhKuB", "returnUrl": "fZthJOtPXjWa2kwK"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "03umj3ed5fSKZbis", "secretKey": "HEmlIyqWK3oSJ4wd"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '818X8e7vRUjAzcD7' \
    --region 'TR15myaEt7zsyL8O' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "LAqfmdbBCfFUgbsX", "clientSecret": "SEfrXoBDqfDf04f3", "returnUrl": "C6HO7cDIVaafRopI", "webHookId": "TqLxZRoA1XgSg53L"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["Ygv9xF5T6z1ug9Mo", "8BmD2kKjFG0ikKvZ", "ZlCxCKQjd9j5gLDI"], "publishableKey": "GcbPnR6W5Khr7TWI", "secretKey": "wbBfNeFhkFhaelMi", "webhookSecret": "AqFtlJpOibPLzoug"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "KG94RzUF7s1vo7xF", "key": "mddVwDmEs8H8zOlL", "mchid": "jGRTaawSROivkxyl", "returnUrl": "SQNcC2BSzTrAVVat"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "vqBagDiEXIHx8t6U", "flowCompletionUrl": "Rgbmb1rzB6X5TLzp", "merchantId": 82, "projectId": 4, "projectSecretKey": "jIJQjOgXfo3YBlar"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'MGOKoJ3y5t1rLebP' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'r3VcTxYWWkSqyazL' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["7oilmIOxor5R8ttt", "vlFs5J4UbGMY03V2", "CqBDvhqaqyXMKYzJ"], "apiKey": "GCMFHlDVE9edOuH3", "authoriseAsCapture": true, "blockedPaymentMethods": ["PmHV55vYWQwzbmkO", "UrainAnYs36Isg7W", "2pHy2VHJq0bqciFq"], "clientKey": "qUZ7jLdxmBdyPCwY", "dropInSettings": "zGlIR73Jt4vPRkKx", "liveEndpointUrlPrefix": "2JvMl205waWLRj4Z", "merchantAccount": "TpNgV1v3TD2Yx3yB", "notificationHmacKey": "mcs20JVcdOra4grO", "notificationPassword": "OMy1TvW2zpJqMNFR", "notificationUsername": "XZyBr2dalIzX95I9", "returnUrl": "y63gGZG7KtMBqxnu", "settings": "FBXWD0Mz1AB0mfG2"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'VEdzAp3vBYZpsUWF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'wsUdiwfCDLj2vIrg' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "1JgGUj7VvCvm3fm0", "privateKey": "zx6YLMOwhizZaSSE", "publicKey": "w5VvAXZVJtxjs2mg", "returnUrl": "8bHvX8IdNuF2n2Tu"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'rRACizIE1dQL6J8E' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '4opDbLRNbNvhzZLl' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "MwnqhZyHxYnYLXgP", "secretKey": "pzzezWFlQx0sPThh"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'rnvFExdxInHxNLXk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'QcLxZEl0rbW1t0FC' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "7iM04SsYttjsh1yi", "clientSecret": "lU18kBVA1jhwpXMO", "returnUrl": "WBzRA3LPJmwSocM1", "webHookId": "kOUdJixK0zBbUC6l"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'PvPqPqb4VQ9zwZDf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'cfVqzX55qf0N35qK' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["sd3q0Fng7Fjxdwbb", "G8opmopF743pqoiB", "Y2mm1jk4jBnmDCBK"], "publishableKey": "ccfnaDr4Y1GILwWA", "secretKey": "YpFMZRXXpo8WR48S", "webhookSecret": "B1hLVsfJnljCw8Nj"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '50vZXKUIU3NpIyVv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'qm6GCcNSkhxQlFgz' \
    --validate 'false' \
    --body '{"appId": "S4ygo75TrtMyKiIQ", "key": "Mx71OBu0mZvKYemR", "mchid": "Sn8b8APvl6JokBer", "returnUrl": "ND3sWWZS1D5spIIL"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '008NzpgW2RWDLIhA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'be9FsDpG7HGVGv74' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'f57M8f34WO1j5rKe' \
    --validate 'false' \
    --body '{"apiKey": "bqfo5Dm2LG6KS0Uv", "flowCompletionUrl": "lygOB48qSUi1Pib3", "merchantId": 85, "projectId": 56, "projectSecretKey": "YadjWvBmWuu0t1aQ"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'V4kn11cSHmZ18LyQ' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'ohZDoO81d6DY5N48' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '7' \
    --namespace '4fEzdQpuN1oL4jTL' \
    --offset '16' \
    --region 'K6Hg4RiDLhaQUNKU' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "E0Q1q1pLOrpw945x", "region": "HbvnrN0pm9o2DlxQ", "sandboxTaxJarApiToken": "7iFUGWPkxQK2kGUQ", "specials": ["XSOLLA", "ADYEN", "STRIPE"], "taxJarApiToken": "iukfFWfv95WqsEW9", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'd5p42INtfBtAFc1q' \
    --region 'mCFtkALXFB1lfsQI' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'xOcrbRV2nGY8mZsV' \
    --body '{"aggregate": "XSOLLA", "namespace": "C0jd9QYOkDmmyt0r", "region": "yjEpuE66r1zWi7tQ", "sandboxTaxJarApiToken": "vF79mgrx7CwgvwqI", "specials": ["PAYPAL", "ALIPAY", "WALLET"], "taxJarApiToken": "FjVT79psUoKVChHb", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'mqZDK13ajFizMLQX' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "tyZz4xXrHXcCOe4W", "taxJarApiToken": "pJeWf1mOUWIBHhM5", "taxJarEnabled": false, "taxJarProductCodesMapping": {"zCUr4SnIf8Wer6H9": "tqfOy0MCLtBuIUjS", "tRVgcMURAfMINWNu": "MoM8sk7Hw2flE5Ux", "ujtRW9md83mSl2Jf": "G0D2haYpm15ufMKs"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'dm0AnHE44iwwx2x1' \
    --end 'nLeUv3S8fvynF0MT' \
    --start 'Rd6CAdskGhFvKeBJ' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'wwksXYu2kJFX2xkX' \
    --storeId '3Gr4nBILCtvefVHc' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'vycTPKVCKvgrJ9Xr' \
    --storeId 'cRHlNmisbTQFcv4L' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'jN1hoHi87iibi32Y' \
    --namespace $AB_NAMESPACE \
    --language 'OXRC3GxImGaKQu0I' \
    --storeId 'QvHRZdsWkxP9XOqL' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'YFReTxqtNOW2urWg' \
    --namespace $AB_NAMESPACE \
    --language '8Rwjb81zmz79Eg6h' \
    --storeId 'wk1LNmD3hUtOBW8A' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'XF5WNYAZdlSKbF4W' \
    --namespace $AB_NAMESPACE \
    --language 'mBVv0GEW6MWJGUXV' \
    --storeId 'qVzETMxBDxkBa7VX' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetDescendantCategories' test.out

#- 317 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 317 'PublicListCurrencies' test.out

#- 318 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'B3Hun6pN0Os17v9D' \
    --region 'aHblJSfHtp8EiL1B' \
    --storeId 'SOSwWuaCxDV6fw8F' \
    --appId '0GmxiHLxGfNqN8q4' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'Plf0YjXextxZmyOi' \
    --categoryPath 'CyS4Vb2NJcNjHnw0' \
    --features 'U2DJwYYU32qhacya' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'RLRfROYb6JCdiSBm' \
    --limit '89' \
    --offset '37' \
    --region '8XTrvxAtJRlczgbo' \
    --sortBy '["createdAt:asc", "createdAt"]' \
    --storeId 'jpYS98DKObcYYqQK' \
    --tags 'IlBCXhfuIUdmk0pL' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'XeNicvONGx0jh8BM' \
    --region 'OM2QgrA1ShOn65G0' \
    --storeId 'yA0Wh6lYzLJPDzG5' \
    --sku 'SK29Adi23pGW4lMK' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'D1PUlavbK2zkorwQ' \
    --region 'RO5xrsEjcA6EXxEU' \
    --storeId 'dEMB50fQLz74o53X' \
    --itemIds 'XItWIZaXVJzTntAJ' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["eBXKKNPDAjzg0zJe", "cf3WVQwTDRlfgs7T", "NfPrmttpAZL9031E"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SEASON' \
    --limit '15' \
    --offset '13' \
    --region 'QsOBKw1DvLIGKsJY' \
    --storeId '9rBqtweOmaWrRsUE' \
    --keyword 'KDTiiw151Z9Pqb3i' \
    --language 'wPG0Mh2Hzt0j92dO' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'VhWpojhcDlKS0vfU' \
    --namespace $AB_NAMESPACE \
    --language 'aNkiUVvSRS78vuDN' \
    --region 'vW6U0rDB9dlyDSd3' \
    --storeId 'HP7F8OsH2TaQ4SzS' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'tliJawm5G8O1596f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'VChfqjuqpv0Hnc4P' \
    --namespace $AB_NAMESPACE \
    --language 'xKpIKgX73lvObmne' \
    --populateBundle 'false' \
    --region 'Uc9bhyYnMZayvfDc' \
    --storeId 'EwYjPa481W59hxVE' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "LMPU84w6AEtyhADw", "paymentProvider": "WXPAY", "returnUrl": "3sjzBAIXDcPhD2p2", "ui": "uveHOM5gIKEJYQh5", "zipCode": "cpHSn77JSlL14fgl"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GoQfUZZ9bWmuKsFT' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5DKf9qQrCsjuANIY' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RYHT8y5btKSnrgga' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'l4A8s8wY6VniTZvZ' \
    --body '{"token": "uRHPzCfvZ74dXYso"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CeJHErfT0D31oivh' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region 'q854W2wZYRGV6JSy' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'QAvFkuFMg07Fz4pq' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'PPInX2rszE4Ujkco' \
    --foreinginvoice 'BMZWsOX4HgZj5LZ9' \
    --invoiceId 'PxulnqfpbZr0LWAK' \
    --payload '1OYiqKhzDC8B88Iu' \
    --redirectResult 'gsFmOiozTuwSApCN' \
    --resultCode 'QODfeVFu5nsaXPA3' \
    --sessionId 'kYlbhUFvL135tNND' \
    --status 'wUg8SBDLbZQHiJPv' \
    --token 'yKXO7SqZjbatsZIC' \
    --type '3KzxyDchgzjJLgIJ' \
    --userId '26HJBbhIEdTEjVdF' \
    --orderNo 'Joq0fI2hPanTYepn' \
    --paymentOrderNo 'oIetBXEGuYErZob9' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'cCPpXtXzUMBkQFfa' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '7dFxWZV01gqH22ut' \
    --paymentOrderNo '38V3wqJWZRmR0oF7' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'SojPVgUmrJsT2dNv' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'PK6WDW2W608JitS4' \
    --limit '16' \
    --offset '88' \
    --sortBy '["namespace:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'KfxWxo7hIrAOc4ED' \
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
    --appIds '["E65i7kKHmmhghiqg", "11POhq5aGjVpd8WE", "FrgdarRzND818YJi"]' \
    --itemIds '["zFZc1TldRkWTYHSz", "tHAUcNRy61XkG9OP", "xm8QoEY41DHzWbhw"]' \
    --skus '["7yHP6NXl9mKlDgTo", "XUxOETWhGrt2b4zt", "J4xmG9I10Euj4AFe"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'P8lpNFuWSYGij1Bk' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'cWoXGmuvsUbqL5Dv' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'f89TcUqBKcjCIoPM' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["qcn7084qyOE5he7Z", "FxFPlMx1c1st83uq", "XsQRo41LaDfwEIlf"]' \
    --itemIds '["MC5BmnSvj8vNSrrG", "pO4Ex5uooLwJcuhf", "ivxpK0awzVfj9xLL"]' \
    --skus '["AHnQSPGF0tivbpbL", "v7kQ3TSTXurfG8BN", "BM6oJ0xFkbthWnQe"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "XKnBbHgNhRCqvH6d", "language": "QOp-591", "region": "IiP8fQgHJ9zblrMA"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '45VhHNu0FNs5UoLi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'mYGNVMpu1Xas1KU6' \
    --body '{"epicGamesJwtToken": "m80ayWqDcbvUC9hS"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '3TLaMZtLBWVPhp7p' \
    --body '{"serviceLabel": 4}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'HpDTVSMN7Uy1Y23H' \
    --body '{"serviceLabels": [98, 4, 69]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UChG3WQ2Acp3vCiD' \
    --body '{"appId": "P8FW2A729A90vckg", "steamId": "bPphGvmabosgHZBK"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'GiTm3stsndiOmZRZ' \
    --body '{"xstsToken": "7DJ2vOXWwAHpINZ0"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JjKHuWC09Quv1iuK' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'MGOYxqXasRanxTRQ' \
    --features '["0tBmlWUQnbL7XOPA", "KMOnBPoiABUz2bzb", "eExTQDIbAZqChehQ"]' \
    --itemId '["aDNRDe9UFKiBz1hG", "Pkh7Fw3Qv3uXngKx", "Sy3RqE12LXqCObWK"]' \
    --limit '27' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'k60fQmLkNBRd3VrC' \
    --appId 'KUa9S92MFyJ5Ydzs' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'DSVpII12gr9kurrM' \
    --limit '76' \
    --offset '37' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KGGBsieuEbpa9oiy' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'G3S3uQsIVq2YkUz0' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '5GWs8jK808F4WPVZ' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'bTDuYPoRGvqt5HAH' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kLb2y2ed5qYpuI2d' \
    --appIds '["G7OgPrDOlNuusb2G", "T53CRSvYJUyE3Rho", "knstHUaTVNxPB7iM"]' \
    --itemIds '["AXgc63xyobafVuL2", "44SwVelolb9pfxjp", "Y15B2ruQzi7ZDbFr"]' \
    --skus '["e9LZ0yGn9GLRS26x", "DJFlbEk9RD26F2ID", "FhmtSvhwr4CPLaC9"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TEuptL1NOSEo1GP0' \
    --appId 'Nb9TnxPvmmBjHMb6' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'iDjyLRTofnFD0jzG' \
    --entitlementClazz 'MEDIA' \
    --itemId 'NF32QC1LUkvihPlT' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'UjvdUdN0Gm2Op0mx' \
    --ids '["mHZm8nxxHRAVDMH4", "VFTeD9ZOQwiVOrw8", "95wtlqxZpoWl93LS"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '1JzpsEG0ycC66cBG' \
    --entitlementClazz 'APP' \
    --sku 'FNON0JwNIhaZuuHe' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'OCcJPuyIs5ZS0ix4' \
    --namespace $AB_NAMESPACE \
    --userId 'xIaXWSICg6w2Nvp8' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'nxhtdva2ZCq25t8F' \
    --namespace $AB_NAMESPACE \
    --userId 'eEHyS4EcMNMElYrV' \
    --body '{"options": ["wbyTaNNBrdSkCt8y", "r6XmxJPvzKCp9pKS", "1Q8pphcYFyzpvRvq"], "requestId": "QROLM18bKGMPCuly", "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'wd9SZqO7h0YPW9tp' \
    --namespace $AB_NAMESPACE \
    --userId 'AQRPiBB1yj9fDCoU' \
    --body '{"requestId": "4uy5WnEsVUplwUdd", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'I5aP9zL06Cf1iVZD' \
    --body '{"code": "KsYuWotx2JuEtp5J", "language": "Oo", "region": "Nx5b0dpgLfKkj2cc"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'w4poNp2YRtSEoGv5' \
    --body '{"excludeOldTransactions": true, "language": "OA-zFDO-768", "productId": "ncucpoW3YrraQu59", "receiptData": "c8WDLvMk6rx1mtxl", "region": "RxK076OMGfxcxAVI", "transactionId": "8gKfC6arAxKaXOxg"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '3wYfxDgzN9TAZTCC' \
    --body '{"epicGamesJwtToken": "o7oEK6AtjDLLe1Pq"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'TkRjSfpsn2tbQLMD' \
    --body '{"autoAck": false, "language": "dj-ik", "orderId": "nLOBO5kFQH27XNhS", "packageName": "AeD2IFTq52CRKfpU", "productId": "vHnjoGhss1Qvct4J", "purchaseTime": 10, "purchaseToken": "w9v2k3g7PXiVusp4", "region": "wyGSPzY7vnfVLtqU"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'qK4Svsgbxe25TOaT' \
    --body '{"currencyCode": "JtdlA9uioOgh1jv6", "price": 0.19289293703155952, "productId": "YVaUqcnOAMtyDUIA", "serviceLabel": 72}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'FBAyQsg8tTuuLsag' \
    --body '{"currencyCode": "OZYNJNzgRYuv68ox", "price": 0.15416780718395706, "productId": "SiAxgj8rszLPWLdL", "serviceLabels": [24, 35, 85]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '8j6tdFLxrolohL36' \
    --body '{"appId": "i7s2OtqGFT4YXl7r", "currencyCode": "8XRJyzftUQe5shFT", "language": "qJ_iiOH", "price": 0.4923853125819604, "productId": "8AbsdyVPbOTKXJ0L", "region": "xYcqeqyPic00mjAq", "steamId": "5QcmXyMOOdULn5gM"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'V17DjGEhkUDudZi8' \
    --body '{"gameId": "SKfrnhZR8VaAwjjx", "language": "St_jj", "region": "yPCC3hQ8jurg9mZr"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'yqkIjP46VVFB4ix0' \
    --body '{"currencyCode": "KIQsrlwY5zqzIKJ7", "price": 0.10532291483533984, "productId": "XmHR1UvXdn7mRyZg", "xstsToken": "OVrlliDM05ga6ow7"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KUA1OBgjDZ6pv7vi' \
    --itemId 'Z3ZsDR7pPr5Z49Ii' \
    --limit '34' \
    --offset '73' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '1ghbEfQovUxsOSlx' \
    --body '{"currencyCode": "VVxy6lS981k1TsUo", "discountedPrice": 32, "ext": {"88zfigoHT2rudZcp": {}, "Ilv0dA19eCu21Qm5": {}, "a7Y2nPGw2Rn6nrBD": {}}, "itemId": "fLlp7FBjc71AVXbS", "language": "TkS_Vo", "price": 87, "quantity": 19, "region": "CDKtJhbogDWZn4Z1", "returnUrl": "V9EJL0eKx8NjA63k", "sectionId": "jmn1GyjPQOUzTkpB"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'N9EloHUzPjk7ffMH' \
    --userId 'Td429aBjidRlrpEB' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'shDAWPnJvz4QLMoO' \
    --userId 'RuI3qE8Zh1RzBFs7' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Aa5gXnvWkgalSfcF' \
    --userId '14cXVatOHDYA5dpm' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'F3BmSxJDJvybNoQJ' \
    --userId 'c3w6HMLsKWEnzjQu' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'AwSqmYflVog5bQ4G' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '0cISYT99tmvUpQlt' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '0eSLrZZmYifOrE8G' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'WDm6laGfhTU0aPbx' \
    --language 'kWUQtp770YrURTWC' \
    --region '9MMJi0Rbw2lsvzdO' \
    --storeId 'eDf6Aluo9tJ3MKFg' \
    --viewId 'LDqGCYgYUKAogbUR' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'uQc9R5Zk6ippwNuC' \
    --chargeStatus 'CHARGED' \
    --itemId 'UP024vLBOwnLzqSV' \
    --limit '14' \
    --offset '63' \
    --sku 'mwyso38moEoVB3Jg' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'GsFg0D6UB8uaA71y' \
    --body '{"currencyCode": "gB6Lam5Xwp4ley8O", "itemId": "x7WjlOXiptUNAMl7", "language": "CLqf", "region": "kqwPhFMNk3r5v5Z3", "returnUrl": "JGdWm6KCJivnUpfH", "source": "v9S8r8uxgfR8UFyH"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'pxzq8ma02TJbmSGZ' \
    --itemId 'NV98mQUBp8fRTCSN' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KipjYpQ4eofZyT9r' \
    --userId 'KyWsefVe7Pc9azhZ' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'weGuJCazKdNKY7Il' \
    --userId 'qNRkVEdhjjAHQAwH' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'D6ITryXQc5WmPygz' \
    --userId 'IhGkGmu0eZut3vvu' \
    --body '{"immediate": true, "reason": "AqK7f7bYYfz8F8As"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZPPZAEt3bu1Dmbsp' \
    --userId 'gawKBYDup2jMX1t8' \
    --excludeFree 'true' \
    --limit '23' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '0ZoVAaMVAOeEPpY5' \
    --language 'fIuEV1VBd67RKWEW' \
    --storeId 'apzd07EpMwadNc3y' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'vCogU9fgA5lkO9Rf' \
    --namespace $AB_NAMESPACE \
    --userId 'c5OiZBlNGfzJD7hK' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'Pfi1J5NmJK0zm4FT' \
    --namespace $AB_NAMESPACE \
    --userId 'ajwXMQbmdNAjFJ7L' \
    --limit '46' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'U55F9KBVfupv7bSP' \
    --baseAppId 'WWZov3FcAy0oj9qr' \
    --categoryPath 'WEm0S9VSBAESK89j' \
    --features 'HNqaSN2tlV3CKkJM' \
    --includeSubCategoryItem 'true' \
    --itemName 'TTfAWdTopnWQaAwC' \
    --itemStatus 'ACTIVE' \
    --itemType 'EXTENSION' \
    --limit '64' \
    --offset '83' \
    --region '0wTenXeHadjqtFae' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "displayOrder:desc", "createdAt"]' \
    --storeId 'drodpgBykWIcRSlk' \
    --tags 'pNzBLEqE7PYaiYV9' \
    --targetNamespace 'dYM35yvtfBRB0qM7' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'qCKuMvoElge8za7d' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'BUSrovx2D745sPy1' \
    --body '{"itemIds": ["XUOcCvcS2gTH1Bjh", "aN9mzXc9qMQ9Eltu", "6QX6awJ33MDCeE0t"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE