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
echo "1..415"

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
    --body '{"context": {"item": {"appId": "z30b5G1OdaBm5vQR", "appType": "DLC", "baseAppId": "ESom8mR2Q1cmx1DU", "boothName": "7Hi8hcIpQ2iXHe5o", "boundItemIds": ["96vhzABOCxC6kLrM", "8C1SRdV6zLv3l31y", "w6JgZHd3yO0MEhvi"], "categoryPath": "0gXN9L3oHvMVmD6e", "clazz": "nd97JwXwrP02IrAB", "createdAt": "1985-04-07T00:00:00Z", "description": "Ai5G1O5uXqkPBZE5", "displayOrder": 39, "entitlementType": "DURABLE", "ext": {"JYqHHPxoTMtEM01M": {}, "Fyz14hltX0EeSKPz": {}, "QHBdAhq4No1MCn0Q": {}}, "features": ["X6HCpw8JjhZIuwT5", "4Up4imkQxFCsT9BT", "JED1gRRoZGhZqyN7"], "fresh": true, "images": [{"as": "N35Wc90ICYEYv7TN", "caption": "fSaXPku3NnfnlECY", "height": 9, "imageUrl": "1E00xFxSNStgGMbn", "smallImageUrl": "jdGySBmLpEbukQa2", "width": 94}, {"as": "Q77QoSfG1jzEWOJJ", "caption": "PDnFhCFZvZj8wmyg", "height": 93, "imageUrl": "yJcvcaL6l60Jtyqr", "smallImageUrl": "BXNB0k3jrtb8S87q", "width": 31}, {"as": "AvOcqYaRGVfdllKj", "caption": "tkvaD4c6MnAhnbfA", "height": 32, "imageUrl": "jCg7q7ILBngjv5Qf", "smallImageUrl": "8VhFzipaO0o7S9gW", "width": 20}], "itemId": "vLYCagFG3GKvh2JM", "itemIds": ["IobtehBTPzEiiquv", "youxEHAAoee0Y8t7", "Er8NiHUCAK4A1CER"], "itemQty": {"szKtSro2xEZhoNok": 85, "7AOhkzj2WBKm1g1h": 29, "FTgKe4rG9cJwK5ue": 23}, "itemType": "SUBSCRIPTION", "language": "G3iKiy8otrcyTXpz", "listable": false, "localExt": {"ZE91IyLunztTqfLe": {}, "eX1VtxCRzHiOpYk1": {}, "PrYHzEG6WfUzYmxh": {}}, "longDescription": "3qtEL2so17YphzzZ", "lootBoxConfig": {"rewardCount": 7, "rewards": [{"lootBoxItems": [{"count": 61, "duration": 27, "endDate": "1993-09-05T00:00:00Z", "itemId": "fHQAFXxApXoyJzsh", "itemSku": "dkxURYosWYdjeQRR", "itemType": "IvudEuXzgBR3wRbM"}, {"count": 10, "duration": 12, "endDate": "1990-11-07T00:00:00Z", "itemId": "e5pJ6rTvvEEPjS5l", "itemSku": "TBwqK3enyYLsJOyg", "itemType": "ZjpA4lnmX2hNwM0S"}, {"count": 46, "duration": 56, "endDate": "1997-09-03T00:00:00Z", "itemId": "a9zlBJ9rQtx6rZK5", "itemSku": "F5adIqd3YrfTFzGM", "itemType": "3OLLfWbOaqXlolDY"}], "name": "FvNpnEglOy0J9jUT", "odds": 0.04469584533305104, "type": "PROBABILITY_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 30, "duration": 80, "endDate": "1996-07-07T00:00:00Z", "itemId": "pfbD6iKeRsGXldso", "itemSku": "f6Tvjp0auR8BSuGF", "itemType": "3DuJJ3sWTCrilQ8H"}, {"count": 88, "duration": 99, "endDate": "1989-08-03T00:00:00Z", "itemId": "xjjg4UnTeqjgCmaW", "itemSku": "RK8cpJzdp1h027pq", "itemType": "SGd7AIqUWUiGmJlD"}, {"count": 89, "duration": 97, "endDate": "1980-06-11T00:00:00Z", "itemId": "Oq4ECrgQxfkkMbEX", "itemSku": "xOjPeGfVyNupS2uA", "itemType": "ETaJc1l5XUskNJ8Z"}], "name": "oM394thcL1CDao0y", "odds": 0.7526079681623776, "type": "PROBABILITY_GROUP", "weight": 87}, {"lootBoxItems": [{"count": 50, "duration": 15, "endDate": "1977-11-20T00:00:00Z", "itemId": "NQ5nhmDujg26DEjl", "itemSku": "39p0M0D65QsoMNvN", "itemType": "kfNQrWIjczQ7wPKN"}, {"count": 99, "duration": 52, "endDate": "1995-10-15T00:00:00Z", "itemId": "4Nb7uWmHiBx1LOkN", "itemSku": "W4nWJDbrCmzYFBfu", "itemType": "eIw8SN2fvLDkkhuV"}, {"count": 38, "duration": 17, "endDate": "1994-10-14T00:00:00Z", "itemId": "QVWrK3YOyUXIB9So", "itemSku": "LWMOtGr7kMbaCgJT", "itemType": "y38DQ92G4QK6bKiG"}], "name": "34TjB2rsmueGo7v7", "odds": 0.3225480309036457, "type": "REWARD", "weight": 38}], "rollFunction": "CUSTOM"}, "maxCount": 58, "maxCountPerUser": 66, "name": "nbSe8MAH1fem2Rds", "namespace": "seReCeVtdiPKZGvb", "optionBoxConfig": {"boxItems": [{"count": 54, "duration": 73, "endDate": "1995-06-30T00:00:00Z", "itemId": "zjo7LxX4ivO3hhxS", "itemSku": "8xKzOOJXI816ZLBa", "itemType": "Kjgw8EyvizTMTc2Q"}, {"count": 99, "duration": 48, "endDate": "1991-04-22T00:00:00Z", "itemId": "uaT2wIevrzNme9fU", "itemSku": "vMaJz5PUkKvuOcwd", "itemType": "mazkwAKrS29XtYJg"}, {"count": 96, "duration": 58, "endDate": "1994-09-30T00:00:00Z", "itemId": "iX1mFfdq8GVhfo1n", "itemSku": "AQwYtObOATqeNDlU", "itemType": "pHSsfM4tVpWvSwoa"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 78, "comparison": "isGreaterThanOrEqual", "name": "hc21Uogcv7TQx4ec", "predicateType": "SeasonPassPredicate", "value": "AdvpdRfEmEZr5zXV", "values": ["eSA7EnIq4LcmFzAJ", "Ng8CpWyD8f2ADQqF", "yYUxzb7m7jzvk2Xd"]}, {"anyOf": 18, "comparison": "isNot", "name": "FSGOsW7pQt2WAaXx", "predicateType": "SeasonPassPredicate", "value": "bmMZOM0uNzPk5nnD", "values": ["VklJsXsyV7an4NNx", "Cg8AmP8YM0QNvNDk", "s45SNyGPRSnuH8OQ"]}, {"anyOf": 0, "comparison": "isNot", "name": "DfVQfK25f8QyUt3w", "predicateType": "SeasonTierPredicate", "value": "mC4Gm7Fgflm2trA8", "values": ["2v1YeO4bYBJTm5QG", "j7blPxDa9LuSubrD", "TD72GGySwDf5J6Q4"]}]}, {"operator": "or", "predicates": [{"anyOf": 77, "comparison": "includes", "name": "hQH14eqm1WrxLldp", "predicateType": "SeasonPassPredicate", "value": "jOzGv2sZnCIYq8JK", "values": ["iRpZ23C0lVdBTQTM", "KJBFk8WRR5XqMOtd", "n8MdFonvBUPm1N0W"]}, {"anyOf": 13, "comparison": "isLessThanOrEqual", "name": "JKgwqYrOeJ5JfYh4", "predicateType": "SeasonPassPredicate", "value": "bajtVBuPn9iztKH3", "values": ["DqGK2QWcrPFCFnPO", "1PcxN8UawZzIiM9Y", "3U1rdUajzycLYrWU"]}, {"anyOf": 25, "comparison": "isLessThanOrEqual", "name": "HCYa4VzPHsSAt0vd", "predicateType": "SeasonTierPredicate", "value": "yLaOLBPWOruVRQLT", "values": ["M9zthRIxezaQRd6S", "SxO5Jy6ca6KvWEBR", "miwSb5B4HL1sNfVr"]}]}, {"operator": "or", "predicates": [{"anyOf": 63, "comparison": "excludes", "name": "Ni6SitAoHOQcehgk", "predicateType": "EntitlementPredicate", "value": "0iU2qMzW3UrDl3os", "values": ["SL5BxiDi3hNtSwgj", "XkFxcnujxmVp0VWk", "DW8Y1z7hocBr1eSC"]}, {"anyOf": 37, "comparison": "is", "name": "20cS8iFYv8zA6N9Y", "predicateType": "SeasonPassPredicate", "value": "i5zKiG2Cz93VH47i", "values": ["mI0VsJ1tvlEOCFDd", "UcGhll6ZQFrot15F", "THVPoj636CNwvksD"]}, {"anyOf": 59, "comparison": "isLessThan", "name": "th9fLsVYahnFrsuk", "predicateType": "SeasonPassPredicate", "value": "SdXJpVhOxB0uLRTw", "values": ["zOF7Y0OPSQ1lJfo4", "epXLLb0As39w9wuR", "0YD1lDSyxYcoArS0"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 5, "fixedTrialCycles": 53, "graceDays": 0}, "region": "Mk4pxc3oyVGq4Yht", "regionData": [{"currencyCode": "p2GzRxOCDlG1maoa", "currencyNamespace": "KvtAnHmnOzSOUWkO", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1987-01-21T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1999-01-21T00:00:00Z", "discountedPrice": 46, "expireAt": "1974-04-11T00:00:00Z", "price": 7, "purchaseAt": "1994-10-11T00:00:00Z", "trialPrice": 50}, {"currencyCode": "3CShkieqHxGygC7E", "currencyNamespace": "kdVElwAZ7DUMIwT2", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1984-03-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1989-02-08T00:00:00Z", "discountedPrice": 53, "expireAt": "1989-11-25T00:00:00Z", "price": 51, "purchaseAt": "1998-04-04T00:00:00Z", "trialPrice": 22}, {"currencyCode": "KStLLkOJUcKA1xBb", "currencyNamespace": "6TsSjQqHWoxEtBxL", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1980-12-27T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1991-02-21T00:00:00Z", "discountedPrice": 48, "expireAt": "1982-01-02T00:00:00Z", "price": 16, "purchaseAt": "1977-03-01T00:00:00Z", "trialPrice": 24}], "saleConfig": {"currencyCode": "fkYDVBePCUUCgZ7S", "price": 30}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "qtt4tBeX88WFU7rt", "stackable": true, "status": "INACTIVE", "tags": ["hwsRZnZjGq9O7AcJ", "q0clvAkzZOcrFPcv", "jQYUvga32R6JaiUa"], "targetCurrencyCode": "GAFHluMJRPqa6rO8", "targetItemId": "JsF9kR28E26t7q4k", "targetNamespace": "igstYjKxwJ06uaOZ", "thumbnailUrl": "Ub1rMVrdyxq4zMPX", "title": "qguKdFX31v0St5F1", "updatedAt": "1996-04-04T00:00:00Z", "useCount": 63}, "namespace": "FaJx4t9s4eKqpTMq", "order": {"currency": {"currencyCode": "FCdCmiFXfAYmmelM", "currencySymbol": "JWWsCXmCGg1PDplK", "currencyType": "VIRTUAL", "decimals": 78, "namespace": "uTwKw4ZS5xilRvHl"}, "ext": {"6jbZoKG5xSCwAXBb": {}, "KWZMfuiipR982RwL": {}, "rH0zgnZo0bRujwBL": {}}, "free": true}, "source": "REWARD"}, "script": "hplwrjiiKWLPuGmB", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'DmImKkzk1kooXkK6' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'pNK843zqbyXRWXJ5' \
    --body '{"grantDays": "WDXBFFTkIpVj44GE"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'mgSRtIP4Mnko8rvJ' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '1JZOMT4FJusX42JY' \
    --body '{"grantDays": "uROVhAoCBFqXqIWc"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "utLHFawHaCDpjuaq", "dryRun": true, "fulfillmentUrl": "nUGcWdltXOK5BkIj", "itemType": "EXTENSION", "purchaseConditionUrl": "FMtTPd2kmXRP7Tvx"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'czfMSUQgTg5hMe9q' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'hks619cdyKr0aApC' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'jCfYHLqAyJPu6SvQ' \
    --body '{"clazz": "ByLEzvb1S6kJwwJQ", "dryRun": true, "fulfillmentUrl": "VVpMFS75klK2QQGE", "purchaseConditionUrl": "KSZrbcYJNZHFPpyW"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'gf1JPxMr7PRc4HQu' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name '6RIDdrWBXcdW3qBZ' \
    --offset '28' \
    --tag 'oqH2IEGbeoDasCIM' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rIpaIZ3dsEdkZKJk", "items": [{"extraSubscriptionDays": 86, "itemId": "p1pdclLkktAllwyf", "itemName": "fH1XqwkzFWXQFpLI", "quantity": 82}, {"extraSubscriptionDays": 6, "itemId": "ysUgMXWBSMA4Vxwd", "itemName": "l6cuYb0aJdJKtMl2", "quantity": 81}, {"extraSubscriptionDays": 67, "itemId": "2KUiDW1kuoG2sQGS", "itemName": "nfWVUN9WkiPvY1SK", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 97, "maxRedeemCountPerCode": 50, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 44, "name": "dvbLOqG0aS1OO5xs", "redeemEnd": "1990-11-02T00:00:00Z", "redeemStart": "1982-11-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["I8L0vex2yMAIVx49", "50xh6tLmv1pHz2Kt", "1GccAQJmts8Z6Ups"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'MMVRvJjpKrI4e7mL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'MsRW5xOxrRjFltek' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "djVEFsIJIQF2OeJ3", "items": [{"extraSubscriptionDays": 33, "itemId": "BC7k7frkUWskrItx", "itemName": "MkhsSjhiDfD9j4fn", "quantity": 11}, {"extraSubscriptionDays": 47, "itemId": "tALZJw5PGnDac3bD", "itemName": "DuWR6yP2X7xCh6Gl", "quantity": 57}, {"extraSubscriptionDays": 11, "itemId": "kUeROwesaTrx4OEx", "itemName": "QXhO5Y4RJ75UH0oB", "quantity": 64}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 75, "name": "lQMYN7QQ3sa6OXpC", "redeemEnd": "1976-04-04T00:00:00Z", "redeemStart": "1981-07-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Wbmq1680CNpLSAoo", "Cmkgmd0LHUGG750I", "HBan59ByQc1Rn5sY"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'LunrLmHkn0Rswrtp' \
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
    --body '{"appConfig": {"appName": "qz00KuvIRNtB4986"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "AUEe88VLXhRz3hFT"}, "extendType": "CUSTOM"}' \
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
    --force 'true' \
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
    --body '{"appConfig": {"appName": "4vQjPf7V8I1UxnFM"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "oNTWhGE2tBBEDnzl"}, "extendType": "APP"}' \
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
    --storeId 'jP4XU3GXTNzoR4S3' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'FhGc4g59qnwamZnx' \
    --body '{"categoryPath": "03tIYxxHrPefvyw5", "localizationDisplayNames": {"HsFc4Fl1sj4d5dOJ": "3Gsk2oNdrCBI4aG9", "JwbY2ppJIHGAHtiy": "MWZGGwvt92CgsM5T", "jiJd6ElmFcgmgC3x": "I7R4Kl2qUc2iSUiC"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'fPVar0Q4M3pr0A7l' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Kw324HyYF4fXJXe9' \
    --namespace $AB_NAMESPACE \
    --storeId 'I3LfjQ8dDwQzN03n' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'X6ik54OvV6VIKxPy' \
    --namespace $AB_NAMESPACE \
    --storeId 'ysNXGH4pl49Bfu0t' \
    --body '{"localizationDisplayNames": {"3ARLqPbIwHLzJKMA": "8RD1uBZcxKLWrmEs", "U6EMrR3n6xVV9mYh": "rMbrxJAOU3CwBFYB", "JzxHKIfjv52hYY8A": "AQjZApkLDMKjXNT6"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'gLOKJ1YgIJwYRa3O' \
    --namespace $AB_NAMESPACE \
    --storeId 'YtdcOwjS4zWlgED2' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'mBuVzUwULV8R6ckJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'RaLulpl3CPINnzdf' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'fnP8hs5ylxnKTuGo' \
    --namespace $AB_NAMESPACE \
    --storeId 'Su8iIFrUllemkiI1' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'AkfThZzkoezmT4CX' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '98' \
    --code 'u6Hd1t7M7LqMwT27' \
    --limit '78' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'C3jriDaYUe5xsdTk' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 99}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'bIlV3xKg20dWtjl7' \
    --namespace $AB_NAMESPACE \
    --batchNo '14' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '2IiTvfqFNUq4Ikih' \
    --namespace $AB_NAMESPACE \
    --batchNo '92' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'cvPLGfSdX1imcyyJ' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'b8pGYNnxs3UoxvAY' \
    --namespace $AB_NAMESPACE \
    --code 'vKsXJGuxrjjxhyx6' \
    --limit '45' \
    --offset '14' \
    --userId 'uSnQs5BDlF9PHHFU' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'rcS95XW6fjePMiZD' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'zfhvelrVdCyEmVhK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'IHtkSfIYowWylT4R' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 48 'ListCurrencies' test.out

#- 49 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "IRdyFkTmsIeoOWpT", "currencySymbol": "jRzkVLNaCkqvfnWZ", "currencyType": "REAL", "decimals": 13, "localizationDescriptions": {"zj6KQzZfxm6sEHGG": "hxaJ5MFchGfqU0lj", "8x5Vt3GHwUMjtttI": "w45DqAU1o29S7Rzx", "JFJghc6YVqJip31p": "vVNJYblJBj74lHvq"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'F5Lo0TPuix7GelhK' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"7v2ohnQ44NmxcTCI": "FTN9Lh94UUDne5tb", "XjgOKeVqTyobWMyl": "wv1gCcea136qHTPW", "3zQxO9Yoo6CnCDIg": "JAuwBlF4qygtYHDh"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'AfVlx6OBcwJwOAcs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Ra34sMSIRsQ6ujA7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'YoMCyKkU0AHbyfwD' \
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
    --body '{"data": [{"id": "JfIRf3bP7p2cwees", "rewards": [{"currency": {"currencyCode": "koCVqI1M3Z2KvR6v", "namespace": "BGyXdbGvSUSiRCbg"}, "item": {"itemId": "W7k9nDtZcu7oirFX", "itemSku": "gjrjmwTNIVyc0LP6", "itemType": "WZREmt6WIGbAHEwJ"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "ujgY8Sh68somxZ0h", "namespace": "6sA88yYOcPc3eaMK"}, "item": {"itemId": "oMOs0tQKxvKdwWYC", "itemSku": "YpjpxFlCvzQGXMcd", "itemType": "hPiVlLW95JpY8J92"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "dYkw94Tren3x7xEK", "namespace": "ukXjHA61fjyEAy3k"}, "item": {"itemId": "Y6aHUVNvt8RQzEBi", "itemSku": "9ONCx6k9KzeYEsEs", "itemType": "aJhqaDTqbLz6IlPo"}, "quantity": 91, "type": "CURRENCY"}]}, {"id": "GvgqDZLHoKSf2I7U", "rewards": [{"currency": {"currencyCode": "jvUO9e71gj0v9Mwe", "namespace": "cfWOLNjKpNgXB1zM"}, "item": {"itemId": "yyMdreAuTyc5JlwG", "itemSku": "YEQtY4lK4NTmxGXc", "itemType": "axjtLa67IS1FZOrA"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "SLz0b4XrIOWgxcwc", "namespace": "Zwir6zoM69L72b7m"}, "item": {"itemId": "5w5Ce9djqupA3CYk", "itemSku": "771ceALlWdIRKLaI", "itemType": "TJnolAd5NMjjTvDn"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "CKMCvRst7A9AE1l7", "namespace": "OFHm2nxNAlW1xmJ9"}, "item": {"itemId": "UGT64pBtiAWHy2uj", "itemSku": "8bt5TaqZgxPcjzow", "itemType": "erLkRKycy8FxRdBw"}, "quantity": 99, "type": "CURRENCY"}]}, {"id": "IGEodGYYxVZL1SBz", "rewards": [{"currency": {"currencyCode": "NdiHbPhD6HxrGaEk", "namespace": "LpXUiLe3gxEurkwv"}, "item": {"itemId": "4hdxWtPtJscS94LC", "itemSku": "KflX8FPoGWur6uXA", "itemType": "0Uke6flySklNwsja"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "sXu0MNwKNSjgcFhv", "namespace": "jRPlVD0ngrc2171G"}, "item": {"itemId": "3bgVtavOOubSc194", "itemSku": "pW2fR98VD7C2sw4W", "itemType": "RK9hOevr73UcurCz"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "CEFNAtwcjCUFtEfa", "namespace": "cZDYBHGyXrsalZkV"}, "item": {"itemId": "YHb539CBz5E1e5Sh", "itemSku": "StLtVT0UkFdOneQ7", "itemType": "HxHFd0viMpWrey8D"}, "quantity": 9, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"5BNp6sBmo3XP6F62": "dgXhnM92F46uofUK", "XqLIc8LeYq8F3g2p": "AAaaDDQmEItDHpfR", "J0eAfwpJjip2bbNT": "1uvp5IjsE7yNBJHR"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"ETRTT3sZRCT9I7ew": "pu9adKxewE3CUZbB", "4uHke6J2Esud9W1J": "vD6wyHPwnXStolCa", "D33rOiWmxOBJMB83": "P6B8lTC6Zn4Ijwkw"}}, {"platform": "STEAM", "platformDlcIdMap": {"m4Fiwz6zvvZAY1ms": "kOvMg42WaAnTcylP", "UX5qtbrBBH0KbPwX": "A6KpMieU5GQ4xD3X", "o5hOcV6AUWGqOUZa": "fn3kt5NQGv86GQcs"}}]}' \
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
    --entitlementClazz 'MEDIA' \
    --entitlementName 'cI1ggZTd0xZpHJ8L' \
    --itemId '["jcE7nYdp9mfsB0ve", "cYpSEZI1MVBaXNnN", "ILXnqghjngWiG0D4"]' \
    --limit '93' \
    --offset '95' \
    --userId 'PXfnvPCxv9dj0IzS' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["6S0gOs6Gx1XkySb4", "QaazW5b4gPMz5mr8", "9ewqL2l1jyditMRN"]' \
    --limit '32' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1987-06-27T00:00:00Z", "grantedCode": "l9kNzHhkQxeZhtE7", "itemId": "stVwwvA3IFJISvKI", "itemNamespace": "uMn2FRHWQmduJ0RT", "language": "GJrf_IgAM", "quantity": 78, "region": "R78L79KZHANp0Axa", "source": "PROMOTION", "startDate": "1972-12-08T00:00:00Z", "storeId": "0OEIzVliWXdJu819"}, {"endDate": "1983-06-18T00:00:00Z", "grantedCode": "rIkW0syKmmvCb1vO", "itemId": "8aOduCBIcYk90kca", "itemNamespace": "5P7hEmNKZdwpcyxz", "language": "xqc-fxik", "quantity": 52, "region": "8eh7I6dkcrQt0i4b", "source": "ACHIEVEMENT", "startDate": "1972-01-09T00:00:00Z", "storeId": "K8m6KqkWBY0dB12U"}, {"endDate": "1977-08-26T00:00:00Z", "grantedCode": "wBoWte3vIVpIpPXm", "itemId": "clDvxlqnAFkvXim6", "itemNamespace": "QfxlIIVPG3chT8vF", "language": "wdyi", "quantity": 13, "region": "cpSUHfWGrKxFMPvr", "source": "REWARD", "startDate": "1997-02-08T00:00:00Z", "storeId": "BpPiso8PP727PCwG"}], "userIds": ["0OpVpZZQk2kNm9vc", "Tqd6xfIeBj019mXd", "Lhe8Kfob4sRrZtN4"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["lYbIpyR2UANDgaV8", "iRxyNGPxGVvPsRvM", "DtOKmFu8nC4Jdpvt"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'YiJW15dFUuIE6EXp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '29' \
    --status 'SUCCESS' \
    --userId 'WXGNt4CqC5OMcvUT' \
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
    --body '{"bundleId": "p3o5b1cyGb2UUVzU", "password": "Ay9Ozj6lY83uavqj"}' \
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
    --body '{"sandboxId": "DAovJsB54BVVaJZR"}' \
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
    --body '{"applicationName": "YjYUX696gyDXkk5p", "serviceAccountId": "sSBeCyDv9LAT1khY"}' \
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
    --body '{"data": [{"itemIdentity": "23YbQQCrnHc5AxKh", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"dxe2fpXLy7xDutNE": "PKTbXPB3luDxmhuj", "Tssm4XT4oZUAjmRD": "I3mPzmdMkzvfJnN0", "05tmufgH6aHTzHtL": "UjWJhftpt8tvcJsp"}}, {"itemIdentity": "NtTmC8cUXrkq10hG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DKolQrqXKlkXGOh6": "fAMqlsIsovSa78yT", "WgKM5rrq0xRSkopF": "9AUnp2lAafEYhYrZ", "eoXL6RwOhm2InFhE": "8xN7kY5hsvnkCB1Z"}}, {"itemIdentity": "mvpKfcpq5xOsw4C0", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"aurHd2eEZBDDuFwP": "YBlyiFOovZ9uymfa", "BpDlEMWhkPaSueH7": "Ovuj3zmby8FqF1JZ", "9INg8ZKboZdMJWDh": "stjhnvIbbmBtNo1x"}}]}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateIAPItemConfig' test.out

#- 78 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteIAPItemConfig' test.out

#- 79 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetOculusIAPConfig' test.out

#- 80 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Rg4CJHZsdzJOhH7G", "appSecret": "w4W762DGyF5D80EH"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateOculusIAPConfig' test.out

#- 81 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteOculusIAPConfig' test.out

#- 82 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetPlayStationIAPConfig' test.out

#- 83 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "27fboU0LLGW1wqNG"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdatePlaystationIAPConfig' test.out

#- 84 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeletePlaystationIAPConfig' test.out

#- 85 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetSteamIAPConfig' test.out

#- 86 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "neJXAX5Xil7gXLe0", "publisherAuthenticationKey": "BOYAaCS7TwtJLknA"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateSteamIAPConfig' test.out

#- 87 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteSteamIAPConfig' test.out

#- 88 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetTwitchIAPConfig' test.out

#- 89 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "EZynLDiWkgqv9slI", "clientSecret": "iVuaS7zscQRImukL", "organizationId": "EVY0Czix2eLx3Fud"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateTwitchIAPConfig' test.out

#- 90 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteTwitchIAPConfig' test.out

#- 91 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetXblIAPConfig' test.out

#- 92 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "9F7PgzaXSCxu9YFY"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateXblIAPConfig' test.out

#- 93 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteXblAPConfig' test.out

#- 94 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'FbofT6ptoFnhGsVs' \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '2EmczKuudlFsfJGX' \
    --itemId 'EEBL5aYChj5768EJ' \
    --itemType 'APP' \
    --endTime 'G3wicAvzL2HGpCR5' \
    --startTime 'NMeV12CLo4CNLvlO' \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'jMr7vIO7zKUdFCBp' \
    --itemId 'LzGRjWNxVSyHOgY9' \
    --itemType 'APP' \
    --endTime 'nBqwNBOg5vI3Wik0' \
    --startTime 'ki5CcoUWAHSqtlx5' \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'mnHHPvrWbyN7wvgx' \
    --body '{"categoryPath": "v76vMXWgEz7U1BQ5", "targetItemId": "LAoEepm6Zi10HgYi", "targetNamespace": "Q7Z8ZNylWCK5LYy7"}' \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'gi3yfG6FW3N8kx1Y' \
    --body '{"appId": "xy4IFYI1IK0uyMUf", "appType": "SOFTWARE", "baseAppId": "5hw7Pbhy9kfhTarw", "boothName": "pKmpU6fmAyPsDsxn", "categoryPath": "jQr9ki2YDwWYoWr8", "clazz": "aFoIknLhJf3ILVBK", "displayOrder": 19, "entitlementType": "CONSUMABLE", "ext": {"T0Su1FQ7i83f9JPF": {}, "p3HvynD4M9f2HaqJ": {}, "41l3wSLrsQnxzJVz": {}}, "features": ["A1KyDdxAc0aDXTog", "hYwb7wSSaURwhKPv", "T2puQOr0XUCdhQD1"], "images": [{"as": "jSh3KGmUrd6T8Fwe", "caption": "vnvNfL2di2eObyLX", "height": 81, "imageUrl": "cojYzM3qFIH6V5ck", "smallImageUrl": "lvycP76TpZXnsgS5", "width": 98}, {"as": "QQ8IoUzVoK00w9AJ", "caption": "WUFK6JnjaCWyDfpj", "height": 68, "imageUrl": "hQDuzHPIgeNJbhjz", "smallImageUrl": "nKVq5jUJunc6MIUl", "width": 15}, {"as": "WoThwP7mafnJIPoa", "caption": "2upsBl0l8LRtysnR", "height": 82, "imageUrl": "oWxuFkL0n4dFMVdJ", "smallImageUrl": "R8NZno75TnSXDd1l", "width": 38}], "itemIds": ["PDIFRrqnqtIHC9sh", "dLJxN0keEvdF3cfe", "wOP2tsPeXBBXXih2"], "itemQty": {"SmXWfdCNKKKBFlH6": 73, "W0msXkYD6GO4Sp0M": 5, "OQxThU7iyw874CE6": 76}, "itemType": "LOOTBOX", "listable": false, "localizations": {"4JGa7KM2XLMqBnwt": {"description": "In7kEMjCfqBhpT6h", "localExt": {"RjU8oQL9A1u1dLYs": {}, "Cw0U9mWH1Y0wYD86": {}, "DmcHgNgF6iYwrPt8": {}}, "longDescription": "8K6TQJ7uJ5NDWtv1", "title": "cR1v8AujWiQ3GcIX"}, "L3UNzKULhjsXXhOi": {"description": "XxeFAhnfzkxyJKK1", "localExt": {"O8cwPpigtBlU2L9Y": {}, "TEEVFQWbYejDO2OT": {}, "BksOyOsiATdeztxS": {}}, "longDescription": "phv71npROiukOdtH", "title": "LqkICYD1tzqNovOK"}, "vERkhe65EFiBakMS": {"description": "JJCWLSadaMAy8akW", "localExt": {"88BM4ZZ3qNyJTOFx": {}, "oj1EAKlkZN3ae2OM": {}, "4EemZEgwhyzpliEL": {}}, "longDescription": "ogff0vGfGDUNKOUY", "title": "oBlCzmyODLoWHuht"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 16, "duration": 51, "endDate": "1976-08-25T00:00:00Z", "itemId": "YrXlM3qV55iK6OKY", "itemSku": "V1JKfj64QUq11oLD", "itemType": "jfRRX7YVcwQCNL3k"}, {"count": 48, "duration": 22, "endDate": "1977-10-14T00:00:00Z", "itemId": "tfpHD7mTupjy2VZl", "itemSku": "nMJWBD1TQTC3loNX", "itemType": "VJ5bP3MTiRM9DfNK"}, {"count": 56, "duration": 60, "endDate": "1984-09-03T00:00:00Z", "itemId": "DiA874aabHN4aR8T", "itemSku": "UEjmIgYstrg18WCa", "itemType": "TidseMInD3KlZNMU"}], "name": "Ns4RP2JFHJOnBDED", "odds": 0.832306448485191, "type": "PROBABILITY_GROUP", "weight": 56}, {"lootBoxItems": [{"count": 86, "duration": 2, "endDate": "1987-10-11T00:00:00Z", "itemId": "87P9xPK7N2fXC1KF", "itemSku": "3O2DgTzqbjgPOwFT", "itemType": "WXZEvB3FiRB16Z44"}, {"count": 29, "duration": 22, "endDate": "1997-05-14T00:00:00Z", "itemId": "UmOAXC4Dfg2ncz51", "itemSku": "oWsbzfL1YwtTA8tr", "itemType": "F5xkaKzLqtxnKjpb"}, {"count": 2, "duration": 28, "endDate": "1995-01-12T00:00:00Z", "itemId": "dY2Jx9I2pUTNbUjg", "itemSku": "UriTyPKmb0GJSlpD", "itemType": "SvKRT3A73OcU0vpJ"}], "name": "K8AgRLx3uEsMzTix", "odds": 0.4989845730609972, "type": "PROBABILITY_GROUP", "weight": 10}, {"lootBoxItems": [{"count": 41, "duration": 97, "endDate": "1981-02-17T00:00:00Z", "itemId": "p34SdB9pS14iVk4k", "itemSku": "cE7v29K3X4x6Vrzs", "itemType": "trpBzAZRmwlzBc9z"}, {"count": 67, "duration": 15, "endDate": "1972-12-20T00:00:00Z", "itemId": "yPH5ynom9daijgvJ", "itemSku": "kQRfenqqbxwwf7Aj", "itemType": "EozCGPRPheAF7VCV"}, {"count": 15, "duration": 50, "endDate": "1996-10-19T00:00:00Z", "itemId": "wE0OuYwxJ4QCYi7q", "itemSku": "cRnHosIuF1h2V3mc", "itemType": "SVJHTaGalsbPD6kR"}], "name": "Hn6aaaFjS9bSn8Kr", "odds": 0.8487643387286357, "type": "PROBABILITY_GROUP", "weight": 35}], "rollFunction": "DEFAULT"}, "maxCount": 50, "maxCountPerUser": 26, "name": "wqp0X9go8naV9GNl", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 9, "endDate": "1978-06-18T00:00:00Z", "itemId": "1nz3fIrGrQdLEKMG", "itemSku": "lFCGH36SEdCURkGJ", "itemType": "IdwhfBK96FL7qjEa"}, {"count": 10, "duration": 32, "endDate": "1990-06-17T00:00:00Z", "itemId": "bMryXYFPYClajyCM", "itemSku": "NXZE7QOSMxE0q1Jh", "itemType": "P5HMAfJwsdDOj9Lg"}, {"count": 77, "duration": 55, "endDate": "1988-04-23T00:00:00Z", "itemId": "1jq5xWq4tDRqL1QP", "itemSku": "pnqDIlhXTqL1EVMV", "itemType": "npp78fCwGPZBTf1Q"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 71, "fixedTrialCycles": 31, "graceDays": 74}, "regionData": {"T1NgrzUO9uerI6hL": [{"currencyCode": "h0Ptsu25WExjGFQd", "currencyNamespace": "BGPYRtd4LWUZ7rJb", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1982-05-25T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1988-09-18T00:00:00Z", "expireAt": "1986-08-19T00:00:00Z", "price": 90, "purchaseAt": "1996-09-29T00:00:00Z", "trialPrice": 10}, {"currencyCode": "f6HW9rT4GenRFJhs", "currencyNamespace": "RXJzQPLTm48w2mnp", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1989-01-08T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1973-12-29T00:00:00Z", "expireAt": "1971-01-04T00:00:00Z", "price": 45, "purchaseAt": "1990-06-04T00:00:00Z", "trialPrice": 26}, {"currencyCode": "Mg2Sw9zvJIzKyx8c", "currencyNamespace": "wZFwycvZG3HFknmU", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1984-04-23T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1989-06-29T00:00:00Z", "expireAt": "1981-02-10T00:00:00Z", "price": 89, "purchaseAt": "1980-02-21T00:00:00Z", "trialPrice": 95}], "RteXSrYt9lf7cddW": [{"currencyCode": "FYjSz1ijBVu5mSrQ", "currencyNamespace": "kLWXY4MLci6BARus", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1996-12-05T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1976-03-01T00:00:00Z", "expireAt": "1981-11-24T00:00:00Z", "price": 65, "purchaseAt": "1973-08-27T00:00:00Z", "trialPrice": 87}, {"currencyCode": "BWwKyAzIvxumCml5", "currencyNamespace": "rI26ylaEiCAZs6gK", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1972-08-13T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1993-02-21T00:00:00Z", "expireAt": "1994-02-10T00:00:00Z", "price": 69, "purchaseAt": "1974-07-21T00:00:00Z", "trialPrice": 52}, {"currencyCode": "XMEG8HXGHWuKzdms", "currencyNamespace": "6UD9D6uKrnT88GjU", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1972-12-09T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1981-06-06T00:00:00Z", "expireAt": "1999-04-07T00:00:00Z", "price": 16, "purchaseAt": "1972-04-09T00:00:00Z", "trialPrice": 100}], "e4ib7hrlIMiz3Mdr": [{"currencyCode": "zKVSodWnZ50Ayy5H", "currencyNamespace": "w0TpPaPptKEPGP8r", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1979-12-04T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1996-08-03T00:00:00Z", "expireAt": "1972-08-23T00:00:00Z", "price": 38, "purchaseAt": "1984-03-31T00:00:00Z", "trialPrice": 84}, {"currencyCode": "X6ARLb9SIsSc6Wlz", "currencyNamespace": "Fqf2jmf2IJ2yw00t", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1987-04-20T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1973-02-16T00:00:00Z", "expireAt": "1999-12-13T00:00:00Z", "price": 80, "purchaseAt": "1994-08-05T00:00:00Z", "trialPrice": 43}, {"currencyCode": "msbChA3WwdA0G0CM", "currencyNamespace": "0qF3ysan4LZxUf9a", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1988-07-05T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1996-02-13T00:00:00Z", "expireAt": "1981-10-07T00:00:00Z", "price": 8, "purchaseAt": "1991-02-01T00:00:00Z", "trialPrice": 53}]}, "saleConfig": {"currencyCode": "12pGNKbKu0pEPqnV", "price": 87}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "GNn9fstG8FdtNwc8", "stackable": false, "status": "INACTIVE", "tags": ["EM1kmAovIXw7Z85T", "AbRAYY8RiVL87sRh", "NABxoaizyJZeEzqR"], "targetCurrencyCode": "gUkpiVIOq0kYe5DJ", "targetNamespace": "mazjOH9XKeXQjT5a", "thumbnailUrl": "MI9oKu0yGj63omgO", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'sFz93gqx2lnx4s6g' \
    --appId 'xjhPtKBXScKMrjo5' \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'q2NqsGGG8Gg2tSFc' \
    --baseAppId '3szbSkkAqpCgRfzW' \
    --categoryPath '1UMy2lKrDEyDO8Lh' \
    --features 'kGzktAyY8LT2xBMu' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '93' \
    --offset '72' \
    --region 'HT1Zvp2mh8li2sKt' \
    --sortBy '["displayOrder:desc", "updatedAt:asc", "createdAt:desc"]' \
    --storeId 'a134cP1GrrVsDjKN' \
    --tags 'p4XJgQOcQoqW9HV6' \
    --targetNamespace 'loCZ8220WDKH2RYl' \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["wCDggDLjTBt37JP8", "KxXA6wIcb5L9SBHM", "jUjesv983ho4CXAo"]' \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Nn9hJ6RGmbwlCSJi' \
    --sku 'ptYKYgqDWlkCRbe6' \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'aROxIdgrvKTwr8oJ' \
    --populateBundle 'true' \
    --region '5Amf4GLQ5qf2XeAl' \
    --storeId 'm8QBh1J1r7xtwK4j' \
    --sku 'srMVGoOBbWeAImUz' \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XWZA9StYE70Rphv1' \
    --sku 'aIWlfunFnuhZMAly' \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["j4UsPJiCHj8EiGjQ", "cjHAI2qAdJ8EUIBJ", "IPE9funwbNlW6T3I"]' \
    --storeId 'Bvu13hw9LeBuSraC' \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MqS1GrBvQuwa3B1q' \
    --region 'iHBEp3p9UNC7I17M' \
    --storeId 'QDLMhoECEfvN9k3b' \
    --itemIds 'HDziDymrCoOJzpOD' \
    > test.out 2>&1
eval_tap $? 106 'BulkGetLocaleItems' test.out

#- 107 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetAvailablePredicateTypes' test.out

#- 108 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'rmwibE25fZWpsBYz' \
    --body '{"itemIds": ["Ws5mB74vpbVDfpRU", "Pyh6o2Bocj7yjdh7", "9lnGbik72CtnRYJv"]}' \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'crGKXGAYDLzSm5Cp' \
    --body '{"changes": [{"itemIdentities": ["VJYjm5yHxpjhaiJW", "uL36ICTY3Ym2cPA2", "guBFwX1acwL81hlK"], "itemIdentityType": "ITEM_SKU", "regionData": {"Mqcfbyci32kVUYEA": [{"currencyCode": "3w4V28uPJ2uAEoT4", "currencyNamespace": "KzgTe2guV311WpdL", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1992-05-24T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1992-05-10T00:00:00Z", "discountedPrice": 42, "expireAt": "1974-11-15T00:00:00Z", "price": 75, "purchaseAt": "1980-12-14T00:00:00Z", "trialPrice": 72}, {"currencyCode": "HvUoT4Tz22lROKT0", "currencyNamespace": "54whmA0TVFhiNDCv", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1978-12-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1974-08-26T00:00:00Z", "discountedPrice": 49, "expireAt": "1984-06-11T00:00:00Z", "price": 99, "purchaseAt": "1991-12-13T00:00:00Z", "trialPrice": 70}, {"currencyCode": "jh1VUYf5Rl5o9WmR", "currencyNamespace": "P6JjV9JABqa4IkG8", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1997-10-02T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1976-01-29T00:00:00Z", "discountedPrice": 70, "expireAt": "1990-11-19T00:00:00Z", "price": 25, "purchaseAt": "1996-08-18T00:00:00Z", "trialPrice": 80}], "48BDn9AYHuRNm8Q5": [{"currencyCode": "tlERh68Og248Inz4", "currencyNamespace": "ctifFfNo4KCRjNSN", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1993-06-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1994-09-19T00:00:00Z", "discountedPrice": 95, "expireAt": "1971-09-09T00:00:00Z", "price": 91, "purchaseAt": "1991-03-11T00:00:00Z", "trialPrice": 81}, {"currencyCode": "6R46Xxw2JHPa8CHG", "currencyNamespace": "C2bwKH1O5kSaUTRd", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1976-12-05T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1996-08-11T00:00:00Z", "discountedPrice": 33, "expireAt": "1980-01-31T00:00:00Z", "price": 32, "purchaseAt": "1975-07-20T00:00:00Z", "trialPrice": 76}, {"currencyCode": "q1vXplsei2p66qRu", "currencyNamespace": "hcf5IqYqQfl7WdvM", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1972-11-14T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1981-06-03T00:00:00Z", "discountedPrice": 69, "expireAt": "1983-04-09T00:00:00Z", "price": 74, "purchaseAt": "1990-04-03T00:00:00Z", "trialPrice": 23}], "04O9L9A8xnQ8aizW": [{"currencyCode": "bGZl35z4Vmxwhek7", "currencyNamespace": "EFPzQ9PzMrDg8tDA", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1991-09-15T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-06-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1990-11-13T00:00:00Z", "price": 67, "purchaseAt": "1985-10-12T00:00:00Z", "trialPrice": 79}, {"currencyCode": "Gd2yWmRFGbS4agAj", "currencyNamespace": "eoGJjJ3mloMcOCBR", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1977-05-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1996-05-31T00:00:00Z", "discountedPrice": 64, "expireAt": "1988-02-18T00:00:00Z", "price": 72, "purchaseAt": "1976-06-24T00:00:00Z", "trialPrice": 99}, {"currencyCode": "TotA1mxlPfGKq46p", "currencyNamespace": "CrUbb2k9vYvGWuXM", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1972-05-02T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1995-05-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1990-05-28T00:00:00Z", "price": 27, "purchaseAt": "1983-02-26T00:00:00Z", "trialPrice": 93}]}}, {"itemIdentities": ["7rOUjoW3eGndaPjU", "QXiyZp5Ijd111UTu", "VivOAjUd3sGM7nUF"], "itemIdentityType": "ITEM_ID", "regionData": {"9ida3Inff5KJCH8T": [{"currencyCode": "X3wo57uQCWjVyNqb", "currencyNamespace": "FVgxXoxmbyJEM0qW", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1990-07-22T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1990-09-03T00:00:00Z", "discountedPrice": 36, "expireAt": "1976-08-13T00:00:00Z", "price": 33, "purchaseAt": "1983-06-08T00:00:00Z", "trialPrice": 96}, {"currencyCode": "c3dVXz9ImWfmQ3mo", "currencyNamespace": "v5bAad2BHbtKeddH", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1975-12-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1991-05-27T00:00:00Z", "discountedPrice": 54, "expireAt": "1983-02-28T00:00:00Z", "price": 40, "purchaseAt": "1986-08-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "VxUpEKYEcGg41pOK", "currencyNamespace": "FvFAr4W1JdQvl4eO", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1999-09-09T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1975-10-17T00:00:00Z", "discountedPrice": 10, "expireAt": "1971-12-09T00:00:00Z", "price": 15, "purchaseAt": "1997-03-10T00:00:00Z", "trialPrice": 26}], "EuP13fvmtMtK2NcQ": [{"currencyCode": "griOLcyq6nsbAPLM", "currencyNamespace": "Qj5YErrtdqthEzgD", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1992-07-11T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-03-21T00:00:00Z", "discountedPrice": 0, "expireAt": "1971-11-15T00:00:00Z", "price": 71, "purchaseAt": "1994-09-03T00:00:00Z", "trialPrice": 23}, {"currencyCode": "ByzQ9JGrOCFlWl4v", "currencyNamespace": "YX2nzRl2uO01dMdn", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1980-07-21T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1992-03-22T00:00:00Z", "discountedPrice": 76, "expireAt": "1976-07-16T00:00:00Z", "price": 0, "purchaseAt": "1979-04-14T00:00:00Z", "trialPrice": 96}, {"currencyCode": "PQ4nSn0voW6sEQfP", "currencyNamespace": "cEy1pwq787OmKP84", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1972-03-19T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1988-12-06T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-10-31T00:00:00Z", "price": 84, "purchaseAt": "1980-08-26T00:00:00Z", "trialPrice": 48}], "gy5xqtM7oopTneXh": [{"currencyCode": "t2temVeOkxcOfIQR", "currencyNamespace": "p1skmUSf4iJE2tIZ", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1994-05-28T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1984-06-01T00:00:00Z", "discountedPrice": 1, "expireAt": "1973-04-11T00:00:00Z", "price": 1, "purchaseAt": "1999-01-15T00:00:00Z", "trialPrice": 28}, {"currencyCode": "GfWEq6tqUNAQG3VY", "currencyNamespace": "U6eHS9jMDAHyOPaj", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1977-05-28T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1999-12-08T00:00:00Z", "discountedPrice": 19, "expireAt": "1992-02-20T00:00:00Z", "price": 66, "purchaseAt": "1997-03-29T00:00:00Z", "trialPrice": 7}, {"currencyCode": "d4N5EcZnizcKx42V", "currencyNamespace": "jiWu97Wwhlnh2Uuz", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1994-05-24T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-09-03T00:00:00Z", "discountedPrice": 48, "expireAt": "1986-02-16T00:00:00Z", "price": 84, "purchaseAt": "1973-11-09T00:00:00Z", "trialPrice": 32}]}}, {"itemIdentities": ["XssDXMtqnPsVucTe", "TeyLFG14phzzbVFd", "gYNP7cOqHoeGQIcI"], "itemIdentityType": "ITEM_SKU", "regionData": {"DfqM1w6dWQ7m0NYl": [{"currencyCode": "pinyXXg3O1xFEDFG", "currencyNamespace": "gqjrdFkwNepxIXsN", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1993-09-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1982-11-15T00:00:00Z", "discountedPrice": 23, "expireAt": "1986-11-10T00:00:00Z", "price": 98, "purchaseAt": "1990-10-19T00:00:00Z", "trialPrice": 86}, {"currencyCode": "35b1jxAIeexBx1pj", "currencyNamespace": "SaW4iC66I1juRUnS", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1996-09-17T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1971-07-05T00:00:00Z", "discountedPrice": 70, "expireAt": "1984-12-19T00:00:00Z", "price": 65, "purchaseAt": "1992-01-22T00:00:00Z", "trialPrice": 85}, {"currencyCode": "pOvdhmMLTeCPLpwK", "currencyNamespace": "twmKdDLr9hIWcXD5", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1997-11-23T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-01-20T00:00:00Z", "discountedPrice": 20, "expireAt": "1995-07-27T00:00:00Z", "price": 86, "purchaseAt": "1995-02-22T00:00:00Z", "trialPrice": 58}], "nysMZZF45AhIZWZ6": [{"currencyCode": "EahhDLluYOuxGKZ7", "currencyNamespace": "L0K9sTpCIqTJvSDB", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1999-07-14T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1994-05-29T00:00:00Z", "discountedPrice": 68, "expireAt": "1985-05-10T00:00:00Z", "price": 82, "purchaseAt": "1984-06-25T00:00:00Z", "trialPrice": 92}, {"currencyCode": "Ky4PUfwmc7dVEwwu", "currencyNamespace": "dMqbEm4CqDDJX8Uo", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1981-08-11T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1975-08-12T00:00:00Z", "discountedPrice": 52, "expireAt": "1973-02-01T00:00:00Z", "price": 23, "purchaseAt": "1971-01-15T00:00:00Z", "trialPrice": 43}, {"currencyCode": "VY7ZCMslTGTaGQyE", "currencyNamespace": "SN5A9JfC2J1ZhrgR", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1995-01-26T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1998-08-25T00:00:00Z", "discountedPrice": 59, "expireAt": "1982-12-05T00:00:00Z", "price": 93, "purchaseAt": "1987-09-26T00:00:00Z", "trialPrice": 33}], "ecC51DyIhNdV71kH": [{"currencyCode": "sqSSiSOLkvSPvFX6", "currencyNamespace": "YrsTcmB04GVNaiwP", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1997-09-29T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1973-04-21T00:00:00Z", "discountedPrice": 45, "expireAt": "1974-11-01T00:00:00Z", "price": 22, "purchaseAt": "1985-05-15T00:00:00Z", "trialPrice": 69}, {"currencyCode": "tJBuHyzlf3eTx7Q1", "currencyNamespace": "A4oEVBRzcZktv1BG", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1975-03-07T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1987-01-26T00:00:00Z", "discountedPrice": 69, "expireAt": "1987-10-09T00:00:00Z", "price": 6, "purchaseAt": "1990-05-18T00:00:00Z", "trialPrice": 25}, {"currencyCode": "nGtVulQU2FEFv9GC", "currencyNamespace": "WruxEuztc9gUMEtm", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1983-05-02T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1974-04-22T00:00:00Z", "discountedPrice": 46, "expireAt": "1983-01-17T00:00:00Z", "price": 31, "purchaseAt": "1989-02-05T00:00:00Z", "trialPrice": 88}]}}]}' \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '11' \
    --offset '14' \
    --sortBy 'wx0YHS3YhEn6VgHj' \
    --storeId 'SiVyKjvdTO41BDbI' \
    --keyword 'o337Ww86EKIaJdrC' \
    --language 'CtXSdvFLdaJcV2Bd' \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '33' \
    --offset '1' \
    --sortBy '["displayOrder:asc", "createdAt:asc", "name:desc"]' \
    --storeId 'h5bEfBiqe58Gwwso' \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'B2mH9xuYjZcId5UH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kmC4xPJwCVycg9jv' \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'B08eyCwH18CnDyED' \
    --namespace $AB_NAMESPACE \
    --storeId 'Fovn17Ik1CKYyuVw' \
    --body '{"appId": "DJXVRcjW8RSbw4XR", "appType": "SOFTWARE", "baseAppId": "imQHu4pBchopPRVC", "boothName": "J2aGz2K3jj55Z2Ow", "categoryPath": "0GdNONPNy9pahDBG", "clazz": "M1xR5Drn1lZG51tr", "displayOrder": 83, "entitlementType": "CONSUMABLE", "ext": {"WY4QiKNbH7qvH4Ou": {}, "dsDfEyu2XPeiKcpz": {}, "dwI4S8DgY5kIkC4X": {}}, "features": ["yqt1xH5mI67CcE9P", "PNm0hLXd19jUfw28", "nZn1eEmyxv3aSyqw"], "images": [{"as": "Kctx6Wq7nlP3iJXL", "caption": "H8Sux9fBDFSbbrAQ", "height": 41, "imageUrl": "YPDT9cfEHfJUiuGq", "smallImageUrl": "bzuuzyZrdgNxqkur", "width": 69}, {"as": "3CDhhaULihY3iYfY", "caption": "KwTW7FdJ8sU3Uq9I", "height": 56, "imageUrl": "9Gv6PVbWMBBKnlaW", "smallImageUrl": "D3MMrIQmZM4p3TVK", "width": 70}, {"as": "xiDLuatTYS7yqOoW", "caption": "oFdWPlVkZ1lM9zQh", "height": 92, "imageUrl": "qkWLFtJQChz4TK9D", "smallImageUrl": "Wg80lyTtkXJFtjuW", "width": 48}], "itemIds": ["f2j4BdtJSIa6Pf1U", "71DVdEgbGfsqTF2w", "ekIFQtcD35UJjinf"], "itemQty": {"sSlyPna2EEbi6hrv": 47, "Ciq32KZEATF5wD5u": 64, "9u68EhQxuUtPfNHv": 34}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"KvKRu2lUc7s5crID": {"description": "QexYf9Qn4oaFlQTP", "localExt": {"cO49f2UDsLQUZSQn": {}, "Vm3w8wHeEV8FOfh1": {}, "NweHg87EVYfbeuLN": {}}, "longDescription": "35I9TcK46MdAXwK3", "title": "XSXYerYptwbq38Qk"}, "y58uV5MvRfetHAhc": {"description": "kAfgh7YtEeitk7YJ", "localExt": {"9D0bZnks7LuYqxuo": {}, "oXMMEQ0YtiRkcRf7": {}, "nK4eW3PTrHwVeXjN": {}}, "longDescription": "1MDMcfkll05prMLd", "title": "iOr9tGj62iuOyv1s"}, "BA69lxEQL0a0y9fc": {"description": "qKVlbYrKJj06r16l", "localExt": {"3CzxXkk2LTMwLJlT": {}, "h6uz5svMpAKmc9NK": {}, "VAqlUraIy4eksVIp": {}}, "longDescription": "peUQZXL9n7zQk8De", "title": "6B30Eq6pJRmkGhr7"}}, "lootBoxConfig": {"rewardCount": 44, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 38, "endDate": "1987-05-10T00:00:00Z", "itemId": "T7wE9nD5Yl7exr4B", "itemSku": "IxaovLGTN1EWYjzF", "itemType": "0Yu51skJrlfdPhDx"}, {"count": 39, "duration": 66, "endDate": "1992-10-08T00:00:00Z", "itemId": "JF5G99lVzFNE7IWG", "itemSku": "9HThccIiOf444oH7", "itemType": "Gx8tLSjTkclV3G3j"}, {"count": 42, "duration": 60, "endDate": "1989-12-21T00:00:00Z", "itemId": "0ZR86OedveBHKNsY", "itemSku": "t2knO6gN22zPcZTH", "itemType": "mMTyCmiJ1SGaZf9D"}], "name": "BOH4G85KI7rJm5HA", "odds": 0.965863973665692, "type": "PROBABILITY_GROUP", "weight": 0}, {"lootBoxItems": [{"count": 32, "duration": 63, "endDate": "1976-03-12T00:00:00Z", "itemId": "cWmekRD92uABqhVG", "itemSku": "xL4kmFAJ9XhhSad4", "itemType": "AjC8M8BcTSdMV2Z4"}, {"count": 68, "duration": 89, "endDate": "1981-12-11T00:00:00Z", "itemId": "xPnTLSJ3ELmqQrkg", "itemSku": "PxgkBiSaHvSc9I0Q", "itemType": "l6Au553jupu4qHeh"}, {"count": 99, "duration": 42, "endDate": "1982-12-30T00:00:00Z", "itemId": "QKM1fQYZuCFarQEx", "itemSku": "UJRQ5ebcpqoJ8HP8", "itemType": "8alv5AECyM1JgqoM"}], "name": "NRCn38tdN19zVhE9", "odds": 0.42779629945286635, "type": "REWARD", "weight": 8}, {"lootBoxItems": [{"count": 74, "duration": 4, "endDate": "1971-05-13T00:00:00Z", "itemId": "ZrOxWeCjszb1qCPC", "itemSku": "GbJXdlC4agr9xYVH", "itemType": "52AAIZO88RmQ7xAN"}, {"count": 88, "duration": 47, "endDate": "1980-03-05T00:00:00Z", "itemId": "9Q7UP5QyOuAt0cfd", "itemSku": "GUA5c377qlRKNcTs", "itemType": "oXfS2HAw1Om3POeR"}, {"count": 48, "duration": 30, "endDate": "1976-04-21T00:00:00Z", "itemId": "np1mdgfkj4keEXtP", "itemSku": "n88iuQUvo5EPLwht", "itemType": "c6OfbXcvbEt43jUx"}], "name": "1cQzHy1YhHbBrxgU", "odds": 0.6209933517518559, "type": "REWARD_GROUP", "weight": 96}], "rollFunction": "DEFAULT"}, "maxCount": 18, "maxCountPerUser": 20, "name": "x9GNwbpkyzKcYsRd", "optionBoxConfig": {"boxItems": [{"count": 18, "duration": 36, "endDate": "1973-09-08T00:00:00Z", "itemId": "luvVh5EoN1uNrAY8", "itemSku": "wIeTn5UXabexWkR2", "itemType": "HWo1CuBB5mOfoNeV"}, {"count": 77, "duration": 47, "endDate": "1974-09-22T00:00:00Z", "itemId": "DmuzUhg2tB7uqm46", "itemSku": "1EggaY0F3QVEnyve", "itemType": "K3hSy3l5yzr9zP6I"}, {"count": 66, "duration": 60, "endDate": "1973-12-07T00:00:00Z", "itemId": "kxu5uCxa6yk1KNgz", "itemSku": "HeUlCew9l4BwwwA9", "itemType": "71Ghk5yUOv8rARcV"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 65, "fixedTrialCycles": 96, "graceDays": 47}, "regionData": {"IlmHVJKqT9ybLQcF": [{"currencyCode": "WxE2cpx4XPlnaHF4", "currencyNamespace": "3df1aCvOXfZ3tkbg", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1976-06-10T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1976-05-24T00:00:00Z", "expireAt": "1990-05-05T00:00:00Z", "price": 31, "purchaseAt": "1974-05-03T00:00:00Z", "trialPrice": 5}, {"currencyCode": "3ZigdJcMqnLjXD8p", "currencyNamespace": "jwbId1x83GOyExj8", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1994-01-30T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1997-06-24T00:00:00Z", "expireAt": "1991-10-31T00:00:00Z", "price": 28, "purchaseAt": "1997-07-19T00:00:00Z", "trialPrice": 43}, {"currencyCode": "oN60vgax1IS7qDP5", "currencyNamespace": "kdiVJOxESpSR2nCw", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1991-03-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1989-10-18T00:00:00Z", "expireAt": "1977-06-27T00:00:00Z", "price": 13, "purchaseAt": "1987-06-22T00:00:00Z", "trialPrice": 67}], "N3QpBQjkkHu9q3tM": [{"currencyCode": "cxGwtogyf7QJFXSE", "currencyNamespace": "7iPs5c7nBT8rqM85", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1990-10-19T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1997-08-03T00:00:00Z", "expireAt": "1982-09-11T00:00:00Z", "price": 76, "purchaseAt": "1986-11-23T00:00:00Z", "trialPrice": 67}, {"currencyCode": "3whh8QqXANvZjCq7", "currencyNamespace": "c0ii0OvjTNULBnIB", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1972-07-12T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1975-05-18T00:00:00Z", "expireAt": "1999-09-12T00:00:00Z", "price": 11, "purchaseAt": "1990-05-11T00:00:00Z", "trialPrice": 17}, {"currencyCode": "BzBSBXzqi1bg9ipJ", "currencyNamespace": "L6RCqzhl7k4MHBqM", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1989-05-07T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1986-02-27T00:00:00Z", "expireAt": "1997-10-23T00:00:00Z", "price": 100, "purchaseAt": "1998-02-14T00:00:00Z", "trialPrice": 65}], "HN0OKFUTDBCVconi": [{"currencyCode": "Tr9bXtMVaGtEemOG", "currencyNamespace": "kiALVKppOoQUG0Dc", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1975-10-24T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1976-04-16T00:00:00Z", "expireAt": "1975-02-24T00:00:00Z", "price": 5, "purchaseAt": "1995-04-29T00:00:00Z", "trialPrice": 69}, {"currencyCode": "4yBxUhgcfW3ltGJ9", "currencyNamespace": "d9bJjDZOSqvCFV7J", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1987-03-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1991-02-01T00:00:00Z", "expireAt": "1992-10-30T00:00:00Z", "price": 40, "purchaseAt": "1994-03-20T00:00:00Z", "trialPrice": 61}, {"currencyCode": "ami2pFDeLugMX83d", "currencyNamespace": "t8Nma3Y8cE26g9Wg", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1996-12-24T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1989-06-26T00:00:00Z", "expireAt": "1972-09-23T00:00:00Z", "price": 55, "purchaseAt": "1998-09-23T00:00:00Z", "trialPrice": 83}]}, "saleConfig": {"currencyCode": "FHsMtAJ3noNuZdOP", "price": 13}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "nSvXNOowWntC0KYZ", "stackable": false, "status": "INACTIVE", "tags": ["iBoXO07p08egMEF0", "46DuBatGroaJub0Q", "JDlvkaDhrdqNOT8p"], "targetCurrencyCode": "uauAdb6bb8L7Eg6C", "targetNamespace": "2HnolgP3Nzz5Ewwa", "thumbnailUrl": "MGJEGx7La8ARZUHZ", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'e61o8modOYEz8Mj4' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'n12zjW67fDpvOrsU' \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'uo4lAFwl3XYUj60i' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 68, "orderNo": "RYrbtDTg9eOjmE5E"}' \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '7G80E4sW5lZJvvDn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Jk1xhST8uUxzkduo' \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '9ionJq1tAl8gwb8M' \
    --namespace $AB_NAMESPACE \
    --storeId 'fsm0H3fKKlYR8Bh3' \
    --body '{"carousel": [{"alt": "hlvG5oS3hJ93IxuI", "previewUrl": "oC8Xv3vczBDc7fLD", "thumbnailUrl": "Ewz0panBEmTAkkP0", "type": "image", "url": "ihbJ25WfCxvtcXLW", "videoSource": "vimeo"}, {"alt": "3z6jMb5lAaXkmTHL", "previewUrl": "Yy9BhDS33QEWzU65", "thumbnailUrl": "8WzvhgXh2IzZtTiE", "type": "video", "url": "riZyKwnpoPRMXg0u", "videoSource": "vimeo"}, {"alt": "ZzzlKkhb2JejlodO", "previewUrl": "VBvAboZomseaPmE1", "thumbnailUrl": "WMJkJfXlmMlXV7HT", "type": "video", "url": "3lVYffkhMMK0UH6s", "videoSource": "youtube"}], "developer": "npTCtUzdKZ9eR3wK", "forumUrl": "DGh1Yq84ojREkuKn", "genres": ["FreeToPlay", "FreeToPlay", "Action"], "localizations": {"HzH1gtpcoeBbK4BR": {"announcement": "gwjpdDX1UrGnUvEI", "slogan": "CNBrTGggmC8QqKiW"}, "yXQBW4znYy5hl4Jx": {"announcement": "1nz4nFUCvGvIumSA", "slogan": "AMjCKmMYQNkrhhWe"}, "Fa47iChXVpNeCl5o": {"announcement": "Tl1Q6Enr65QShgIZ", "slogan": "ItlgGBpnCgRiAwBn"}}, "platformRequirements": {"CpCIoqcfQfM5iw3V": [{"additionals": "BWTboSxNIR7NVyqi", "directXVersion": "t2UMsNjxPdjEN03K", "diskSpace": "LUzVilrF7Hrwy1U7", "graphics": "FSMIWS7eczsGt1oB", "label": "EEd3yKIwzVaZsULT", "osVersion": "ffVPclLwmXFOhwXs", "processor": "JA5aeNe88zq1cuvY", "ram": "fXuwBV3kANjTti6o", "soundCard": "6njqfxc6oV73S7XB"}, {"additionals": "AO2wwmXWB6Xho2hO", "directXVersion": "N0b0hf2DIfYcv6sx", "diskSpace": "gXR64hITCd5kOoW1", "graphics": "m6zss8sLAuF6qydr", "label": "2XpMSShLkX46tTFU", "osVersion": "LGf3RHZBSEsl6bJR", "processor": "j3INNmhbMmvD2X6H", "ram": "mmSYADZJtt7LB9ws", "soundCard": "rcU7LkPHHXrcGChT"}, {"additionals": "3OsXigploedMIjOi", "directXVersion": "C85vtW1sdR9D2lsA", "diskSpace": "Xi2Bg5jlwuSlNnUk", "graphics": "ttMgfM3FpFh0hx9T", "label": "VumEIx4UZsL5qW0X", "osVersion": "Gl5lXA2UjN4PvNmY", "processor": "qsV99Zzg2tBIGQKd", "ram": "VGrhcPbCsYiZ54gM", "soundCard": "5M3afWC7qX0E2mFj"}], "VVqZrwDhzQIfPj1W": [{"additionals": "FlOiPIkE9dUJF4B2", "directXVersion": "ibPBL0dXdcgwTgKc", "diskSpace": "9yI7dHkKMb57feg6", "graphics": "XZlDR7aQ6qzP1cbw", "label": "PgSPMMPcTQAO9x1n", "osVersion": "h0bJFwq0ePICCjJO", "processor": "r48P0ZZHuWxVu6A7", "ram": "0kxc4ayw6tuV21eJ", "soundCard": "Lb9K7wU3HLQCDiJB"}, {"additionals": "xO4JJy8zaN54860F", "directXVersion": "jf4tuobntr6g5sEZ", "diskSpace": "HdVvfF78bhTRmfRW", "graphics": "T9DLq4wOuHFtOibA", "label": "cYZY70zmDUuZ7iAa", "osVersion": "cYLvImsfJLnKqWpZ", "processor": "GJzxo4TkizquMpgd", "ram": "CpsnMNbxIxMp9wcZ", "soundCard": "vbgl8EuRrDy6mOW7"}, {"additionals": "UaSz2shLiWYrrOFY", "directXVersion": "Bh0UOM9RWXKYQndd", "diskSpace": "KL4iXKnFjGDpiCqJ", "graphics": "vSTzBNGPZFB1ChUO", "label": "wWq8eY9JHexNlLz5", "osVersion": "FIj2hLovOXPmUpUo", "processor": "of2MXDeNMbMVfRmH", "ram": "H0tILWntZm0OuNLK", "soundCard": "xypgibR1iuYZxA9v"}], "fdxeX6G6hTHidnsV": [{"additionals": "C4y6Fzp0QgRj71QZ", "directXVersion": "mCGeWMYhwhXmlv4W", "diskSpace": "NzKwV55smJbKN48E", "graphics": "jyfTz3uWlgJBb1wN", "label": "Deo4EZ25jQCZH5NS", "osVersion": "Z1TS8ZtWwSFjbhby", "processor": "npJocYiFgNEr3PNu", "ram": "uJrD0MUt4a165MiH", "soundCard": "NKcuCELa964RAEBq"}, {"additionals": "urCse9gPkh5CDB8S", "directXVersion": "fHeIv9dfTQ9snxWt", "diskSpace": "k2kqbcpPDN2CVn5X", "graphics": "hcFfMAhmAJkqSuRh", "label": "l9WA15Mjtd4kPwgt", "osVersion": "T1AVOuUAH5ZcImIs", "processor": "tevdOGUzO6pc8zVN", "ram": "49heb8ZmPEJeHpnW", "soundCard": "edqyh6mS9ev8DNMA"}, {"additionals": "rilGTDHi7SV9R82L", "directXVersion": "BpdIqRxNaWPZGHoJ", "diskSpace": "IEp12spsKaOvtuxq", "graphics": "6hQhMQRjqoIC2ggz", "label": "A1sH2S9Y9bCGeyPy", "osVersion": "NHK6K15yPleLPCK0", "processor": "fu6OHo5fuNeYUIcc", "ram": "SVGPfGlN5Og1DvFS", "soundCard": "pg9zUVrqYNEQS238"}]}, "platforms": ["MacOS", "Windows", "IOS"], "players": ["LocalCoop", "MMO", "MMO"], "primaryGenre": "Indie", "publisher": "PB9soK1hHRjXLaJk", "releaseDate": "1971-10-08T00:00:00Z", "websiteUrl": "b6xWxDx61J3AoqSo"}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '9945gUBSdiGMZZOj' \
    --namespace $AB_NAMESPACE \
    --storeId 'P8j93z0lhDwXPm2w' \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'aChMGq4IJsESvLgD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'oAs7eLWvTL8D4Va0' \
    --namespace $AB_NAMESPACE \
    --storeId '34kKdLIdOgrvAyHl' \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'YUoz3BrCFRRMkNHL' \
    --itemId 'gaQgzPI2vTpWejXk' \
    --namespace $AB_NAMESPACE \
    --storeId 'AULTOjRtyOkGW5Rt' \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '1KBibTgRGXRKm6fJ' \
    --itemId 'yWTUACYP6U1KQipw' \
    --namespace $AB_NAMESPACE \
    --storeId 'aki7l0Sxuni4i7af' \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'ke0vlowJUOb0hEO0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'l4CeLoSdSFSS4vFZ' \
    --populateBundle 'false' \
    --region 'GAKtrxH62pHQLscv' \
    --storeId 'cqkghr8ieC6nwAsz' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Af8AbRzcDmsdRCwd' \
    --namespace $AB_NAMESPACE \
    --storeId 'ol7wCI0rK3efFCjR' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 64, "comparison": "isNot", "name": "u9suANWy93g3bbU4", "predicateType": "SeasonTierPredicate", "value": "V5BAWhRs0fapFdWC", "values": ["mADFEGVZJJ4pWleh", "7yZU0B8KBYCMDzmh", "pgrxkSg7abQ0ozFT"]}, {"anyOf": 20, "comparison": "excludes", "name": "7yKnDH69pA0CytRw", "predicateType": "SeasonPassPredicate", "value": "PCZgM5ZlXdUU49Ke", "values": ["znok8pa8EBpL2nyW", "JGAPQlgV1P0OWw0T", "okU7JWUCBqVh3O0A"]}, {"anyOf": 33, "comparison": "excludes", "name": "8QRejd3JnErd8fTh", "predicateType": "SeasonTierPredicate", "value": "1Ml8M8cUcPYMye5l", "values": ["PQ7igP7AanhfUKt5", "sg2Np3w9lZbzGs1J", "S6J6zmCVAOaJsPSK"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isGreaterThan", "name": "d94amX7mhDHHUr0K", "predicateType": "SeasonTierPredicate", "value": "X0fZPdDzxXGyAOnZ", "values": ["vqN49JfJQpSFrdWo", "DgLzyxULScQKfV9v", "bG3f5qGQPgMz7yfW"]}, {"anyOf": 46, "comparison": "isLessThan", "name": "jTefQKGGtaTyLlkm", "predicateType": "SeasonTierPredicate", "value": "IRIyNbkCl9wGhk7b", "values": ["UrEfCckz6pbhz5vx", "SvG7tyM1PXV5ZLMM", "9RUkHEdJYl2RZ4eL"]}, {"anyOf": 91, "comparison": "isGreaterThan", "name": "FgeZ6ImYkYNBknYG", "predicateType": "SeasonPassPredicate", "value": "50j4OkBAWzRyJlZh", "values": ["v0LkQ35QmDB57mcz", "Ql4cgoCEcMC48ndj", "pZ6mQeQfmiyXEObv"]}]}, {"operator": "or", "predicates": [{"anyOf": 11, "comparison": "includes", "name": "zdikbPi1CXo9qTj6", "predicateType": "EntitlementPredicate", "value": "S22Y9hGMrDY0kyED", "values": ["8l47zJeUrqnhpgje", "ZCwiBjxOAdLNMJh6", "GwkO1E0fjKeUQfKi"]}, {"anyOf": 31, "comparison": "excludes", "name": "Ss5neTkste0yMRnm", "predicateType": "EntitlementPredicate", "value": "WhCY4w3eKpo3ZjyZ", "values": ["nO2xXSvaVlG5F53u", "Niza33fJGIvbiFOH", "usV4UxlzdfOx9T7A"]}, {"anyOf": 47, "comparison": "isGreaterThanOrEqual", "name": "XZj1u6jQG9y1ejPD", "predicateType": "EntitlementPredicate", "value": "V6G6ZOuGaXiUJmE8", "values": ["ox8jkpQ94FfNTbW7", "EDPXY7ir8y8axJrI", "eYDdQEMzlq5S6zH4"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ctW4Q9DR4xfu2CvQ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "9tvd1L2nNQLpVC9b"}' \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name '10CAoPfE7HPcTpBQ' \
    --offset '82' \
    --tag 'Y08zZOiAXqUNCxDL' \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RHKQ12FcVrCts0jp", "name": "Ggepi0xgGSSuKL0s", "status": "INACTIVE", "tags": ["npzYdVZIDImYLVaa", "K3GxbTQnlJwYprfn", "vL3kE0VD7jLvtz4Z"]}' \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'nLXHXDUgyar33tYw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'bfwDcSZRSPEkxoca' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oZKHHuXEfScbwLop", "name": "nwpfR2F5D10L4kTl", "status": "INACTIVE", "tags": ["KgcdpCV33KGniH8K", "wr2MNfABgYCdkR1M", "JQSuwFOHub23qIeX"]}' \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'knohC0UBvnQidtzb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'TAKyD6jmFVFqEjT5' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '89' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'PCwZ1hFTkX4aMZI3' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'RJhDBAMwDcFOiXD0' \
    --limit '94' \
    --offset '89' \
    --orderNos '["xT9XjTsqwW732Lel", "6zEEB41UTyw1a6Fn", "jeq8262f4scTxDGO"]' \
    --sortBy 'wsur6Q6ZkjEBMpC6' \
    --startTime '5gE7fdqfISfMTxKr' \
    --status 'CLOSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 134 'QueryOrders' test.out

#- 135 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetOrderStatistics' test.out

#- 136 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SNb7jOnjl7vfZh8p' \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AnlTD7rUKO0LI7f0' \
    --body '{"description": "d9zcKaqizHfmNpED"}' \
    > test.out 2>&1
eval_tap $? 137 'RefundOrder' test.out

#- 138 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetPaymentCallbackConfig' test.out

#- 139 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "5jQi59qBkzOGbjML", "privateKey": "5p626L5Vdm9dCNkh"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'B9KvjNDPaOyBzEgu' \
    --externalId '5L9D5eewYNy1EyWR' \
    --limit '27' \
    --notificationSource 'WXPAY' \
    --notificationType 'CMaYu6qOPSbeRQGR' \
    --offset '99' \
    --paymentOrderNo 'A4BiopaAtyKChtgI' \
    --startDate '8zXNsCreUprwGr8h' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'SC7m7uw2evyEPweO' \
    --limit '90' \
    --offset '32' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "vQ0Fab8oPfZqAcim", "currencyNamespace": "o4ypea6hOEZ4gnul", "customParameters": {"mZgt4aQs125YaKGi": {}, "AtLTsRhHmCx1IEe6": {}, "OUtULORZt72zjZOu": {}}, "description": "MsIlajG7iRtADCUh", "extOrderNo": "6ErXsAnkSVrY6MLF", "extUserId": "5ltcNa9RswDPSard", "itemType": "SUBSCRIPTION", "language": "rd-XSsa", "metadata": {"CT8GdMgaEQU2CKun": "2LWWd5khELQzwZSI", "4ENhxmMAPT7CQSKm": "FVBBHhQj5VttLCt1", "Wmp6TCLIIuGuHo5B": "33nHOMfqG7YZn9Pw"}, "notifyUrl": "nvoVWls9EV2tQkm5", "omitNotification": true, "platform": "QR0Lk4HLwZubVkTL", "price": 44, "recurringPaymentOrderNo": "0E4Bx0XgUN6e48G9", "region": "uKjbLY0ih02ICiSL", "returnUrl": "iGvmjfNGVvDthxbn", "sandbox": true, "sku": "8thIlJ3oTQMeOUfa", "subscriptionId": "vXzJFR9rAKQEOSXd", "targetNamespace": "C4qfaLBiohTFj9Nm", "targetUserId": "y7KBkX4GO9ciuhoP", "title": "j69Ld8Oj1gA3JiXa"}' \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '98OS248SXmzZM8C5' \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5CFFbqEeUvcJp7QZ' \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CXkMQzc0z6BBI8Rh' \
    --body '{"extTxId": "vEYVF1mYBE3gPDfQ", "paymentMethod": "GQfNTDgFe1MhLFE2", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vRY3qGCw4pb39u1R' \
    --body '{"description": "c3f3IjaTGMq7HbJo"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XJXRYwnHbyeJqSQI' \
    --body '{"amount": 47, "currencyCode": "SRdkLcp1PdBYJkxK", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 5, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FmxmQHAYJwVKqRWj' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["Epic", "System", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 151 'ResetPlatformWalletConfig' test.out

#- 152 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 152 'GetRevocationConfig' test.out

#- 153 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateRevocationConfig' test.out

#- 154 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'DeleteRevocationConfig' test.out

#- 155 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'xMSVNEA8XcSgMVi0' \
    --limit '86' \
    --offset '58' \
    --source 'DLC' \
    --startTime 'EHTCsTygrqpghh3t' \
    --status 'SUCCESS' \
    --transactionId 'Dv4tKopUOreR4Fdp' \
    --userId 'JtH26ev8tleyh0cg' \
    > test.out 2>&1
eval_tap $? 155 'QueryRevocationHistories' test.out

#- 156 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetRevocationPluginConfig' test.out

#- 157 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "iEsXyHkp5JSWsrmT"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Xx0Zgu28vNzn66Xo"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeleteRevocationPluginConfig' test.out

#- 159 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Xdb1a82JmJ4DNylZ", "eventTopic": "aWCgKTUVDF4UKxga", "maxAwarded": 71, "maxAwardedPerUser": 54, "namespaceExpression": "6PsS0FQMsaGsfbTJ", "rewardCode": "5foxC2jI9G4ZCmKI", "rewardConditions": [{"condition": "Rzn5Hq1q2a9VuFFY", "conditionName": "dcMqKewdynB1pZkV", "eventName": "qREAiwlblrVb8gCk", "rewardItems": [{"duration": 9, "endDate": "1993-12-11T00:00:00Z", "itemId": "c1O9THHcAzJpqhke", "quantity": 26}, {"duration": 44, "endDate": "1981-03-06T00:00:00Z", "itemId": "FUZdsWRGmQ35XKas", "quantity": 15}, {"duration": 21, "endDate": "1987-12-23T00:00:00Z", "itemId": "QITeJrY2NYmMfhkT", "quantity": 87}]}, {"condition": "1CHG7YJltE1zN0A7", "conditionName": "vK32SdAihgQi37gE", "eventName": "uqaxSdGRq6rJYMPb", "rewardItems": [{"duration": 76, "endDate": "1978-05-19T00:00:00Z", "itemId": "iGpgGaQ4oH3LgQ5E", "quantity": 6}, {"duration": 25, "endDate": "1991-02-17T00:00:00Z", "itemId": "4Gpj50ZTnh64W8TM", "quantity": 74}, {"duration": 24, "endDate": "1973-11-05T00:00:00Z", "itemId": "VbP154jfN3i9THGy", "quantity": 20}]}, {"condition": "OIHXtZtdJCNpa1bg", "conditionName": "sjEBsm1DL7TVXgPa", "eventName": "iC4FyTiOXbFPJNxn", "rewardItems": [{"duration": 43, "endDate": "1985-10-13T00:00:00Z", "itemId": "D2Ui7WGLobaqJjN5", "quantity": 36}, {"duration": 95, "endDate": "1984-06-11T00:00:00Z", "itemId": "pYJZ2ngCPfJ56ifR", "quantity": 94}, {"duration": 76, "endDate": "1992-05-27T00:00:00Z", "itemId": "BFHsOQQTAucfwol6", "quantity": 85}]}], "userIdExpression": "G6vQQmWKhE1N89YX"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'eU1uGibRUniEKs2d' \
    --limit '19' \
    --offset '0' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 161 'QueryRewards' test.out

#- 162 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'ExportRewards' test.out

#- 163 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'dtIYff0jRUznpO3O' \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'vugyO4XjwQ6k5SuQ' \
    --body '{"description": "NjKlVpBBIaskCQ7J", "eventTopic": "91K4z7bnV9Dge87b", "maxAwarded": 93, "maxAwardedPerUser": 51, "namespaceExpression": "iCuRLokWiiOHiSeB", "rewardCode": "74OM4DaUj1u3dLDb", "rewardConditions": [{"condition": "9LEhMX8Zsq2xb1hB", "conditionName": "PrtrD1TucPBUDIr9", "eventName": "WozVKd389gxNDiTW", "rewardItems": [{"duration": 57, "endDate": "1994-05-01T00:00:00Z", "itemId": "2TdBSxO7EX6iJqU3", "quantity": 41}, {"duration": 8, "endDate": "1993-11-04T00:00:00Z", "itemId": "wP8kxuif7dEElZsz", "quantity": 20}, {"duration": 61, "endDate": "1993-08-19T00:00:00Z", "itemId": "OQxA2SPMmObkgqfr", "quantity": 63}]}, {"condition": "1UPk5eI8UgCw3yT8", "conditionName": "ISXMuMIJoZ0ZyBt9", "eventName": "LwlrlfBdea06ia6n", "rewardItems": [{"duration": 65, "endDate": "1983-03-18T00:00:00Z", "itemId": "HMSG3ow2orN5scls", "quantity": 77}, {"duration": 95, "endDate": "1974-05-07T00:00:00Z", "itemId": "agP6zRE9a0D8Hh0H", "quantity": 20}, {"duration": 1, "endDate": "1979-10-22T00:00:00Z", "itemId": "iy28bRF60Vlu5Gou", "quantity": 71}]}, {"condition": "2X3wwhPmc1q7wAVM", "conditionName": "5hOl90NVMjBcDjUh", "eventName": "gmOBSta7RM0jzWNp", "rewardItems": [{"duration": 11, "endDate": "1994-03-25T00:00:00Z", "itemId": "rIG3MVrIFetsRRVL", "quantity": 39}, {"duration": 1, "endDate": "1984-12-10T00:00:00Z", "itemId": "Z95UYDwlu5kcuL4Y", "quantity": 39}, {"duration": 96, "endDate": "1973-06-06T00:00:00Z", "itemId": "ReSKg35T1h3Rhyql", "quantity": 93}]}], "userIdExpression": "V44Hao4dD91ZeURC"}' \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0u6PYpxdyBgcXXTD' \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'kRueeCTeU7zlOxXq' \
    --body '{"payload": {"5BJd0qvV9BIM2Qe8": {}, "Kpw2t46M9ltJkUI9": {}, "GWrKB3oTr3ldUZTP": {}}}' \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'Tk8Vu5MOxm46Aahl' \
    --body '{"conditionName": "9snTIAWOe231RNDV", "userId": "9KhmPbLLIa1TrIZa"}' \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'gw7gIOcoDK29Io8c' \
    --limit '58' \
    --offset '77' \
    --start 'GXR2bkPrM65GLC13' \
    --storeId 'oLqXHSzCQfAn8Q0d' \
    --viewId '3hCxgICKKPYsYSgr' \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'QHE1pOkd6Ra4FB67' \
    --body '{"active": false, "displayOrder": 31, "endDate": "1974-10-14T00:00:00Z", "ext": {"8uGYFIfd3HFakaQV": {}, "XyodJ5PCDErHCpVm": {}, "8AJmYLFXc0i3ujvg": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 76, "itemCount": 48, "rule": "SEQUENCE"}, "items": [{"id": "tePVipcAXQHegwMJ", "sku": "dqP66EeKpPy7Ua71"}, {"id": "VBjZ0m7MELBkGVjG", "sku": "kTL8QEF9nZuQEx8m"}, {"id": "2gK4U4c85LmuHoPw", "sku": "IHoJZ51LhtEBQucg"}], "localizations": {"g4vA9TDgvaPgXJBa": {"description": "M5LfKDy4NJxZOPTm", "localExt": {"ZFtBHE1qsb3HAdyR": {}, "XnTGFrnzsghrROTa": {}, "aON1y1HyQS8O05aV": {}}, "longDescription": "ewOWClMOGE98Kp3b", "title": "iisN8detCOCiiylT"}, "CNxwi9UrPnczCvpQ": {"description": "EiF4BzvWhOMgftWH", "localExt": {"Luk8aeNtikmNDqnz": {}, "XZeBkSc46jI5bdk7": {}, "egtGXHqzH8yXqZcP": {}}, "longDescription": "hhTmxROciSZolVl5", "title": "PZkBKpipCd5i5E1q"}, "XIdRnWRVRMVR8Xwm": {"description": "qZAS8gjBaZxLrDt0", "localExt": {"Ein88L2xn0BsjYoG": {}, "F5I3F4tl7goF0LZ5": {}, "oq0PoeO0cTKldZjR": {}}, "longDescription": "KhpVWuSOwXbTHSy8", "title": "18gqQoVa5dVnernH"}}, "name": "LmbqS35dDbfFQECR", "rotationType": "CUSTOM", "startDate": "1974-07-29T00:00:00Z", "viewId": "0ls3D9KCjEudcXre"}' \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ATARPGIpP0Fgo7Sm' \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'lxaGIgYscRtkUBLJ' \
    --storeId '2N0TyDs6ANJot1f8' \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 't00979516f9Q6ysz' \
    --storeId 'wyMFHFXE3kYcU4mm' \
    --body '{"active": true, "displayOrder": 37, "endDate": "1987-12-03T00:00:00Z", "ext": {"1ZYzBXAr9e9bpVJi": {}, "1oKmsmMxYzB22pYQ": {}, "PVWwmmPshmDb75JV": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 87, "itemCount": 55, "rule": "SEQUENCE"}, "items": [{"id": "hBJpu8RuM6mELTaj", "sku": "1vdq4kLyt9bQHQiF"}, {"id": "u1DXintdkgRfOScu", "sku": "BvzzjJ5No2aJtjhx"}, {"id": "jtEUnMWSsD3Ud8wY", "sku": "YaLw0tkUD4q8OvA8"}], "localizations": {"mm0MhnlnfGHa0T6q": {"description": "aLace0ZquwRHf8n1", "localExt": {"V0amJhYtPPtSzh7x": {}, "GYjxmQg6BpGNJ4F2": {}, "ulRF2HuP5kBjbxrg": {}}, "longDescription": "0nrzDANpBzgMpQJ5", "title": "PGsbI3KCfbj56HpP"}, "D7rqk3nXun9pC298": {"description": "w6UBdy4m0FqzIlYM", "localExt": {"OXLyz5fur12oRHZn": {}, "YP4HrOls064D7cBH": {}, "m1GDQu6qYDMuoGeP": {}}, "longDescription": "FybLp6DmsMzRnV69", "title": "xX2UaanUUSg5LYqY"}, "Mv0cwOuABybnKIHp": {"description": "7DWpBJt6Jpy9R6wO", "localExt": {"mbDUHndTUd2LiDf4": {}, "cdpfIi6l4RGDVz49": {}, "pcMwMOxQ9h5viXVu": {}}, "longDescription": "VImS3NGfCufEofIW", "title": "t0X6FydfOT7f2Vr1"}}, "name": "ZqbTniQKtIOdWUHp", "rotationType": "FIXED_PERIOD", "startDate": "1983-03-09T00:00:00Z", "viewId": "jGmaaImcgB8CJytb"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hvBY4lhGGfDsq3Ew' \
    --storeId 'UCwNLxTrp3VZR1WT' \
    > test.out 2>&1
eval_tap $? 174 'DeleteSection' test.out

#- 175 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 175 'ListStores' test.out

#- 176 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "7p6WyTmalKpVjQdN", "defaultRegion": "m9RsE4HouLw3hq6y", "description": "2C7Li1LatQL8SSKj", "supportedLanguages": ["j46Bkz8XcQqce7iE", "PjpbOrflO5anFBVI", "jIFtkDpjQWMrkIYS"], "supportedRegions": ["MSBajlMNyL0o1pQ2", "kbzM4w2Wich2Iq6K", "dPIe9LaD6MH8K6KX"], "title": "aPXqK2DQaJgoiu91"}' \
    > test.out 2>&1
eval_tap $? 176 'CreateStore' test.out

#- 177 ImportStore
eval_tap 0 177 'ImportStore # SKIP deprecated' test.out

#- 178 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetPublishedStore' test.out

#- 179 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'DeletePublishedStore' test.out

#- 180 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetPublishedStoreBackup' test.out

#- 181 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'RollbackPublishedStore' test.out

#- 182 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fb3z5C6RWf4MyOcW' \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'u6m2VwNbKKsQCFJV' \
    --body '{"defaultLanguage": "RQdocpAcevbH2LCj", "defaultRegion": "fMayDVB3nXIMAfQX", "description": "W7V0cueHK8niDlJQ", "supportedLanguages": ["uyjHltDilT9f1rBi", "sBqCvZ6KlN3heGTM", "Upce6G6pCHZUciuS"], "supportedRegions": ["pYQuEHQx0OsLSB3b", "Lx0t43DhnTdLpqIp", "TGgYY1t1vacqghSX"], "title": "oVGrjAjCaCQxfjdX"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'qba89RqmisqvAFqW' \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'Xtwet7lcfAtZ5CQJ' \
    --action 'DELETE' \
    --itemSku '9WbZ5DWj3uUaHgen' \
    --itemType 'SEASON' \
    --limit '95' \
    --offset '90' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'g1CC8qZi187q8O1T' \
    --updatedAtStart 'iMAMs4rDTwOOHkER' \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'XtAmk5v6tOLIZ5pn' \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 's3pjr3Rp939JMCut' \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '2AAi7QqMGEpIqpEe' \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'nQ3m9EothYBfiINn' \
    --action 'DELETE' \
    --itemSku 'O7pqJgs6dxRfW0Wf' \
    --itemType 'BUNDLE' \
    --type 'ITEM' \
    --updatedAtEnd 'o4MRRQEDa6O5xNGw' \
    --updatedAtStart 'GFq9VnaNFIeGHeZJ' \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'IyetvzD43AAI1IxA' \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'y8AIVYBQONJUAFwb' \
    --namespace $AB_NAMESPACE \
    --storeId 'diWBbpFChoBPUQTj' \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'jdF9Np7Xd2LWCP8I' \
    --namespace $AB_NAMESPACE \
    --storeId 'xvUcycsSoi6OSTaB' \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PThBRQd4oR5A3tNa' \
    --targetStoreId 'aimJLtRtu6YTqYIS' \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'u9hOJBzFCO2oFcp4' \
    --limit '69' \
    --offset '100' \
    --sku '4vD5yZYJbGPYiwTy' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'mno16YMPkkIL8vWv' \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RE2CqCBgZm1lo6dm' \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'phyj0CmdTh4omSkK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'KUI3sKFF6BhngH02' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "SIBJYOOcX70TfJup"}' \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Q6SPLdKhh3r23uuN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'axznjOnT2HQnp2F5' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "WwdN8Eo8wIYNGKMe"}' \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 't0KxGWdDbiQFkOQd' \
    --body '{"achievements": [{"id": "ya54hT5i9byhhiaN", "value": 18}, {"id": "NXzbylK0gmC5a2ZE", "value": 58}, {"id": "3uQncvmauIILmIVn", "value": 25}], "steamUserId": "0z8YiX4CwwtdMaNC"}' \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Mp4PwHPhJEqR31RJ' \
    --xboxUserId 'Izrf8onHVsaiOJFF' \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hWDojJPvHu4dB4oZ' \
    --body '{"achievements": [{"id": "5qAqji6aEGLFH8Ya", "percentComplete": 28}, {"id": "3xB7WIZOEQHiHtjx", "percentComplete": 59}, {"id": "4FwsZU96cURD138J", "percentComplete": 68}], "serviceConfigId": "Egoh4iNiaU4YCJvw", "titleId": "hMJspX41Um8qufzp", "xboxUserId": "DRnsHkd6SDsKQnG0"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'nj5PyguPiHvXS6g7' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'X7faPKBe9Y1i9bhN' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'pKmKchfDRBnSvVzK' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'x4xoBHrEmwrmbqTB' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dfTuxS6w9Dw7AYWK' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Eq3XZUd7bPCTGA1m' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'vGfqkRm1kVRF0JnS' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '7brE75aEYnT3gFVX' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'CmjSIZKwlGvzu8dQ' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'KlgVljqNoeY6OBpw' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '1m497adxGopBkiNb' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'nNKIkQanWGauEbKA' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'rhbpb8lAxNDAls4k' \
    --features '["tO3Mu0D9tVJYt18g", "3MCVBDvj11M6mbQj", "01JEkEYtU8DJiHor"]' \
    --itemId '["IM8BcQbVzAePEUG1", "eHYmUe72HE9Rfu7k", "1YmkqzHtUNqUaNjh"]' \
    --limit '65' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'iotwIx5LCwl9lkCm' \
    --body '[{"endDate": "1991-04-02T00:00:00Z", "grantedCode": "S6Zb8VVnk0Auif3D", "itemId": "GuYJH59tRnBnEbp0", "itemNamespace": "GfCja9t2BSrVsyNM", "language": "FT-YQhd_GY", "quantity": 49, "region": "vaI2Xbi8fgFxVLvJ", "source": "REWARD", "startDate": "1987-06-16T00:00:00Z", "storeId": "rYyovlilVrN5j3YB"}, {"endDate": "1979-12-24T00:00:00Z", "grantedCode": "oj7gSurzdNxZ8aJl", "itemId": "iJfGnbcWSRXxQGXe", "itemNamespace": "YK5zA0Felsr9Ng0E", "language": "Rb-cP", "quantity": 80, "region": "3C3BvUVK7vN0OPVt", "source": "GIFT", "startDate": "1980-11-20T00:00:00Z", "storeId": "BUEbV6KNNJFwpQBR"}, {"endDate": "1995-12-28T00:00:00Z", "grantedCode": "SKKVkFvLB5g9LGYl", "itemId": "VdfVSf2VIZpGozLG", "itemNamespace": "BnVWowxDwA5XqbhI", "language": "kU_xozJ-OI", "quantity": 45, "region": "r9QgiR0z0zzzo0Vt", "source": "PROMOTION", "startDate": "1978-05-13T00:00:00Z", "storeId": "4mcblUEmzE4RgKww"}]' \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '42p2tXk1rJtxvnvL' \
    --activeOnly 'false' \
    --appId '9JeKb9BJdfmjcMn3' \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6vo8HxN96OjOV1zk' \
    --activeOnly 'true' \
    --limit '30' \
    --offset '5' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4OoL9rsCvoAVkN4k' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ADtoGbbPWNzprLAf' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'beSPasQWWoMgCkr5' \
    --ids '["oO99moD5KfwyXoLT", "ftqCYCxwiFFdUAor", "Ng0etR2kvR0Z8lKH"]' \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uo97oFFFJY7aJliC' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '7RxnTmD6LRz3BmUP' \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'f9cOHSQjeQPOJ4vb' \
    --appIds '["aPijCPoR0Ssdq8oV", "uwR0POkaA91f1jD8", "wa2pKq0JOHR0M87V"]' \
    --itemIds '["nghurgatp0u7o63h", "tkx8B0q6wBzwdLXH", "XoqmXAv1TVECq7qq"]' \
    --skus '["GY1NqaJehTxLTmaR", "IljQfuPGVKom7iZB", "kiSqQLzCVNLByv7p"]' \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8tlm2WoDijGA62rG' \
    --itemIds '["DwDVQvclKBQXXFuo", "L7q8OSLXV9mmHHO1", "jJs0AeYpfIjWP9am"]' \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'j6FL06khIXHUikRT' \
    --appId '1GJk74oHszJjCHBb' \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GjcMJhKqiJ4s692i' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'lcbBymtmWP4fImCo' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gn3SHR6WKMNAcI24' \
    --ids '["4kuWCiTGHFFvuWev", "n8V9fAZLeLqNEVo5", "NsH8kWSNUUmCgdKc"]' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '1jiyxvPd0JCAZvWu' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'QU63llHszMlSiYHh' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'S9F6hBGJFhh2aNzl' \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'f10IbO3xsznkSMhf' \
    --entitlementIds 'KzbaZaI6VJv5Z6hi' \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Vrt0TPFSxEgFWZLQ' \
    --namespace $AB_NAMESPACE \
    --userId 'SFrV5yjNFcMRYZB3' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'xCmDFzXNlXeume7N' \
    --namespace $AB_NAMESPACE \
    --userId 'QF6tceQvlkOHkasI' \
    --body '{"endDate": "1989-01-31T00:00:00Z", "nullFieldList": ["wngWLIuMCFoQ3hgs", "nfkBfDBqBq9qm7oF", "jADE0YiG2YOcsT7Q"], "startDate": "1996-01-15T00:00:00Z", "status": "SOLD", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'aSy5qYbu736MVH4x' \
    --namespace $AB_NAMESPACE \
    --userId 'xKrRC82FiR1qjBIO' \
    --body '{"options": ["mybvSOYyxrtfXgbL", "LxxxGBZHJVDlFWff", "5csVDEqLJKAVlLfl"], "requestId": "twRpq9aFAIES0v5g", "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'xkaPbdf3j3AYwxpW' \
    --namespace $AB_NAMESPACE \
    --userId 'emJHp61X1ynGHOo4' \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'WMyP71YZ3vvfPVxx' \
    --namespace $AB_NAMESPACE \
    --userId '0tkGWUUPJOEbpME3' \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Ex5AnxAowne3j0gI' \
    --namespace $AB_NAMESPACE \
    --userId 't5jMDdRhYPTH4IMu' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'wSFzxGPnVO65kOq6' \
    --namespace $AB_NAMESPACE \
    --userId 'gxH4y2OZpNvRIndB' \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'wmSlwCfXPcVo97w4' \
    --namespace $AB_NAMESPACE \
    --userId 'gKir0nwTNQMseszJ' \
    --body '{"reason": "zJKkvhs0lj3aDTt7", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'BkZHoucN4OhT9sDA' \
    --namespace $AB_NAMESPACE \
    --userId 'EJD3zqQStWB1To8o' \
    --body '{"requestId": "6xmWzM4ukbtIx6tK", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'TFCrvYRzKhVvee3H' \
    --body '{"duration": 36, "endDate": "1980-02-09T00:00:00Z", "itemId": "6fYtQ71hD1jhonaT", "itemSku": "RNP3FJFAvtZDxR8A", "language": "mQ13ZWjlR0F6frkE", "metadata": {"KRtY6m9dYYlcdW4q": {}, "nxGbzOHFDwOpGBoC": {}, "Vhw78WdEcD6h9b8R": {}}, "order": {"currency": {"currencyCode": "CJffnvqX4BlnQOEm", "currencySymbol": "TorskY0e96B92z4l", "currencyType": "VIRTUAL", "decimals": 45, "namespace": "IfS6PlRDjlktUP5C"}, "ext": {"rZzV0bvQOVWUZcOI": {}, "wyuiHXnuGbsJeeYb": {}, "x9EyN9kN788z63By": {}}, "free": false}, "orderNo": "d8IAghcw4KH1tsll", "origin": "Epic", "quantity": 93, "region": "ikj76s1mW4jBL5pE", "source": "SELL_BACK", "startDate": "1972-10-02T00:00:00Z", "storeId": "BAino6Pd3GNJF5qd"}' \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '9DJtEK8st5rq1bjT' \
    --body '{"code": "81p8Gf0ez2LGVvUI", "language": "aMOP-OqLl-yL", "region": "pzQiFnHQEEbR4Als"}' \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'NAYPLuK9haPDPyJf' \
    --body '{"metadata": {"tQAatjrbgEovuK8A": {}, "eZWBOvxMZ3OJ4Zcc": {}, "ECbAuvtfOOxxO7Au": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "okzE0xzJvlxIqg7c", "namespace": "9ilBTK8YNXAWRPqy"}, "item": {"itemId": "AR2oH2PjCPSLs2x8", "itemSku": "NHou5bqJokHkcGcs", "itemType": "LYf3gHgM8blJoTzC"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "kkwpCzKrOjzjzrVm", "namespace": "Y1NFv0QkXvNAnzj6"}, "item": {"itemId": "zxQHImO3QX9mRpf1", "itemSku": "QeHADjd4jqiliSSI", "itemType": "ZTQUDWuMAqzK6YOG"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "seM5YabcKRn95Zx2", "namespace": "qEzUWLPS0PA9hEBR"}, "item": {"itemId": "1VEv5QpdHU2c5DE5", "itemSku": "GYsFG0S15bz5nFpl", "itemType": "L0c2CSUQxxhdfKoj"}, "quantity": 17, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ZKBkrrNnxJWwM8eM' \
    --endTime 'axKpIG0qldHFfsKD' \
    --limit '26' \
    --offset '29' \
    --productId 'rS5ZvYVuzcxVVpDE' \
    --startTime 'P7HSxf6ye79TYo5d' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'uvcdDQKRT7DMHozq' \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'xamJOUfAFClTkXhd' \
    --endTime 'sL5nJYijyEpBttx1' \
    --limit '79' \
    --offset '10' \
    --startTime 'rSxmGklhn6jRGh1k' \
    --status 'SUCCESS' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'GJEsgGuA7E8aMxsC' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "ApeU_Scup", "productId": "cO9MqRWi2NDHMf5I", "region": "TUH1RO9VFCYeFQEg", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dgV3og0sqHLBP7a3' \
    --itemId 'T2StBsTzCsiKKO9q' \
    --limit '9' \
    --offset '38' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'q8aAzX6lXO3PfiuD' \
    --body '{"currencyCode": "vNNcNpP8RCJTzQjJ", "currencyNamespace": "Xxi1Yf699GtQBAf4", "discountedPrice": 3, "ext": {"Ruzp7EoQZwOXk2jB": {}, "2g4l08dSsTsadmlI": {}, "AXNwRKYznBOqcKx4": {}}, "itemId": "g8vKXDMw9gb5eiPG", "language": "J84GWYOcSJseRrTz", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 96, "quantity": 48, "region": "aztu7ZzcgZE8Kbfp", "returnUrl": "idRYIkS8kte1tHp4", "sandbox": true, "sectionId": "YedVf1Q7ptOwsGZg"}' \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '6iThiAVcfxgdUqlK' \
    --itemId 'DAaJ26sUozvXnjcL' \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WDbOIUA8hiX8NEto' \
    --userId 'uVraCj4ltU22FsI4' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'gp9Zz47kA4YsTmFy' \
    --userId 'JplFYCu6vTmRW1cm' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "dRKyjT3Q74MtVM96"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XHwbpXD8fuLeDWGk' \
    --userId 'MKBS8lhhlNlI9npf' \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'WCl2irkaqbX7ldCR' \
    --userId 'AtwjFTR4M6PuFZ9r' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'PxAIuaQ0OQVxOL0v' \
    --userId '5ThjTq3Xem4SfgNg' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'xbTNS9SuCtqWFdIz' \
    --userId '8cSiCdz8msCNkHpo' \
    --body '{"additionalData": {"cardSummary": "FoPgDZtj6uXZMxBX"}, "authorisedTime": "1999-10-08T00:00:00Z", "chargebackReversedTime": "1991-04-16T00:00:00Z", "chargebackTime": "1997-06-28T00:00:00Z", "chargedTime": "1989-10-14T00:00:00Z", "createdTime": "1987-03-01T00:00:00Z", "currency": {"currencyCode": "bISlYf41ffnPWrRj", "currencySymbol": "w5M3izB8oh67HuFy", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "SR9tSX5icRdkdXuK"}, "customParameters": {"g1pciwSwPlCzX1fR": {}, "zcAWvF6qu1V5dmSP": {}, "h13Y2OD3XKFPXlox": {}}, "extOrderNo": "2MzmF84TpyfJa77P", "extTxId": "mmIcP5yEVFxFxHui", "extUserId": "MMpfuvdxSShgfrAO", "issuedAt": "1995-09-14T00:00:00Z", "metadata": {"BHxKhHToqTaKCMsu": "AmJ4AS986g6ZlkKM", "XWVLCsaUSxKbo5M4": "5o2WZByDdf5ebtNv", "wZ4XWbpp5YPEnw1E": "O3mBPIjmuku9c8cS"}, "namespace": "WP29z3iizSHG5YMZ", "nonceStr": "JBMeFl05f68wZiwQ", "paymentMethod": "1HbQuFmlWlJgJxE1", "paymentMethodFee": 85, "paymentOrderNo": "9QsNnqokWWDutpvG", "paymentProvider": "WALLET", "paymentProviderFee": 21, "paymentStationUrl": "rloIOdaHJ3iSzwup", "price": 26, "refundedTime": "1994-12-23T00:00:00Z", "salesTax": 47, "sandbox": false, "sku": "2MW2x0RYKMpA3RsS", "status": "CHARGE_FAILED", "statusReason": "lUk4ikOi8Ws7Yv83", "subscriptionId": "MvmrS9jrZAdOEcWW", "subtotalPrice": 1, "targetNamespace": "0Isf66SRIYZrQuSw", "targetUserId": "ybSNyUWJ5gKm0HYE", "tax": 38, "totalPrice": 95, "totalTax": 79, "txEndTime": "1997-08-28T00:00:00Z", "type": "pmCvtFqgzmGQBwfB", "userId": "CTV1ghVtkIG4bVpB", "vat": 60}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5p1FTz7ekdGgfpfT' \
    --userId 'LMllEYrHtyAxuxDx' \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ERcatKXK3Dw6pKRX' \
    --body '{"currencyCode": "9i3S7Nqawd4IaMwA", "currencyNamespace": "45iJUPrrganzatDZ", "customParameters": {"6NHIP1SEnHWlb7Yj": {}, "VgSdt1JPAcazNjLH": {}, "PhKt2wewGpNdolqm": {}}, "description": "mdfaZZ18vsuRLJdK", "extOrderNo": "MtG8fwBIPzjPlBbN", "extUserId": "ge44v7o4r5dTisrs", "itemType": "INGAMEITEM", "language": "hfQO_981", "metadata": {"rkDpHGV3aiRAUNh0": "m90G4p4vEtr0J03V", "5DI5uQAzpRtE2P19": "Pj04gL2XFMJNMrGX", "GUB0jIghPgngK6Ga": "ucTQi5mvp7tpWLQ8"}, "notifyUrl": "zq6PoIzwkFMOJ1zB", "omitNotification": true, "platform": "ilTQo3ETTf5UmcEe", "price": 95, "recurringPaymentOrderNo": "xYWYDeZbNzJJTolZ", "region": "AGKah6N09AkNBSgs", "returnUrl": "O2Ha45eXvaAAH1WT", "sandbox": true, "sku": "oGw4DfQpDf3K4Crv", "subscriptionId": "ksNruQSOM442ILRH", "title": "aigjSbjatTDqhqGM"}' \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bCRSKMrF37TcAb0S' \
    --userId 'sjnxkDSnoARSYkmN' \
    --body '{"description": "ynvPkRz3sIxsl9r0"}' \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'pGt2212H67TBiRLw' \
    --body '{"code": "0E4CVtij7r0KLBFT", "orderNo": "VNKak9BNIxP99YLV"}' \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'gOAnPFTfmQFueR7Y' \
    --body '{"meta": {"jIwvvwwgqrI8KkNU": {}, "99n6tMWdbHd4bP7C": {}, "mugzmdFaMJu6dGQa": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "2GjazLnGJ9PYfVQ6", "namespace": "d9LoyRbANmDI5qz2"}, "entitlement": {"entitlementId": "OpWG2IvNIeldTgnv"}, "item": {"itemIdentity": "Nl8aPRBV9XS29ckG", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "YDV7Uz3wPOd2n3Px", "namespace": "5PqH8vp1MmaGJ1lx"}, "entitlement": {"entitlementId": "MjgOAMdegSmARN4R"}, "item": {"itemIdentity": "TdLBQDYoZ1adarBV", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Z1HK8G0e283PfPxh", "namespace": "UcB9j5XBEELH0ZbZ"}, "entitlement": {"entitlementId": "oSF97OpvPl7mtbRt"}, "item": {"itemIdentity": "wngf4QDOeGL0iXv7", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 57, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "N1FPZwZap5KYV8nj"}' \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'u8TEfkBMEhFiEoJg' \
    --body '{"gameSessionId": "mzIAwb0IiXrXMSQY", "payload": {"FyeoWodwcBSX4jky": {}, "YVpXUXYJx5nf8F4Q": {}, "GKhJoNsIQ5Koopir": {}}, "scid": "slWvCrDv5yznj5Is", "sessionTemplateName": "QAglpjig5wqgC8GW"}' \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'm3fAqZBxGcjTpCEM' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'LTdVas1HlcIZ6vVQ' \
    --limit '59' \
    --offset '37' \
    --sku 'uMHkvgoOvW4DO1Jp' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'rbZmBJxf4VnOtK9V' \
    --excludeSystem 'false' \
    --limit '58' \
    --offset '80' \
    --subscriptionId 'ME9gQ8FFb7qykOrd' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'uFYJAi4IS6Dgw0n2' \
    --body '{"grantDays": 17, "itemId": "xe3TBdmNkEbyb2W8", "language": "dthNfZUwDau12tHz", "reason": "ncPdGn94hfSZ4rmW", "region": "KZFeHpRhCWmSgsnf", "source": "ZG7lydedKrs8IZPd"}' \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0A6EQWpdhtie6SEq' \
    --itemId 'A9HIiLYnEzUv0qh2' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EkvDipl8Vw4w8iq8' \
    --userId 'vkXaOJF6GNB8Y9Ys' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Wbz9phze0a6ihXHN' \
    --userId 'it7cFJaLnjurEtPD' \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kT9ocsk5reIuB8UF' \
    --userId '1p1YS1Jz7CBfZ8mZ' \
    --force 'false' \
    --body '{"immediate": true, "reason": "hjITOAZxmvchUB5r"}' \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5EwnDXWAQ4KO5EZZ' \
    --userId 'X8tRqgLU0rXCdij2' \
    --body '{"grantDays": 17, "reason": "vrOnqTfsRe43Nqwo"}' \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RL2WyuHAkeKIzCG7' \
    --userId 'zFKrIp0tdxB2OB5d' \
    --excludeFree 'true' \
    --limit '73' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'O6Yy5MKEz2x8trQ0' \
    --userId 'jKl4VBLhYVANDtD4' \
    --body '{"additionalData": {"cardSummary": "pwwgB0xDZSH1G9MM"}, "authorisedTime": "1998-12-10T00:00:00Z", "chargebackReversedTime": "1984-07-12T00:00:00Z", "chargebackTime": "1995-06-02T00:00:00Z", "chargedTime": "1983-08-08T00:00:00Z", "createdTime": "1971-10-18T00:00:00Z", "currency": {"currencyCode": "tQ1Zru5NmHN1bwP4", "currencySymbol": "0LEYywraExMQnylk", "currencyType": "VIRTUAL", "decimals": 97, "namespace": "sa23quAWs9xFF2nz"}, "customParameters": {"78eFObcrLw1spCDF": {}, "G8TDhT8JTbI5RCmF": {}, "jgynR3xcrjBGGrYD": {}}, "extOrderNo": "3Vc3NJiH6w1N2req", "extTxId": "g5CXRUgUVxL4jBgo", "extUserId": "SPhApY0IF04HxUs3", "issuedAt": "1975-07-03T00:00:00Z", "metadata": {"BczoOgfcxhsi9LZX": "xayWMZNboRr15rjQ", "6SLEWou4PMsGvpHW": "fNVldfCoivWB3fho", "qhYqzdl8vBktzfhs": "lXFW5jw3bi8JstjH"}, "namespace": "55lgWDsbyjRhGpIu", "nonceStr": "zlECzRvTDjZnlrPK", "paymentMethod": "BImbDZTyKyGM056y", "paymentMethodFee": 42, "paymentOrderNo": "qBjjV5oYLU5pWc27", "paymentProvider": "XSOLLA", "paymentProviderFee": 19, "paymentStationUrl": "uneVHVBIhNPM5mqA", "price": 20, "refundedTime": "1975-01-31T00:00:00Z", "salesTax": 38, "sandbox": true, "sku": "BtzwCfSx2m4QBX7i", "status": "INIT", "statusReason": "MQVAa92xpGlgcA9O", "subscriptionId": "EO9xCK2euqUligtz", "subtotalPrice": 99, "targetNamespace": "HL4a0PtBcbU3xYIO", "targetUserId": "ozLHxhGohcsE9GhP", "tax": 89, "totalPrice": 50, "totalTax": 35, "txEndTime": "1998-12-02T00:00:00Z", "type": "Cwhns730RptbECYP", "userId": "35W6TwA65cj699ej", "vat": 22}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'OwRfLgOiVE2PY6Uk' \
    --namespace $AB_NAMESPACE \
    --userId 'HVa4s1XuOzBw9pzy' \
    --body '{"count": 0, "orderNo": "Id0trMAHeeADiEB3"}' \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'mEB5CFX0H4p15QIt' \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'cZ58S4pq8p1bWkyX' \
    --namespace $AB_NAMESPACE \
    --userId 'shy1zUInQR59lGEs' \
    --body '{"allowOverdraft": false, "amount": 91, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"4amYUi4OXX3N4hXZ": {}, "hNslTMOuB0ByoaOL": {}, "7CGcyiKc6OI89np8": {}}, "reason": "pWHbJCihSyVBIW8p"}' \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'vYwgm5vCMEKbEs0Q' \
    --namespace $AB_NAMESPACE \
    --userId 'YJGHLhiJVrVNy2qw' \
    --limit '5' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'J2BIKQzdvzeG9FwX' \
    --namespace $AB_NAMESPACE \
    --userId '3ym310qqAQWCWw2R' \
    --body '{"amount": 35, "expireAt": "1992-10-07T00:00:00Z", "metadata": {"cIjlOQ1s0Oiazz0g": {}, "amxyt4y6WFBGmPO0": {}, "3ZgpIRlkXHl8e5Jx": {}}, "origin": "Oculus", "reason": "XMQb9K54R4jFGLUa", "source": "CONSUME_ENTITLEMENT"}' \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'kqAi7z6aWVRJ9DfX' \
    --namespace $AB_NAMESPACE \
    --userId 'ndImP0x0j764taI7' \
    --body '{"amount": 49, "metadata": {"DXbRtkzhPXlF4wl8": {}, "rbeZd63oA9eLiUzm": {}, "ViaC52thzV7UGeZ6": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 277 'PayWithUserWallet' test.out

#- 278 GetUserWallet
eval_tap 0 278 'GetUserWallet # SKIP deprecated' test.out

#- 279 DebitUserWallet
eval_tap 0 279 'DebitUserWallet # SKIP deprecated' test.out

#- 280 DisableUserWallet
eval_tap 0 280 'DisableUserWallet # SKIP deprecated' test.out

#- 281 EnableUserWallet
eval_tap 0 281 'EnableUserWallet # SKIP deprecated' test.out

#- 282 ListUserWalletTransactions
eval_tap 0 282 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 283 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'v8cTMilvrPYTGG3O' \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'a7ivMO3eNvo7vXZJ' \
    --body '{"displayOrder": 55, "localizations": {"Gaz7wEjBdkIVnhhY": {"description": "6Ddl9yR2rVun9KtV", "localExt": {"v4Ik248Zfl0yKrgL": {}, "R17s8DcCIG2vQatM": {}, "EDc0tJ8YoY9YsFOt": {}}, "longDescription": "qKllkyttbZkmC7DT", "title": "Mp5Snry1FZVmtCUI"}, "wnj7hF6CNdeEEgbj": {"description": "O5iNcMmffhxfvRGB", "localExt": {"aANNEJ3boulM2LsU": {}, "1HXVDfktnhgTwMu0": {}, "89HO8NNeOOBM9cuL": {}}, "longDescription": "JvUpFHgeq2UjEN4z", "title": "6WhEvw8jTK5l4kEN"}, "9jdaPJIYwHqCCXL0": {"description": "B87kOHtWVjyl7JOB", "localExt": {"FTRaoFwcl4b789O4": {}, "4vDpo9vw8a7RhHr9": {}, "lZPq91ke4nRusHTk": {}}, "longDescription": "EvEJv9MXCIILHNan", "title": "8IIT8jH9fJ0kQYrx"}}, "name": "5DyhjJ0HYaNCjKw5"}' \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'uavBjJD1JtSa8FHt' \
    --storeId 'B3Eior4RjhOrSStS' \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'RMgNDfShi7jxAGzH' \
    --storeId '59gNOFGKqDE28CpV' \
    --body '{"displayOrder": 75, "localizations": {"xJCm90YTA6Q8smBL": {"description": "oYSUNw7aecqC06Vg", "localExt": {"CTPj2Cd49yhVoZqH": {}, "WaPUYPBhUzjYotYv": {}, "Q7sdk7hq1pNXDtav": {}}, "longDescription": "LiNBAckqad0U76TG", "title": "ALlpMr6xIbsCN9cb"}, "8Apbt0VkaJ1ATZzz": {"description": "Tf13OABPN0Wrn39w", "localExt": {"OgcsrjmhQw5nwoih": {}, "AuCDo65RKRMMLjAT": {}, "jpLdrWKoIhnXAmL6": {}}, "longDescription": "iRt0Sdk1iJrBjqdl", "title": "2NwRLiEabpcs6ZXo"}, "v6f7PD8jPlMQZrzA": {"description": "N6eB6wEHziXAcg30", "localExt": {"panUhUPdhLL9jPcg": {}, "LKpN4EF8Ra6tR5qg": {}, "ok0gYnxkGZULWFph": {}}, "longDescription": "xbrpkE2piZ05NkbN", "title": "MtL9CxFcWouq4mau"}}, "name": "wRZENDDIpieMKEsa"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'Rr2OwXQ5PNeLku7W' \
    --storeId 'P22eTbNPcIJ6psmh' \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 49, "expireAt": "1994-07-19T00:00:00Z", "metadata": {"vlPbKAt19x77lV16": {}, "0j6Y8m7rVC9D9siN": {}, "N4XcH7su5BRToV2J": {}}, "origin": "IOS", "reason": "Z2O0fYZuZag3nfJF", "source": "ACHIEVEMENT"}, "currencyCode": "R7IHVnujTnBU8ERL", "userIds": ["2FVJmq6ATS3JPZKZ", "1FXp1LYpA4hq3idq", "uqdUUhaKM30Z2O51"]}, {"creditRequest": {"amount": 53, "expireAt": "1999-05-05T00:00:00Z", "metadata": {"fHRaJRqRl8NIQulG": {}, "CEk3tWlC94iydg2V": {}, "2NoAmZ8tO5EPtnlt": {}}, "origin": "Xbox", "reason": "RVYfaZcf40WRZv9h", "source": "OTHER"}, "currencyCode": "pFstN2wrZ4hzWXvL", "userIds": ["vIO2ie8m7mtV2nZF", "K9nRTmhSdBqitblg", "5SvahSDIh323wETF"]}, {"creditRequest": {"amount": 51, "expireAt": "1978-06-17T00:00:00Z", "metadata": {"QHaBcv5yC9uLx3YJ": {}, "JPpB5C7NFZJDZFm3": {}, "MOjPEd9r9tXuU5ID": {}}, "origin": "Twitch", "reason": "Qp6VmB59vjNxkvkd", "source": "REWARD"}, "currencyCode": "eUAscIDapohXBHLe", "userIds": ["frfvKBWg4pXy8bhR", "ZepDK9QMTYHGc42K", "qNmpJCdYrhBDfq6q"]}]' \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "3iipMKMSMZqi8TCm", "request": {"allowOverdraft": true, "amount": 89, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"4dMlu22AFvkd8JZF": {}, "JRbkR6zq2c0lXEE4": {}, "ni5wOdTpGW73QkmT": {}}, "reason": "pakFzboQUbnQEFjb"}, "userIds": ["yJGY6UAvOnXhT9Qh", "KUaFyBY5gGX9iif1", "5wuPPpQAGk7S43hk"]}, {"currencyCode": "07nnqqmAQTNroWGY", "request": {"allowOverdraft": true, "amount": 15, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"Vb6PfxYrddQPdXy7": {}, "ryim7ajnTf2nGN4O": {}, "QQXjmaNiqIyok5UR": {}}, "reason": "V9IJcnANueN03tcC"}, "userIds": ["OScfcJueiO3wLlnm", "tflLYRm2Y42C8dNX", "N2H9Yat59wDCauoF"]}, {"currencyCode": "YOdeEZD09fua6Cpm", "request": {"allowOverdraft": false, "amount": 12, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"Z5gHrVim2OTMFhuq": {}, "bX4LVMid8JiCCaRj": {}, "QnH6Kiu5FnwDRE08": {}}, "reason": "oCNJPQ7bj16hh8nr"}, "userIds": ["VvgctWKg6U5hHmqs", "ZVe4AcHWOFCiWOZp", "Cd9YyO6q2e186eo1"]}]' \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'CGpGfp9EVihfOVX7' \
    --end 'eDa4pmvisJN9NJhe' \
    --start 'nuUM1YQN9I6DIuZx' \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["OgFkQImJwSouY04b", "w35kGTskj5wjdCMf", "nM31iKagyPJPPUqa"], "apiKey": "Em45aiEqor2tCbE3", "authoriseAsCapture": false, "blockedPaymentMethods": ["wN3xaWShvxvAFCCu", "Ght7JrdT0UiI6EIN", "QH9l7VgSvbkMaWj9"], "clientKey": "EQACH6sbLkBTEMWw", "dropInSettings": "8O0Pl07FmGjUYLjC", "liveEndpointUrlPrefix": "fRPyteXBzXqjERZ7", "merchantAccount": "I3ZaQWiacfAuJ8Fu", "notificationHmacKey": "bfuL7KZUPcZKeU8E", "notificationPassword": "xI8aPEMViuSv9KTL", "notificationUsername": "oFvnaLnBu4Fif7UV", "returnUrl": "Uy2saOKVZBM8cG2o", "settings": "EZTJGMjKKchpzgB8"}' \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "4crRfnVuQheTFYVB", "privateKey": "wIxVXbUJIktUOBj8", "publicKey": "zx1u4muHKFAIwkyY", "returnUrl": "ZF6prFrIo63vY8pf"}' \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "jRxErhdjijfr1WXh", "secretKey": "K0oCV1STsGdaXBl1"}' \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '6mQ8Bj08UivBJFCD' \
    --region 'Tx1gGrfzV7oW5yS0' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "a06NgsVxMDI5kRWD", "clientSecret": "pNVuX8aPKQ3NcThh", "returnUrl": "qb9uGvbQi45wQJV8", "webHookId": "LOGWm1B0fBo9kZXi"}' \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["PzPFSX3eFKwwzVYA", "7f49SiV0nzMTn9UF", "7KT6p9OIA2pYR4bH"], "publishableKey": "0pan5BRrMvN8Nizy", "secretKey": "eCgMoAHVGlibzuIR", "webhookSecret": "JaZpfBdzBwjxLu4o"}' \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "nEXnGPWbE7xM9gCc", "key": "LxQyYzHSlRPitOLg", "mchid": "dhrSczwhxe5baGj4", "returnUrl": "T5joPo13ZzDdidLn"}' \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Hj5zcnzotKRuwWL4", "flowCompletionUrl": "0aXkLxVwZb28nnkl", "merchantId": 73, "projectId": 95, "projectSecretKey": "rLXRnewWgJ47JhWs"}' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'qqqXhDy5C4TnIsOR' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'h6ucrlZxNVx0hWi0' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["dRSdqdxaA54t9NG1", "ncEpVevWsnMbvGSf", "OOERvnOozV2Nucey"], "apiKey": "paB0blP7IjPib5XJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["FBEMAmAh7I2311qY", "J8322mZ69aoKSYW0", "IkqzBkxryEtOITR3"], "clientKey": "w12F7drJT7LRnJUU", "dropInSettings": "6n9ozAsto1abYyxc", "liveEndpointUrlPrefix": "M9LNaVw6lPdvVu0t", "merchantAccount": "SXEEWUefbsfPhVl6", "notificationHmacKey": "OgfJ9f60RymxBW8b", "notificationPassword": "oLVPoKRbAVMBg93F", "notificationUsername": "L3MYkHETYAlAdSY9", "returnUrl": "JktkmCjnABsiLJxZ", "settings": "5ckj2k3LOIhOypyy"}' \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'aZsXW9hvp7ndLvUZ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'oBhXbf59icDJY6ZU' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "ZQ2gYVBz5j5OsQ17", "privateKey": "2JQdxRTRXO99DPGE", "publicKey": "U6g0eKRFFreqxyFt", "returnUrl": "PdWGSMnUIMBpFXZQ"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'Nft2hpMKR7TNueuc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'n6zWXxsRQ53JJIjb' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "jrnDf64FAld1K8lv", "secretKey": "iaAibLhY3YqNl7QV"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'ZWBZNCDKbFdKaBNB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'tPWKE8xq15rtGQ5X' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "NBKVLD6uvb9LWFH5", "clientSecret": "8lMaLdV5mlkqQI9P", "returnUrl": "dQ92cfoaBEd0KZ1O", "webHookId": "uy9PvewGK2okjeEN"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'c7q9ZbagOa2Z4Ol6' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'xTACH7cZUm7PXg6l' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["JnYs6NoKYV7EY0yq", "MNbzM0gQEs8umKFv", "9b562OAdLuvLiKXM"], "publishableKey": "vzC9AC18GZMIZgVr", "secretKey": "kt1pUzeiLlnZMGdt", "webhookSecret": "5F89JrRfM0Inavmp"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'fPI5oS6HYGyMXspT' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'YvPyoXO61S93a1wH' \
    --validate 'true' \
    --body '{"appId": "qDvY5YW912hSkmfF", "key": "GZ43QpaTTsBrSSg5", "mchid": "qw9OIcCFoYESlaXy", "returnUrl": "x0OfROOKnePrPFHj"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'alszq52FRnNLlqhy' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'OEnJmbzQFjbTkLus' \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'VRfrEpenmGQmnxoE' \
    --validate 'true' \
    --body '{"apiKey": "2bPKH2mlGyr3N0bN", "flowCompletionUrl": "uSyvJlr8M8ugPM25", "merchantId": 43, "projectId": 33, "projectSecretKey": "929CcdzUlEcyOYlK"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'oU4wQhLjTXene138' \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'j3WdGniGDjyfzdbi' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '82' \
    --namespace 'CilqWjBEaFMMmjAr' \
    --offset '42' \
    --region 'NP60u6R7C1FIUren' \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "MihIuFmkxJk37vqH", "region": "DokOElA91Vka8f12", "sandboxTaxJarApiToken": "TKziCV28ZrzHadLi", "specials": ["WALLET", "CHECKOUT", "WALLET"], "taxJarApiToken": "Wmrl15OX6BwLI0X7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'QnWpUc6BPLu2T9CY' \
    --region 'jBaxilpATgEawheo' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'ZMuahrsrz9pQfPAU' \
    --body '{"aggregate": "ADYEN", "namespace": "zOquDRYFmlH4uvAC", "region": "C78wCvYMrAN63tHS", "sandboxTaxJarApiToken": "qn6o3vmNUhdyRZAF", "specials": ["ALIPAY", "CHECKOUT", "WALLET"], "taxJarApiToken": "QXmJF36zlOlhYGhe", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'S3hLY6otwfTJsSha' \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "ecTMSklDcVBBGjiU", "taxJarApiToken": "Gub8VZsSsTV6wH9C", "taxJarEnabled": false, "taxJarProductCodesMapping": {"5YvUdKszq22HUfhO": "TKO0D2B2RAyWkXSZ", "cvx3P0tc6wmwjzZq": "YHEe1DTtXcn6Mv20", "wPL03CHjGkwwIA66": "6mZYtSYAx1lvTf9K"}}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'BQX7GTgOCzl3IkZu' \
    --end 'JiDIOybFjrx61kO7' \
    --start 'JhamToxwZfWKhrgL' \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'LaHmhdTYjESwLcfN' \
    --storeId 'bjWe8JORUybnFNn2' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'UiQHGVWdOjrhWYi5' \
    --storeId 'UylgchtOOpAFG9c8' \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '9RSNtOrYIJuPAIsr' \
    --namespace $AB_NAMESPACE \
    --language '5Ou9aC0EXSBmci9J' \
    --storeId '0yVnjBvuodGYwno0' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'MiyzYEGmbG5Q2p1Y' \
    --namespace $AB_NAMESPACE \
    --language 'A4ZzEqpWenKNNQgU' \
    --storeId 'pWHe7kNXLe6rrCrw' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'KLhxCdCy4QJeQobB' \
    --namespace $AB_NAMESPACE \
    --language 'JDCIVQzqHd5zAYa4' \
    --storeId 'DtiB9Cs5SV4XGMn9' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetDescendantCategories' test.out

#- 333 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 333 'PublicListCurrencies' test.out

#- 334 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'SNqG3bsa4zeXgxEe' \
    --region 'zRmp0u1pSwhuVBKp' \
    --storeId 'hexMY7Y3bFekjMrZ' \
    --appId 'WTCODAfWVGQXqhbb' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'KpNmY9VWOWibHuOU' \
    --categoryPath 'vDkvVav4pQyCKaOO' \
    --features 'EFSkMDFcE0tsms8E' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language 'HDfRTSYDPJWriUtP' \
    --limit '95' \
    --offset '50' \
    --region 'UcbI3Mx2JRUrETQT' \
    --sortBy '["createdAt:desc"]' \
    --storeId 'n4iLZnz61QhYQEks' \
    --tags 'KMZAIWTkT0KvbINN' \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '3cVAVDVDnWIxzNhZ' \
    --region 'AWxQhJWlMtI5mpFL' \
    --storeId 'g5dkephQMf8jbBmq' \
    --sku 'R9GmLmkrgCPLZcoP' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '7SQrD3orfrcMrNZ3' \
    --region 'GBVeI7GWunMifvEa' \
    --storeId 'EWJ54so4HvaSXkBu' \
    --itemIds 'etTNtmWFn6HFKolw' \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["jSb82lW20KiWiXJ1", "cuQH3jT3IMTqpiAb", "UbD3PmJPQuRVWqZR"]}' \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'CODE' \
    --limit '41' \
    --offset '22' \
    --region 'x2WBhwwfbqEpPye2' \
    --storeId 'nzq4ksiBuLXGUzDG' \
    --keyword 'H2IxwIZYX7s8WtS3' \
    --language 'AD1M2JkpOUYY40Fs' \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'cyOXJwQ9JXrfr8Lh' \
    --namespace $AB_NAMESPACE \
    --language 'Xx8XbEFbQMcD8GV3' \
    --region '3RWZss6EiEp7zVRk' \
    --storeId 'd9CnLIhnV8DrreuA' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'h5gYFN0PtfOlvesQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'BkYeQXcYadCU5P9R' \
    --namespace $AB_NAMESPACE \
    --language 'witi5heh4MjK3SDQ' \
    --populateBundle 'true' \
    --region 'rvr1y0j5d9Vtykwf' \
    --storeId 'VvdCEOQ8lJ7emjk0' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "iAZvg2iD3YMLoESt", "paymentProvider": "ADYEN", "returnUrl": "hZ7ynVlp6YE74kD8", "ui": "QVnYf4rbMDW2fbJS", "zipCode": "LZNbX8vnKuWUor06"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3CgUmvul1PgkxCvY' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'F25vlHTisXqmlTAP' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wVa7HiE6LucVnZ0g' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'HwsIlIXHg82VOXsy' \
    --body '{"token": "A3ru1Q8eVJ16GywG"}' \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZUdqMsvxBuKXG4B2' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'qMoGFgbmgVC0bgWl' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '8Ug3w9qfnpUbH3NF' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'uCzU2st7Bct1I3HC' \
    --foreinginvoice '4X3h0re2Vhd9kVxj' \
    --invoiceId 'iNBc27bC9kCwkGG3' \
    --payload 'j9WnYpmPEG246FPe' \
    --redirectResult '7jXZpGffG0YR9SNt' \
    --resultCode 'c3RiQOCqnXiDMrnV' \
    --sessionId 'jjsNO8I3Oy9y6FC8' \
    --status 'd3Jdha0cZ3bMOmOn' \
    --token 'ZTSJDet5D2xWuYzL' \
    --type 'S0s2nmO9DFTj7fxi' \
    --userId 'YYxdGq3CpYgTCAb3' \
    --orderNo 'aRskUIZxztB15kUD' \
    --paymentOrderNo 'uITAaYY4e0y0PSTD' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'IRtC9Jsa3ry7VvTs' \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'deknU03QzYYCFpFa' \
    --paymentOrderNo 'Z7HyCu75xLF4pi2D' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'jOqvFf9V1LkuYYYh' \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'HfYy9gS6CroiFfkc' \
    --limit '24' \
    --offset '50' \
    --sortBy '["rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'VTjpWPFc4L1R6e7H' \
    > test.out 2>&1
eval_tap $? 356 'GetReward1' test.out

#- 357 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicListStores' test.out

#- 358 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["tivWTXIy1QjOqLLH", "RjOrRbwaJexBK5vW", "JEgYLwN3EMiQieey"]' \
    --itemIds '["aqheZx7iMZNiCGrY", "g5SaXgSoygi7ot37", "KJM9EhjjBOanIiEs"]' \
    --skus '["lULCpwkkyTqtl6XI", "CEGtjpGb3SYmjh3y", "QWYFkrR8BjB931Hj"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'MUUmPENJU8oK6bss' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'znqTtQnsFZJKcQc3' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'LAfHSVJpaDZLZx1g' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["NFRiQRPo7RufKiB7", "DRrqlN8pgYwCLy9E", "B64NgfHq5uCpb5Su"]' \
    --itemIds '["WmIqNxlGzlvW9kxX", "BXyhiIkUmc40M6fO", "cCXMAJRcmSFuyORY"]' \
    --skus '["Qmdn63a3JktQjklT", "iBBNeLGTHQVdt84a", "x2K6NyaXdM5MciuF"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "uws9xb8oY50AOkTd", "language": "efFu-CFLB", "region": "gjkrNLvAunPFOqJr"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'IwBnqAQikJmMhCJU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xFS7zX3oLdWCvp2C' \
    --body '{"epicGamesJwtToken": "091d9LkWpIFUjGJm"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gzfjbu3C4xSl1cj7' \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PBpxSF2ZKwCJ4IH6' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'XfhvHCV17EL2owSQ' \
    --body '{"serviceLabels": [35, 85, 14]}' \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'P7wpBSdGNX9l56KA' \
    --body '{"appId": "c7r4y3UwG2klFQNE", "steamId": "Ber7uNBUw2kxcZtX"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '3jBGDOwcZMZmUhGH' \
    --body '{"xstsToken": "eOXGwzz6scNvqlaP"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9e6byGGWSPOeO2wv' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'tPU5njyFX8o7xhCW' \
    --features '["lBZX9ImDkcaih6iS", "FXurjvSO0KDcshtY", "iih4iL1eVWrqtTcj"]' \
    --itemId '["dTtAdgoYApMAqLEA", "nZg8DnDQgB4krmUx", "6DFpaoTzfiR8JcHl"]' \
    --limit '11' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bWVmQB3ry7YQjwFI' \
    --appId 'tWt5dFuPmkFOfcbB' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'aTFW5OYCHIwJ2Ldm' \
    --limit '54' \
    --offset '92' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2n7tHx58h4I6O0S3' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'LOra1RCy9mSitlsY' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'npdBLDK0yhqaCU7f' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'tZbBYLqDaPrwm4XJ' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AcMtyw6G3vB9Pm1z' \
    --appIds '["FViywTU85Kbdd8NB", "LVIr8ItZ48dxzBLu", "W5qor4YlWUpKXaDT"]' \
    --itemIds '["69iPr1gtCULqC5O7", "dm4YjpUnXsEa0Krv", "otDiKfk9oCtfrnTl"]' \
    --skus '["t7H2tRsxJgSLn4VY", "0Qp0EHYpK7oStJEr", "LWSbTaD6pZMZoMYi"]' \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'hmjCzyB7R1z7ELxK' \
    --appId 'j2vLT6reJVft12dI' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jRf5OxX2uAIaAfZa' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'sg6dE3HBvUO5dT9c' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'YJZAREZ9m9HjrGTY' \
    --ids '["zVwttkHZrSO9ZbKa", "TigP3axt2PAS6j7G", "lFXCiZf81Crg427H"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hApHtr27CYGTzpiq' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '2x1VhMaCmYwyUJJq' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'dDkRogoCG0q9KfeL' \
    --namespace $AB_NAMESPACE \
    --userId 'pVsdaVifRgCBjLa4' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'NtXsLxKoRsk9EnVd' \
    --namespace $AB_NAMESPACE \
    --userId 'iTo5N2ho6GDzzDdo' \
    --body '{"options": ["QDCGOW5dFq6pfjY0", "AzaWQU8XyGqgBcfb", "kVGB0UbFOz11erCh"], "requestId": "oDEOnGICXFe7Mot2", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'D8vOWws7VQxT8t2B' \
    --namespace $AB_NAMESPACE \
    --userId 'sihCrCFyGv8AuaBJ' \
    --body '{"requestId": "vtRP77z4qJOkuxrP", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'pTaWK3fhXgMxA7zo' \
    --body '{"code": "Jn2N5DSnxmTgx2Oo", "language": "Ud-SiYe", "region": "Jv6OBawfkIrbzOBE"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6W3eftfbIVukkmnl' \
    --body '{"excludeOldTransactions": true, "language": "mza", "productId": "d5nbVfwFiVSartR1", "receiptData": "z4SKUihzjJjpWtbR", "region": "eM3bj0nLaL0zIlFE", "transactionId": "8qgJwzgDwzli9M7C"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'N74csbLCnoHqHt25' \
    --body '{"epicGamesJwtToken": "2Z7vDAW1GxQrNF4O"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '2skRyBgox666TAMA' \
    --body '{"autoAck": false, "language": "OBHy-WEHE-098", "orderId": "neFnrZyXflMFdP2C", "packageName": "ch2MPvG1V7qIFuVc", "productId": "oYFW8BzuMrLMowmH", "purchaseTime": 26, "purchaseToken": "TzXbQ1AzAE9QFExo", "region": "0ZGxQkepuDCe1ylP"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XEDTYHbT5PKdBydA' \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'kE3CIi2hrnXhMrP2' \
    --body '{"currencyCode": "7UmZgyhxUWpx9CxV", "price": 0.2912756041864508, "productId": "2QGn2SC7CbnYjyWN", "serviceLabel": 20}' \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'KGGXqksxEzvMGu8f' \
    --body '{"currencyCode": "SJufo0XfhtmJLj3H", "price": 0.5384704891964798, "productId": "gg9LPEv47rxdhuAN", "serviceLabels": [2, 58, 76]}' \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '16oqjRwp4OrIMXhX' \
    --body '{"appId": "YZs8qvuztW2qX2Es", "currencyCode": "6z7i9iprZP2u6kZd", "language": "QUv", "price": 0.0925057740940608, "productId": "rssSngfDcyRjA2Bo", "region": "zEbIo2xexOF5PJYa", "steamId": "M0kBrqaazGNFu7Zf"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'EI8kolXs9EOBatPM' \
    --body '{"gameId": "ZGkUYuPX8Id4NctV", "language": "bLYM_246", "region": "ob6MsNz3B0jbov1P"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'A0WvZMYS3mWrVyBe' \
    --body '{"currencyCode": "NGPO2vTIbTEL6arg", "price": 0.019347466703657612, "productId": "RkcVAqW8hJJNQhGg", "xstsToken": "a9oOxz9I8IWcw0Nz"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'a2tgsOaoOnY2xB2K' \
    --itemId 'MOpr3BNqIGHpQDVR' \
    --limit '44' \
    --offset '65' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FQL8uvKOvKRTcYCa' \
    --body '{"currencyCode": "qpV4KU7T3D5fEjVT", "discountedPrice": 88, "ext": {"oUYQ2PHVpL6SdNQu": {}, "WDlR4XNVJnjGEH0Q": {}, "bEWd0Fbq5sERStdE": {}}, "itemId": "YZrNHbF3LwLPs3Qg", "language": "wZzd", "price": 11, "quantity": 35, "region": "NhTNk78FpACxdGqq", "returnUrl": "iuK8WxdpbgXrGaVX", "sectionId": "uBSNo0J515iEIgmP"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fnYkt07HMNbQZRgw' \
    --userId 'UbPJpeKrEtNaQ74T' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Oa4fl0lTOK9AyxCc' \
    --userId 'pkqb7lL5Pt38fy6M' \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'pd1uw48hZAbq7ZWz' \
    --userId '5A6HSjNEbyenEazN' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'XcyevDJvyUHBSloo' \
    --userId 'Of2kesfC232x4dWc' \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'bmDgzlJ58hAkTPjy' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'TV62wWztbLYKdLG0' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '5z58VhiwPBjOylJJ' \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'CIl5fmHzvFBJLC5b' \
    --language 'hc7SiMEuHltJ4U3z' \
    --region '52AMgw1emxMPSkkt' \
    --storeId 'nbhPgeEIDOZRJigA' \
    --viewId 'pIiUQ5OCZHwY6NtT' \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'D6Pvw7JPWRsw3i1q' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'EgIYWsPd75GnKuTJ' \
    --limit '24' \
    --offset '29' \
    --sku 'Tpa0TXtvQ1alX6rb' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'qKiJn3koiR5wUAMS' \
    --body '{"currencyCode": "LtUsjTOxDp8wr5Sh", "itemId": "uxI78YVmUlmf2G9g", "language": "jZIn_fNmQ-476", "region": "l74ve5pDO0kIWs4F", "returnUrl": "IPt6BQ82902hlYgc", "source": "9MwLjfrJ5xKoA3LY"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uTa9nl3EOa5O37n7' \
    --itemId 'O72oX4S8n9IWumLc' \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fY84XE71uAuPdZea' \
    --userId '9cORrosjoEqzPoqi' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ooUMM7EhuLdhgpvU' \
    --userId 'HSgC8v39Yj9XcdrR' \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gPDHI7gDV5CZtGXk' \
    --userId '3xjAmzU3QS5M5w9X' \
    --body '{"immediate": true, "reason": "m7t33dSNHxlvxnxI"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1bo0MYi0EEgO896B' \
    --userId 'hHqFh8knYPIjA2gw' \
    --excludeFree 'false' \
    --limit '5' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'pk0Eh0pu1xKCKna2' \
    --language 'aHltjWGeETmCwqOR' \
    --storeId 'Ov9xLJiYsteB7Jvj' \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'xQLzwAkbASPdlvuw' \
    --namespace $AB_NAMESPACE \
    --userId 'mpMDvSvskOv3yMKr' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'zRlbBOvc5WyzJCRd' \
    --namespace $AB_NAMESPACE \
    --userId 'V6kqzKdtymPGNQXz' \
    --limit '35' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'QZ8kgnrWRPBh1Rzf' \
    --baseAppId 'wE1rvx1p0NhGveBL' \
    --categoryPath 'WeCDMqXhLBLsYgnd' \
    --features 'dy1A43clmZbE5qhz' \
    --includeSubCategoryItem 'true' \
    --itemName 'NFOvXAZiFQMNpsSs' \
    --itemStatus 'INACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '25' \
    --offset '73' \
    --region 'L1RnD44pX3aOCaHL' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "displayOrder", "createdAt:desc"]' \
    --storeId '9fln6FYLn2mU8S69' \
    --tags 'XEgHimb1NHRuqQSP' \
    --targetNamespace 'NgdASyecqAGDv0W0' \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'rDRDilZmYiiNqfeo' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Sfdf8JMvpj04kp3h' \
    --body '{"itemIds": ["PQB2NzGPAjepRTg0", "jyXNkeB7JsME0EQB", "EgBIGyC6z63ViUU9"]}' \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE