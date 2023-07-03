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
echo "1..410"

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
    --body '{"context": {"item": {"appId": "uDsrbNbNqQJ8ZL3H", "appType": "DLC", "baseAppId": "AH3g2N1UCD8MG9zw", "boothName": "Zc9wAvEo25PNxgZi", "boundItemIds": ["V42Dqd1XeP51rbyi", "eUvAb2RM64uT8Rvf", "73sYobmlxVJBnnZn"], "categoryPath": "ERivDqwHmUzHH3EH", "clazz": "p4incGAECrK5LyTy", "createdAt": "1982-04-21T00:00:00Z", "description": "5ZyxuWZSecoi6un7", "displayOrder": 23, "entitlementType": "CONSUMABLE", "ext": {"qA092DbakWGlr9yy": {}, "W7vCllZoFuPIxirg": {}, "ov35tHhJ6YD6yHBs": {}}, "features": ["SWtlEPUnR5dVJccS", "5ITEpmXrZt7yqCVa", "usnFN1U75PMSsqgv"], "fresh": true, "images": [{"as": "AQ3ziZvJfTPS6tjY", "caption": "r4XtHQ255KK1lrPi", "height": 50, "imageUrl": "CYzSIou2hDImbvao", "smallImageUrl": "LfpBW28GKarmCAGW", "width": 65}, {"as": "MnPqTG98Snm476ag", "caption": "EtKqDDa8US55IPN3", "height": 11, "imageUrl": "r9Josf3AgIiagjvR", "smallImageUrl": "VtgIr9KS9GrXBWGj", "width": 9}, {"as": "v58s6MAFupNilZ8t", "caption": "fDJghIOrW50X3dec", "height": 27, "imageUrl": "YiTUfZL3nzTfwkFx", "smallImageUrl": "e06j9j1awSaiWWAW", "width": 41}], "itemId": "o4RIkGozDAWWBSio", "itemIds": ["97ixAsbZcy5lEIzw", "slb75TJZiJ5weHuk", "YSZMWUyhnnHauEUH"], "itemQty": {"TnsPn8QdfzLh4JQ2": 20, "0Q4NokrHG1PhlXq3": 23, "dDO9rX0pT3qD5uJ2": 67}, "itemType": "APP", "language": "I76Yx40yvR8RNvRc", "listable": false, "localExt": {"3YmAw1OZflc4XjXu": {}, "azQS0KilGgCpCnki": {}, "zKwVzTjUQE0P5z8p": {}}, "longDescription": "NWwXGsPgOXFHsJrR", "lootBoxConfig": {"rewardCount": 3, "rewards": [{"lootBoxItems": [{"count": 56, "duration": 24, "endDate": "1985-12-23T00:00:00Z", "itemId": "vL6glp4HOHkM83WL", "itemSku": "6XuFBoaQyyIabNr0", "itemType": "OQawJnhWOMCgm0ou"}, {"count": 33, "duration": 26, "endDate": "1976-03-01T00:00:00Z", "itemId": "lVILo5mWUZEGLqtS", "itemSku": "Lql6AygGyrcXYLYg", "itemType": "VaiFJqYenOEWovhg"}, {"count": 98, "duration": 51, "endDate": "1982-10-14T00:00:00Z", "itemId": "g1meXT9VJxv7tRLE", "itemSku": "yHA0jddRbJyXz8xS", "itemType": "gPy3XzKB2T63sgFo"}], "name": "cabzyMAnbmKmEEA0", "odds": 0.7193058198646187, "type": "PROBABILITY_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 61, "duration": 34, "endDate": "1974-11-30T00:00:00Z", "itemId": "7fdp5Pxq3yoqWH6a", "itemSku": "LCc2BTMje17ahdgU", "itemType": "mGIejCK1zDJuYtzl"}, {"count": 90, "duration": 24, "endDate": "1983-05-09T00:00:00Z", "itemId": "Gfb2BpUXdpS3ac9K", "itemSku": "YnWrDM7hJFWv6Ptp", "itemType": "uYZxB6yrLc2dLgUn"}, {"count": 11, "duration": 29, "endDate": "1998-11-01T00:00:00Z", "itemId": "AcF3kNXJWamfSB4G", "itemSku": "BJx0wD98nFWM6jsI", "itemType": "C9w3H5I3k8bhLp3K"}], "name": "voXsHRZPzGlXsOcr", "odds": 0.15268698189930263, "type": "REWARD_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 70, "duration": 73, "endDate": "1993-10-03T00:00:00Z", "itemId": "yATck1pIsDMqO5RK", "itemSku": "HxOGBgOEexSHPoUt", "itemType": "SsL0cNyu1iOsrZ5p"}, {"count": 44, "duration": 74, "endDate": "1987-08-21T00:00:00Z", "itemId": "vbxP0neOXN7fGL6G", "itemSku": "DJ04FFyxyD8crPeB", "itemType": "dpW61Fuy3bl2qAgT"}, {"count": 20, "duration": 33, "endDate": "1983-05-29T00:00:00Z", "itemId": "xF3Ie05hIGPqnVPd", "itemSku": "YUUIMWe47hsLU9zy", "itemType": "4W0Uo115o7FPJOm2"}], "name": "Pj2998XQGBsB4pi6", "odds": 0.375101524050956, "type": "PROBABILITY_GROUP", "weight": 37}], "rollFunction": "DEFAULT"}, "maxCount": 54, "maxCountPerUser": 37, "name": "K0pGYPp4jcqqHrqc", "namespace": "48jN0ob1qRCTa5RU", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 5, "endDate": "1983-04-05T00:00:00Z", "itemId": "m570zrl2pawg1ogk", "itemSku": "ozn7ytOptH0BhaIz", "itemType": "8d8Ro0PV9bOr6NUl"}, {"count": 10, "duration": 91, "endDate": "1977-04-06T00:00:00Z", "itemId": "tkx29mk9S4x3IZTP", "itemSku": "28qWMlpvHFb0wgUF", "itemType": "CAvVxkPLZCw5VgJL"}, {"count": 95, "duration": 0, "endDate": "1978-12-31T00:00:00Z", "itemId": "Kzsdyc1N0MwopGGH", "itemSku": "tigH7PWoBXOPgYN5", "itemType": "N0rIjJ4cAFMwTTOe"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 31, "comparison": "isGreaterThanOrEqual", "name": "m1GxFS6gbRsKRKOR", "predicateType": "EntitlementPredicate", "value": "Z4NOUdePJncUW5xg", "values": ["fNuejX10eXpq18GV", "1ZGYIHt1ZBiCCVEy", "MItWhprooQACuaSB"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "oHFOlAEvXkPP6bKl", "predicateType": "EntitlementPredicate", "value": "hmEuKOCRV3DPbLiu", "values": ["w027XeLyerYJF1R1", "ZOGpNBIymq0YqLoI", "xJe3R7LP6gxDUX3d"]}, {"anyOf": 63, "comparison": "isNot", "name": "z6tyghBBz3uzUdzY", "predicateType": "SeasonPassPredicate", "value": "21O9SFDFCk3YeME7", "values": ["yrMr1ZFfIuVooAFY", "5o4KT5QDtH0SkuH2", "CCSi75c662tZeotV"]}]}, {"operator": "and", "predicates": [{"anyOf": 33, "comparison": "isGreaterThan", "name": "42MEe8XCcRpS0DTt", "predicateType": "SeasonTierPredicate", "value": "AAoEnV2RjMz7IpZX", "values": ["araXW46wDne6IZb2", "UbuWMGhTgDFYM9U4", "qoF6yF3AJMfQJhlk"]}, {"anyOf": 74, "comparison": "is", "name": "1a7XYmRniNfYf0Oc", "predicateType": "SeasonTierPredicate", "value": "WHwB1Bk9ZXLVnPmq", "values": ["wpK5JtMNAhD3hO85", "zvurEZcc9YbYvpde", "nwDoE2RmwHcxwoIr"]}, {"anyOf": 10, "comparison": "isGreaterThanOrEqual", "name": "aIsG8TYA8yzI02K5", "predicateType": "SeasonTierPredicate", "value": "S600fhhwW6U7xyKd", "values": ["qdzypo5TBpfAf6z4", "0xIYzAMytoFFEhXL", "gTCq7QSvowOjCgPQ"]}]}, {"operator": "and", "predicates": [{"anyOf": 10, "comparison": "isLessThan", "name": "fovvDGm3W2aOGOkR", "predicateType": "SeasonPassPredicate", "value": "QkVk6VIBJK1Lg4n0", "values": ["0H0Wm11llNhCCuy7", "cmRtX6YBE6JvnLqA", "IZudyBb0ZBxxDXbH"]}, {"anyOf": 83, "comparison": "isLessThan", "name": "oo9UzowNM7B9y75U", "predicateType": "SeasonTierPredicate", "value": "y4yJi7LG3pP4rHFg", "values": ["cuxmDz69YLP8wVO1", "XreUMPtefPWdOYjr", "ThpgOTAURblZPWvP"]}, {"anyOf": 84, "comparison": "isLessThanOrEqual", "name": "IUDtBXTCTN0sKCxC", "predicateType": "SeasonTierPredicate", "value": "HVNrLfNvHlHTXzlc", "values": ["1qB3oI6IgyrmGJag", "Am3x5atLU7S8nwJ1", "RIrGejdQa9Xnv1Pp"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 30, "fixedTrialCycles": 66, "graceDays": 49}, "region": "mSodvej0yIqo7yuq", "regionData": [{"currencyCode": "YFPFpTgSjxKlhw5j", "currencyNamespace": "EDIqVl2WFCEnkDKx", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1992-08-31T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1988-02-02T00:00:00Z", "discountedPrice": 65, "expireAt": "1983-03-23T00:00:00Z", "price": 78, "purchaseAt": "1995-09-01T00:00:00Z", "trialPrice": 98}, {"currencyCode": "9Uqe5hC5SCthlb1i", "currencyNamespace": "nxWPCZxz8NPkyxXf", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1978-04-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1975-12-20T00:00:00Z", "discountedPrice": 35, "expireAt": "1988-01-28T00:00:00Z", "price": 20, "purchaseAt": "1985-05-13T00:00:00Z", "trialPrice": 70}, {"currencyCode": "R4mej256ptjN9EAY", "currencyNamespace": "Pxih8Wu31PlnBPcO", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1996-01-03T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1987-07-11T00:00:00Z", "discountedPrice": 94, "expireAt": "1978-02-24T00:00:00Z", "price": 30, "purchaseAt": "1994-06-04T00:00:00Z", "trialPrice": 0}], "saleConfig": {"currencyCode": "tBufk6g57vVlww8L", "price": 90}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "pbfnJMLemlBFl44E", "stackable": false, "status": "ACTIVE", "tags": ["tah3jmLqUT7dBQFn", "RFmMQkmmY2SRol6B", "uBlY5NIxjLQTwcz2"], "targetCurrencyCode": "YDj0gJ3pPFDQfdkS", "targetItemId": "lnzoHpjILnEYJoB0", "targetNamespace": "c0Cy9A8FbFi5gPnk", "thumbnailUrl": "AlGJxgDzDBdtmodn", "title": "OKHrxoI4J2CyGSNA", "updatedAt": "1986-04-10T00:00:00Z", "useCount": 17}, "namespace": "NtEGd57XBr3jTG4H", "order": {"currency": {"currencyCode": "pYRvcloOlnqdkCHs", "currencySymbol": "bqmGRtElh2HQNHW3", "currencyType": "REAL", "decimals": 41, "namespace": "enKRgfycptUZFluN"}, "ext": {"7DLDB2RaXzqH0eK2": {}, "sSjbePabcL0EoLwS": {}, "ceIxev1YAXKo6mhZ": {}}, "free": false}, "source": "DLC"}, "script": "5EEh2ecFRFtLHltJ", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'fE6yQSiRkeH2rVCE' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'PhLiEoSohXFBeY4T' \
    --body '{"grantDays": "ENP9qwzWt8AypqEc"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '6JAsPg8JrgBexcbf' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'VLl2AQmWxkyv21kP' \
    --body '{"grantDays": "llXjSiM0mlfdERw7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HinmhIzRd4mjusQg", "dryRun": false, "fulfillmentUrl": "rGhU9RK7LQ5ML4Ya", "itemType": "APP", "purchaseConditionUrl": "1duhNt5o9ihyQPYC"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'zGqsVudBtbWg8wmW' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'udi8wuMIYdkaLqVd' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'l4M3toUmdmJrXXiG' \
    --body '{"clazz": "Rr1XsEJdKHzwWgJW", "dryRun": false, "fulfillmentUrl": "gZQ1KnGY30SWYhAh", "purchaseConditionUrl": "PS7fNGWtMkKZF6Ur"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'mGP5gyUboFp6iFqw' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --name '22LZnEw0WqjD5Ufz' \
    --offset '10' \
    --tag 'wNA2nvz2Rh9l1PS5' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qpbRK2EPwoZJPTGg", "items": [{"extraSubscriptionDays": 36, "itemId": "mHdJQk2gUpU3vdAY", "itemName": "pzn3jNwfAXkh6EpE", "quantity": 84}, {"extraSubscriptionDays": 35, "itemId": "raM2MEuvxUGpbZKi", "itemName": "vYxhK3lKInvSPYTZ", "quantity": 54}, {"extraSubscriptionDays": 5, "itemId": "34ZB8tVdGGo6SyZM", "itemName": "JN6F8udKLrFrLMbL", "quantity": 38}], "maxRedeemCountPerCampaignPerUser": 40, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 46, "name": "zaWgimcVKfk8Beq4", "redeemEnd": "1980-07-29T00:00:00Z", "redeemStart": "1973-09-04T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Ydl9ewObCnv7ru7K", "8lZ9rREPp7ZUcHkk", "efWwnFpzTgMwZ9KQ"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'd0EDAIXw5XYf6YQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'jyVvPJ847Be5cOEk' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8L59bRLl3NsCURkD", "items": [{"extraSubscriptionDays": 61, "itemId": "sxbwEm3iRx6ZdjAe", "itemName": "2CkCDEstu17WgRAB", "quantity": 42}, {"extraSubscriptionDays": 85, "itemId": "MegXPyzwWG9GmBsX", "itemName": "R5b40XllHReHEYZj", "quantity": 46}, {"extraSubscriptionDays": 33, "itemId": "zL1QpGUqCaaIvQsr", "itemName": "G10mi8CqUXnLnfjz", "quantity": 99}], "maxRedeemCountPerCampaignPerUser": 68, "maxRedeemCountPerCode": 45, "maxRedeemCountPerCodePerUser": 85, "maxSaleCount": 5, "name": "6Ad437ib64MpnhGV", "redeemEnd": "1976-08-06T00:00:00Z", "redeemStart": "1996-05-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["vnZAs0kqIDTtX8CF", "UeVQgDGchfp1jXIu", "CusiK75jvH7yoGGm"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '2pMwIlFZsOcPXDIe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetLootBoxPluginConfig' test.out

#- 20 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "YTa87tKGG24i2Djy"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "sGpOFHV44vMTXWmt"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateLootBoxPluginConfig' test.out

#- 21 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeleteLootBoxPluginConfig' test.out

#- 22 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 22 'UplodLootBoxPluginConfigCert' test.out

#- 23 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 23 'GetLootBoxGrpcInfo' test.out

#- 24 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetSectionPluginConfig' test.out

#- 25 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "w8o4WETxpbfCD5D3"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "cseWFGf2KCi9D4zh"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateSectionPluginConfig' test.out

#- 26 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteSectionPluginConfig' test.out

#- 27 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 27 'UploadSectionPluginConfigCert' test.out

#- 28 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'kBt17QM5P69UqBhF' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'XgYCWQ0xOunUowVL' \
    --body '{"categoryPath": "d7g1225bwPmHzrSI", "localizationDisplayNames": {"FMpcyLSloRxonARK": "j3N1MkM22wS4hqj8", "a0zKW4r6apgBpuvd": "APN68sRSyqf66FbJ", "U2rT92XqyxaatPcK": "JaiPDDpo26SWzvH4"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'uX6czrlJWkWPocCZ' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'L7cfjGkJ2h4ySX3s' \
    --namespace $AB_NAMESPACE \
    --storeId '3mYqpQuI3bdMp3MD' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'HcyIo4Q6JPvxSw0G' \
    --namespace $AB_NAMESPACE \
    --storeId '1PIpqc5x8V0uyPns' \
    --body '{"localizationDisplayNames": {"shZG7CyLvLsAeyph": "b9fbBIjw3trwWV6w", "mdrmoRMH9Q7Sd3TA": "9MryJNZr9zG4W6ye", "gPGiazX05skTkG3t": "VnbbM3ZExg8ccH7H"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'CpfcPflrLSTCmXfx' \
    --namespace $AB_NAMESPACE \
    --storeId 'xZAb6m9rO9mgOmnS' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'K3fM3JjdW4uCFj4C' \
    --namespace $AB_NAMESPACE \
    --storeId '74m8dMv7ILQJgVHg' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'kjF4UxV8UOlS0oWc' \
    --namespace $AB_NAMESPACE \
    --storeId 'LxinkgxZI60CeqiJ' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'pzoRFOpX1WLmOeCJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '92' \
    --code 'NVKOpY43ZgB3E0ow' \
    --limit '72' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '3LzpbEdHmd3Jb7UP' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 4}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'a05jHKv5MQi3euMQ' \
    --namespace $AB_NAMESPACE \
    --batchNo '71' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'o4fVrIBbPqyvl2m6' \
    --namespace $AB_NAMESPACE \
    --batchNo '24' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'vNBTYBbzPNQS756x' \
    --namespace $AB_NAMESPACE \
    --batchNo '20' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'OcsnXkSYsmPIcLvh' \
    --namespace $AB_NAMESPACE \
    --code 'ucGMxvMBVFdnC3pn' \
    --limit '87' \
    --offset '61' \
    --userId 'BQSXAczSUfYKSOHM' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code '7bQcXIkA9iiZr9wk' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 're7nvNXmqUxZcqno' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'zhLP4ZJzR4JshzgK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'EnableCode' test.out

#- 45 GetServicePluginConfig
eval_tap 0 45 'GetServicePluginConfig # SKIP deprecated' test.out

#- 46 UpdateServicePluginConfig
eval_tap 0 46 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 47 DeleteServicePluginConfig
eval_tap 0 47 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 48 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 48 'ListCurrencies' test.out

#- 49 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "JjDJAz5kC8TvyXNk", "currencySymbol": "CZMwGtnIysBCJQYi", "currencyType": "REAL", "decimals": 83, "localizationDescriptions": {"EhZWe2TgaokTkBfB": "Ro72uLeEKQevCEDF", "MlCsP1Z4bJUGdQIo": "6YOHr3bcVfpe5Ehx", "puugWV1Atpfx2feO": "ERSlbSJTOznfW48P"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'QtZzZaiuhQXZT6PO' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"K4QDlEYXYmR9sGkL": "ObQ8fm5qwb62D3fL", "wU65YJu5eJL0qhUb": "YlBx0vTZTFHxY3yJ", "N1ldnRenoHuyBRFV": "jE6xWrVehsRlSE8Y"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'FDMyDX673mZcuAbH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'D0HgFuMY9Duov0gp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'XCe1NWKxA8LCyScQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencySummary' test.out

#- 54 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDLCItemConfig' test.out

#- 55 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "rKas2zcZnR9qsJhF", "rewards": [{"currency": {"currencyCode": "Lbd6DMdOWrufSzJa", "namespace": "n9341JWI2t0iggZl"}, "item": {"itemId": "SAh31Hd0iVwSNcWH", "itemSku": "I5hpiPiCG5RoszGw", "itemType": "NvAOVJZYrDbqgBy4"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "1vVNtpNF6DdelpQK", "namespace": "v2zIeqJzeyOyfzlr"}, "item": {"itemId": "tOnwo6SsssCIAavT", "itemSku": "2DMWfkqZhJHjq2Cu", "itemType": "d1u870TObaRiZpwd"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "cxb4IMvneo8JwYoN", "namespace": "biYOFUtGw8d8M5Xz"}, "item": {"itemId": "6dTkzloFvSWmb2GN", "itemSku": "7UVTQJwortv7AzWu", "itemType": "ue59UYjnPQbo75Cx"}, "quantity": 32, "type": "ITEM"}]}, {"id": "bSmhm0iqG3fz9Sj1", "rewards": [{"currency": {"currencyCode": "QERmrkEvFaXqCnbF", "namespace": "hSN228i5TF9QyJMo"}, "item": {"itemId": "GBPV2LCPyEk6CuMW", "itemSku": "ed9GaxF5CRLIt5YC", "itemType": "JuzVPnrMkC9fvQw6"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "y9o8D3eUYBSy3p78", "namespace": "2JFXtDvgoFI2W0hL"}, "item": {"itemId": "Gv3HKoeNhnqA44UX", "itemSku": "45NrjsNFMk0Y7Tfc", "itemType": "U6FjSrhGzpBH9BYN"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "FqnSeDqYnF1Woibm", "namespace": "qc3kmSJbYdtL4lUH"}, "item": {"itemId": "Nkk9wzSAPot9CqDo", "itemSku": "nf9aaJ26sn0ljyQh", "itemType": "vf47DDZlHrnU37mg"}, "quantity": 20, "type": "ITEM"}]}, {"id": "iPZpHrnFuWNIegge", "rewards": [{"currency": {"currencyCode": "koJyEWAkAtZu0dj9", "namespace": "IGr91vumz4qnv0tw"}, "item": {"itemId": "2x3sR1lZ98uCg8Ou", "itemSku": "YHJTy78R8qLQJDjq", "itemType": "jLKo2mS2uLSctOou"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "AhO1nvCPWsIrtT3p", "namespace": "HVgsKk94wzooUBjE"}, "item": {"itemId": "H630fCRTKcSBJmeU", "itemSku": "MGPgqvMiKXgJuVy7", "itemType": "m1EEiEL9am2NZBw9"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "pDya52ausGjPLJaC", "namespace": "kuwC1312s8XGVTlb"}, "item": {"itemId": "ElxZ83bbb5gB7jz1", "itemSku": "sGTE1lPD8zruFtGH", "itemType": "i4ZfoYc5t2En0n4o"}, "quantity": 19, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateDLCItemConfig' test.out

#- 56 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteDLCItemConfig' test.out

#- 57 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetPlatformDLCConfig' test.out

#- 58 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"RROmkOTHIJIIskzC": "lsNYFfo8egA31WAE", "Vr9UeMbSESuBZsEj": "wONJbrgxyOHkHU9U", "zDLotYu7zNZ7DheN": "Nr6uBLUIPJM4fIIz"}}, {"platform": "XBOX", "platformDlcIdMap": {"81FIHGkxpJ7e2M8d": "oWumVDoLhVQfjjXl", "zkMQqVkZ64qBfs2k": "NHICkchTjQgAxyj7", "4luzj1zOBVRonSNx": "4WpmsAJHmZkafaAc"}}, {"platform": "XBOX", "platformDlcIdMap": {"YWN6DFX0b81dq2dT": "HQ2iuHCkm8eyVOgy", "bVMvoh52uF2ah7Fk": "mXUGliMkMYm0aypt", "2oI6SvLNZ0lDfS2O": "5ujksqTSZjVRg6nV"}}]}' \
    > test.out 2>&1
eval_tap $? 58 'UpdatePlatformDLCConfig' test.out

#- 59 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeletePlatformDLCConfig' test.out

#- 60 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'XlEYMbVsGryzYfRT' \
    --itemId '["PEeOia4RiUsY60SY", "6JD2QHGaOHwWx6qE", "qXxI5sjdGyXDGI4R"]' \
    --limit '88' \
    --offset '87' \
    --userId 'HyJxc3Uv4nmvm7tY' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["SnY6NcQ4Zhz6sOHL", "3fDST8LrQoG0KyrQ", "n7FfKEGUjtFDUpEG"]' \
    --limit '11' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1989-05-06T00:00:00Z", "grantedCode": "ERq2D9tzr7trMN5a", "itemId": "4CcoPf2Vzb7frJ5q", "itemNamespace": "UJSGfFmIM6Bjj19Z", "language": "tv_833", "quantity": 35, "region": "ssd9egAGZu3ymntv", "source": "PROMOTION", "startDate": "1999-02-28T00:00:00Z", "storeId": "qSHMCdNhNTGz1kgU"}, {"endDate": "1979-03-08T00:00:00Z", "grantedCode": "64FxlqdRS7sU5VmT", "itemId": "J26kYxfYwgqZgqxK", "itemNamespace": "qm0OV6n8HwDtgBRv", "language": "Gvy_FMib", "quantity": 80, "region": "ypBvtmdMEgjcoZEA", "source": "REWARD", "startDate": "1977-07-07T00:00:00Z", "storeId": "SnUaVO3ZVBQNOlzB"}, {"endDate": "1973-04-03T00:00:00Z", "grantedCode": "iEbRf4uSAFXw6kRd", "itemId": "tqyVRDWd8E0Zfuwp", "itemNamespace": "zC5ShMN6atr9x3e6", "language": "oJXq-XTSk", "quantity": 1, "region": "RiekeIIgyXqgVYHr", "source": "ACHIEVEMENT", "startDate": "1997-11-10T00:00:00Z", "storeId": "8BTWKtdyMktWxgYc"}], "userIds": ["ngLB2XNn32ysja5E", "Ss28fChsYI6Yr4YH", "3Ywpfbl3CDcO8942"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["QG64vpRQeKYe5H7b", "LkWs6pzh1SLcEEMa", "tJ5AXr3BnMNG1Y9r"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'a85zTn9kolBVaChO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '37' \
    --status 'SUCCESS' \
    --userId '4csckLHCccbFJr2s' \
    > test.out 2>&1
eval_tap $? 65 'QueryFulfillmentHistories' test.out

#- 66 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetAppleIAPConfig' test.out

#- 67 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "pbUsV06w6J1u8id2", "password": "MCKNIdcmkwSQP2CV"}' \
    > test.out 2>&1
eval_tap $? 67 'UpdateAppleIAPConfig' test.out

#- 68 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteAppleIAPConfig' test.out

#- 69 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEpicGamesIAPConfig' test.out

#- 70 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "N5vJtM4vleI7Y9M1"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateEpicGamesIAPConfig' test.out

#- 71 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteEpicGamesIAPConfig' test.out

#- 72 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetGoogleIAPConfig' test.out

#- 73 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "OGJUpqB2H3XnzJp4", "serviceAccountId": "sNNjTOWzCs8Hlgki"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateGoogleIAPConfig' test.out

#- 74 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteGoogleIAPConfig' test.out

#- 75 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 75 'UpdateGoogleP12File' test.out

#- 76 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetIAPItemConfig' test.out

#- 77 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "DJIOWWIR0wkiJD2M", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Lch6ZCDumT07eC2M": "Xsiy8jClYo3OjWKX", "EikVqU7QNSbr5qR4": "C3gSSoxCM5abwEkx", "FwyIy6Zw3yWXtRxn": "zr8wD2qgSHeZv2VU"}}, {"itemIdentity": "jp9rAj9q111HPrfe", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"sPfKJrmEgBSxGVns": "Qvb7jto6fVEPsmoC", "cNxBWWXGMF5n4evy": "bvGCPTJqJRIZRgxs", "iJR9rfBbGibx7nkX": "IBlWl8dV8V4K7P6C"}}, {"itemIdentity": "fIrRhBYoIyuRXWxm", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"otLawMKvrXQaWHA3": "YPQ1zogS7nvJ9oqU", "0KTtinDCeMfo76WK": "CP0eWE9wy3cikpkZ", "iLwGfh5LqvBBrW9u": "rQoLJN6zM6w8Ver6"}}]}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateIAPItemConfig' test.out

#- 78 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteIAPItemConfig' test.out

#- 79 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetPlayStationIAPConfig' test.out

#- 80 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "noBZihROnPzCPM0S"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdatePlaystationIAPConfig' test.out

#- 81 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeletePlaystationIAPConfig' test.out

#- 82 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetSteamIAPConfig' test.out

#- 83 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "MhaO178k4X4pqBgk", "publisherAuthenticationKey": "jwluiMKo24gMaB6s"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateSteamIAPConfig' test.out

#- 84 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeleteSteamIAPConfig' test.out

#- 85 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetTwitchIAPConfig' test.out

#- 86 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "ie8r3FFOOL0fHKQO", "clientSecret": "m2OTmTRmuolc2QaO", "organizationId": "HOtxjWkBNch3RRPQ"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateTwitchIAPConfig' test.out

#- 87 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteTwitchIAPConfig' test.out

#- 88 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetXblIAPConfig' test.out

#- 89 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "u6P3ECYYeBINFhwT"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateXblIAPConfig' test.out

#- 90 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteXblAPConfig' test.out

#- 91 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'EjETkiTLBNgM44XL' \
    > test.out 2>&1
eval_tap $? 91 'UpdateXblBPCertFile' test.out

#- 92 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '3QAzqmlgDkM1guv8' \
    --itemId 'HcduJsHGRF1D0Pwi' \
    --itemType 'LOOTBOX' \
    --endTime 'MWaDC9Yb0Bv2l0aS' \
    --startTime 'GRkl5iWWyGRNz2X9' \
    > test.out 2>&1
eval_tap $? 92 'DownloadInvoiceDetails' test.out

#- 93 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'yTr9SVBcd95tbqfK' \
    --itemId 'DQpu1ZmfBnmzsLmY' \
    --itemType 'BUNDLE' \
    --endTime 'UNkamMeCHQdRYfxw' \
    --startTime 'Myg0DERM0rCx3nQ7' \
    > test.out 2>&1
eval_tap $? 93 'GenerateInvoiceSummary' test.out

#- 94 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'HQWQGKlrHgf5cZ4K' \
    --body '{"categoryPath": "ylYG6uJ3x2FyQeEb", "targetItemId": "x2gph8qCN4sAisFu", "targetNamespace": "POh17zeGK6A1kxvZ"}' \
    > test.out 2>&1
eval_tap $? 94 'SyncInGameItem' test.out

#- 95 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '8Va9GjM4s6bBDACj' \
    --body '{"appId": "hZWB6wDzWJF2OMVW", "appType": "GAME", "baseAppId": "vqfc1BbKbPtWjLDy", "boothName": "2L6VU3ADX3qZvspw", "categoryPath": "HzpsNA8RI8QnoB0r", "clazz": "WC4MHd4I5RMRjcsP", "displayOrder": 35, "entitlementType": "CONSUMABLE", "ext": {"ZnLKr9iMboJlgcOn": {}, "WwZfSEj26c7moUpU": {}, "S6DgrCWzgsEyKlo3": {}}, "features": ["MGkRlxkY5Km1b0S2", "On2tOGZvPoj9pNDL", "SawGm9EzZiK2c8yt"], "images": [{"as": "Uc9wJxxs8Krk262B", "caption": "t7SLZN1dXtJeLA5H", "height": 87, "imageUrl": "3iaAjFvmEKIzoIw0", "smallImageUrl": "oI0OofzcKgVdCj48", "width": 72}, {"as": "jE6iqPCclLUDXUd5", "caption": "UmOxq0NXDGgzWSoX", "height": 30, "imageUrl": "KkIiuCKru5R0ENhx", "smallImageUrl": "1pUREFEV6GFQJjR6", "width": 29}, {"as": "AL1LiWgj6r0orLbv", "caption": "xHpyEvPKzFrapyS0", "height": 79, "imageUrl": "54PEXUAj9IiHg9wO", "smallImageUrl": "aqA8fB9UbDGuLPWL", "width": 29}], "itemIds": ["Qm9IxmSHqX7uqViM", "8BYr47QSh0YzOIbd", "VMllAOv05kFEaF4p"], "itemQty": {"KJOhFgWv8UDaPnJG": 59, "CIn7fukamTgSOMKY": 35, "u7vvj1IegqsZEw8B": 23}, "itemType": "CODE", "listable": false, "localizations": {"OP6adOrzENzv7AEQ": {"description": "OdGLaXndvPjraxAe", "localExt": {"enRkkuxpcUZD9Azd": {}, "611kR3OuSc404noB": {}, "WvZoOmGaXI7Lc4aw": {}}, "longDescription": "Wt6lBtgBpLXaaZs8", "title": "J9bgGhgrPMYlU4P6"}, "6GwnFrzaF4fYFEU6": {"description": "RwRnOVKv0qCKxbnl", "localExt": {"Ghj1u8s2mpt2knn8": {}, "nl9JaelSMdlcbUTc": {}, "vfgx8bnbRtihEUFv": {}}, "longDescription": "Rjdw4fQUydToLTug", "title": "6iy5cMt5EY1guuCk"}, "U17NjmxafX0nBPvd": {"description": "Ogb3GmIVJRosqGuQ", "localExt": {"fnNmWYMWN0Jvokde": {}, "tZAFzpLKIXCN0JtB": {}, "FAYmwTXppfiVSj9I": {}}, "longDescription": "l2KYzYlMZVFUz7Ah", "title": "exbioeEFiO0RvLBB"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 65, "duration": 75, "endDate": "1982-05-13T00:00:00Z", "itemId": "nMRIoWg0yV84mGbl", "itemSku": "aST3l7LDYVDdRjIN", "itemType": "4s0kWYSvVpFlAPls"}, {"count": 26, "duration": 29, "endDate": "1996-09-18T00:00:00Z", "itemId": "bl2wvP4vowvsUp0l", "itemSku": "sLfULQMfXd0x6bey", "itemType": "b1ZSpaKu0oWCW3zM"}, {"count": 56, "duration": 20, "endDate": "1989-04-16T00:00:00Z", "itemId": "Shj5SivoyJDzdT3j", "itemSku": "AXvyLeGUt2S7BEd7", "itemType": "XWTifCKCDSl3jlqY"}], "name": "bOXQXRYZGTyx39a6", "odds": 0.6990599523550695, "type": "REWARD_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 87, "duration": 19, "endDate": "1982-09-06T00:00:00Z", "itemId": "wNyiAohKraeoyuaX", "itemSku": "AFBu4DgRZIaG3B6G", "itemType": "XbUY9fIrOK76rUtS"}, {"count": 2, "duration": 70, "endDate": "1984-10-14T00:00:00Z", "itemId": "zEEvgcjooLKCigJr", "itemSku": "yoZuFaFkoqMFpWzl", "itemType": "5GsAmW3KcCNOSjeZ"}, {"count": 29, "duration": 20, "endDate": "1974-08-30T00:00:00Z", "itemId": "RQdKlN6pbeZR0GHO", "itemSku": "VnXJYSbZGsImaHc4", "itemType": "PTwiSUSDU9ZIVNWA"}], "name": "GnT4iAJXYyaczErv", "odds": 0.3145290749105798, "type": "REWARD_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 49, "duration": 3, "endDate": "1984-02-07T00:00:00Z", "itemId": "0hyTZYNPhaq3Uoc1", "itemSku": "TZTdqgZeP8tYGXvI", "itemType": "MksJwEPFJmiM4VSt"}, {"count": 45, "duration": 30, "endDate": "1981-10-27T00:00:00Z", "itemId": "pr5gnAKsBZph3zwR", "itemSku": "5JH5qfNd4sa9GJ8G", "itemType": "hW1MeRHYjJOrrq7u"}, {"count": 89, "duration": 52, "endDate": "1976-12-28T00:00:00Z", "itemId": "rYZGnqlf8J6yWlaG", "itemSku": "K3vpEmq5oREi4cX1", "itemType": "TTOdffyA4gxO24mE"}], "name": "g7WGOsT8lYHgDNkN", "odds": 0.185336747580635, "type": "REWARD_GROUP", "weight": 50}], "rollFunction": "DEFAULT"}, "maxCount": 76, "maxCountPerUser": 16, "name": "1hImmG6JjGAN7LAU", "optionBoxConfig": {"boxItems": [{"count": 17, "duration": 65, "endDate": "1984-07-14T00:00:00Z", "itemId": "8RWukwXL56DzarnY", "itemSku": "0zZN2aDHPN8V3vNs", "itemType": "vZtrWBwGMm7lQmMq"}, {"count": 78, "duration": 49, "endDate": "1988-08-01T00:00:00Z", "itemId": "Duih0D7ceBfPPgw0", "itemSku": "uLjnPzFkdHFksIC6", "itemType": "ZOkYBKhgke21f1KI"}, {"count": 91, "duration": 31, "endDate": "1974-03-24T00:00:00Z", "itemId": "GTunU6jld09uTFta", "itemSku": "LxI7wieOglawqgHG", "itemType": "4rUE1I50uIJi0v43"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 66, "fixedTrialCycles": 74, "graceDays": 70}, "regionData": {"4At9fBkXXD4jVcBw": [{"currencyCode": "dw9FMVnWb2OxObPw", "currencyNamespace": "up22bVddfygdQipw", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1978-09-11T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1979-01-18T00:00:00Z", "expireAt": "1986-04-15T00:00:00Z", "price": 30, "purchaseAt": "1989-03-09T00:00:00Z", "trialPrice": 55}, {"currencyCode": "ClYJg26j3FdtTnOR", "currencyNamespace": "H2gO6b5rP3zsM1cx", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1974-02-06T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1990-10-22T00:00:00Z", "expireAt": "1997-09-18T00:00:00Z", "price": 14, "purchaseAt": "1995-12-22T00:00:00Z", "trialPrice": 7}, {"currencyCode": "O5f9to3sOD8JWF21", "currencyNamespace": "cxYLBXlDJ0OoVyuE", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1998-05-22T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-02-19T00:00:00Z", "expireAt": "1978-10-02T00:00:00Z", "price": 65, "purchaseAt": "1983-08-09T00:00:00Z", "trialPrice": 5}], "dM5nb8oFucwozir0": [{"currencyCode": "2iSKVg925DP9kqDA", "currencyNamespace": "P4aoeaEbW8SrEEHE", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1992-07-19T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1973-05-29T00:00:00Z", "expireAt": "1983-05-07T00:00:00Z", "price": 43, "purchaseAt": "1972-09-04T00:00:00Z", "trialPrice": 100}, {"currencyCode": "wZ1xZpTwwW8UCrDi", "currencyNamespace": "w7Nq7rKvgJV3ZPfn", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1986-05-09T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1974-03-11T00:00:00Z", "expireAt": "1997-12-05T00:00:00Z", "price": 48, "purchaseAt": "1979-07-18T00:00:00Z", "trialPrice": 37}, {"currencyCode": "20LOMnCRLlmUxJne", "currencyNamespace": "a81bJv61GboOnut6", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1993-12-10T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1982-12-20T00:00:00Z", "expireAt": "1995-11-26T00:00:00Z", "price": 85, "purchaseAt": "1977-07-14T00:00:00Z", "trialPrice": 29}], "Cc9X2oD8obPChWzp": [{"currencyCode": "7WX9ALTrqLYz1Lgs", "currencyNamespace": "lO2XkKFdRxto5345", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1983-10-12T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1981-09-02T00:00:00Z", "expireAt": "1996-06-17T00:00:00Z", "price": 99, "purchaseAt": "1976-12-18T00:00:00Z", "trialPrice": 67}, {"currencyCode": "0Vnk3KM3lXV2ZWwr", "currencyNamespace": "Bn5Fzgd4qVXya40H", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1974-10-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1980-12-20T00:00:00Z", "expireAt": "1981-08-21T00:00:00Z", "price": 99, "purchaseAt": "1978-12-06T00:00:00Z", "trialPrice": 31}, {"currencyCode": "plx1hbMPjSfssynI", "currencyNamespace": "tjzJbg1zhCO47rPa", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1979-07-18T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1999-01-13T00:00:00Z", "expireAt": "1976-02-08T00:00:00Z", "price": 7, "purchaseAt": "1993-03-21T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "gyAZcTBJjblTQxPi", "price": 0}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Lw3KTpLaPcBtPYo2", "stackable": true, "status": "ACTIVE", "tags": ["cCrsImCd8ePstPoO", "vOLw9iO7eEtg8uaN", "gu96ynnetjVSJr9N"], "targetCurrencyCode": "Sqte5scwPEcQs8ft", "targetNamespace": "fhd7F6zMF9AyziUn", "thumbnailUrl": "u4vvQO4xFF5kwaEd", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 95 'CreateItem' test.out

#- 96 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HCIZs3B6JaLvmYK1' \
    --appId 'L78U6UYOiZuBvGvH' \
    > test.out 2>&1
eval_tap $? 96 'GetItemByAppId' test.out

#- 97 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'EPs5TJ6JIsorVk8Q' \
    --baseAppId 'FGDaQYOKZLsmjcaf' \
    --categoryPath 'h0tPzhmOGIew3FAQ' \
    --features 'oOm5u8Mvx46THjnS' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '90' \
    --offset '26' \
    --region 'to38UlT71G7FFa3j' \
    --sortBy '["updatedAt", "updatedAt:asc"]' \
    --storeId '2G8prhsRJN8x8jGW' \
    --tags 'w4fN7wCgACFzMiBi' \
    --targetNamespace 'hrirJKU7AzaTQaEH' \
    > test.out 2>&1
eval_tap $? 97 'QueryItems' test.out

#- 98 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["qdI6cRUAlkU5QQCJ", "FKGl9FOzbAZUMFUw", "EpqB6RY0syk5RbXR"]' \
    > test.out 2>&1
eval_tap $? 98 'ListBasicItemsByFeatures' test.out

#- 99 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'RW6tMCT9dxLOQ39z' \
    --sku 'm3iN0th1XQgGL9kd' \
    > test.out 2>&1
eval_tap $? 99 'GetItemBySku' test.out

#- 100 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'vgQ59mDUk5FP6aQ8' \
    --populateBundle 'true' \
    --region 'n27tV045fqokP522' \
    --storeId 'FsBvpMDj0KYUs8s3' \
    --sku 'USCg965mpOkqkjPU' \
    > test.out 2>&1
eval_tap $? 100 'GetLocaleItemBySku' test.out

#- 101 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fUvEGpxDk7l5Y86X' \
    --sku 'JDq9DyXDkI4Luz6x' \
    > test.out 2>&1
eval_tap $? 101 'GetItemIdBySku' test.out

#- 102 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["aYo9ZbSyodIYYXGc", "OHPmjAivXplJz0DI", "RQ8c8YxIDG32ApWq"]' \
    --storeId 'ud56l7JINN9Vw9W9' \
    > test.out 2>&1
eval_tap $? 102 'GetBulkItemIdBySkus' test.out

#- 103 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'zWIpNO8YMedEpv39' \
    --region 'jhPTJIIzpmEKynuz' \
    --storeId 'UeQi0xdlJgbE3uKD' \
    --itemIds 'ywlJsT64XyB4rc3Z' \
    > test.out 2>&1
eval_tap $? 103 'BulkGetLocaleItems' test.out

#- 104 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetAvailablePredicateTypes' test.out

#- 105 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'o3a7EwbU7UKVMtm7' \
    --body '{"itemIds": ["LurFdB8IEYQRiYca", "NJ0TGqc8Dac9UtCG", "BZMEmKh79KNoZeXE"]}' \
    > test.out 2>&1
eval_tap $? 105 'ValidateItemPurchaseCondition' test.out

#- 106 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'P6g3r8zoiq7RkuE9' \
    --body '{"changes": [{"itemIdentities": ["pUexebRvngXN58dz", "u6Nj8aWkJ3ML2PRV", "ALLQPfqhgJGrXlhS"], "itemIdentityType": "ITEM_ID", "regionData": {"r519VBo5hA0xtElz": [{"currencyCode": "QUslWiQRfjHw5BCq", "currencyNamespace": "WyhQNjwasEvOViRm", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1977-10-27T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1979-04-20T00:00:00Z", "discountedPrice": 73, "expireAt": "1984-11-23T00:00:00Z", "price": 26, "purchaseAt": "1995-09-08T00:00:00Z", "trialPrice": 3}, {"currencyCode": "7vrE8VEcqCbbOkUJ", "currencyNamespace": "F6xSn33BSqAF9Wz7", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1993-12-11T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1994-09-05T00:00:00Z", "discountedPrice": 31, "expireAt": "1984-05-25T00:00:00Z", "price": 58, "purchaseAt": "1972-08-30T00:00:00Z", "trialPrice": 11}, {"currencyCode": "HWpy2Na5hxZqZ1rC", "currencyNamespace": "l0Kd5hPSjYyE7Nm8", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1996-04-25T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1994-08-25T00:00:00Z", "discountedPrice": 99, "expireAt": "1993-04-07T00:00:00Z", "price": 51, "purchaseAt": "1978-10-21T00:00:00Z", "trialPrice": 35}], "Q7Hoi4MNwMr1jdXv": [{"currencyCode": "wcMbW4Zw3SrJUMVv", "currencyNamespace": "Nydz9SfkneB10AUX", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1998-05-18T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1975-09-03T00:00:00Z", "discountedPrice": 95, "expireAt": "1977-12-20T00:00:00Z", "price": 86, "purchaseAt": "1974-06-19T00:00:00Z", "trialPrice": 21}, {"currencyCode": "r2HfCBKYeBjgV9MY", "currencyNamespace": "JwYgXBIe4SCLAzrI", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1980-08-08T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1989-09-14T00:00:00Z", "discountedPrice": 45, "expireAt": "1989-04-01T00:00:00Z", "price": 95, "purchaseAt": "1985-05-06T00:00:00Z", "trialPrice": 9}, {"currencyCode": "f6xeoz1dJfKkO4gT", "currencyNamespace": "vBX1MNGUaeZFUdRg", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1973-07-04T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1993-04-15T00:00:00Z", "discountedPrice": 18, "expireAt": "1990-01-26T00:00:00Z", "price": 35, "purchaseAt": "1995-07-23T00:00:00Z", "trialPrice": 74}], "ksnTuNpc6Y3y8cRu": [{"currencyCode": "wz4FOHnscg56tMSy", "currencyNamespace": "8EDmvFdSOzHtuZwI", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1998-01-02T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1989-07-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1989-11-20T00:00:00Z", "price": 82, "purchaseAt": "1972-10-29T00:00:00Z", "trialPrice": 68}, {"currencyCode": "y7tLAD4wt5VheaJO", "currencyNamespace": "rvmiHuKMV7ca8MRA", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1986-10-12T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1988-01-23T00:00:00Z", "discountedPrice": 34, "expireAt": "1994-10-30T00:00:00Z", "price": 64, "purchaseAt": "1985-08-10T00:00:00Z", "trialPrice": 53}, {"currencyCode": "23pZWvwR5Qk6TQOh", "currencyNamespace": "YyzqH46MP4fmEMs6", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1999-03-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1997-12-30T00:00:00Z", "discountedPrice": 43, "expireAt": "1974-11-02T00:00:00Z", "price": 59, "purchaseAt": "1982-05-08T00:00:00Z", "trialPrice": 42}]}}, {"itemIdentities": ["974f599gB2KFvl60", "2wjGm6h92pOclaWe", "W4kpNARII5QetczK"], "itemIdentityType": "ITEM_ID", "regionData": {"5wHmzexwX2JYLocW": [{"currencyCode": "stpVQpOSUSdKufNd", "currencyNamespace": "2FdXFdhy40RoTg5V", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1975-03-26T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1977-12-24T00:00:00Z", "discountedPrice": 44, "expireAt": "1973-08-15T00:00:00Z", "price": 20, "purchaseAt": "1995-03-31T00:00:00Z", "trialPrice": 60}, {"currencyCode": "2G1PMs3GU7S20Ug3", "currencyNamespace": "KFBsr5ptwk1IiO3p", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1992-09-15T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1994-04-27T00:00:00Z", "discountedPrice": 81, "expireAt": "1996-09-08T00:00:00Z", "price": 67, "purchaseAt": "1980-05-07T00:00:00Z", "trialPrice": 61}, {"currencyCode": "aaDcYjaiPsDxSZ0e", "currencyNamespace": "85dWzVBGUsOchL20", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1971-08-19T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-01-23T00:00:00Z", "discountedPrice": 16, "expireAt": "1974-12-12T00:00:00Z", "price": 56, "purchaseAt": "1988-08-30T00:00:00Z", "trialPrice": 35}], "j6hk3HJ0PL4nxAAw": [{"currencyCode": "nLz1xumQMC5aSEib", "currencyNamespace": "RmFtZB2zrbZZU0fY", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-09-11T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-02-17T00:00:00Z", "discountedPrice": 3, "expireAt": "1978-02-05T00:00:00Z", "price": 59, "purchaseAt": "1994-07-11T00:00:00Z", "trialPrice": 71}, {"currencyCode": "m8MWDQ0PXupHqgMg", "currencyNamespace": "78WdCpbBHqLz0MOy", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1998-04-23T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1989-09-27T00:00:00Z", "discountedPrice": 67, "expireAt": "1985-07-17T00:00:00Z", "price": 28, "purchaseAt": "1995-06-25T00:00:00Z", "trialPrice": 60}, {"currencyCode": "mbPhjy67XkDM6lkL", "currencyNamespace": "P1fS7BBQRIshD0dB", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1978-10-09T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1984-10-01T00:00:00Z", "discountedPrice": 85, "expireAt": "1995-06-23T00:00:00Z", "price": 35, "purchaseAt": "1975-05-03T00:00:00Z", "trialPrice": 39}], "6Ls3ruWEswCADUyD": [{"currencyCode": "IaWG3WMK0avNnynd", "currencyNamespace": "7IHdfZNdmvYQ1Hp8", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1971-08-27T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1977-01-17T00:00:00Z", "discountedPrice": 12, "expireAt": "1988-05-08T00:00:00Z", "price": 21, "purchaseAt": "1971-02-11T00:00:00Z", "trialPrice": 25}, {"currencyCode": "YliSHQKZSDQtFppW", "currencyNamespace": "ZV6g5XGK2BQztwFy", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1993-10-29T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1983-05-25T00:00:00Z", "discountedPrice": 88, "expireAt": "1995-08-04T00:00:00Z", "price": 37, "purchaseAt": "1998-01-08T00:00:00Z", "trialPrice": 79}, {"currencyCode": "WUWHdCqSTdnwR4PE", "currencyNamespace": "v8jazg6AIPLDbXMb", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1995-03-01T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-01-09T00:00:00Z", "discountedPrice": 0, "expireAt": "1989-06-17T00:00:00Z", "price": 60, "purchaseAt": "1996-03-24T00:00:00Z", "trialPrice": 78}]}}, {"itemIdentities": ["FhIdpThhjczBmGFO", "KUSsNLpKJsaE92ak", "XXZAefI69lgEzTyk"], "itemIdentityType": "ITEM_ID", "regionData": {"TmWGoWDjaPU4pJ8M": [{"currencyCode": "ApD8MVrhIyirNgBq", "currencyNamespace": "m4BQykZpTAhMUygT", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1978-06-26T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1973-12-09T00:00:00Z", "discountedPrice": 55, "expireAt": "1989-03-31T00:00:00Z", "price": 28, "purchaseAt": "1993-03-10T00:00:00Z", "trialPrice": 92}, {"currencyCode": "GcdOUdsu3TT0trSG", "currencyNamespace": "rnUsXfvmlDQQ1AVF", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1989-09-16T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1978-01-05T00:00:00Z", "discountedPrice": 8, "expireAt": "1999-04-17T00:00:00Z", "price": 63, "purchaseAt": "1994-03-20T00:00:00Z", "trialPrice": 3}, {"currencyCode": "fZ9v2chrXesDpc6x", "currencyNamespace": "ISWzkVyy83rFgF0H", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1991-07-10T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1998-08-01T00:00:00Z", "discountedPrice": 68, "expireAt": "1973-11-30T00:00:00Z", "price": 45, "purchaseAt": "1976-12-10T00:00:00Z", "trialPrice": 1}], "RLMA0CedrBquspRa": [{"currencyCode": "YOmMhzsR0PPrX4yk", "currencyNamespace": "S9gxFAu1KFTE8PJ8", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1991-12-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1976-07-11T00:00:00Z", "discountedPrice": 90, "expireAt": "1971-06-03T00:00:00Z", "price": 15, "purchaseAt": "1974-11-08T00:00:00Z", "trialPrice": 65}, {"currencyCode": "x8qxmSn0pIM0fA3v", "currencyNamespace": "XoOdICZ5p0dNs8xl", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1971-06-20T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1975-04-09T00:00:00Z", "discountedPrice": 1, "expireAt": "1974-01-13T00:00:00Z", "price": 98, "purchaseAt": "1985-01-28T00:00:00Z", "trialPrice": 1}, {"currencyCode": "zlATUxFZqfw3SZjJ", "currencyNamespace": "LvTXb0tqNcARjOc3", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1975-12-04T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1984-02-16T00:00:00Z", "discountedPrice": 63, "expireAt": "1973-05-01T00:00:00Z", "price": 26, "purchaseAt": "1996-07-10T00:00:00Z", "trialPrice": 40}], "LsozXQd6AixNBKzJ": [{"currencyCode": "qqV1HgOU09eRtunU", "currencyNamespace": "E9YzG2QZbeJKUtsT", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1994-08-17T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-12-05T00:00:00Z", "discountedPrice": 68, "expireAt": "1996-10-05T00:00:00Z", "price": 87, "purchaseAt": "1971-04-21T00:00:00Z", "trialPrice": 60}, {"currencyCode": "SzR2wgLahmVNx2CC", "currencyNamespace": "eaIesrSZuxSo8LqQ", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1971-11-17T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1991-09-29T00:00:00Z", "discountedPrice": 35, "expireAt": "1980-06-28T00:00:00Z", "price": 32, "purchaseAt": "1981-04-29T00:00:00Z", "trialPrice": 90}, {"currencyCode": "1ggaqu3lWhmRed53", "currencyNamespace": "2yWUuqeH8hVQoA7E", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1987-02-14T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1973-04-07T00:00:00Z", "discountedPrice": 72, "expireAt": "1996-04-01T00:00:00Z", "price": 31, "purchaseAt": "1972-01-05T00:00:00Z", "trialPrice": 38}]}}]}' \
    > test.out 2>&1
eval_tap $? 106 'BulkUpdateRegionData' test.out

#- 107 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'MEDIA' \
    --limit '25' \
    --offset '88' \
    --sortBy 'uCoVPuvBuqVqAGDd' \
    --storeId 'H1HOVRPMvTQSX2H7' \
    --keyword 'mPw05Jukjdqeslya' \
    --language 'XDl0Q6WQJikq9MZu' \
    > test.out 2>&1
eval_tap $? 107 'SearchItems' test.out

#- 108 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '43' \
    --offset '11' \
    --sortBy '["createdAt:desc", "displayOrder", "name"]' \
    --storeId 'LSIs1EO2aIL9v9nn' \
    > test.out 2>&1
eval_tap $? 108 'QueryUncategorizedItems' test.out

#- 109 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'PIjYvHDCFTn4tst7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'iUnig77SNDOWUGtq' \
    > test.out 2>&1
eval_tap $? 109 'GetItem' test.out

#- 110 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Te5ePr9v2vzFpsLC' \
    --namespace $AB_NAMESPACE \
    --storeId 'YNtXFA7VWRBK3YDz' \
    --body '{"appId": "9EMcH85EhhPCZYVx", "appType": "DEMO", "baseAppId": "M5u09LP6Qjl7112j", "boothName": "GeDu3x0g7x3Y7HGC", "categoryPath": "ByTXnguCRJqCPE7v", "clazz": "k9rZzYxW5SNNSZTS", "displayOrder": 53, "entitlementType": "DURABLE", "ext": {"GR4cqZnYFLClmEJf": {}, "jAdCqR8wIvuply3m": {}, "aoNwoaGfDcbNabUY": {}}, "features": ["SqJwBa6zo6w5lZve", "1czEpvlraDcdTqIs", "qorE0QyJSWXj8mnn"], "images": [{"as": "F6aNJJk5ijsCYk1J", "caption": "KklKG4x9orYicAmB", "height": 76, "imageUrl": "CxGfx5Fai9jNEPwG", "smallImageUrl": "UL9p688qftZ8pG94", "width": 61}, {"as": "DNgEEhk5tJNiI65G", "caption": "osQ97ygwF9Dxwa8j", "height": 74, "imageUrl": "aJF9arAdMNOhbzSh", "smallImageUrl": "GYtRn8FKI5MaJEcW", "width": 72}, {"as": "6VxWS3f5oDqQfbKZ", "caption": "fXLiVUhX1ffCnhJO", "height": 76, "imageUrl": "tM8n7wSJPdgA7eEA", "smallImageUrl": "3sULkiyYCYvx7nIQ", "width": 28}], "itemIds": ["sCEaE01xWHIpxkRr", "FvPhIzlX3M93JO5K", "HFxwlyMyQQbCuDtl"], "itemQty": {"daKHq5bLSrke0xgk": 90, "mIbOnanDMxWDmWtG": 18, "lQ9uiEWdH0ah5vRz": 58}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"N9kkkzzWyNHUuMCs": {"description": "JPtcdAYNvadBM3px", "localExt": {"oTFIaxfuEVacSZDG": {}, "ioF6exdHkPNlvTEy": {}, "eAOzlUrJWCOgQUjQ": {}}, "longDescription": "C93gGcI2Vhz0mZd7", "title": "KX3aH9wPJ3RLEFFp"}, "zi8EPTBVPPUdUe6q": {"description": "Jj2zSJEead36oQGM", "localExt": {"Pq0s86DFQCQxsTeS": {}, "BeDYFUmC8BVVvToZ": {}, "lcHL4QKY9GH5PRFS": {}}, "longDescription": "sxUU3y6u564cnJm1", "title": "ysWqvj4ZHe77JIiK"}, "Bva1VaUo8isyqbiP": {"description": "0kiZFK6mo7pCo9Wh", "localExt": {"bYmSZS2mHGgxuiKS": {}, "t2rhLt03yqN7jMYV": {}, "3osOqN2OMrql62jh": {}}, "longDescription": "Coi1ZKai16H9NR5N", "title": "tpzzAXQyLw75PCuV"}}, "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 99, "endDate": "1978-08-15T00:00:00Z", "itemId": "XwkpkBOzzAiByzm7", "itemSku": "PUIHkGWT2TGe6Fng", "itemType": "Yn2k48hwmEHvmm15"}, {"count": 87, "duration": 9, "endDate": "1998-09-29T00:00:00Z", "itemId": "14umPmCiwYSpEoK0", "itemSku": "suATL3tLKZIyiPHT", "itemType": "PMmYA8jjfu96XHKH"}, {"count": 80, "duration": 11, "endDate": "1971-11-13T00:00:00Z", "itemId": "AIcNN1cLiR47jMCF", "itemSku": "zUnu3Whn5tgetffi", "itemType": "tBtyKpZKtH2hZv7C"}], "name": "fy7PDN3jefuXcDL1", "odds": 0.6833067816573609, "type": "REWARD_GROUP", "weight": 90}, {"lootBoxItems": [{"count": 18, "duration": 37, "endDate": "1990-08-28T00:00:00Z", "itemId": "ArJZ7hB32mK7Mswv", "itemSku": "tRLbPxe9Ccp6io5H", "itemType": "vgjQEFFjj7pAP6xF"}, {"count": 9, "duration": 98, "endDate": "1987-04-26T00:00:00Z", "itemId": "4OJHHaVBoXBl23W1", "itemSku": "yKglcVuERyeVjMJM", "itemType": "jjWuoaubcrXtPT8K"}, {"count": 42, "duration": 59, "endDate": "1995-09-30T00:00:00Z", "itemId": "InglxNby6okQZmJ9", "itemSku": "e3ov7kx3SHDBm1ob", "itemType": "hMKZm3p1d0oEeL7h"}], "name": "ry0A9vUpcuWjL9ps", "odds": 0.6987934722379208, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 18, "duration": 47, "endDate": "1976-09-30T00:00:00Z", "itemId": "4zb1q4vQ9OR4COap", "itemSku": "fKz0PBJpOZ3aXxzd", "itemType": "w5MiagZipMHZTa4b"}, {"count": 72, "duration": 77, "endDate": "1985-01-31T00:00:00Z", "itemId": "HWypfI0k99tiM6sk", "itemSku": "na9UNu47S5lb4d7P", "itemType": "rBmbnRdYzqu8kKe6"}, {"count": 5, "duration": 26, "endDate": "1979-12-27T00:00:00Z", "itemId": "r12W5CNuYD0E0gvW", "itemSku": "9hGZbMtTw5ofYCE3", "itemType": "kkoeWPA4ofwQQhhr"}], "name": "pPjwqeNQ3DvAm1tS", "odds": 0.8282909444583083, "type": "REWARD", "weight": 53}], "rollFunction": "DEFAULT"}, "maxCount": 20, "maxCountPerUser": 70, "name": "92SLKPTkNechpvNZ", "optionBoxConfig": {"boxItems": [{"count": 75, "duration": 80, "endDate": "1999-08-04T00:00:00Z", "itemId": "7qkHKRVNKxCup2A9", "itemSku": "IcPXZCb7JTwIAQl9", "itemType": "pEL189hNvyTncA7h"}, {"count": 36, "duration": 16, "endDate": "1976-01-19T00:00:00Z", "itemId": "S3FSKy04XtiZEP0N", "itemSku": "Nw5aZnkkFFg3epYX", "itemType": "hLSJkTAhgG110gRx"}, {"count": 83, "duration": 75, "endDate": "1993-08-19T00:00:00Z", "itemId": "JKLBNvep6xcR8q6p", "itemSku": "Ly47jO0LsYNm7KEj", "itemType": "ne2UU6Nz7i1L0HBB"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 4, "graceDays": 27}, "regionData": {"KmbrrvEGUICAtOnc": [{"currencyCode": "UCgPNgmh4VD48AkJ", "currencyNamespace": "Ix8t66RgjedPK2FF", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1977-09-23T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1977-03-27T00:00:00Z", "expireAt": "1979-10-12T00:00:00Z", "price": 93, "purchaseAt": "1998-06-01T00:00:00Z", "trialPrice": 38}, {"currencyCode": "5eV0tAQ2MkXRj2WI", "currencyNamespace": "te8n0XNk9t4auKVo", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1974-02-03T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1998-12-13T00:00:00Z", "expireAt": "1999-05-31T00:00:00Z", "price": 9, "purchaseAt": "1996-10-26T00:00:00Z", "trialPrice": 75}, {"currencyCode": "CKkDddtPHqNhdXW6", "currencyNamespace": "biKFAakqXvq1Cqs0", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1973-05-17T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1981-08-14T00:00:00Z", "expireAt": "1976-09-21T00:00:00Z", "price": 45, "purchaseAt": "1995-04-10T00:00:00Z", "trialPrice": 65}], "iyJih9Ohgh9jzJLW": [{"currencyCode": "iHohThbYI99L4tkH", "currencyNamespace": "D2jtVtJ4AwSlpdaN", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1991-04-03T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1997-08-29T00:00:00Z", "expireAt": "1971-06-14T00:00:00Z", "price": 80, "purchaseAt": "1986-02-09T00:00:00Z", "trialPrice": 19}, {"currencyCode": "K9nZxF19Bnk2f9Il", "currencyNamespace": "E3vKYa6DqTOti6Rl", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1990-01-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1982-11-29T00:00:00Z", "expireAt": "1988-03-03T00:00:00Z", "price": 20, "purchaseAt": "1980-03-31T00:00:00Z", "trialPrice": 93}, {"currencyCode": "af9zXBcNBBDZ3UNe", "currencyNamespace": "L0KyIYo2sdjsyqYI", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1973-02-16T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1997-06-26T00:00:00Z", "expireAt": "1986-10-26T00:00:00Z", "price": 61, "purchaseAt": "1973-05-20T00:00:00Z", "trialPrice": 100}], "nwwikeH9nWsUDwT8": [{"currencyCode": "nDAzi6a09pPYrPhi", "currencyNamespace": "yop9YchszNTnPszv", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1983-03-25T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1978-09-13T00:00:00Z", "expireAt": "1972-04-22T00:00:00Z", "price": 26, "purchaseAt": "1991-06-14T00:00:00Z", "trialPrice": 19}, {"currencyCode": "pl0FcUq5BFIdtMfy", "currencyNamespace": "pdGYOPWJYHOU3w83", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1980-12-22T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1983-11-08T00:00:00Z", "expireAt": "1980-10-13T00:00:00Z", "price": 99, "purchaseAt": "1984-09-05T00:00:00Z", "trialPrice": 45}, {"currencyCode": "FmDfO4enHaAROTn0", "currencyNamespace": "TIZufdRAKQU3gs0Y", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1988-09-25T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1991-08-09T00:00:00Z", "expireAt": "1985-03-28T00:00:00Z", "price": 40, "purchaseAt": "1988-06-04T00:00:00Z", "trialPrice": 12}]}, "saleConfig": {"currencyCode": "7CEpHUNXpuW7Rtaq", "price": 74}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "buXEld0ERr9KOHxw", "stackable": true, "status": "ACTIVE", "tags": ["FNrNrGNIQjgZrJGz", "2w7XzsnkJJygZq17", "GTLDJyxnN92RxDRo"], "targetCurrencyCode": "55EGGspxfYb0ZML6", "targetNamespace": "H5Ygt34jsDxvKb69", "thumbnailUrl": "POad5utklQJJinKt", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 110 'UpdateItem' test.out

#- 111 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'l3DLXEl9VI04HkuI' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'y9kIRTJSDXdlhRUw' \
    > test.out 2>&1
eval_tap $? 111 'DeleteItem' test.out

#- 112 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'qTwnwTwy3kkw2Iuz' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 55, "orderNo": "LXBF0L72tNwaPzhH"}' \
    > test.out 2>&1
eval_tap $? 112 'AcquireItem' test.out

#- 113 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'kM97mYevkSgbacKz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qTVNeSFzAdZgaBT7' \
    > test.out 2>&1
eval_tap $? 113 'GetApp' test.out

#- 114 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'XcUMRJs8SwaGKNCG' \
    --namespace $AB_NAMESPACE \
    --storeId 'Fjby7OFRzMgNQHRv' \
    --body '{"carousel": [{"alt": "GqBcwFtlLgRs0A3I", "previewUrl": "uiXRyumdJzQfGTlV", "thumbnailUrl": "bOUNNLEG7dSA9tHu", "type": "video", "url": "yJQt19Id1K6RldNP", "videoSource": "generic"}, {"alt": "BMWCSceV2LdznrNT", "previewUrl": "gTce1VhqyrbCKe7U", "thumbnailUrl": "yc1FaVk4mNkXSxCG", "type": "video", "url": "o7BXIudQcc7x6UsP", "videoSource": "vimeo"}, {"alt": "yeecU9Fyc3dekB3D", "previewUrl": "3ASioTwOCYPRr2nz", "thumbnailUrl": "lCdeNCiWYVI5gWjH", "type": "video", "url": "dPystsVByh0mcjlP", "videoSource": "generic"}], "developer": "4WDBNsElenzZBhpE", "forumUrl": "H4hYYTM3nUUJLbwC", "genres": ["Racing", "Casual", "Action"], "localizations": {"WV4hqlb3A036Nhad": {"announcement": "Kd088pJNYlqudisB", "slogan": "aW8olKgpAUnL7hln"}, "gbGJlBCIytjdbkKp": {"announcement": "dcb4LKlUILmJNRCi", "slogan": "LX3mIgjps8wIbs6L"}, "2ygAYLt8HAEHMVoG": {"announcement": "BjmgfgZTF6mXHzDM", "slogan": "gUQ4bR5zevaGc55P"}}, "platformRequirements": {"zkpaKsVLOm1nOEHA": [{"additionals": "0Tw71WhUhNKSQ6q6", "directXVersion": "Nr7vuNEG8GqU8GEg", "diskSpace": "pLW7rtp56OcN0niK", "graphics": "sB7w79fgyGW5fBeC", "label": "ATQgSdXBQZEbSWQX", "osVersion": "LBQlJ8jmYqrQPlv4", "processor": "oUNukzma5AXwVKue", "ram": "sNGRxoBabEdbk1xz", "soundCard": "OuBQJ5SEANcmAdH5"}, {"additionals": "H589GFEt38hCdUTV", "directXVersion": "IJYH94rM54jyuwVL", "diskSpace": "JvIxrY2JJUA0HcX0", "graphics": "lvzygYRGdhhiqI94", "label": "dd6woBz8KsuQpLUy", "osVersion": "jYQWKLn2BktehB6p", "processor": "ncOE44kXsxfVxyXP", "ram": "eO5BTMEsIFxOH0kU", "soundCard": "t2lW3Izq0PYSiYNV"}, {"additionals": "17dfui3c2h2WQRgZ", "directXVersion": "d8SXJSh76JKnSOUW", "diskSpace": "JX1huEUDnDIXNN3F", "graphics": "L2mUt0ehMRWxMOW6", "label": "I9BFes62dSoB1HCv", "osVersion": "sGnwP3PhKJtwJrWy", "processor": "TQyZoXIpEQv31tRf", "ram": "AaPoK5IayJaMjRLI", "soundCard": "UeSsPfo9KDubKxMP"}], "zHucr8fv3hMcGEjX": [{"additionals": "jTc8SEcVadhkGgXF", "directXVersion": "4EWBUZ4j4EltgiKO", "diskSpace": "GR1JxmWaFoK6vouO", "graphics": "VH8ueCbN6iqxCWhQ", "label": "LOGTa6E3b1C71lw7", "osVersion": "4DNPqbQd9HXFnxoN", "processor": "GRBa3wLhFSTLftH8", "ram": "uKRDye9m85FfRaRf", "soundCard": "Vh5OLkjlFJC0ZgyT"}, {"additionals": "4puIKtUXg5xOutCg", "directXVersion": "dEArjGtW2Khjvl1j", "diskSpace": "q2x0GoDkbB48buus", "graphics": "SzZIOOqBKvH4OmRa", "label": "5uqfgJvo6tILDERh", "osVersion": "F9dtVkRpXvL7vS5m", "processor": "Ggk6kViyxqoArJio", "ram": "i6Y1nsaypJ44G6oP", "soundCard": "EF9WJ32GCzkfRZLy"}, {"additionals": "RxLxc877Uj3i5UmJ", "directXVersion": "HkAC5aPwvWMxOrPQ", "diskSpace": "REALSvv9NAONFEdl", "graphics": "8NuxopnWO5FS4dRu", "label": "fiT0KVWiNOFhtSrn", "osVersion": "uCf72Q9baJ9sdHng", "processor": "ZcsJi7KXVXqlG358", "ram": "ZEdIW5vimBRyZA9w", "soundCard": "NZ5xcrqXk4NIIEeE"}], "uCtyDcdLDyMjga6J": [{"additionals": "TPwmj2lmMBLdYzRX", "directXVersion": "fNUV9KOtIAh2RTxs", "diskSpace": "W1SCLtSdbujxhSF4", "graphics": "rL56e5fVkM2RYbvt", "label": "I4InGlOrIbRLl9Cq", "osVersion": "i2Ub4a6W3pXfLZ0s", "processor": "0mHt1YsaYWWBtBKR", "ram": "LgBJp6brSzOAFhI8", "soundCard": "Tv6Kq8UuMQo3jaSi"}, {"additionals": "EKEj8N85xA1azcY9", "directXVersion": "I6tzEbceHKhvXw2T", "diskSpace": "A8i7kh7NL2xbwvHB", "graphics": "swyJviyLhqlCywF8", "label": "NR61hXceUy2sYGx7", "osVersion": "t7Z7LHLDLcsmG8Ps", "processor": "mBw0SPZEEvATazoR", "ram": "88hvt08QfocZwRww", "soundCard": "UhY0HooaPFkAFLZL"}, {"additionals": "SXTxYjCdkmbleMmj", "directXVersion": "DomU8WvVDPlbySo0", "diskSpace": "L5g4zgndX5FSSAeA", "graphics": "Ek19BsAo594LBenZ", "label": "kxCPY6xmNCm8hZHa", "osVersion": "3bqojjJoxdZrtWNJ", "processor": "8J4dScee27UcqgJF", "ram": "MQOpqSbpC25C1GPd", "soundCard": "JUp4z7VxBfpeNgJr"}]}, "platforms": ["MacOS", "Android", "Linux"], "players": ["Multi", "Coop", "Single"], "primaryGenre": "Strategy", "publisher": "rVVsDPzgCzFL8igP", "releaseDate": "1982-05-11T00:00:00Z", "websiteUrl": "lQsqZNv2DSSLQJ8h"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateApp' test.out

#- 115 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'YWtL57wweNkP68i8' \
    --namespace $AB_NAMESPACE \
    --storeId 'MK9O8ozCtyQZ444w' \
    > test.out 2>&1
eval_tap $? 115 'DisableItem' test.out

#- 116 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'y40CK128D8hNzbYz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetItemDynamicData' test.out

#- 117 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'WweAuIvTaKKwngI8' \
    --namespace $AB_NAMESPACE \
    --storeId '9kmdPssSbJON4vGx' \
    > test.out 2>&1
eval_tap $? 117 'EnableItem' test.out

#- 118 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'AsOY6UkJJqfeI89u' \
    --itemId 'fJn84M35IoJI6u8N' \
    --namespace $AB_NAMESPACE \
    --storeId '5aitQBU7ULia7oSo' \
    > test.out 2>&1
eval_tap $? 118 'FeatureItem' test.out

#- 119 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'VQrhqlxrJh62cIIS' \
    --itemId '6khteh8a9IP4hhrv' \
    --namespace $AB_NAMESPACE \
    --storeId 'SMWrEW50xFARdwcm' \
    > test.out 2>&1
eval_tap $? 119 'DefeatureItem' test.out

#- 120 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Fgj20MyoqYhJA6j8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '7avHkx7AGzO9KK55' \
    --populateBundle 'true' \
    --region 'EqfhBytOjHHWi888' \
    --storeId '6TfymARxpY3WMwvM' \
    > test.out 2>&1
eval_tap $? 120 'GetLocaleItem' test.out

#- 121 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'wO9xKg5B49lDl9yX' \
    --namespace $AB_NAMESPACE \
    --storeId 'gjPhFpRtr4yzxQPq' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 1, "comparison": "isNot", "name": "GRkgcOriSMBSTnUu", "predicateType": "EntitlementPredicate", "value": "x7cC3o0u9OuyCTiy", "values": ["LD3PyV9DxywI6BAA", "xlh1pCLoMF0SXoSG", "oZ21SWnb9XrrMeZq"]}, {"anyOf": 71, "comparison": "isLessThan", "name": "Qb5fVyr09SXFBgT5", "predicateType": "EntitlementPredicate", "value": "9qR4MqL1GOSHi7H6", "values": ["M7NFoABBBlOnZLSh", "otzfU8NLLQIInErj", "mSAW0I4518O81ipC"]}, {"anyOf": 65, "comparison": "isNot", "name": "73ffqyd8SwbCBJfT", "predicateType": "SeasonTierPredicate", "value": "qZQQOYTwirDefQRT", "values": ["jED8UxW4dXQARnmr", "DkNUS7yMEWkyKyz4", "o6BMgNSS0SYBM3Ja"]}]}, {"operator": "or", "predicates": [{"anyOf": 47, "comparison": "isLessThan", "name": "uTj6Ftptxhm1MfyW", "predicateType": "EntitlementPredicate", "value": "ppGPNqwJ0xBbwXBk", "values": ["SgAfrBphCqSgoNUx", "liA3i2FiVCOC3Lf2", "12e4wofoIcxEmXAg"]}, {"anyOf": 4, "comparison": "isNot", "name": "H2lFykcEvVNNNfx2", "predicateType": "SeasonPassPredicate", "value": "2G0vMrIydYMbqXKS", "values": ["tBE5R0zIMjznLVO8", "txMtzecbkJbWh2qL", "8YsWgGw5RaMhGA9Y"]}, {"anyOf": 74, "comparison": "isGreaterThan", "name": "0AbdlIdfXhEFUHcB", "predicateType": "SeasonTierPredicate", "value": "I19brCpy5J873hUF", "values": ["h6ByuXoOK9oYy0Lu", "yXo9bDznlqVJAhq7", "sC3aHOjviZA8A4es"]}]}, {"operator": "and", "predicates": [{"anyOf": 4, "comparison": "isGreaterThan", "name": "VT5rKM54IhLa52XN", "predicateType": "SeasonPassPredicate", "value": "jptebDOmg3old2To", "values": ["lD3U1hsv0ROs2hYz", "HSRuiN4IIOkqdGeP", "Mky9RvVjGCSLlVhe"]}, {"anyOf": 99, "comparison": "is", "name": "MnySn8XAT6W9iDHx", "predicateType": "SeasonTierPredicate", "value": "J1o0tRqSZHsOiZDE", "values": ["uxZDe5eZHx7szmFQ", "9eAxNW6qne6Uvy9E", "NjooVyDsSUQgpAZD"]}, {"anyOf": 39, "comparison": "excludes", "name": "AhkZfbopgJ52I8F2", "predicateType": "SeasonTierPredicate", "value": "R3VjphcQSrZ0Db41", "values": ["Avo3abHdxLGkzih7", "NH9crsOSD3WFyVQ7", "Q6C8l2ToAI5TLFS5"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 121 'UpdateItemPurchaseCondition' test.out

#- 122 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ZLY7cpJaVkkXJa2V' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "eqwXqjE3cTaRfzUm"}' \
    > test.out 2>&1
eval_tap $? 122 'ReturnItem' test.out

#- 123 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'pR2a3lVMYtETqfiM' \
    --offset '0' \
    --tag '7Wklnwd3EIAfQMzf' \
    > test.out 2>&1
eval_tap $? 123 'QueryKeyGroups' test.out

#- 124 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "da7BTvSDfAz8CsyH", "name": "ITs6mbUikQMtdKmv", "status": "INACTIVE", "tags": ["R0HOqhAvfbNYIIEj", "MNpjTW6GHsJHzatN", "azyaZ86PHuxMbHvC"]}' \
    > test.out 2>&1
eval_tap $? 124 'CreateKeyGroup' test.out

#- 125 GetKeyGroupByBoothName
eval_tap 0 125 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 126 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'iSUw4tHH4udPCOC1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetKeyGroup' test.out

#- 127 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'iRXfQzCbj8l0Dj05' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xsK0ej2qN4qwaWjp", "name": "q6tV4aYedXCUNS3m", "status": "ACTIVE", "tags": ["qr6flFg8PVpkBFql", "je72zOmpuu2r19ps", "XdAVZyXvuvzYD8DZ"]}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateKeyGroup' test.out

#- 128 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'BPcBmlchqCm4iyQq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetKeyGroupDynamic' test.out

#- 129 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZzRs0iDle3XxIWph' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '16' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 129 'ListKeys' test.out

#- 130 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'FPmlFcKlzXBXbB09' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 130 'UploadKeys' test.out

#- 131 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '0aA8gzr5enEdHi6L' \
    --limit '67' \
    --offset '87' \
    --orderNos '["sINBrz84y1oKO5Ee", "wvRZpK9X9TWDjdmF", "wB8IAzdRAnAvQEef"]' \
    --sortBy 'vim6YRe6vrzkD0Nf' \
    --startTime 'iUlwYdkfK2cHHaxR' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 131 'QueryOrders' test.out

#- 132 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'GetOrderStatistics' test.out

#- 133 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GCGmKQKpPyY8i2wm' \
    > test.out 2>&1
eval_tap $? 133 'GetOrder' test.out

#- 134 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Y6OWQbX3aFSnOCXB' \
    --body '{"description": "qzAvp9TKVJOvhdMs"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundOrder' test.out

#- 135 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentCallbackConfig' test.out

#- 136 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "AgZr279EKoPUPEgQ", "privateKey": "hLK19Iatv5GaJ2op"}' \
    > test.out 2>&1
eval_tap $? 136 'UpdatePaymentCallbackConfig' test.out

#- 137 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'biKxwdmIMMgTNpbs' \
    --externalId 'I0HrYiO2NGTp6vpp' \
    --limit '17' \
    --notificationSource 'ALIPAY' \
    --notificationType 'ShudSiK6sfhwq6id' \
    --offset '27' \
    --paymentOrderNo 'p05XuLyyqqUcL1p1' \
    --startDate 'erBQOMzY5y8jT6fM' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 137 'QueryPaymentNotifications' test.out

#- 138 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'gTScoo33EeR0Rhgh' \
    --limit '14' \
    --offset '42' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 138 'QueryPaymentOrders' test.out

#- 139 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "hmGW0j52nJzAZcdI", "currencyNamespace": "EnVsiW1YHNBjZeIk", "customParameters": {"0ePjQr5e4Itcs9Mc": {}, "jMv5HOpZf1kBkjCI": {}, "vzlkUjrWM8p1OdYI": {}}, "description": "bFRSHr7wiwPqmwZW", "extOrderNo": "xM7i88DJLXy2v5JT", "extUserId": "FYHmapFDF0vcZqr4", "itemType": "APP", "language": "wpDG-Hasj_042", "metadata": {"P4MfAQBSY30dDXuI": "Lc6oB4DMCgjfaXlu", "DmAGIHvFTqapRZrX": "lxIXABaCu8Ac69hh", "GsMTlpa4EwCnqkX0": "nq3chj8n6084z4qK"}, "notifyUrl": "HImlZ5sW7jpVVqcO", "omitNotification": false, "platform": "8zeUAKZ9lF7XwT6s", "price": 26, "recurringPaymentOrderNo": "jnuxrWxIaRTxJNk6", "region": "TKof2e6HGOYsr7AC", "returnUrl": "7bAIDQiORE4lFrsN", "sandbox": true, "sku": "j7la8p1BV3mO3Ady", "subscriptionId": "nvkD9TYTkd00cmCY", "targetNamespace": "JFxJnT5VO51bPqTn", "targetUserId": "iURVi7vWmfR5sJcc", "title": "mUDjOESKmiBo9w7t"}' \
    > test.out 2>&1
eval_tap $? 139 'CreatePaymentOrderByDedicated' test.out

#- 140 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'iwCrD5x5ywoLRObQ' \
    > test.out 2>&1
eval_tap $? 140 'ListExtOrderNoByExtTxId' test.out

#- 141 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kzm4yYhqbJ3UZntS' \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentOrder' test.out

#- 142 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ojZFWIpbSE3RlXF3' \
    --body '{"extTxId": "7OD4jPqcY7E5ERwA", "paymentMethod": "Rs6FngqnPJjPbthe", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 142 'ChargePaymentOrder' test.out

#- 143 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nOi6a5BnydDYjYva' \
    --body '{"description": "qo4jjG7PG8Iv5mhD"}' \
    > test.out 2>&1
eval_tap $? 143 'RefundPaymentOrderByDedicated' test.out

#- 144 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UMQhN92uiz6Amy3v' \
    --body '{"amount": 73, "currencyCode": "0Amv1J2fiamRoqYW", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 68, "vat": 71}' \
    > test.out 2>&1
eval_tap $? 144 'SimulatePaymentOrderNotification' test.out

#- 145 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8HgjlU19igcNubsh' \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentOrderChargeStatus' test.out

#- 146 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 146 'GetPlatformWalletConfig' test.out

#- 147 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Xbox", "System", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 147 'UpdatePlatformWalletConfig' test.out

#- 148 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 148 'ResetPlatformWalletConfig' test.out

#- 149 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetRevocationConfig' test.out

#- 150 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateRevocationConfig' test.out

#- 151 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'DeleteRevocationConfig' test.out

#- 152 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'G5inkDCFkv5dfGge' \
    --limit '74' \
    --offset '12' \
    --source 'ORDER' \
    --startTime 'v9OfYJDBYoq6Zvgm' \
    --status 'SUCCESS' \
    --transactionId 'I3WNUZsI8e9vl4Tf' \
    --userId 'jLbrSlwZnv2CgWJK' \
    > test.out 2>&1
eval_tap $? 152 'QueryRevocationHistories' test.out

#- 153 GetLootBoxPluginConfig1
samples/cli/sample-apps Platform getLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetLootBoxPluginConfig1' test.out

#- 154 UpdateLootBoxPluginConfig1
samples/cli/sample-apps Platform updateLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "W91kGioEDpM5reGA"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ZKDOF6CMUGZ3ZF6E"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateLootBoxPluginConfig1' test.out

#- 155 DeleteLootBoxPluginConfig1
samples/cli/sample-apps Platform deleteLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'DeleteLootBoxPluginConfig1' test.out

#- 156 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 156 'UploadRevocationPluginConfigCert' test.out

#- 157 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uAi7YBSdz8ytECM5", "eventTopic": "gwuKUcyA82LJgzb2", "maxAwarded": 62, "maxAwardedPerUser": 25, "namespaceExpression": "gHmCasoiyr0b1kFm", "rewardCode": "Pt5PReiaMlCkczuH", "rewardConditions": [{"condition": "1OLiPPfDylXsytmN", "conditionName": "ltqq2etiO2YuHKHU", "eventName": "ADW3eQbghjKhKtpJ", "rewardItems": [{"duration": 2, "endDate": "1984-09-14T00:00:00Z", "itemId": "IIHMlO1HSOk6ORj3", "quantity": 38}, {"duration": 36, "endDate": "1983-11-15T00:00:00Z", "itemId": "PLeugY51v8sGQEkA", "quantity": 8}, {"duration": 91, "endDate": "1996-04-29T00:00:00Z", "itemId": "UUr0FDpqt9uYjvTv", "quantity": 73}]}, {"condition": "I69zYqznnk4NBXS4", "conditionName": "Sc2xkGA29YkvNrHQ", "eventName": "inwswSapHS9AsIDY", "rewardItems": [{"duration": 95, "endDate": "1994-11-16T00:00:00Z", "itemId": "lOf51veg9yzXSWtI", "quantity": 94}, {"duration": 1, "endDate": "1981-03-30T00:00:00Z", "itemId": "N0zH4FKy0yKqCk6t", "quantity": 86}, {"duration": 19, "endDate": "1978-06-14T00:00:00Z", "itemId": "WG8jLxPXtIJUFTcU", "quantity": 5}]}, {"condition": "7ZghzFqO9CjjVF49", "conditionName": "czUEJGef1SMMMHad", "eventName": "FuYgPzCqHyzz1DRT", "rewardItems": [{"duration": 44, "endDate": "1981-06-04T00:00:00Z", "itemId": "uHxQYxL7tctEZfRI", "quantity": 94}, {"duration": 61, "endDate": "1982-09-15T00:00:00Z", "itemId": "oqMs8KVUaUytt4nb", "quantity": 29}, {"duration": 45, "endDate": "1980-05-12T00:00:00Z", "itemId": "la1dkAkyBicuXYEa", "quantity": 6}]}], "userIdExpression": "o5hc61jRP60J5ytq"}' \
    > test.out 2>&1
eval_tap $? 157 'CreateReward' test.out

#- 158 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ykcTeyyFoiFYaiE0' \
    --limit '79' \
    --offset '72' \
    --sortBy '["namespace:asc", "rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 158 'QueryRewards' test.out

#- 159 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'ExportRewards' test.out

#- 160 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 160 'ImportRewards' test.out

#- 161 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'SUKwAz5Gang4bn6L' \
    > test.out 2>&1
eval_tap $? 161 'GetReward' test.out

#- 162 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'fnFQNrgqiA8rlmbj' \
    --body '{"description": "fAvl8yaZVCskxhL8", "eventTopic": "P2CLDsRaixF1bxxN", "maxAwarded": 96, "maxAwardedPerUser": 15, "namespaceExpression": "tmT5gleQJuggWIDA", "rewardCode": "00BV4MIAHsIo39Zl", "rewardConditions": [{"condition": "RH6Gn6g9B60S0sJO", "conditionName": "mt4r4eJ5EEyboLhc", "eventName": "4eVSlcTNbGQA13bo", "rewardItems": [{"duration": 78, "endDate": "1980-02-14T00:00:00Z", "itemId": "Lym3ro0PjwKQHRy6", "quantity": 20}, {"duration": 97, "endDate": "1981-06-11T00:00:00Z", "itemId": "modW22upBmOc0s5M", "quantity": 57}, {"duration": 97, "endDate": "1989-06-02T00:00:00Z", "itemId": "Td9vKR4CMQS6H1di", "quantity": 20}]}, {"condition": "ekdZF6BmsWHbbBE2", "conditionName": "tfHETRkG5fB8NfeJ", "eventName": "flXtwzpcYJX0fmFu", "rewardItems": [{"duration": 85, "endDate": "1974-10-05T00:00:00Z", "itemId": "K20P4xeINepUbR0k", "quantity": 74}, {"duration": 68, "endDate": "1983-10-06T00:00:00Z", "itemId": "yI3Jh1kX5yYpkozW", "quantity": 42}, {"duration": 8, "endDate": "1990-07-21T00:00:00Z", "itemId": "js8RtFoDxo4eDwtf", "quantity": 18}]}, {"condition": "Fa4BeRut4tCTIrTX", "conditionName": "0sYgwLyEFtNGI5Ms", "eventName": "o8IHOQBsEvqzBuDV", "rewardItems": [{"duration": 98, "endDate": "1987-03-25T00:00:00Z", "itemId": "w0DUfo7ruuBxG2Z1", "quantity": 63}, {"duration": 36, "endDate": "1976-07-07T00:00:00Z", "itemId": "1gVGdczEHoss0ZoF", "quantity": 3}, {"duration": 21, "endDate": "1993-11-29T00:00:00Z", "itemId": "DqxxWXmTJiRYNrM4", "quantity": 95}]}], "userIdExpression": "TXJq6j9vX47nfUAA"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateReward' test.out

#- 163 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'M3Ij4Cc1m0ZoFlMk' \
    > test.out 2>&1
eval_tap $? 163 'DeleteReward' test.out

#- 164 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '5q203kypFKAydawR' \
    --body '{"payload": {"yMxqyWjijch1MPoJ": {}, "bM2UzCt7bPiRJLav": {}, "5kc0tuksQYSizlK3": {}}}' \
    > test.out 2>&1
eval_tap $? 164 'CheckEventCondition' test.out

#- 165 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'aiNLJqAQP6BgZnO4' \
    --body '{"conditionName": "FrNqeXMNlONp3GGC", "userId": "URq7xQoRqKBshT1s"}' \
    > test.out 2>&1
eval_tap $? 165 'DeleteRewardConditionRecord' test.out

#- 166 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '5WCgXdGnDYyUNOvm' \
    --limit '87' \
    --offset '33' \
    --start 'ihYAvOfmligkVnW5' \
    --storeId 'huuiXXbKzbXxvlZb' \
    --viewId '6Q6jS9FBS0mhncQB' \
    > test.out 2>&1
eval_tap $? 166 'QuerySections' test.out

#- 167 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'aFutPZMbm7i6fAqD' \
    --body '{"active": false, "displayOrder": 98, "endDate": "1972-08-26T00:00:00Z", "ext": {"ZWcoQHiDcLUYVxPE": {}, "PHW3oeuDCfhq1x2s": {}, "a1uCRnBuqgd9tgcy": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 5, "itemCount": 56, "rule": "SEQUENCE"}, "items": [{"id": "x5gT5FiS6VkcfOxx", "sku": "wcsjmbi7WmBPmx8z"}, {"id": "6Quaa4ljvK8R7V9G", "sku": "in9BHOUGwgNv7BJB"}, {"id": "n4FzYhAOwar31dTt", "sku": "KM7drbCMhPfUaEYi"}], "localizations": {"iMqVKv9Ri5uVGF2L": {"description": "YIQcRfwEc08ClS2u", "localExt": {"PqYxEqbBv3l1u9lK": {}, "PKqOmrO3ieXHbM23": {}, "NjVzw0abw2OIJo5o": {}}, "longDescription": "AZc3RG8qns27ZCqT", "title": "zXiKmefQD2WxUpib"}, "yJI9GH1nHBM7MGfe": {"description": "i77pFRGgql5latlu", "localExt": {"KmV4t0EuhoftIz2x": {}, "XR72E8y5ml5Y7g1z": {}, "xMpwN0K6PhUXIkm7": {}}, "longDescription": "zDuqyG67QkfmzWCi", "title": "mUXZj1q5g9DbWQmR"}, "5xtD30mA060MPDdV": {"description": "R78BoqLjMTucLixd", "localExt": {"kmyFmWL7nPK4WQcd": {}, "mU3Nlvd8hoPzZwus": {}, "SfhSo19NOX9f7KFF": {}}, "longDescription": "e1AxJvDF7oTUBRCg", "title": "BG42fguKcHM7gVm9"}}, "name": "iTqXNVCQTXwEVTec", "rotationType": "FIXED_PERIOD", "startDate": "1998-08-30T00:00:00Z", "viewId": "SsiR7q21WeaMAnnh"}' \
    > test.out 2>&1
eval_tap $? 167 'CreateSection' test.out

#- 168 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'qn2JRIctPD0k0aJG' \
    > test.out 2>&1
eval_tap $? 168 'PurgeExpiredSection' test.out

#- 169 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'qEAQilt4Vqqb19sH' \
    --storeId 'TavXbsSlWl6pD33u' \
    > test.out 2>&1
eval_tap $? 169 'GetSection' test.out

#- 170 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VoFSA73F3wNYcbyj' \
    --storeId 'k1udmQL0gUVlkkn7' \
    --body '{"active": true, "displayOrder": 42, "endDate": "1975-12-23T00:00:00Z", "ext": {"jTjI1AazQO2EWwGL": {}, "pHxzDk6jOOlayMTI": {}, "djH6QQYeBnkMJWnJ": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 41, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "FOuU5j6GZCrJE5AD", "sku": "CT7zTZIfMBMpyj0T"}, {"id": "zZaGkv70XgqBp4Zm", "sku": "6isO5PrKHou9JgGL"}, {"id": "OTTIjDmSeeihohSP", "sku": "P9WnfOljfQjKxXGP"}], "localizations": {"lyyZzfzBIB84yqJn": {"description": "VFo4hrmCANitX1wZ", "localExt": {"KNaifuIuLh95ImrZ": {}, "Xujdxy8bXYFo7dmU": {}, "K1NZ3mrIZ222rKHX": {}}, "longDescription": "nxlHFKroISIge1X4", "title": "cHOGNaXW0t0FkOQn"}, "nj6v66zmTLOffOwO": {"description": "9JRNbn0I8t8rMWIi", "localExt": {"yEIlc9fj5CPOzqK6": {}, "j7d5irA7uhdaUJec": {}, "4afi3GEHhx3kdubh": {}}, "longDescription": "Zp1zmf8mIlBJHP8v", "title": "sO6dqBFAZYbhrhAL"}, "wsPPS1DN8lAUwxZo": {"description": "PXjfQLnwlHT3b5YV", "localExt": {"6WKJwjRDUdtGiUUu": {}, "eNx8jxMnGMqkSlZC": {}, "OYFvUuoJmWnj5x1e": {}}, "longDescription": "T4FcpQa8DolIMvJS", "title": "Optg1DL8ryJHzpB4"}}, "name": "0eXJUs1xbSnVwhlG", "rotationType": "FIXED_PERIOD", "startDate": "1978-05-19T00:00:00Z", "viewId": "0sRSOUJJjnoZJThA"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateSection' test.out

#- 171 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xaT28CK5KtgxhFkg' \
    --storeId 'bz2Isr5SlC6XIxFV' \
    > test.out 2>&1
eval_tap $? 171 'DeleteSection' test.out

#- 172 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 172 'ListStores' test.out

#- 173 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "bp4ujwkHtZx3ya3Z", "defaultRegion": "rRjhxnnzAkUMZ0D0", "description": "KMUJJ4HUBuHYBO3q", "supportedLanguages": ["19pZK8dcJYxCmbQr", "mxNllSXGGfu5Wj88", "29uCru1g3nhU0wxL"], "supportedRegions": ["Yyx6OSTGgU5awK7w", "pDtGQPBmtEAiZeV7", "Ao1l7wy08miT9QMR"], "title": "wY6dlvXTiEIwmeHe"}' \
    > test.out 2>&1
eval_tap $? 173 'CreateStore' test.out

#- 174 ImportStore
eval_tap 0 174 'ImportStore # SKIP deprecated' test.out

#- 175 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 175 'GetPublishedStore' test.out

#- 176 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'DeletePublishedStore' test.out

#- 177 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetPublishedStoreBackup' test.out

#- 178 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'RollbackPublishedStore' test.out

#- 179 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'T0J1y5Jg7EXdErcI' \
    > test.out 2>&1
eval_tap $? 179 'GetStore' test.out

#- 180 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rvqRcWtcbiy2Rvi8' \
    --body '{"defaultLanguage": "lLaACqZb5j96XS3J", "defaultRegion": "6exhpQGLL6LUmwXU", "description": "12KTcRQaWMvLuUaL", "supportedLanguages": ["6lzOxa2k8T3DFNT3", "KRPS2NBFD4UkPnFt", "E8MRCT621fxbRQ3D"], "supportedRegions": ["KyWszv4heJTmgvAd", "FxghnfQKqC5cX0jy", "RMoC1ORo2Ew3aR6t"], "title": "VzZvfvjPbclbHOQP"}' \
    > test.out 2>&1
eval_tap $? 180 'UpdateStore' test.out

#- 181 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HaKcMmykKWX7b0ZS' \
    > test.out 2>&1
eval_tap $? 181 'DeleteStore' test.out

#- 182 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'TidHybOWTGvCwSW5' \
    --action 'DELETE' \
    --itemSku 'fngp6Sl8rJZrYhp3' \
    --itemType 'SUBSCRIPTION' \
    --limit '57' \
    --offset '62' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd '0bZWCv1xiwVPELUf' \
    --updatedAtStart 'smYj20YUJUJ1vpqJ' \
    > test.out 2>&1
eval_tap $? 182 'QueryChanges' test.out

#- 183 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'xsugqCIK1G7f3pQV' \
    > test.out 2>&1
eval_tap $? 183 'PublishAll' test.out

#- 184 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'WCfpVEXrLf4JKolr' \
    > test.out 2>&1
eval_tap $? 184 'PublishSelected' test.out

#- 185 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'iQb6UbOCh84IlY4g' \
    > test.out 2>&1
eval_tap $? 185 'SelectAllRecords' test.out

#- 186 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '3t7j2yJhR6w6vadq' \
    --action 'CREATE' \
    --itemSku 'qruPhGnffhj5Xyp2' \
    --itemType 'OPTIONBOX' \
    --type 'ITEM' \
    --updatedAtEnd 'zuFPDOnT1YO58KSI' \
    --updatedAtStart 'Bjwe97Veq6ajNXB9' \
    > test.out 2>&1
eval_tap $? 186 'GetStatistic' test.out

#- 187 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'en7aihX4e5fZZX2l' \
    > test.out 2>&1
eval_tap $? 187 'UnselectAllRecords' test.out

#- 188 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'g77FlmUiGB3GJGOU' \
    --namespace $AB_NAMESPACE \
    --storeId 'mREXt3577MQNMIWW' \
    > test.out 2>&1
eval_tap $? 188 'SelectRecord' test.out

#- 189 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'MQXlRopkge4CYov8' \
    --namespace $AB_NAMESPACE \
    --storeId 'ndrUXVpEROBKPdMa' \
    > test.out 2>&1
eval_tap $? 189 'UnselectRecord' test.out

#- 190 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'STT165lFD6jFykLw' \
    --targetStoreId '8UW8xNmOkH93ua7h' \
    > test.out 2>&1
eval_tap $? 190 'CloneStore' test.out

#- 191 ExportStore
eval_tap 0 191 'ExportStore # SKIP deprecated' test.out

#- 192 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'ytonIwaOwDzeXvWX' \
    --limit '42' \
    --offset '24' \
    --sku 'Y8g188Ou7rGY9T1v' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'C9k52HlZAXaHcy7L' \
    > test.out 2>&1
eval_tap $? 192 'QuerySubscriptions' test.out

#- 193 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'orYmFNjQvxDPBY70' \
    > test.out 2>&1
eval_tap $? 193 'RecurringChargeSubscription' test.out

#- 194 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pdJpqpf7L97M6HZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'GetTicketDynamic' test.out

#- 195 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '88d1jfr7FdWd064W' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "qUg18RRMpiPPNOQd"}' \
    > test.out 2>&1
eval_tap $? 195 'DecreaseTicketSale' test.out

#- 196 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'kT6wQqktxmJqcXZ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 196 'GetTicketBoothID' test.out

#- 197 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'yJXM1FiKCEkIzzMk' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 20, "orderNo": "7RcJjFC6OZpWjBvu"}' \
    > test.out 2>&1
eval_tap $? 197 'IncreaseTicketSale' test.out

#- 198 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'xWrA4kSmlfu52vpB' \
    --body '{"achievements": [{"id": "4Royflp2gpQ9XWh6", "value": 28}, {"id": "MYJrqf1E1EVFSUIL", "value": 33}, {"id": "9KntI0m5tYArWOXt", "value": 65}], "steamUserId": "uj019AOm74SzNDie"}' \
    > test.out 2>&1
eval_tap $? 198 'UnlockSteamUserAchievement' test.out

#- 199 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'edLQUknO53ZcuqSl' \
    --xboxUserId 'dTLD5yG8Hc9VZwvS' \
    > test.out 2>&1
eval_tap $? 199 'GetXblUserAchievements' test.out

#- 200 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'JMUC0SEdH4daJOm8' \
    --body '{"achievements": [{"id": "UpPtD4O3bsyKdGvd", "value": 64}, {"id": "cbVdsakku7vFX5Z5", "value": 36}, {"id": "9dMEzLUij9cO1SUy", "value": 64}], "serviceConfigId": "1xcZdyqCSEQZ9umD", "titleId": "RxokFF54RxC07SVR", "xboxUserId": "Ag2C3QMzDataffnT"}' \
    > test.out 2>&1
eval_tap $? 200 'UpdateXblUserAchievement' test.out

#- 201 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'ya8SWm0uYQaWZzCk' \
    > test.out 2>&1
eval_tap $? 201 'AnonymizeCampaign' test.out

#- 202 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4ht6JueUH15wFfoo' \
    > test.out 2>&1
eval_tap $? 202 'AnonymizeEntitlement' test.out

#- 203 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '1xN2KDUAUIy3IxcE' \
    > test.out 2>&1
eval_tap $? 203 'AnonymizeFulfillment' test.out

#- 204 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '1gsjQB1Ljj63Z1Dz' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeIntegration' test.out

#- 205 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ZFFdzQqDxT93T4wK' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeOrder' test.out

#- 206 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '9Pdtsf77XjnvF6Lj' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizePayment' test.out

#- 207 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'fXsTEwCsQGeoWIOM' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeRevocation' test.out

#- 208 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RHY6aDT2M4FqcF38' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeSubscription' test.out

#- 209 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'nQlkaXnRKU9NDysk' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeWallet' test.out

#- 210 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'KGwpiJ0sDIOTC2AG' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 210 'GetUserDLCByPlatform' test.out

#- 211 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'yfPRaukSVziL0oKT' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 211 'GetUserDLC' test.out

#- 212 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'IiMvT1a9lRcbUzSq' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'QK0iL8muBXRoBY9O' \
    --features '["cQ8nHIo0gdRVbLaP", "ErY0exOWf1B9m1nr", "TQWPvLejFQi5Ezmk"]' \
    --itemId '["fpSnAlX0GWRTAYHc", "4jFYuIFbIcTV0iY3", "63Uh4Q1ulbxAHf66"]' \
    --limit '100' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 212 'QueryUserEntitlements' test.out

#- 213 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'wRaPxJFcPgVKruFu' \
    --body '[{"endDate": "1980-10-02T00:00:00Z", "grantedCode": "A5DafHZ3ury6EDqB", "itemId": "GpP9XhtfoWgXPmkk", "itemNamespace": "9kbUFwuoOL6lEb24", "language": "hur", "quantity": 60, "region": "7r0eYme6vPssFgOc", "source": "OTHER", "startDate": "1985-11-23T00:00:00Z", "storeId": "1XYtNC1cQpcZDVGn"}, {"endDate": "1971-05-02T00:00:00Z", "grantedCode": "q3kYW17BCHDbntAo", "itemId": "5Ol3inORHj5QKbQn", "itemNamespace": "nvLAHqIMikhg17vW", "language": "Ws-TmDp-539", "quantity": 10, "region": "aqcaEunsEamffWLN", "source": "IAP", "startDate": "1999-01-02T00:00:00Z", "storeId": "CrT7cOt3FPJ9bJ9o"}, {"endDate": "1973-10-04T00:00:00Z", "grantedCode": "b6ycoisgQAmnbzCO", "itemId": "t42Xirn19TGhgxhu", "itemNamespace": "qpkDJdvZoqdN7asV", "language": "IIPr", "quantity": 85, "region": "Vs5Q3ASrQJJFyC39", "source": "IAP", "startDate": "1977-06-27T00:00:00Z", "storeId": "kMy1nlwusbVuKp4b"}]' \
    > test.out 2>&1
eval_tap $? 213 'GrantUserEntitlement' test.out

#- 214 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WFQJy2kBw2NyjQ8F' \
    --activeOnly 'true' \
    --appId 'f1DPEVQT7ud5B27X' \
    > test.out 2>&1
eval_tap $? 214 'GetUserAppEntitlementByAppId' test.out

#- 215 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'MGRxB07yp2wYXdZZ' \
    --activeOnly 'false' \
    --limit '91' \
    --offset '4' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlementsByAppType' test.out

#- 216 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0zmPE1oCvuDayqds' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'kzJqZYlkUZ17RKep' \
    > test.out 2>&1
eval_tap $? 216 'GetUserEntitlementByItemId' test.out

#- 217 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'FtXYWUYjXSqS8S07' \
    --ids '["LNA7EImwC9sxPsCy", "UBkwIPhV2omwhhgC", "B7UTkO4znzrVEJuL"]' \
    > test.out 2>&1
eval_tap $? 217 'GetUserActiveEntitlementsByItemIds' test.out

#- 218 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Aojru7YQLgrRUgcJ' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'C2AlzFxMg0PLKK0e' \
    > test.out 2>&1
eval_tap $? 218 'GetUserEntitlementBySku' test.out

#- 219 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'QuxqQYq95DAtQpxe' \
    --appIds '["Y9u7UMMTBi4J0xlr", "gkM08Wy45R2iopbs", "MWIOP3YcrDlA8yPH"]' \
    --itemIds '["wF7EfQ5z32MhfyXE", "QecSkG89Hn2OttrR", "RaAj6YGE4fPDJGqB"]' \
    --skus '["vAbkgJcKXHx5jp6N", "X03lAgn4tx3b9wUB", "WGmwSqFQucNR0k42"]' \
    > test.out 2>&1
eval_tap $? 219 'ExistsAnyUserActiveEntitlement' test.out

#- 220 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'KbQ9A09vsp34gAiR' \
    --itemIds '["IrnHOLpuxfrvkwDl", "K6zQuTuKJraHtnd6", "g5rYYH5t2vcXypkg"]' \
    > test.out 2>&1
eval_tap $? 220 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 221 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rSkMsnd0JmLXLIxR' \
    --appId 'dR2Dwq5dIVx9SJSH' \
    > test.out 2>&1
eval_tap $? 221 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 222 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'D54D99zVEI4jSdzU' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'VtuEdTxj5bfZlEcg' \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementOwnershipByItemId' test.out

#- 223 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'VfymuZ9EQz5VPi2W' \
    --ids '["gi6nlqO7Cl6fBQW3", "0CwoeFh18Kj45FXM", "yvDhPzVT3IuyC6Km"]' \
    > test.out 2>&1
eval_tap $? 223 'GetUserEntitlementOwnershipByItemIds' test.out

#- 224 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '8OcMN0ELUOVhCRIO' \
    --entitlementClazz 'MEDIA' \
    --sku 'lPxh0nqmTyfJuaSW' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementOwnershipBySku' test.out

#- 225 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2o2wfNnuDgPpBvXU' \
    > test.out 2>&1
eval_tap $? 225 'RevokeAllEntitlements' test.out

#- 226 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aNTYr8ChjsSIYsoq' \
    --entitlementIds 'olCMCoPbwVkDnraA' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserEntitlements' test.out

#- 227 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'K5VeTGjLeUK4wmVd' \
    --namespace $AB_NAMESPACE \
    --userId 'N0O9ner9WjQESvhX' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlement' test.out

#- 228 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Hq9nJDHhpKv9aWQF' \
    --namespace $AB_NAMESPACE \
    --userId 'Gwe4Ws76XqLJ7Ntz' \
    --body '{"endDate": "1998-01-24T00:00:00Z", "nullFieldList": ["iWcD7aNIsEFoPSli", "N9Dmu9PUQPOlAREq", "waePaFbcT0meNf3m"], "startDate": "1985-07-21T00:00:00Z", "status": "SOLD", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserEntitlement' test.out

#- 229 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'XegPm7GpN3TWSHce' \
    --namespace $AB_NAMESPACE \
    --userId '8tFTMDa3UMwSDDFh' \
    --body '{"options": ["p5lQXyEjXRu1I0Z6", "tZGZswFltooVvBCi", "gtW3PBRyC0VhRcYx"], "requestId": "aE93mCwGVrnD45Qn", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 229 'ConsumeUserEntitlement' test.out

#- 230 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'YpCpjc1V0o6TKuxX' \
    --namespace $AB_NAMESPACE \
    --userId 'jpAqbq8f3eG7Gu9R' \
    > test.out 2>&1
eval_tap $? 230 'DisableUserEntitlement' test.out

#- 231 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'QQoir1xF4ZmJEpC8' \
    --namespace $AB_NAMESPACE \
    --userId 'rU1wNGCbFHS0vD0m' \
    > test.out 2>&1
eval_tap $? 231 'EnableUserEntitlement' test.out

#- 232 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'cQRk12KGvUhY5hcK' \
    --namespace $AB_NAMESPACE \
    --userId 'r5F4EM6RIaTT6YV3' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementHistories' test.out

#- 233 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '1RANXNT9jXzFSYXc' \
    --namespace $AB_NAMESPACE \
    --userId 'IKEa6CTSfwSQbyfn' \
    > test.out 2>&1
eval_tap $? 233 'RevokeUserEntitlement' test.out

#- 234 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'iItKUO9rn35FTZ1Z' \
    --namespace $AB_NAMESPACE \
    --userId 'pxVqDhtkKwjnFC3K' \
    --body '{"reason": "9Vnc5SU0vQ08bgTw", "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUseCount' test.out

#- 235 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '2W0uKtwtC0t5RzPV' \
    --namespace $AB_NAMESPACE \
    --userId 'n7oW816YPRejIAUu' \
    --body '{"requestId": "4FiuJD9mPDmQq1qA", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 235 'SellUserEntitlement' test.out

#- 236 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'cHQXMqYxLhrCxt2p' \
    --body '{"duration": 81, "endDate": "1979-12-17T00:00:00Z", "itemId": "Uy3QBDLieZyPmqW3", "itemSku": "JHfkd73WSy5wVH64", "language": "gdAhgODzvkgiGsHn", "order": {"currency": {"currencyCode": "M4xQvtFwaSjZUCgx", "currencySymbol": "MbyvjN8N3CLeCD8J", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "nXXzf65fDdcjTMNr"}, "ext": {"KPR6oqXwgpRjEaR8": {}, "Uit7FPwXb88HvskT": {}, "SRW5qqhlMCDfsrG8": {}}, "free": false}, "orderNo": "WbrE9r2YPGPF7oDC", "origin": "GooglePlay", "quantity": 37, "region": "p3eq1zvyFH5KpUsP", "source": "ACHIEVEMENT", "startDate": "1980-01-12T00:00:00Z", "storeId": "SbGTInzVU2VWPtrp"}' \
    > test.out 2>&1
eval_tap $? 236 'FulfillItem' test.out

#- 237 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'wnO7HS0XZXeCQREU' \
    --body '{"code": "6bZnY0rDuoJ6C9bH", "language": "xccz_aXmR_Zz", "region": "4F6U7Oz4VBU0u3Cl"}' \
    > test.out 2>&1
eval_tap $? 237 'RedeemCode' test.out

#- 238 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rDgRYAxKKf5G8K7p' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "51IWoomagm1tEHoB", "namespace": "01wHg06tv3BHrUtw"}, "item": {"itemId": "fxDbD0r0j6b0a6I7", "itemSku": "zylVxndrvonoZEeH", "itemType": "YFr0knkRWa2pPKpW"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "LAfqISXuXepvbkZQ", "namespace": "RBtbhTgdck7zYPuM"}, "item": {"itemId": "Lk1ulVYbvcmXGwC6", "itemSku": "R36s98bUgOTBiPt2", "itemType": "pCh4AB2y3UAM7hb8"}, "quantity": 43, "type": "ITEM"}, {"currency": {"currencyCode": "VJ33PVuF6vJiUEzG", "namespace": "xU5QP4Pd9EcusiNA"}, "item": {"itemId": "GdaeUrPCYm8rpFoF", "itemSku": "kOodoStb340rzSSC", "itemType": "35pka0YEaPZkLx5i"}, "quantity": 22, "type": "CURRENCY"}], "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 238 'FulfillRewards' test.out

#- 239 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qBuetU4cAhTPbJyT' \
    --endTime 'KyEhL9P9nQeOeSCh' \
    --limit '88' \
    --offset '6' \
    --productId 'xL7FyLniRdey2gkQ' \
    --startTime 'UTo2LqzoYcOc1a5W' \
    --status 'FAILED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 239 'QueryUserIAPOrders' test.out

#- 240 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'V7iPCAsQkn0N3H8a' \
    > test.out 2>&1
eval_tap $? 240 'QueryAllUserIAPOrders' test.out

#- 241 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'PoyKVctVmSRaPvVW' \
    --endTime '5vJ3mOC9cLuAEyaG' \
    --limit '66' \
    --offset '8' \
    --startTime 'UNykRaYCHFaeVL7p' \
    --status 'PENDING' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 241 'QueryUserIAPConsumeHistory' test.out

#- 242 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'hsxrCu8b0UG8tx8u' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "dH-nurd", "productId": "z5GDdmCQ937Ziqdf", "region": "2BV96lCHxb7T76Kv", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 242 'MockFulfillIAPItem' test.out

#- 243 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ImzBDbZ4Gv4JNYL5' \
    --itemId 'vjhlR4bIhdfumUnb' \
    --limit '29' \
    --offset '7' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 243 'QueryUserOrders' test.out

#- 244 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gcR0c2tOhYHVV4d4' \
    --body '{"currencyCode": "rqXFdHXQIZ40RhQw", "currencyNamespace": "US7XrwgeO5HRKpeU", "discountedPrice": 73, "ext": {"8mQ54symPFqmMyAr": {}, "Q6Lx7DDpy9LZYkxe": {}, "7Vnv12zv3wnrzRCX": {}}, "itemId": "UelcRnVfa2KyexLH", "language": "w81W3EzbnHSM62NX", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 23, "quantity": 97, "region": "1BzQ6d36CUdkgEE6", "returnUrl": "ZkcdLFJFOZg5Ycvw", "sandbox": true, "sectionId": "xombxkoedadnwll1"}' \
    > test.out 2>&1
eval_tap $? 244 'AdminCreateUserOrder' test.out

#- 245 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '6b5hO5IjASJVMTZc' \
    --itemId 'oN0o7sA6QoCrnwhm' \
    > test.out 2>&1
eval_tap $? 245 'CountOfPurchasedItem' test.out

#- 246 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eRw9NkcxQW6gxP8h' \
    --userId 'SwJaA7nuPUlrRGIL' \
    > test.out 2>&1
eval_tap $? 246 'GetUserOrder' test.out

#- 247 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'MKznzv32RjSYnG4u' \
    --userId '84kNQuvt9MmkmQao' \
    --body '{"status": "CHARGED", "statusReason": "J9Pk2F5cRYXM2LuE"}' \
    > test.out 2>&1
eval_tap $? 247 'UpdateUserOrderStatus' test.out

#- 248 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kiQKW5tQh5PiG8QA' \
    --userId '9AsPggBa5JbJV50H' \
    > test.out 2>&1
eval_tap $? 248 'FulfillUserOrder' test.out

#- 249 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'EvZlFUB1WzeP0TDd' \
    --userId '6lSVZlaWu3BDP0X8' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrderGrant' test.out

#- 250 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'UjBnleOCDOYvJxkd' \
    --userId '7Dx9KI5mkyYgM0mq' \
    > test.out 2>&1
eval_tap $? 250 'GetUserOrderHistories' test.out

#- 251 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '4FQG2U4JB38kSBoy' \
    --userId 'pgqfwh9DFKy10PWn' \
    --body '{"additionalData": {"cardSummary": "3mZpG5JUS0sQJYmm"}, "authorisedTime": "1998-03-19T00:00:00Z", "chargebackReversedTime": "1996-09-27T00:00:00Z", "chargebackTime": "1989-01-28T00:00:00Z", "chargedTime": "1989-02-26T00:00:00Z", "createdTime": "1989-05-24T00:00:00Z", "currency": {"currencyCode": "rYHfJ0YCpl9TYnmN", "currencySymbol": "Wul5s034BPICWdMJ", "currencyType": "REAL", "decimals": 94, "namespace": "DwCfWYfrtEUDc2WR"}, "customParameters": {"iV6jKnSVYY7eGzl8": {}, "uFQBT5lXhY6qMiPo": {}, "3aARhUAl5kULY95C": {}}, "extOrderNo": "XgRVvFIyCtaW9Af3", "extTxId": "SMLTg7AjEJAGGDCT", "extUserId": "fIMlMzN952QN3h9n", "issuedAt": "1976-08-16T00:00:00Z", "metadata": {"4iExhP2LcgQYcKgk": "2bd2XtfaVJdOSilT", "PRMhzBP5QJVJYA3s": "igO02jS3lULkwwgz", "orp7nhiKAy5lDNyO": "TirOiGjcCX4qg4O3"}, "namespace": "lgHhvTBMzpWU4DSw", "nonceStr": "RHqChT2uwF4XWbWJ", "paymentMethod": "Q40eYG3oHk601D6t", "paymentMethodFee": 51, "paymentOrderNo": "XZ7zDrYihpg1kD4M", "paymentProvider": "ADYEN", "paymentProviderFee": 4, "paymentStationUrl": "jPcQP5CXk7mnTTxE", "price": 100, "refundedTime": "1998-08-10T00:00:00Z", "salesTax": 51, "sandbox": false, "sku": "PQHa6jRDTJqw0mTb", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "2cgwtOHtVGIYKxns", "subscriptionId": "8KyLEeaiMKVollZA", "subtotalPrice": 49, "targetNamespace": "zx5hqpBVqempTuHX", "targetUserId": "VZClMetznVtdaIzU", "tax": 58, "totalPrice": 38, "totalTax": 73, "txEndTime": "1971-08-21T00:00:00Z", "type": "4FqNH1vXRsB7b0Hz", "userId": "lv3Gy3dSoTJsoyjW", "vat": 58}' \
    > test.out 2>&1
eval_tap $? 251 'ProcessUserOrderNotification' test.out

#- 252 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'lkFWvxGbiuMbpr0k' \
    --userId 'gRvTE4NOtE10CtjL' \
    > test.out 2>&1
eval_tap $? 252 'DownloadUserOrderReceipt' test.out

#- 253 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dRrZASNkq3UQkvxu' \
    --body '{"currencyCode": "HTn7t8IG81aO6UMa", "currencyNamespace": "x1zf9tvggVl3awNf", "customParameters": {"R0bLBiNrVB8LZDgr": {}, "AG7UlzEj64ZhFfNF": {}, "yW5AhdECdUXI0hNr": {}}, "description": "qObG2pevGFHAYIaA", "extOrderNo": "eN0bZP7la7VjNHBv", "extUserId": "jfVjCU4yKoL3Ytja", "itemType": "APP", "language": "Tmaw_511", "metadata": {"4P5BVLZ9IGBkzorY": "mQeQtJnhnIEmTyqv", "9OUMy76hpglLKoH8": "xdFjKQFG3UUKLALn", "eF1HMUKZlehuqKIK": "crmfxGEvEC2gCenO"}, "notifyUrl": "slXCtya0qymZyg3Y", "omitNotification": true, "platform": "rTxqQoUI2oXwZAhD", "price": 40, "recurringPaymentOrderNo": "5atzpaHwn4LUSsin", "region": "MpXMWB8lhEmVPy8Y", "returnUrl": "HPPsHCXInsYxQ9Eb", "sandbox": false, "sku": "tbxEnFDtbrjBdPNu", "subscriptionId": "XOATNguC3Nn0uia1", "title": "4N9drASLg2yrpiIl"}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserPaymentOrder' test.out

#- 254 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qEISCT0U1EyVs948' \
    --userId 'sqmClaexGgk8r3SC' \
    --body '{"description": "H5T9C7G6arxYxjLO"}' \
    > test.out 2>&1
eval_tap $? 254 'RefundUserPaymentOrder' test.out

#- 255 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'jghNsynRzyElgqO8' \
    --body '{"code": "VgUhgCAc9RXEiLoq", "orderNo": "jOhjvOtzRgOfpK3a"}' \
    > test.out 2>&1
eval_tap $? 255 'ApplyUserRedemption' test.out

#- 256 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6OGPow6uMdiE3LgN' \
    --body '{"meta": {"X5SSuUmSFzTSO9a9": {}, "38J8W9sHgb4pmcoi": {}, "wPZLOt1SPkhX4OHU": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "CVwBY0p4CABhDWDr", "namespace": "od4TVWTrTZyhLM9D"}, "entitlement": {"entitlementId": "vSEIid0b0SkGHu8Y"}, "item": {"itemIdentity": "62bSA28tTVgIeBkq", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 83, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "qO3cYDPfC76YnHcv", "namespace": "jyc6zt1oE7OuZk7R"}, "entitlement": {"entitlementId": "hYbrhiUn4FJg0Rg4"}, "item": {"itemIdentity": "PAm9TBsrdoSjtZGm", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 75, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "Ii4oD6P4egtcuQTQ", "namespace": "NzfdcaezqST5vf4g"}, "entitlement": {"entitlementId": "neKpH5HerTk4Z7KR"}, "item": {"itemIdentity": "SBRirwIgcUlqrzPG", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 33, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "tMaNgOd1ipBZZZty"}' \
    > test.out 2>&1
eval_tap $? 256 'DoRevocation' test.out

#- 257 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'nMUh0Yo2N1DaTjtD' \
    --body '{"gameSessionId": "yijosoSefpih5Efs", "payload": {"F6jC58MpdoVUogxm": {}, "KQ3wJ9NSPqYe4raZ": {}, "ObvOx0qDZXBnTx8N": {}}, "scid": "pkuSdpPE12kVr7Ua", "sessionTemplateName": "RpMKWofZmfkb483r"}' \
    > test.out 2>&1
eval_tap $? 257 'RegisterXblSessions' test.out

#- 258 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'QnYhQLUNSI1oMfDt' \
    --chargeStatus 'NEVER' \
    --itemId 'Rwd5T5VArBzPPnk6' \
    --limit '14' \
    --offset '3' \
    --sku 'paqH6VEeah27DZia' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserSubscriptions' test.out

#- 259 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'q4qKO1KpDgiOnbcW' \
    --excludeSystem 'true' \
    --limit '77' \
    --offset '61' \
    --subscriptionId 'dc9f693Zf5POVMuI' \
    > test.out 2>&1
eval_tap $? 259 'GetUserSubscriptionActivities' test.out

#- 260 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Yq5EnE7x2L25xA8K' \
    --body '{"grantDays": 31, "itemId": "9EtVVf75OfAk7MvY", "language": "4tRtacbrn5qGxe9H", "reason": "itJ0n3V58x6Agt1U", "region": "pMx1zq2AH18nuBAM", "source": "CI5DIFhoABYgLZOc"}' \
    > test.out 2>&1
eval_tap $? 260 'PlatformSubscribeSubscription' test.out

#- 261 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'u5Ny9kBRqGOJrDEC' \
    --itemId '6MbTlybbOqQuNcRi' \
    > test.out 2>&1
eval_tap $? 261 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 262 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0YsJPH5VBRT8PZTt' \
    --userId 'xtnSdQQAfrDoG24c' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscription' test.out

#- 263 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ECNyPdvhQT3Rzc2J' \
    --userId 'NQwSWDjq5L0WtazT' \
    > test.out 2>&1
eval_tap $? 263 'DeleteUserSubscription' test.out

#- 264 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SbcQiTzGFHdlshmG' \
    --userId 'hKNR4P5PdA5D6qPO' \
    --force 'false' \
    --body '{"immediate": false, "reason": "0DRUOknCQJZxzJ0W"}' \
    > test.out 2>&1
eval_tap $? 264 'CancelSubscription' test.out

#- 265 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jlDS2J7CGUfQS2q6' \
    --userId 'nexDE2cjcUhiZBr2' \
    --body '{"grantDays": 71, "reason": "2EDnwbHlft22aLyX"}' \
    > test.out 2>&1
eval_tap $? 265 'GrantDaysToSubscription' test.out

#- 266 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PMP9EmbyoKurqOs4' \
    --userId 'EqhztDG9G9RjjFH4' \
    --excludeFree 'false' \
    --limit '49' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 266 'GetUserSubscriptionBillingHistories' test.out

#- 267 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b8qU60IWGyPSVik0' \
    --userId 'amVhzlGRCHdzol5f' \
    --body '{"additionalData": {"cardSummary": "vqaKe1ZDOO5IYjPl"}, "authorisedTime": "1994-04-25T00:00:00Z", "chargebackReversedTime": "1978-11-08T00:00:00Z", "chargebackTime": "1981-12-31T00:00:00Z", "chargedTime": "1998-09-12T00:00:00Z", "createdTime": "1985-12-27T00:00:00Z", "currency": {"currencyCode": "fCYfD7PMnTmlaBnr", "currencySymbol": "DXKoRwuExjcWfAMO", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "perXpZcv2QvfTf8e"}, "customParameters": {"dA4BwNirwVrw0VbC": {}, "uyB1XVtGdxEzVkpU": {}, "Djcm5pDAOqgtgU1k": {}}, "extOrderNo": "LtyMhEhjL0XPaIOK", "extTxId": "37URASPtx2586Yxe", "extUserId": "1E2v8EOvCuAJSREi", "issuedAt": "1996-03-30T00:00:00Z", "metadata": {"bNwITPofb4T1DfTL": "KKl6QKiXqMnqsdTE", "ZD9HP4CGUnXsl1n0": "2bLAt0lrrhZZ89Eh", "wvjm1LEtIUaNwqEQ": "f3jPBYqASLa2o2hK"}, "namespace": "dEsZ3AunQEBmcW7c", "nonceStr": "IX4qCcU241vdbOGC", "paymentMethod": "HsPDSTl8Dr7FqA5Q", "paymentMethodFee": 15, "paymentOrderNo": "ioDXOYMlA9s8iZ3w", "paymentProvider": "WALLET", "paymentProviderFee": 5, "paymentStationUrl": "7MnKBHRK1OHrfDa6", "price": 28, "refundedTime": "1988-11-23T00:00:00Z", "salesTax": 1, "sandbox": false, "sku": "VIbvMAk1Mzpz9TzY", "status": "DELETED", "statusReason": "JJVlZPX7ZqQLug34", "subscriptionId": "N4BcIh3MoyiuaxXQ", "subtotalPrice": 90, "targetNamespace": "bzqMBJAiYwswlWTb", "targetUserId": "mweNNS78bzKUUtmW", "tax": 16, "totalPrice": 73, "totalTax": 85, "txEndTime": "1988-07-28T00:00:00Z", "type": "jr0smRja1g4LWcNE", "userId": "sQbZrwU3hqnk5KGp", "vat": 94}' \
    > test.out 2>&1
eval_tap $? 267 'ProcessUserSubscriptionNotification' test.out

#- 268 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'jQs6K76bm3dYlFLK' \
    --namespace $AB_NAMESPACE \
    --userId 'BKo06YYNtGDCEFlD' \
    --body '{"count": 73, "orderNo": "wZr6wwZxTRXu71PV"}' \
    > test.out 2>&1
eval_tap $? 268 'AcquireUserTicket' test.out

#- 269 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Yk8d7RgNXhjtVv9i' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserCurrencyWallets' test.out

#- 270 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'gia0rNwqec8jFwBQ' \
    --namespace $AB_NAMESPACE \
    --userId 'CQhjoXrYiSV1QurK' \
    --body '{"allowOverdraft": false, "amount": 82, "balanceOrigin": "GooglePlay", "reason": "rVBP95WaFsIHkvMG"}' \
    > test.out 2>&1
eval_tap $? 270 'DebitUserWalletByCurrencyCode' test.out

#- 271 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'l2idUYgAnBf5EAWB' \
    --namespace $AB_NAMESPACE \
    --userId 'mDcJF3QjUmVCYGau' \
    --limit '48' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 271 'ListUserCurrencyTransactions' test.out

#- 272 CheckWallet
eval_tap 0 272 'CheckWallet # SKIP deprecated' test.out

#- 273 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'rxXKSxsm9MrWD60s' \
    --namespace $AB_NAMESPACE \
    --userId 'kfEyzAlPAWFBRs7i' \
    --body '{"amount": 63, "expireAt": "1995-09-17T00:00:00Z", "origin": "Steam", "reason": "dheegOdvLA2cnCjX", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 273 'CreditUserWallet' test.out

#- 274 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'o7bi0hTMw39AVUx5' \
    --namespace $AB_NAMESPACE \
    --userId '126qAM2SDxJtQO4c' \
    --body '{"amount": 31, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 274 'PayWithUserWallet' test.out

#- 275 GetUserWallet
eval_tap 0 275 'GetUserWallet # SKIP deprecated' test.out

#- 276 DebitUserWallet
eval_tap 0 276 'DebitUserWallet # SKIP deprecated' test.out

#- 277 DisableUserWallet
eval_tap 0 277 'DisableUserWallet # SKIP deprecated' test.out

#- 278 EnableUserWallet
eval_tap 0 278 'EnableUserWallet # SKIP deprecated' test.out

#- 279 ListUserWalletTransactions
eval_tap 0 279 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 280 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'aTr4V4sl67gru5wx' \
    > test.out 2>&1
eval_tap $? 280 'ListViews' test.out

#- 281 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'rxDv5QwmqNwB1YGZ' \
    --body '{"displayOrder": 49, "localizations": {"9HKjxaM1VhQMEJSr": {"description": "2CotdtZqDOL5rYv6", "localExt": {"8FdxaDkZDTOD2iHA": {}, "wLi3uVZ8vzm7Ui20": {}, "2t2vsp2EryyVeInP": {}}, "longDescription": "WQqN4upi2ea3Iafi", "title": "IqaLh4b6kQtA4smf"}, "T14IKcmDQkVfAUsV": {"description": "EGPEEg53UvRuAfaM", "localExt": {"RBiKfrUu9YtQWvVp": {}, "vlcqZgswi7MaNJt6": {}, "ylby5H2VWyN3T52E": {}}, "longDescription": "ukL00jSQxcTN4v8t", "title": "Lzf3pINwVkFTk9br"}, "JjFGAB90GBXdX8cY": {"description": "uE72tgjzBKOkGmeQ", "localExt": {"iS5xHdfWqKI1sOBg": {}, "q4irg5vZwRpRNdFu": {}, "sloNEkjOR6SXAQHj": {}}, "longDescription": "mVyWNfd5tcBq4dA9", "title": "xhmQDIuHL8oQknFn"}}, "name": "ssK12LO5BCn0FxKi"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateView' test.out

#- 282 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'gBh2u9ez2X7n6MXQ' \
    --storeId '44OuNrcWdlsDS6w6' \
    > test.out 2>&1
eval_tap $? 282 'GetView' test.out

#- 283 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'XuIdzeAt92gYFeXk' \
    --storeId 'z2YUbmBrteofarkJ' \
    --body '{"displayOrder": 33, "localizations": {"savO9ETg9xpvx67O": {"description": "n2Eh85W8x5tTNOvw", "localExt": {"0POImuUNLBHkbZQi": {}, "pFySeVUBGCELTlxX": {}, "3vDExcAgsE1y5Uap": {}}, "longDescription": "6J5kB1hiheoIOKZf", "title": "mcZsaxkdZcU9ZYHg"}, "CELxkQBATvfCfH6v": {"description": "k8yharc1gyWrKWeZ", "localExt": {"IMQYIHja8NqtDDQz": {}, "IEaox2Qw0CSaQNNg": {}, "GVln1a8OjyXparkp": {}}, "longDescription": "v38DRL2d2sknvsCd", "title": "teyHn4wLNOrEit4C"}, "oiCmyzTHBhRsQGbz": {"description": "iQx1bvvSAyIjNjx6", "localExt": {"xpOGJz9OeNuxMSke": {}, "9FmEYWhPJ5daEzno": {}, "u9njRCSdYnKZhoFn": {}}, "longDescription": "7mLBAQ8YP0yBEZXX", "title": "JCeMWmBT2VbGEMK0"}}, "name": "U7SDv8KeqF8nl1kI"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateView' test.out

#- 284 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'yCfhZORsH7LGhPuB' \
    --storeId 'fNgUcFUSrKAVRnFx' \
    > test.out 2>&1
eval_tap $? 284 'DeleteView' test.out

#- 285 QueryWallets
eval_tap 0 285 'QueryWallets # SKIP deprecated' test.out

#- 286 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 63, "expireAt": "1993-09-02T00:00:00Z", "origin": "Nintendo", "reason": "gs5auYYRb9Zz40On", "source": "REFERRAL_BONUS"}, "currencyCode": "pbE0qri1KJYasvMW", "userIds": ["uMdvD2XxIQbztXth", "0NEgTjHngV6voSgr", "Pboxywo4Po62CiTa"]}, {"creditRequest": {"amount": 73, "expireAt": "1992-11-15T00:00:00Z", "origin": "System", "reason": "YUXbHDZ6tk60bnqA", "source": "PURCHASE"}, "currencyCode": "3rkcQFhwF1G9ihGY", "userIds": ["YDra4OWm5KefrblI", "XdLBldWdfuzpoRGk", "K93XmyTwO0KHTKNX"]}, {"creditRequest": {"amount": 66, "expireAt": "1979-10-28T00:00:00Z", "origin": "System", "reason": "4rR8iT7i7byCA6xi", "source": "REWARD"}, "currencyCode": "9sumKhwEwW2LToQ2", "userIds": ["3V6bg4yENL2KWKy2", "54M3eIcw4j1S8rud", "qTUYj0pUwSi88K4v"]}]' \
    > test.out 2>&1
eval_tap $? 286 'BulkCredit' test.out

#- 287 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "AJiqQF7qDDuQrdZC", "request": {"allowOverdraft": true, "amount": 49, "balanceOrigin": "Playstation", "reason": "2b94reQyi5fLJL71"}, "userIds": ["S2y1rUztThu7JyTp", "lXK0KNPQi9Dw7XKA", "UN9XEeqz7lCaRVn5"]}, {"currencyCode": "FkIDQ8JdiUm0PV2g", "request": {"allowOverdraft": false, "amount": 26, "balanceOrigin": "Playstation", "reason": "Rd3xGlstzoJpfFyT"}, "userIds": ["qV3DwGSLcIgxzGpb", "Ox9oczUv1owBLDPz", "5TFadbNWgghlqgai"]}, {"currencyCode": "gAabxHFoxBcgOvk0", "request": {"allowOverdraft": false, "amount": 91, "balanceOrigin": "Epic", "reason": "WUMQD26OrPrsFWec"}, "userIds": ["TzLXCFAMBF8MriKH", "5OtCEQBJPuiH2bST", "ViBvT4htcWtvboj4"]}]' \
    > test.out 2>&1
eval_tap $? 287 'BulkDebit' test.out

#- 288 GetWallet
eval_tap 0 288 'GetWallet # SKIP deprecated' test.out

#- 289 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'IyaUuo6qfshbJjoZ' \
    --end 'AhrDc0CLQVa94hNc' \
    --start 'qTytH7GcJgPW9AoE' \
    > test.out 2>&1
eval_tap $? 289 'SyncOrders' test.out

#- 290 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["0O76LCJIyoi8QbnS", "710SSSjwn1WE2L5x", "yEwxwDL0Dh7sHfcX"], "apiKey": "yM2dFstmBiFfI9ja", "authoriseAsCapture": false, "blockedPaymentMethods": ["m4DAjspEDlPcNsXU", "kUdObvcnVlJeYA1e", "9K0yAmlKzq2eKW0a"], "clientKey": "WC4UoSlIyq1N1zlb", "dropInSettings": "vnX5gLSWjao06swR", "liveEndpointUrlPrefix": "UQ82G9UV2q8ttmtd", "merchantAccount": "YghYTzh6LVSfpBXD", "notificationHmacKey": "uWjHYLWrfYDib9Wx", "notificationPassword": "YKSp9TdfUPPHJEtF", "notificationUsername": "TYiCDHiQmEAiBrsu", "returnUrl": "aBUDYQdmb4rykcB0", "settings": "lhOQw1CdQvsbdEHc"}' \
    > test.out 2>&1
eval_tap $? 290 'TestAdyenConfig' test.out

#- 291 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "DvJABFgdrsJsu2hu", "privateKey": "t791QChFYoDmmwdd", "publicKey": "XqMWsetaSfIVmwfX", "returnUrl": "BtTNNapG75Ruv4iR"}' \
    > test.out 2>&1
eval_tap $? 291 'TestAliPayConfig' test.out

#- 292 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "zMWGCkKx2YxJjZsW", "secretKey": "MAUAgIhIlaFx8Y8S"}' \
    > test.out 2>&1
eval_tap $? 292 'TestCheckoutConfig' test.out

#- 293 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'sRgf1ZWrPWiW4kIc' \
    --region '4cfzAVv3KmnQ88WN' \
    > test.out 2>&1
eval_tap $? 293 'DebugMatchedPaymentMerchantConfig' test.out

#- 294 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "XfgHaiBQYChHs8Vw", "clientSecret": "ltRjsQiME8ZaUwJc", "returnUrl": "c00ICneHZ6ESop31", "webHookId": "ha9Qaay3ASWuNjT5"}' \
    > test.out 2>&1
eval_tap $? 294 'TestPayPalConfig' test.out

#- 295 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["OFGMPSKYQLKayRX1", "QcJGoOR7M5Jjc6hZ", "4z14E0xQ9Sa3LAX6"], "publishableKey": "IwSfRqPP0QMt7N8C", "secretKey": "Gj0RLusAndc0iq4P", "webhookSecret": "TxhfWairOfYBhKJq"}' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfig' test.out

#- 296 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "x9sM30jdrjE3yLbh", "key": "wCKNaqZda5tdu0jM", "mchid": "b7hWi7bj6moaeQ2W", "returnUrl": "icBDbeDk1duHYWX6"}' \
    > test.out 2>&1
eval_tap $? 296 'TestWxPayConfig' test.out

#- 297 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "2dN94Qb7amERQdLo", "flowCompletionUrl": "Fd6HlYqol1yFrHtc", "merchantId": 26, "projectId": 40, "projectSecretKey": "eP1gMPsEDlSA0MmR"}' \
    > test.out 2>&1
eval_tap $? 297 'TestXsollaConfig' test.out

#- 298 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'SX9lbjqYwON9aKBw' \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentMerchantConfig' test.out

#- 299 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'rRNSrSDzH0ygIqj9' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["RMET7VfhZg8ldSNM", "aUr9D8cJdunf7D4t", "MwCNIAvLZon0yGpZ"], "apiKey": "GAtsd8iSyjzYU9Ou", "authoriseAsCapture": true, "blockedPaymentMethods": ["P5n01HH3hGFHopmm", "CjrvnoYRzVOKCEla", "flcan61h46JTK0IG"], "clientKey": "ambUuLxBZEv90Yb1", "dropInSettings": "0XSFJs4V7bjql3nr", "liveEndpointUrlPrefix": "oDk5O88UY4ehtuQd", "merchantAccount": "SHdB1fVNEDd8jieY", "notificationHmacKey": "UrSIXgsGSnjHFnau", "notificationPassword": "Pd3f6GoU9c5RBtYo", "notificationUsername": "4e0DOTbgh7Co8Xph", "returnUrl": "NN1wcjQQbeTrP0XQ", "settings": "bvr55Ip4AYwrtPrr"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateAdyenConfig' test.out

#- 300 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'dAXYpAachYwwNZ4P' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 300 'TestAdyenConfigById' test.out

#- 301 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'tNjRxNvlo1abULeg' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "vO4s9b8rOtdSVt5n", "privateKey": "IuaTKqdwl8KMd9CF", "publicKey": "eZDcLrKVpyeJQlah", "returnUrl": "J4hh3AnAQ4frpqwA"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateAliPayConfig' test.out

#- 302 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'wEe7ABr9zidbTZan' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 302 'TestAliPayConfigById' test.out

#- 303 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '82f8SiBtA5f2OdX6' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "4ZRenKD2GkoM6rFc", "secretKey": "tBzqByRcDv56Xzyx"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateCheckoutConfig' test.out

#- 304 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'f70vyvu8sRkQ5OYO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfigById' test.out

#- 305 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'hvoJxjFc9exneNGe' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "8mjKCGRZNAKpunLl", "clientSecret": "MxDFLmsSfzTxaQiH", "returnUrl": "nE32yEA78AhYVkUE", "webHookId": "ttNNC2injXghvDxs"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdatePayPalConfig' test.out

#- 306 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '5OcrIed1g8eZx9hu' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfigById' test.out

#- 307 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'MjMkD26o5QrpUF1s' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["9WSuuwD3uGVAAoWK", "irP8lPhhfoLoIhSu", "Imdq5rdnir7IvKnc"], "publishableKey": "WyEFsdBBbuCyMiFc", "secretKey": "XJlmXrmrJii78t4y", "webhookSecret": "YSCkGz1ZWc8DkCZA"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateStripeConfig' test.out

#- 308 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'MQKBxK4Wjomm6vZK' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 308 'TestStripeConfigById' test.out

#- 309 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '7f6OyIwW4K1tezih' \
    --validate 'true' \
    --body '{"appId": "vBQ5eXN9Cc6jcv0s", "key": "aQfBXhlSOsezcDBU", "mchid": "f1K0FMsxyBSfRvR2", "returnUrl": "w5q7MY4RxNkUzsVZ"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateWxPayConfig' test.out

#- 310 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'qfhdOFXbOvNkO0WZ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 310 'UpdateWxPayConfigCert' test.out

#- 311 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'YfIPieOGhboaBhJQ' \
    > test.out 2>&1
eval_tap $? 311 'TestWxPayConfigById' test.out

#- 312 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'k04pBgZdJpdCXLSF' \
    --validate 'false' \
    --body '{"apiKey": "EoN3CbkmTfLCL2Gq", "flowCompletionUrl": "QNI8bKHiFsCQgyTO", "merchantId": 40, "projectId": 90, "projectSecretKey": "uIYte4PCqvFxQjqr"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateXsollaConfig' test.out

#- 313 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'WirHJctM4F5TAfPZ' \
    > test.out 2>&1
eval_tap $? 313 'TestXsollaConfigById' test.out

#- 314 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'q7C7Wt8EqnNXP2Is' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateXsollaUIConfig' test.out

#- 315 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '87' \
    --namespace 'nilSblQXobu74hgg' \
    --offset '22' \
    --region 'vMhK5OkQ0V6qDgkd' \
    > test.out 2>&1
eval_tap $? 315 'QueryPaymentProviderConfig' test.out

#- 316 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "oB2rQuTq74fEeUAf", "region": "4pksmZAvPIBdoUUl", "sandboxTaxJarApiToken": "6JTk9wcJmlowXBYJ", "specials": ["STRIPE", "ADYEN", "STRIPE"], "taxJarApiToken": "M50aawAJNtEAVX1s", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 316 'CreatePaymentProviderConfig' test.out

#- 317 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 317 'GetAggregatePaymentProviders' test.out

#- 318 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'IfImYRqVhObMdaW9' \
    --region 'rYl4ZFCWShYm3QNb' \
    > test.out 2>&1
eval_tap $? 318 'DebugMatchedPaymentProviderConfig' test.out

#- 319 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 319 'GetSpecialPaymentProviders' test.out

#- 320 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '0C5TZrdUeAbIq7Pe' \
    --body '{"aggregate": "ADYEN", "namespace": "QAQ8E9vxyrmEqzrp", "region": "Y98YNMpbXm18FYAu", "sandboxTaxJarApiToken": "cyIA4gsoP8or26mH", "specials": ["STRIPE", "ALIPAY", "XSOLLA"], "taxJarApiToken": "vXZo5sy7WLkMcMtR", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 320 'UpdatePaymentProviderConfig' test.out

#- 321 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'UobTLB9eUIK59erE' \
    > test.out 2>&1
eval_tap $? 321 'DeletePaymentProviderConfig' test.out

#- 322 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentTaxConfig' test.out

#- 323 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "HZ9EizOLNUG33wa8", "taxJarApiToken": "8BqYxP9cIpxreg8a", "taxJarEnabled": false, "taxJarProductCodesMapping": {"iS4DKgXiqj64dHwg": "W92vib5JnmAIbaKg", "BRGksHfRnVf4GYli": "VCWtKLbaXmuo8gbU", "WYCsM65AJG7KUyWt": "MxcMQFNrMboUsq5c"}}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentTaxConfig' test.out

#- 324 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'EIJxRXLjXbc6doHK' \
    --end 'AaGQoNnfd2nSBCds' \
    --start 'AMouqlEFJVyTuHU0' \
    > test.out 2>&1
eval_tap $? 324 'SyncPaymentOrders' test.out

#- 325 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'wWxpyKJoP1Jg9NEG' \
    --storeId 'saUDc0QyDxckGFmL' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetRootCategories' test.out

#- 326 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ojGoAn0MMOfq2bp3' \
    --storeId 'cdeos4CKZ9LldUbc' \
    > test.out 2>&1
eval_tap $? 326 'DownloadCategories' test.out

#- 327 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'q4edWnGon5xmtJQW' \
    --namespace $AB_NAMESPACE \
    --language 'vfufw95cfxui2xHS' \
    --storeId 'XWLd3be0tuOqwc4J' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetCategory' test.out

#- 328 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'FgcKwNPAb3gVXXN8' \
    --namespace $AB_NAMESPACE \
    --language 'Wxm7GqNr5Jdlv3At' \
    --storeId 'QHeVX28xdj4ot0CZ' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetChildCategories' test.out

#- 329 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'BpKpM16XOZt9mvb3' \
    --namespace $AB_NAMESPACE \
    --language 'Yx725Ds90qVspc54' \
    --storeId 'pidpAnTNKTN7NtyF' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetDescendantCategories' test.out

#- 330 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 330 'PublicListCurrencies' test.out

#- 331 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 331 'GetIAPItemMapping' test.out

#- 332 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'SLtXEGfI69HQeny2' \
    --region 'pkkTt1gfEjW0e2Dd' \
    --storeId '4l2aYe1CgAjp5rhf' \
    --appId 'LBpdHWgyGiHjKrCZ' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetItemByAppId' test.out

#- 333 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'lJL1k7Gf5fClyHke' \
    --categoryPath 'yZyuEhwcAk2fZXJF' \
    --features 'CgSgAYqTZnSKA1d8' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language '9rZJEAAsW1cPWwl8' \
    --limit '41' \
    --offset '85' \
    --region 'f7vVnUDCcIJZtFUE' \
    --sortBy '["displayOrder", "displayOrder:desc", "name:desc"]' \
    --storeId 'M1SoE4wg17NFezGu' \
    --tags 'lpbglizFVYqXcSfC' \
    > test.out 2>&1
eval_tap $? 333 'PublicQueryItems' test.out

#- 334 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'qMACEwSAaJ0DKgst' \
    --region 'rOBZvgLUh1khx4Kq' \
    --storeId 'uPMyS2OaTOReUiTK' \
    --sku 'xGZl7Zwo7T3q5HqJ' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetItemBySku' test.out

#- 335 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'SmDNZC2UM3GYc3Mw' \
    --region 'YRIA6yonRzCSLkWH' \
    --storeId '0WCndek111s1jA6f' \
    --itemIds '5zgDOfKF2cXBbvhJ' \
    > test.out 2>&1
eval_tap $? 335 'PublicBulkGetItems' test.out

#- 336 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["bFKw8oCESOs8SqBL", "7OoZgexxcZRaMvjQ", "MJZFrCZCZhXzUX5T"]}' \
    > test.out 2>&1
eval_tap $? 336 'PublicValidateItemPurchaseCondition' test.out

#- 337 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SEASON' \
    --limit '10' \
    --offset '19' \
    --region '07x7zNTS5um3fuRC' \
    --storeId 'tAcuxFxQnczLpVqv' \
    --keyword 'zNmDCyYsGJHtBF8d' \
    --language 'tzxTBJM3NAi1dUIb' \
    > test.out 2>&1
eval_tap $? 337 'PublicSearchItems' test.out

#- 338 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'HJUmj2kkxO80kfTg' \
    --namespace $AB_NAMESPACE \
    --language 'eohnYk1FsQFJ8Lpx' \
    --region 'oCBSZEbvcHxhVNBP' \
    --storeId 'SJaQR70lVDk4Sb99' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetApp' test.out

#- 339 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'S1vIIWHdObVLG5eH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetItemDynamicData' test.out

#- 340 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'I8mxWOo0t7M0XZpy' \
    --namespace $AB_NAMESPACE \
    --language 'rCJGG2UraXjW3ykK' \
    --populateBundle 'false' \
    --region '4VztaQx5zTjRW7dG' \
    --storeId '8u82D3LdnKrUIFMY' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItem' test.out

#- 341 GetPaymentCustomization
eval_tap 0 341 'GetPaymentCustomization # SKIP deprecated' test.out

#- 342 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "D4PX2ynhi5VJXMtA", "paymentProvider": "ADYEN", "returnUrl": "f4qY5iqQ2rTPX8bn", "ui": "PYhso8RgBT8msO4y", "zipCode": "liWNlfpB64EbQxK8"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetPaymentUrl' test.out

#- 343 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FWfEk6YMfwFZ1enV' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetPaymentMethods' test.out

#- 344 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iwCBSJZ4N84mqtNk' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUnpaidPaymentOrder' test.out

#- 345 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pfHbHkxv3FEgRCWk' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'DfWP7E3FaVkXCRr2' \
    --body '{"token": "TTGWe5ko29bAsg3c"}' \
    > test.out 2>&1
eval_tap $? 345 'Pay' test.out

#- 346 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LxbFqyvwAzDqAH5i' \
    > test.out 2>&1
eval_tap $? 346 'PublicCheckPaymentOrderPaidStatus' test.out

#- 347 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'hgGzOGBMwa4QvsB8' \
    > test.out 2>&1
eval_tap $? 347 'GetPaymentPublicConfig' test.out

#- 348 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '5RIabd8Sfuu5FM4n' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetQRCode' test.out

#- 349 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'W44fy2JD2MFsApMX' \
    --foreinginvoice 'h07ntVOslSiWACd7' \
    --invoiceId 'ZR4yeHLh8znNihbq' \
    --payload '0s7dVKpGRQ0x3kSq' \
    --redirectResult 'uBGCGcckX3PLkpuv' \
    --resultCode 'uMN5W1aD9OkeS9Ik' \
    --sessionId 'Ozbpx4R4Kv6GhXxz' \
    --status 'NCGL6Tt5iK1Rw7Gf' \
    --token 'QWlqlAFRmPssewiG' \
    --type 'O8vM3Kn3aGWH1Idf' \
    --userId 'wmivzkX1h3XpBJBD' \
    --orderNo 'Ad8YtL9WiBKY8klI' \
    --paymentOrderNo 'ClpZq6MUfTIxKpza' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'vySlfoQP3m7kYaHZ' \
    > test.out 2>&1
eval_tap $? 349 'PublicNormalizePaymentReturnUrl' test.out

#- 350 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '86QfZ7jeVoxR7JD1' \
    --paymentOrderNo 'iXFGGo33tpcelspR' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxValue' test.out

#- 351 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'HRMzHBpFJAFlSXO9' \
    > test.out 2>&1
eval_tap $? 351 'GetRewardByCode' test.out

#- 352 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'sIj5JLOb5WkMpXWN' \
    --limit '63' \
    --offset '66' \
    --sortBy '["namespace:asc", "rewardCode:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 352 'QueryRewards1' test.out

#- 353 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'NXBgrsCIIVmoAYDy' \
    > test.out 2>&1
eval_tap $? 353 'GetReward1' test.out

#- 354 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicListStores' test.out

#- 355 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["IS62sTqiXxrSJfNf", "6OqtmcefDNEtrhFs", "VuzrQMyO1KKAySaq"]' \
    --itemIds '["k87jLONpL7GIx9of", "N0h5IX5Uk0sMSp87", "fW7hYA3QaRpotYpm"]' \
    --skus '["ISlOiz7vsB0tBc6W", "68ExgDBN48GbqLe1", "E86mJmLUImGpwQ2W"]' \
    > test.out 2>&1
eval_tap $? 355 'PublicExistsAnyMyActiveEntitlement' test.out

#- 356 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'YP00guzoEpSvrvdv' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 357 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'OM3WmZC9EcAobbFW' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 358 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'kT7IJMdBwKpOpyIV' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 359 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["LvedYMjOvQ6O0GD7", "zlWaIbeGU0NhZqpd", "NOGa8lVXiOgE0Ofg"]' \
    --itemIds '["U0Do6wQYYCrgh92T", "V5MAlNC1YdMsN1BS", "y7kGS3f9Jm3gswL0"]' \
    --skus '["aNOjpeTYqTGcssAI", "w4NnGhRN3mbZ08Ks", "JXqJLaP8pvY5moHE"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetEntitlementOwnershipToken' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "8C3hXzs5DXsaXoVQ", "language": "kRB-fo", "region": "D0IVImO2i7yQdmE5"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'KVpoUr8sZN80LtcW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyWallet' test.out

#- 362 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xlrij2f4gHGfcNkS' \
    --body '{"epicGamesJwtToken": "wOYDZ25XZrDmnGvA"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncEpicGameDLC' test.out

#- 363 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 's7trBThmZ854RPOv' \
    --body '{"serviceLabel": 63}' \
    > test.out 2>&1
eval_tap $? 363 'PublicSyncPsnDlcInventory' test.out

#- 364 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Chq2bERCnzIOCXlH' \
    --body '{"serviceLabels": [66, 37, 95]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 365 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'VZPhiniBddNCn7iL' \
    --body '{"appId": "4v7rLQyrmF9PJtTF", "steamId": "VtcK50wlyCvtcnmm"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncSteamDLC' test.out

#- 366 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'jcmWXZTsxC8H435a' \
    --body '{"xstsToken": "GHhRvzowP5H49Tvp"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncXboxDLC' test.out

#- 367 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '92On1P7mt5m6bOtf' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'EW2SifeFRwfsudIV' \
    --features '["k9ZCT2yi2zP1MHQc", "siY2RAZSKvlK5n43", "m6ply0xsd6p4Lvxs"]' \
    --itemId '["t4Moublv6PHsgriC", "f2pgtkEsIBIGw3X8", "oFsZNNnlxzGV4Wgs"]' \
    --limit '3' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 367 'PublicQueryUserEntitlements' test.out

#- 368 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'T43rroc7CUeZoV0N' \
    --appId 'thbiuXh646q2pAvB' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserAppEntitlementByAppId' test.out

#- 369 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'K7r8Hie4KjxdibWY' \
    --limit '43' \
    --offset '71' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 369 'PublicQueryUserEntitlementsByAppType' test.out

#- 370 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uYVFdtDQaCXGcRpT' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'xhBRWoFwqHIeNVIr' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetUserEntitlementByItemId' test.out

#- 371 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'HXxj5VqLUrnb7tok' \
    --entitlementClazz 'APP' \
    --sku 'ZEREEE4SH6m59SRO' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserEntitlementBySku' test.out

#- 372 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HQNpjUPBXFdOyCja' \
    --appIds '["0m733DFnWPLhoGEC", "y9dNoACX0qDNRrw3", "XibxjjV5rk2Re6gH"]' \
    --itemIds '["Y6Yzoz8IZ9sJlpqw", "3VUawYg6seGI9EIc", "6uAhBcqNjlbe4dFM"]' \
    --skus '["OMFLaABI41z14k9i", "W4OTrG3BEFXfIZmh", "3wjvlv16qkH0BJPL"]' \
    > test.out 2>&1
eval_tap $? 372 'PublicExistsAnyUserActiveEntitlement' test.out

#- 373 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'pnA6IebpffXDqWNn' \
    --appId 'fXVAkVMPbc8nERnO' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 374 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'obXXBS6vYjv99qzn' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '37fULFjWYbxoIBpK' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 375 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'iJlvotb8j9syimEL' \
    --ids '["MUZhg22EPDGlwQF9", "2Oh2mzDJ9saRVuwL", "oOySgeYAsZZiPJDV"]' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 376 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'eQtDYcBQkkJmIQdw' \
    --entitlementClazz 'CODE' \
    --sku 'e7vD0aCaCK0Vi8BR' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 377 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '7PVHp8Zdd3qYQ4uI' \
    --namespace $AB_NAMESPACE \
    --userId 'HlBSUmVr0yYKd967' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlement' test.out

#- 378 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'WhqSOROce32ho0Sb' \
    --namespace $AB_NAMESPACE \
    --userId 'M2o14c8ExIVGZFxf' \
    --body '{"options": ["EFZhezqysr8FW9nz", "d23mNFO4aMbFjgwl", "dvckVDtC3fjXNBu5"], "requestId": "WxACCqO7HMRyozGP", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 378 'PublicConsumeUserEntitlement' test.out

#- 379 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'rOEK3dY3OQFLjySD' \
    --namespace $AB_NAMESPACE \
    --userId 'PNolpEoXqvgib8Re' \
    --body '{"requestId": "vVxAT3pWnOFc6TeL", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSellUserEntitlement' test.out

#- 380 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '93EBQs6yUcEcmX7D' \
    --body '{"code": "hqIAhD1ieUFVZy7b", "language": "SCG_Ctll_cO", "region": "23qQFNMBJkKYsFME"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicRedeemCode' test.out

#- 381 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mZiMvp6Zrw44eyvb' \
    --body '{"excludeOldTransactions": false, "language": "VX_buoc", "productId": "dDeMvZrKh9NgDv3o", "receiptData": "dciIhE1tO7XqgBPI", "region": "rT4WHKTjWGfWSjI7", "transactionId": "QaydIgjhjDol07ta"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicFulfillAppleIAPItem' test.out

#- 382 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Fvb3cqll5s1s2WWv' \
    --body '{"epicGamesJwtToken": "Xmgc88DsyOLmdMAj"}' \
    > test.out 2>&1
eval_tap $? 382 'SyncEpicGamesInventory' test.out

#- 383 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'sw5DVkAMrsA83z3S' \
    --body '{"autoAck": false, "language": "mQ_lwVb-RY", "orderId": "0z0GFTO0NDn6I7qf", "packageName": "ZtLf9PplRzWbTA39", "productId": "jcWN8y01qBTK6xng", "purchaseTime": 84, "purchaseToken": "zyiSTQ8Lbdtmb6eR", "region": "bIkYJtnevWQiLqWl"}' \
    > test.out 2>&1
eval_tap $? 383 'PublicFulfillGoogleIAPItem' test.out

#- 384 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '8U7DMoTWxYA2z96r' \
    --body '{"currencyCode": "9iRV9O5uph0VN7Cd", "price": 0.1623910068812765, "productId": "FQiKBPty6i7KBmlk", "serviceLabel": 89}' \
    > test.out 2>&1
eval_tap $? 384 'PublicReconcilePlayStationStore' test.out

#- 385 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'NPwgMgz57flub8xL' \
    --body '{"currencyCode": "h3yfaLwAd9NuDrbI", "price": 0.22376381244634502, "productId": "Fhv7XeV0K9PV3r0X", "serviceLabels": [75, 84, 77]}' \
    > test.out 2>&1
eval_tap $? 385 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 386 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qNxXXyLHOBa3UAno' \
    --body '{"appId": "F2IeMyf1lPvYpzTl", "currencyCode": "v60D31kbMy9D1kLn", "language": "Foja-Op", "price": 0.7268188463433772, "productId": "Pqi0SwwPB3EblGZl", "region": "lanQgAHktJUCMNXl", "steamId": "LnEX4qYQ3QI2Ym3I"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncSteamInventory' test.out

#- 387 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'CXAjgbPfqaDnSOR9' \
    --body '{"gameId": "jXOB19671R8qeOFT", "language": "yON", "region": "VkQzOWGoAw2G6y08"}' \
    > test.out 2>&1
eval_tap $? 387 'SyncTwitchDropsEntitlement1' test.out

#- 388 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'iAkf6JsOb8uBmins' \
    --body '{"currencyCode": "oYjNK2eGw65g00so", "price": 0.03799074077637865, "productId": "8IXwC6FD18GfPj99", "xstsToken": "GRYjk9PsLK4PLnBU"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncXboxInventory' test.out

#- 389 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '3YcZSqO1BSjJqhLg' \
    --itemId 'ZzGdyIPb03SPiRHp' \
    --limit '37' \
    --offset '68' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserOrders' test.out

#- 390 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'IXr6mOr4FUCOr8Rb' \
    --body '{"currencyCode": "2gYEPFzG586C0vEW", "discountedPrice": 35, "ext": {"bxauFcQLGwBT5o5O": {}, "IRJLS2zzuNy7Mja6": {}, "iXRj1XvQjNkeuUD0": {}}, "itemId": "DwqMxixWUUAK4G9V", "language": "rpOC_KnLG-421", "price": 41, "quantity": 65, "region": "I1KJdcWnvF8U0qt5", "returnUrl": "fBLqb7SqHScxqH3Z", "sectionId": "bD1niEMjeMHByCeh"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateUserOrder' test.out

#- 391 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'cSCdVn8jK41G8d4N' \
    --userId '2H1dTMT7PpoRJrsl' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserOrder' test.out

#- 392 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qdOoUzA58CO4fzWr' \
    --userId 'jXVIZEUdN747u5bZ' \
    > test.out 2>&1
eval_tap $? 392 'PublicCancelUserOrder' test.out

#- 393 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'QGQYsGe8CvhqpJqL' \
    --userId 'tAqgkKTocEaYUZr9' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserOrderHistories' test.out

#- 394 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'oRrQGvy0kBQmoXYr' \
    --userId 'Mt6tmb7ypFZpFS4s' \
    > test.out 2>&1
eval_tap $? 394 'PublicDownloadUserOrderReceipt' test.out

#- 395 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '4y3CTEEdQWA9Cc2N' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentAccounts' test.out

#- 396 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'dFUZD6sEceFhZKrc' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'Tv2vivUNMUAqkBSk' \
    > test.out 2>&1
eval_tap $? 396 'PublicDeletePaymentAccount' test.out

#- 397 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'iSUGdJkwEAtnq9Wf' \
    --language 'Py9QzT1PUqWXkhfa' \
    --region 'j0UHro9zd8Mswj26' \
    --storeId 'lRjo0jeELdQQUQL1' \
    --viewId 'TATch2vMEfseRW1w' \
    > test.out 2>&1
eval_tap $? 397 'PublicListActiveSections' test.out

#- 398 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'TDcw2yTR3epXBF4B' \
    --chargeStatus 'NEVER' \
    --itemId 'N3AbG9JW2051PMFN' \
    --limit '6' \
    --offset '43' \
    --sku 'BvIdjeS6Y3az1KZv' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserSubscriptions' test.out

#- 399 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'U9Yg00lCjn7Q9aQK' \
    --body '{"currencyCode": "pRP0GavgjcyUC7P0", "itemId": "g9krxxsBmedyuUqW", "language": "Sv-214", "region": "fbt2pbVbP8WdKnnQ", "returnUrl": "jTFo3lT1uVloQ17T", "source": "P8arHW8J2NyvmjJ5"}' \
    > test.out 2>&1
eval_tap $? 399 'PublicSubscribeSubscription' test.out

#- 400 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'o5f2uJbffa63xkoh' \
    --itemId 'i3hDeH2iJM7JVXhu' \
    > test.out 2>&1
eval_tap $? 400 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 401 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'okTXB4skSrq0SS4g' \
    --userId 'vkzTVxd7OMKkgAnQ' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserSubscription' test.out

#- 402 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'c7oQIV7H7twGEFI1' \
    --userId 'JHRCWSNJrTHdyfwx' \
    > test.out 2>&1
eval_tap $? 402 'PublicChangeSubscriptionBillingAccount' test.out

#- 403 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5Vx6XZOkZWQeJkNL' \
    --userId 'NbPvL5QhMrS7KEZo' \
    --body '{"immediate": true, "reason": "Qjd2NQlBU5VtUlQ3"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicCancelSubscription' test.out

#- 404 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8PiwMTSGxtf6y6qz' \
    --userId 'Gsw50Tsaifx2YRZg' \
    --excludeFree 'false' \
    --limit '79' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserSubscriptionBillingHistories' test.out

#- 405 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '5X1ZsWum4A9zfIaW' \
    --language '1LEh2wYcYAGXB05G' \
    --storeId '4zHk7CqdkdwW3SEG' \
    > test.out 2>&1
eval_tap $? 405 'PublicListViews' test.out

#- 406 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'gZtILQoHtm1wy9Yi' \
    --namespace $AB_NAMESPACE \
    --userId 'eBI9bv7nVw0roF7P' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetWallet' test.out

#- 407 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 's3QfxIXGyQDDkfub' \
    --namespace $AB_NAMESPACE \
    --userId '8F39S6yEUTLqJhhJ' \
    --limit '34' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 407 'PublicListUserWalletTransactions' test.out

#- 408 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'nmM8qLswww1qWzfv' \
    --baseAppId 'CD7YpsxbChWisNE9' \
    --categoryPath 'vOg5aedey3SjmN9V' \
    --features '4NhM63IryvLpfYwn' \
    --includeSubCategoryItem 'false' \
    --itemName 'WXsRa08C0oqghKJy' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '52' \
    --offset '9' \
    --region 'QorrDXnG6Xway95x' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "updatedAt:desc", "name"]' \
    --storeId 'Sg7nIS20nXIjJROt' \
    --tags 'WTl6ATP0pwZNXvxQ' \
    --targetNamespace 'Liwrg9liKKNHaAmo' \
    > test.out 2>&1
eval_tap $? 408 'QueryItems1' test.out

#- 409 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'MQIUhyVeZdwAXrRy' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 409 'ImportStore1' test.out

#- 410 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Sj8mahr5FCCVloij' \
    --body '{"itemIds": ["yRifObZxdi8Wck3r", "TLNMNfvRzAkrCp3j", "QAHQVI2WOEXwCYhA"]}' \
    > test.out 2>&1
eval_tap $? 410 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE