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
    --body '{"context": {"item": {"appId": "75rt7QGkJcsHmFxE", "appType": "DLC", "baseAppId": "3PBoF7Ydl7UNCFOz", "boothName": "fdvzIHvIzypqO08l", "boundItemIds": ["AaYIoBD2PeMGUTLc", "LfETUqxbk1IW4AAs", "LntIq1YheD0XGPBD"], "categoryPath": "sjGBrhCUDzyxwpfN", "clazz": "HepZkEzihAVSEfBu", "createdAt": "1988-07-23T00:00:00Z", "description": "kL4WxWhTXOavyWyJ", "displayOrder": 96, "entitlementType": "DURABLE", "ext": {"y7acyMrxIlALwFgN": {}, "vmvuEt9htNTXpbIM": {}, "gPltt5wzkOsABAx3": {}}, "features": ["tCMqEAscFoIQsCAz", "6v1CGEtd3qXxYuzQ", "edfVSIjfCcs8m0OO"], "fresh": true, "images": [{"as": "96Zsy1LJcPMa056c", "caption": "hVCIwrTUbwan9dBB", "height": 92, "imageUrl": "3WuQsbkyXNn7IFUX", "smallImageUrl": "irZkpwfGO7dgAyaU", "width": 4}, {"as": "kydtzgyVdjD6sSYa", "caption": "5WFvO8yABYt6gKZ8", "height": 35, "imageUrl": "4oZL9Sb6aU6BzRim", "smallImageUrl": "S1JsneorAdD0wW7n", "width": 82}, {"as": "KIcnIOoftLbJVOPv", "caption": "FVEQDFkMZQuShlYS", "height": 40, "imageUrl": "9J0ktsyNKGpaI7mc", "smallImageUrl": "1J3L0ZmxVbeLQZYQ", "width": 92}], "itemId": "i043VfDboMLeQtLN", "itemIds": ["GADTSi3mwQZmauEr", "I8GtVxSaWuG8U1vK", "Mx0zCd87EwzUG0Op"], "itemQty": {"U4dhF7OpnxwrhIfH": 29, "Ryf54M6RTVUQLQif": 70, "ZjkduDLqyGNdYKCB": 31}, "itemType": "SEASON", "language": "9J2CQ3NVxSLAepch", "listable": false, "localExt": {"NiT1HFg7lOxxZ7Sh": {}, "3pMGrLRjgctaHQTF": {}, "vrlpT8pUju3YB4yi": {}}, "longDescription": "sefV5LOK3x7uqTYa", "lootBoxConfig": {"rewardCount": 1, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 14, "endDate": "1995-10-08T00:00:00Z", "itemId": "DSVfxNDjvJPTVI5L", "itemSku": "IGKNTJnEaw9nB3ek", "itemType": "JCSC8A9aYcD5traB"}, {"count": 78, "duration": 85, "endDate": "1986-09-19T00:00:00Z", "itemId": "HfUWP7HadLwjxMN5", "itemSku": "qp7xQRbGgEpDKFMU", "itemType": "fxKP5R3tMGPuKzy6"}, {"count": 89, "duration": 49, "endDate": "1982-04-03T00:00:00Z", "itemId": "OFq4WZDyxTG6OKuT", "itemSku": "hhYTFYqS7knx7wED", "itemType": "aRklNAMUm2h1oSEz"}], "name": "yz9tTPhzJevZNFqz", "odds": 0.19991976370002662, "type": "REWARD", "weight": 61}, {"lootBoxItems": [{"count": 56, "duration": 89, "endDate": "1977-08-08T00:00:00Z", "itemId": "y0FX08RCwIPNJR1Y", "itemSku": "zNhNggeBUeWDSS3T", "itemType": "sHI0GthClOFWIKnP"}, {"count": 82, "duration": 48, "endDate": "1987-07-21T00:00:00Z", "itemId": "cr96WpvTEHE57w0k", "itemSku": "5cAp92P871BIIsmL", "itemType": "YpRV7rRMXyJusnuI"}, {"count": 1, "duration": 12, "endDate": "1985-01-16T00:00:00Z", "itemId": "cHA8a13LWwu3Svrg", "itemSku": "Q1SVH9czhduwbwkV", "itemType": "0tpzdBIuizN3edXc"}], "name": "TUsSjqk5SX3xsRjg", "odds": 0.4828737916290441, "type": "REWARD", "weight": 79}, {"lootBoxItems": [{"count": 6, "duration": 3, "endDate": "1972-03-17T00:00:00Z", "itemId": "xTYV0APvH04UGAqZ", "itemSku": "dQAkNbxVTOq3wPJW", "itemType": "AXXfEGF9ECbnC6tV"}, {"count": 4, "duration": 74, "endDate": "1981-07-12T00:00:00Z", "itemId": "4F79wo2krlRyDv2H", "itemSku": "tFSbxiZiBmGLnyKT", "itemType": "ZvTbOWkzeLO4RVQf"}, {"count": 62, "duration": 54, "endDate": "1988-04-04T00:00:00Z", "itemId": "l8p9OK9lNHpBItoy", "itemSku": "2wufUgA4bz2Z7mip", "itemType": "tojN6PWNQXwrd84P"}], "name": "FUuYJJHAxS652142", "odds": 0.6420851107124526, "type": "REWARD", "weight": 4}], "rollFunction": "DEFAULT"}, "maxCount": 43, "maxCountPerUser": 47, "name": "Q6zmjBB68KaVH9Do", "namespace": "bGMGHz9R9PwCklY3", "optionBoxConfig": {"boxItems": [{"count": 53, "duration": 40, "endDate": "1976-07-27T00:00:00Z", "itemId": "MxZJo2p9djz0AwAr", "itemSku": "ettC3hI361K75g87", "itemType": "PRl1nM6f9GF26mK8"}, {"count": 82, "duration": 38, "endDate": "1995-10-17T00:00:00Z", "itemId": "VQHJrOU8AWf8u0dD", "itemSku": "TNDsI0ZNn2SPE48K", "itemType": "RYPI2zPv0ZbSak1J"}, {"count": 6, "duration": 11, "endDate": "1999-10-17T00:00:00Z", "itemId": "hxllVu2uy20M96Ie", "itemSku": "fmvzmdFVKsHpvcBB", "itemType": "yYDitow177F4xKVl"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 27, "comparison": "isLessThanOrEqual", "name": "nMSyx8nAJcmh4dW7", "predicateType": "SeasonTierPredicate", "value": "sDzD86KKb1vvnvGV", "values": ["dM2xvBR0U5mnT9EB", "5V0wqqeDugO6J5sy", "q0EGkBm7aVYLeLam"]}, {"anyOf": 13, "comparison": "isGreaterThan", "name": "taXrPThSeiYxlpDy", "predicateType": "SeasonPassPredicate", "value": "OWCFfUaAwB5x2Try", "values": ["8dB1VWnAy3qvgjpK", "A3rbZTce32hlpo51", "9BC7S3lHyJL0C9es"]}, {"anyOf": 63, "comparison": "isLessThan", "name": "GRetjXcWmoZpNXmH", "predicateType": "EntitlementPredicate", "value": "f7HSQLqkc2Fl9WNM", "values": ["sJnn21Mm6APBs9Qz", "88dxWf7eSZOp5KNI", "GlGzUvFINCZmBBlh"]}]}, {"operator": "or", "predicates": [{"anyOf": 64, "comparison": "excludes", "name": "IbE6OaFGaH4Mz7EE", "predicateType": "SeasonTierPredicate", "value": "NopPULSklXAKUMql", "values": ["btToeTBdJMRq4wxh", "bkWMFKijOlspx9a9", "Yv5iVvHMmUVirkZR"]}, {"anyOf": 11, "comparison": "isGreaterThan", "name": "0fhrR6Oj0S2FFQ9M", "predicateType": "EntitlementPredicate", "value": "sHzQCGFCufVyIeC2", "values": ["zcuMLSJvExG1PLng", "vCIAyk6waRn4r5DC", "yZSUlZeBkHY8dhid"]}, {"anyOf": 46, "comparison": "isGreaterThan", "name": "jYg2Xk5cUZsZSA3e", "predicateType": "EntitlementPredicate", "value": "Gh4UHspwmK10p3tn", "values": ["SWSfk87ziTCxeCBe", "kiXRCrsXYNZ9VUj4", "1fzysKxV7HTCFj1Z"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "is", "name": "U7ZgKa8R4rW0dAY0", "predicateType": "EntitlementPredicate", "value": "iVVlf5kCD39h60UL", "values": ["lRrWvGhPg6mHFEUa", "pKiKwJx4i0Vmg4wI", "zCg5SsyzAquM93wf"]}, {"anyOf": 99, "comparison": "excludes", "name": "kufZwumEYfpRf64M", "predicateType": "SeasonPassPredicate", "value": "v0lswc4AVx1NMowB", "values": ["BbpOR8m5mALvzN8b", "vP9OGVH2nmb1iWOM", "q0rAk65bCiPfhLDc"]}, {"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "bvpgmnBiUXSoEIrI", "predicateType": "SeasonTierPredicate", "value": "9TpCVmI535HBDOUK", "values": ["izw304GjXb2KABKr", "ectb2PUdUxQ9aKN3", "JRjCi9RKXhxfOmak"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 95, "fixedTrialCycles": 24, "graceDays": 85}, "region": "DlpAKx2LfXJd5NDj", "regionData": [{"currencyCode": "XvbxAb0pZ5983Lsx", "currencyNamespace": "FxpgHS00tFlVb6Bq", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1974-08-03T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1983-10-19T00:00:00Z", "discountedPrice": 9, "expireAt": "1973-03-01T00:00:00Z", "price": 29, "purchaseAt": "1997-11-22T00:00:00Z", "trialPrice": 68}, {"currencyCode": "0T55SSAsY8TNbRxf", "currencyNamespace": "si93eqctyDxIbJgv", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1978-04-20T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1975-08-01T00:00:00Z", "discountedPrice": 58, "expireAt": "1981-07-18T00:00:00Z", "price": 83, "purchaseAt": "1975-06-24T00:00:00Z", "trialPrice": 52}, {"currencyCode": "CkjUg30h4FcosctT", "currencyNamespace": "XDqZ10HgQitfzu3W", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1989-03-09T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1974-09-25T00:00:00Z", "discountedPrice": 77, "expireAt": "1988-07-13T00:00:00Z", "price": 87, "purchaseAt": "1978-03-29T00:00:00Z", "trialPrice": 79}], "saleConfig": {"currencyCode": "63JWKqXNsY6khLz9", "price": 1}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "t2Rc2fZEGyKhtlOW", "stackable": false, "status": "INACTIVE", "tags": ["0Y43Z4afAi8P5N0N", "v3ekyoL3aE9Itrfh", "NdBDPKWVJipmBQnG"], "targetCurrencyCode": "zLu8iwo3vxKZOgX0", "targetItemId": "e3Lambr6jCnpHoyZ", "targetNamespace": "7eO0pyy9zSXFGl5D", "thumbnailUrl": "zbtIttZ4U2r8D1Lt", "title": "wBFCEvIuwY1d5L5V", "updatedAt": "1988-12-20T00:00:00Z", "useCount": 21}, "namespace": "1OwsQm3FCj5RCHS9", "order": {"currency": {"currencyCode": "4QCJjWUiofJC3sOu", "currencySymbol": "TW3PDdhMqSreLb3J", "currencyType": "REAL", "decimals": 52, "namespace": "U1FWlMb5c3oFXDzs"}, "ext": {"sLf9J6FxZ0At8xsQ": {}, "YkgFjgFCSstDjhSq": {}, "iGqWffwtEAsVTuia": {}}, "free": false}, "source": "GIFT"}, "script": "QLifG1uSiQW5N7qU", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '1XQ3JVECi4jvoaEr' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '3f5xdQ1RiFTz49sX' \
    --body '{"grantDays": "FYpdyShxb8cXLs0S"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'KZNdpjkhHqf9kEQT' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '8kdsUxxED9vicZTy' \
    --body '{"grantDays": "xc2wx9FghtGx15SW"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HifwjdlCBY89qD0z", "dryRun": true, "fulfillmentUrl": "5ej4vvPgctwla9fT", "itemType": "APP", "purchaseConditionUrl": "9AGe943DSinDXRAn"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Lw5NDfKRvpuJSoyD' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '0YQXErCzumro4GR5' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Dvmw2MSPvfCpsyQI' \
    --body '{"clazz": "mEHnd6vTWOo0m3yh", "dryRun": true, "fulfillmentUrl": "KDNk5aUuLcEJ5XGp", "purchaseConditionUrl": "oRBascQriV5Mi8OL"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '0r1ckwZtoNAKY9h0' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'LRh54jSvOQnQEzDP' \
    --offset '24' \
    --tag 'eSyuRA80oiW3nIqA' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cfl7pTC70LdDYTrz", "items": [{"extraSubscriptionDays": 68, "itemId": "REadEqVjvmtbOfkn", "itemName": "0nNKv0FhyWUxGQhe", "quantity": 10}, {"extraSubscriptionDays": 5, "itemId": "2pjmDMysraV8OkE9", "itemName": "zNWzD5wvwQ6P2kD7", "quantity": 60}, {"extraSubscriptionDays": 59, "itemId": "WfXzBP2NJlmFtweu", "itemName": "JtFn0EkBK6N3FByI", "quantity": 32}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 23, "name": "oJ4k0Lp3nUSIV2Vp", "redeemEnd": "1989-06-14T00:00:00Z", "redeemStart": "1973-05-30T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["JBb1feo398t2QR92", "Ac23IlVnrU76y0aK", "zG8JEvOyU1UVvjwA"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'un5ilkPCbMEGG7kK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'KyJ1qQFclb3arVPF' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "x69IB43HHYJRT5rL", "items": [{"extraSubscriptionDays": 75, "itemId": "4nt4gPA0WKzIUM2P", "itemName": "L8852poD5Ptl8tTa", "quantity": 64}, {"extraSubscriptionDays": 43, "itemId": "IFJLPdeiNYK7Yreu", "itemName": "7nWB7r2xkxu68I08", "quantity": 69}, {"extraSubscriptionDays": 13, "itemId": "2MTk2OcJhrQPSSUd", "itemName": "tL2AY2hB1KbkErTj", "quantity": 22}], "maxRedeemCountPerCampaignPerUser": 28, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 17, "name": "WKcNKpUUuxPBGeMF", "redeemEnd": "1986-03-02T00:00:00Z", "redeemStart": "1972-04-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["djKmWKM6pIvHbgNY", "kX5yVKzIYXkJcZ5g", "Hq5Os6EUxRaV27nj"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'L6Igd1S308vgpNvK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'yY0hkAnT8TbPM7qE' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'FsGBmzGb4A5Rm6hj' \
    --body '{"categoryPath": "gX3ZADbO3j6jSzqO", "localizationDisplayNames": {"boZHHxrcGB0DMC2E": "kD6XcvSNGRzgALs6", "GVFBVNYoXPjGNfZq": "J5LY5aFirorqx08K", "xMFBwo4sjPB5yQ9K": "HsdmToWcW0YC7Jae"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'E6e7BDWz2tByJfJy' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '669AehnLzMI4RqzV' \
    --namespace $AB_NAMESPACE \
    --storeId '9rsbOlIHJcf0zSBx' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Kga2l9Oj9wWev7Ms' \
    --namespace $AB_NAMESPACE \
    --storeId 'TnURHvYopmcJXsSL' \
    --body '{"localizationDisplayNames": {"51VKYeCSo9G0IMUP": "DXigvdW7re4Uvnqj", "D6eJUdoMb4mgSTKM": "Ae5F35lgOBm6FCOx", "odOundxne78cM36p": "nbpOLU7BiOmo8DY8"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'AsEFWa1EyK2QYoyC' \
    --namespace $AB_NAMESPACE \
    --storeId '99r77zakSFDzeOfn' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'aUGiOgVSe0G4k2Hf' \
    --namespace $AB_NAMESPACE \
    --storeId 'Y1EYnPTtQN5M5M8R' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'mA1a8Wesj220vlp9' \
    --namespace $AB_NAMESPACE \
    --storeId 'SOefR2YWqK6I6SfI' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'MtBgGNA54S9dHvgP' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '88' \
    --code 'ew650bMP9H3nqLYy' \
    --limit '35' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'jcnXlEX6sRPZSjiI' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 75}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'pVftWMNx1nfF5YgE' \
    --namespace $AB_NAMESPACE \
    --batchNo '84' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'HjBJElDYoaT8m6jQ' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'XFCKpuiLXC5vs02j' \
    --namespace $AB_NAMESPACE \
    --batchNo '91' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'lXwr33PLcOfXb1Z1' \
    --namespace $AB_NAMESPACE \
    --code 'Fct6DTEBmLyM2tRI' \
    --limit '100' \
    --offset '13' \
    --userId 'pYEXg5ml5iD0iwVy' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'yjXUYHwS8X0MVO7o' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '2SgQNXZG36U6qFqV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '5qTNNEkaV9IgcJ58' \
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
    --body '{"grpcServerAddress": "GS6TUFx9E6Z2Y1vE"}' \
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
    --body '{"currencyCode": "JUc00lM1yIDibVVL", "currencySymbol": "lNCaeFvSwWDqeH07", "currencyType": "VIRTUAL", "decimals": 79, "localizationDescriptions": {"2q1pRswqPjQsYCKm": "wYbrdz4fcxOegEiN", "Xz3ekITITibkch7Y": "yddlXUVe7DKO3J8L", "W31S6Vp704y8T7uk": "qR8HvZnAc5wIRnYJ"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '6mdu4FzRZPxdojHr' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Gz7WWbWZ7IXaiM3Y": "4e0l2t3hu3v8HVUL", "BeumidKep2KcAdMy": "f235Y37IHaGpgcpS", "QoRn0Bgw3pwZzBw6": "7MFJv7BKL4UVkrT1"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'OsWARJKhiDfVEgIW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'kHBYdEqorCgaeMUd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'HKK9pU2x0MCvXUmC' \
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
    --body '{"data": [{"id": "rZhjG0PX5tGknoCj", "rewards": [{"currency": {"currencyCode": "XCDw6wBK1qaFbjNS", "namespace": "e4DbnPmr1TgHGNdG"}, "item": {"itemId": "LAr9xe9ZMqC96M1E", "itemSku": "7yIIJ65Xk0m2vq04", "itemType": "Tm9YQ5mJ1lnyC2dc"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "w1K7WrT2dLnUy4PH", "namespace": "m8laUcfeRyp2BxAW"}, "item": {"itemId": "LdiNkBV0aV1MkgSe", "itemSku": "AggfYSDApuTtSaH7", "itemType": "HOfrU7C8E57vd0e0"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "cVtGPLQEQciwIvLw", "namespace": "YshhkUnVdaq5NvwZ"}, "item": {"itemId": "mcs2kOTWABVbhXZS", "itemSku": "P53dnL9E7lsjk3v6", "itemType": "px9Wj4GJXJto5AJ8"}, "quantity": 36, "type": "CURRENCY"}]}, {"id": "zUtJeooYA93AF3sR", "rewards": [{"currency": {"currencyCode": "CkBfts8UvFztR85x", "namespace": "vuoUWjXfDqU1PLGC"}, "item": {"itemId": "B2BFsklrDSUMleG9", "itemSku": "V50kieVz1Op4ZXj9", "itemType": "pYE69slKHiMuQIzZ"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "MWDJGtONdO6Rd9Ll", "namespace": "tRlXwyPkidaj9rBF"}, "item": {"itemId": "uDaf5utTnxqagKnQ", "itemSku": "DB4VAJ9sPZvqmoAB", "itemType": "2X1Za0i6xMAkzAC8"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "Go6JlNb5vpyiUpdL", "namespace": "93iSXL0WcfEoCj8t"}, "item": {"itemId": "5bAi4zR0MNneXFN0", "itemSku": "VyFGVl9WtWLJjd33", "itemType": "v7yRkuc9nsOCeR76"}, "quantity": 52, "type": "CURRENCY"}]}, {"id": "NZj6nGPTjHWuZNki", "rewards": [{"currency": {"currencyCode": "n7sIhkYUxPpooqgX", "namespace": "Tl9VF0somQ7c5a0D"}, "item": {"itemId": "fTNxOkOtY6jwyFKS", "itemSku": "i1VQ2UkMwwvgaXBN", "itemType": "pECpspvXhnjY7pPK"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "yvIWeun52DBlZKq0", "namespace": "ZQGw3uMAR1yd2pj1"}, "item": {"itemId": "FL9d4QLoW9CmXiFN", "itemSku": "CfdaHSZX33utg2go", "itemType": "GPdbqxckpDdSH234"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "S7u0bxafjKtWFRNe", "namespace": "p03dMGzN2X2UIRf7"}, "item": {"itemId": "gn0t5otCCfss7Xbh", "itemSku": "ELhOfIGhlOBtQF2r", "itemType": "yEcQZc5HlPTIJhGD"}, "quantity": 11, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"efVSio3VVbtxH7Tk": "B8HNQmypUKHnJ5x8", "STMsMQqomXfJwbAN": "Je2Wi4CcUnBc9BvI", "jrUBu6Z4HyjoVG89": "tjMSMskrh5h4PiA1"}}, {"platform": "PSN", "platformDlcIdMap": {"JALj9WxZwAJkOtL3": "MyPseQTvomSJo6Pk", "cCtMiS7apbLZ4VGw": "ErZ7MmppWN46XsNT", "Bese6ZEOSYzWn1CJ": "jhcQnuwLjtWhfcNS"}}, {"platform": "PSN", "platformDlcIdMap": {"V3J92KOGH4u5qaLT": "wB37kq9iwyZbEgF5", "eQr4PggNV4PMLbb9": "QmKppNKck1ZW31Ks", "5BZC00Y5ogteNrRH": "JmPFXpNML2AybCxz"}}]}' \
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
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'zrCZqAZmRMWRaZhB' \
    --itemId '["o972j0vkgRWVWNUJ", "pggWoFISnBsfcXIp", "fhRbCjhkB7UkdH0g"]' \
    --limit '32' \
    --offset '75' \
    --userId 'jmSEDsytxwZcA7om' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["l9Z73XA5DStApcY2", "oSTfI0BcJoA4pakC", "r1ATTkwXpjTxHQlF"]' \
    --limit '59' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1984-10-09T00:00:00Z", "grantedCode": "rrUKp9bLbDjy0XVY", "itemId": "addtoKrYO23ioTCm", "itemNamespace": "2ZcFfGHHJ6KVu8Qd", "language": "pJh", "quantity": 59, "region": "uL2hBYqxRH6f0yzj", "source": "IAP", "startDate": "1978-07-28T00:00:00Z", "storeId": "XlsbBj9TcOpSIldl"}, {"endDate": "1988-06-16T00:00:00Z", "grantedCode": "Bx971bxqRvNn0srs", "itemId": "65ABssefVwwLIrnY", "itemNamespace": "gUtEBMxHRYu2SEaP", "language": "aqd-095", "quantity": 15, "region": "PhCSoYdNTO2qBsP2", "source": "PURCHASE", "startDate": "1987-10-03T00:00:00Z", "storeId": "ZHUXzsxDaguOIAJL"}, {"endDate": "1980-11-04T00:00:00Z", "grantedCode": "YgOgh0qZWaOhruYN", "itemId": "GqcjdrtgI2Lhbr8S", "itemNamespace": "QbIKCSFNgnbrFb6i", "language": "ry_985", "quantity": 91, "region": "XD9Ox0s3kLByNHUu", "source": "REDEEM_CODE", "startDate": "1987-09-10T00:00:00Z", "storeId": "K5pqJP93IWMR7Rat"}], "userIds": ["ZvNvzoomv80vIZkm", "5nGjkE5offGPjYzi", "E0cUuU5V2NEjCe1q"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["8gtjazwDaMbtJhot", "n5TBmDTx7O8ghV3x", "J3yA1T5v5eCARXXz"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'kI5BU5pPhTPSJWUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '97' \
    --status 'FAIL' \
    --userId 'lnmDMmEk56JZKdIn' \
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
    --body '{"bundleId": "jRqpKowhV0NrVkpl", "password": "wT8roYoe76RbqJ0T"}' \
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
    --body '{"sandboxId": "1bR64iuZ09tpCCht"}' \
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
    --body '{"applicationName": "1bKz9wtGm2D21uzF", "serviceAccountId": "lVB3Fu2kQyksVVDb"}' \
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
    --body '{"data": [{"itemIdentity": "Qu7zKRQasyfPpO2f", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"1aUkvRYZIGVT49HQ": "jwPXw9LmZ5RL3cpS", "6Qpat2PPVb3phIsI": "X84rBC9TFV3KQh5w", "GlNlRa86qEg4mYMH": "UUlx7elntUsMB1Lb"}}, {"itemIdentity": "xVRN8mNHsyf0IMdW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"3BkuHVkR7HQ2hDDZ": "ZIzIQysdyTO7dJPt", "mLZf43s5jHwoYWT5": "ViZqVkjmBkzAJHIq", "UtNEItFvM0vRgx5P": "DsyLCdtVzpN4L8hA"}}, {"itemIdentity": "lA0WNYM70gFlHCGw", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"odB0rzJyS3NTpJSt": "Dgg0l92jlShvlUMW", "zg076qwzHi8KwAdB": "wH6vhe9BcUuSuP49", "opxCwXneAIvJIoqe": "XzCAuOQNBXWy6yEM"}}]}' \
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
    --body '{"environment": "920gVGgqNNKRkRW0"}' \
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
    --body '{"appId": "orGD8SkrNH7LPDXM", "publisherAuthenticationKey": "ylNgvqWubnTeoLIm"}' \
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
    --body '{"clientId": "wrzMasmDjIqrGXTa", "clientSecret": "zUGriHuAc75rZP3i", "organizationId": "l4mmZgqrrIzzqiG4"}' \
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
    --body '{"relyingPartyCert": "5bn5PJo77vQYyLDk"}' \
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
    --password '4AE8D1k3K8PlZNIe' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'Ajywx4NkSdNqLkC4' \
    --itemId 'Pj6zYou1lr70UOrD' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'LZLvmgmNEgHuBAgY' \
    --startTime 'BB0SvmUumDELAuCC' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'S97ZD7P3fq9U2eGr' \
    --itemId 'd7PaqLjJJTAZHOr4' \
    --itemType 'MEDIA' \
    --endTime '39W0MBoZzX6MjUCF' \
    --startTime 'GX08zpsZOqWt8XlA' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'G6RNg7KNY2CL4oSt' \
    --body '{"categoryPath": "JI2PfUvG441atVoT", "targetItemId": "hb84WM8AAJMVbJJT", "targetNamespace": "ir3QJUvlMDAw4Wct"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'knfws535ARpHtoR1' \
    --body '{"appId": "YTvYMa9jFytIrN7x", "appType": "DEMO", "baseAppId": "dNTopA2KGdzSMtFd", "boothName": "pcN8w7bE7OuojGhi", "categoryPath": "oFsSgrwcbhrqHIpG", "clazz": "7VlX6Jh8Lahzd4mW", "displayOrder": 6, "entitlementType": "DURABLE", "ext": {"sDcFchtTmpdt84ei": {}, "JVG2R8OMBOLClLrk": {}, "aghsorUReN5gbn2I": {}}, "features": ["LiIwpBh1UwRALU93", "msWunqaEFCpJd33Q", "GJkVmzmNnUsvO1WY"], "images": [{"as": "6p5EXqmPqq6V4hM7", "caption": "T0VColwPJP5lQvrY", "height": 28, "imageUrl": "f6rCValGGAlEAwdG", "smallImageUrl": "O92iLBZo0NTEV8Xy", "width": 65}, {"as": "MEo8WMP6hrCPv6wT", "caption": "WJ41c1rIzdqpS2hA", "height": 25, "imageUrl": "XIs2XzCD3JD7dCG6", "smallImageUrl": "UxmRsYwU5ACIeVEx", "width": 67}, {"as": "Ka068YhzA0tYnieO", "caption": "cAsnWZr6sKVmDcEA", "height": 67, "imageUrl": "7TjQzGCNdpABD4Yy", "smallImageUrl": "V3HSvZVbStLhy3xP", "width": 94}], "itemIds": ["Md1EiRFH8BQlt5mI", "PerOhxwBIMxU9iA4", "niHALhiX1Hp6GeQR"], "itemQty": {"dm4kahEzUMXYwZCF": 55, "1kur5DBb59wOenAo": 50, "q0PgNMEQOjbbKUp0": 30}, "itemType": "SEASON", "listable": true, "localizations": {"jajc2qt6t4qSIcNH": {"description": "g0gSDQSNfiZSYlPo", "localExt": {"62V1YB5TxWFNOxQ9": {}, "AA8jBmsNPHwBW6L5": {}, "2pKSjryTrvPVuCxM": {}}, "longDescription": "lDNyAqCBZFnIpyuh", "title": "mtOkaYIFdrhtKkBV"}, "5Q3cdWLST6xT41Nf": {"description": "JlKZAG0LssfViTPd", "localExt": {"hxDm9wCrCUgUMV9N": {}, "l8e8amJXl2QMwevP": {}, "aQ7adAkJqNsAHSv8": {}}, "longDescription": "X9i3f8am2rMzdt1E", "title": "382W42OzppbCJp0v"}, "uVKln7FEqTGahMnH": {"description": "r6Hg8GIuoPL4L1x5", "localExt": {"E9AxNIfyH9viui3x": {}, "deG1IdqUY0PIJR8f": {}, "YUiLZWemcNrrjlq2": {}}, "longDescription": "DAF20Jr0TsCSh5z1", "title": "f8eGskPtwvRsLF7q"}}, "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "duration": 35, "endDate": "1978-05-02T00:00:00Z", "itemId": "wVOQcIK2jdbyczTc", "itemSku": "yWAChIVfIiYuvKNg", "itemType": "QVy3tvmEygcqhv56"}, {"count": 10, "duration": 37, "endDate": "1994-03-31T00:00:00Z", "itemId": "QcfRiN6PQi7KxTqk", "itemSku": "OwyVKKUsWPBPXFjQ", "itemType": "cBTDtmLTyiycieQR"}, {"count": 79, "duration": 2, "endDate": "1989-06-18T00:00:00Z", "itemId": "NUcIPS9l65hC2fDW", "itemSku": "oDRKV9VbcmJRamOc", "itemType": "XXKqVg3zDtdn0lJS"}], "name": "LPhRowapDH5k6cXh", "odds": 0.7168717311335819, "type": "REWARD", "weight": 12}, {"lootBoxItems": [{"count": 37, "duration": 55, "endDate": "1987-02-06T00:00:00Z", "itemId": "DHbF6qFIB056M8Et", "itemSku": "y0g8xoG7aiVeRULc", "itemType": "5LTzobIw0R3F3FTF"}, {"count": 38, "duration": 95, "endDate": "1990-10-12T00:00:00Z", "itemId": "9xja7cTbQ0uHXqHj", "itemSku": "qJHtQXQt70aKSZMg", "itemType": "nKumNr5P8vzM8vrf"}, {"count": 59, "duration": 100, "endDate": "1991-08-25T00:00:00Z", "itemId": "OZB1Ks3fJgf40jgl", "itemSku": "f7Bq9ZFOMNje87H8", "itemType": "ECgZYZiGuemvOxBX"}], "name": "CT4KUGoj19RTNQTZ", "odds": 0.8094920103913026, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 57, "duration": 14, "endDate": "1983-02-03T00:00:00Z", "itemId": "6QS7NvwIUG3LRMXg", "itemSku": "4y1PbF7UQEc7fdwA", "itemType": "kLzik9bthx2xtWAD"}, {"count": 66, "duration": 49, "endDate": "1975-01-15T00:00:00Z", "itemId": "ULVkeUFORu8KYYGh", "itemSku": "VRx1aDmyGDlPjPP1", "itemType": "MolNjShKfKzwXa4q"}, {"count": 67, "duration": 63, "endDate": "1981-04-17T00:00:00Z", "itemId": "GevBKX7WmQNGz2jp", "itemSku": "Z6OtKFxIBzxhfQP4", "itemType": "Dsu3AkzjXgDAnY4C"}], "name": "uwKK1x26LQ2BKBSe", "odds": 0.9601882628301146, "type": "PROBABILITY_GROUP", "weight": 77}], "rollFunction": "CUSTOM"}, "maxCount": 35, "maxCountPerUser": 73, "name": "FTzFer3KVuRpjD1E", "optionBoxConfig": {"boxItems": [{"count": 89, "duration": 58, "endDate": "1983-05-17T00:00:00Z", "itemId": "CdJOq0UL5iibMoVC", "itemSku": "T9qN4lu7Nt3qj5i2", "itemType": "PiLay5lMD8z8c6AO"}, {"count": 14, "duration": 28, "endDate": "1985-06-16T00:00:00Z", "itemId": "cZrPzeQQrfY9nd6J", "itemSku": "39btJWSOGWXC2xOb", "itemType": "1mU9I6J96NVjNyCz"}, {"count": 25, "duration": 24, "endDate": "1984-11-27T00:00:00Z", "itemId": "7vgdDUji6aUNUF26", "itemSku": "Mmebxrc17rv0N1Pn", "itemType": "jqm65tcA2nBIFGsj"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 56, "fixedTrialCycles": 94, "graceDays": 0}, "regionData": {"c382uLtUdJgI9PnW": [{"currencyCode": "oZnhy1v63akUEzk3", "currencyNamespace": "9BC783v3CPlJtpwK", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1975-11-16T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1974-10-16T00:00:00Z", "expireAt": "1997-04-06T00:00:00Z", "price": 56, "purchaseAt": "1984-02-03T00:00:00Z", "trialPrice": 53}, {"currencyCode": "bUZWQaLO89DDteC7", "currencyNamespace": "JZ9Y9N32gwSl2UMZ", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1988-08-12T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1972-10-02T00:00:00Z", "expireAt": "1992-03-13T00:00:00Z", "price": 38, "purchaseAt": "1998-07-06T00:00:00Z", "trialPrice": 20}, {"currencyCode": "XK41gdwZqTEEeglq", "currencyNamespace": "6FWYaaGVBZ2dBube", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1971-03-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-03-02T00:00:00Z", "expireAt": "1996-01-12T00:00:00Z", "price": 74, "purchaseAt": "1973-03-22T00:00:00Z", "trialPrice": 1}], "Xq1LgNOGO3LsYc34": [{"currencyCode": "I9cgoUunrMvfeiXn", "currencyNamespace": "Ci47NbFX0bMtOesV", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1972-10-13T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1980-03-16T00:00:00Z", "expireAt": "1996-03-29T00:00:00Z", "price": 44, "purchaseAt": "1978-09-25T00:00:00Z", "trialPrice": 84}, {"currencyCode": "hhhWIFDtNZZ0irX7", "currencyNamespace": "K5U6igiOQQ5BM2fQ", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1997-04-10T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-07-30T00:00:00Z", "expireAt": "1982-02-24T00:00:00Z", "price": 8, "purchaseAt": "1979-07-26T00:00:00Z", "trialPrice": 89}, {"currencyCode": "GS5MjefsDf9K2TMK", "currencyNamespace": "Px1c0LSmnYJyTqAS", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1971-02-08T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1996-02-24T00:00:00Z", "expireAt": "1973-11-24T00:00:00Z", "price": 62, "purchaseAt": "1993-07-16T00:00:00Z", "trialPrice": 28}], "05OxGclWjrKFnE2a": [{"currencyCode": "zZ2u0hpq5PvzOlGt", "currencyNamespace": "xFtbcYEbVFNQV0Qp", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1983-03-12T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1974-03-07T00:00:00Z", "expireAt": "1975-09-10T00:00:00Z", "price": 34, "purchaseAt": "1985-12-08T00:00:00Z", "trialPrice": 26}, {"currencyCode": "ecGhN0Qte2xidb6X", "currencyNamespace": "yCzivV2h5DfYTIPO", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1978-09-08T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1973-02-28T00:00:00Z", "expireAt": "1996-03-05T00:00:00Z", "price": 54, "purchaseAt": "1987-12-13T00:00:00Z", "trialPrice": 62}, {"currencyCode": "tv3WnuCSgoficHqb", "currencyNamespace": "kx6tejVDQt5jSgHa", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1984-02-19T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1988-04-16T00:00:00Z", "expireAt": "1978-08-20T00:00:00Z", "price": 73, "purchaseAt": "1991-01-05T00:00:00Z", "trialPrice": 20}]}, "saleConfig": {"currencyCode": "rTEnrfiWSFawvPUd", "price": 27}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "8nP8Hsk3Ty43SGn9", "stackable": false, "status": "ACTIVE", "tags": ["9sIj3MjFksWUCzKw", "o1USgUjkzo4aM5Ko", "hFCUMxLIbZ1BNppG"], "targetCurrencyCode": "dSKnIZIkhWxs3Yml", "targetNamespace": "3jdgEWs4nlRJ6DNe", "thumbnailUrl": "9d5pWgSLXbfqaXU0", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'olEBXT9wpuUfid9G' \
    --appId 'Gvh5vYJ59OvyJnGa' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate '99yrAqwah5g8g2Gi' \
    --baseAppId 'ywKUx8bIlJPHC9Pq' \
    --categoryPath 'IM72Db3d6TExTZTL' \
    --features 'UoFGluDRfx4yTrzp' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --limit '53' \
    --offset '100' \
    --region '1OpAUtF0mivW85cB' \
    --sortBy '["displayOrder", "displayOrder:asc", "createdAt:desc"]' \
    --storeId 'eYsOqMGDZo3osURv' \
    --tags 'RL5RUWlyilfYdgLn' \
    --targetNamespace 'Au0wklBbXO7ziz0D' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["HgkYWlDusU25ywxi", "n1Egcw55jFLcJqkv", "p6AS8mnKfBCcmZRQ"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qWZePv1lBRzAAfq7' \
    --sku 'vsbVxFU9sny76QIT' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'FaDAfDiQISfqelB6' \
    --populateBundle 'true' \
    --region 'gTRkPZtPUpCd9daQ' \
    --storeId 'VHWcc47gYaFIiT6E' \
    --sku '0dAAZaKXR74nBUwN' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'JTmYedYu7APmB2sK' \
    --sku 'QtOvsObyqe9xoxba' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["otvxkFhrqx1UgZgq", "uECBDoZmFcHuIcfK", "voXjRodYNe1oUpPJ"]' \
    --storeId 'qY6yWgHlIMCNBwBK' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'd8hJ5XkuNDzDcr8x' \
    --region 'UIuO2eygZF2g1X6p' \
    --storeId 'BSdzCzQUdCFeGOxv' \
    --itemIds 'u3C22jy8U4L5QIs1' \
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
    --userId 'vKzIWGiOWZUXk3J6' \
    --body '{"itemIds": ["fstQTrnWje1VyvLI", "QhH8bj4EGZZgZACr", "VQPP3GgYi8fvMvR7"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '0AXNeaZJYedjPpeM' \
    --body '{"changes": [{"itemIdentities": ["WWtds7eolTuDiqNa", "INv9Dr9wriB7Z97s", "fiwD4kvXLI2XNWWt"], "itemIdentityType": "ITEM_SKU", "regionData": {"wkDtPqpWq1tPmCrQ": [{"currencyCode": "5mXernDUVfxarzbe", "currencyNamespace": "lJaKE3z7fkrI2D8M", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1997-06-29T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1991-03-02T00:00:00Z", "discountedPrice": 52, "expireAt": "1990-02-15T00:00:00Z", "price": 68, "purchaseAt": "1995-09-06T00:00:00Z", "trialPrice": 98}, {"currencyCode": "WRTCm0rwZrT2Mkfr", "currencyNamespace": "lH40w1UdW3dDoOOK", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1987-10-17T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1999-10-27T00:00:00Z", "discountedPrice": 54, "expireAt": "1975-01-28T00:00:00Z", "price": 60, "purchaseAt": "1973-05-18T00:00:00Z", "trialPrice": 47}, {"currencyCode": "F4UJ0IU22Gi6YdzQ", "currencyNamespace": "v5wBcyWhqxBKcgos", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1981-04-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1996-03-17T00:00:00Z", "discountedPrice": 26, "expireAt": "1996-12-22T00:00:00Z", "price": 82, "purchaseAt": "1971-02-16T00:00:00Z", "trialPrice": 64}], "eyAx9s4yP6gVNOrA": [{"currencyCode": "lJORYluQwvMK06qy", "currencyNamespace": "YiUsidsdFWhtPUv9", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1983-06-10T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1978-12-19T00:00:00Z", "discountedPrice": 8, "expireAt": "1977-09-01T00:00:00Z", "price": 95, "purchaseAt": "1992-12-22T00:00:00Z", "trialPrice": 100}, {"currencyCode": "X28uw3giRq1Tvi0E", "currencyNamespace": "aOGBQo7MImkGizfV", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1989-12-06T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1993-01-04T00:00:00Z", "discountedPrice": 8, "expireAt": "1974-05-11T00:00:00Z", "price": 50, "purchaseAt": "1997-06-05T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xmih6snd7IFSQ671", "currencyNamespace": "JwqKJODnk02Sttqc", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1987-03-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1980-10-05T00:00:00Z", "discountedPrice": 73, "expireAt": "1981-10-19T00:00:00Z", "price": 49, "purchaseAt": "1984-01-21T00:00:00Z", "trialPrice": 49}], "D9680cARPxg8u2bK": [{"currencyCode": "UL6X1szHeMZiId2t", "currencyNamespace": "6RsFatJzQaiHdUjH", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1989-12-03T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1992-11-09T00:00:00Z", "discountedPrice": 15, "expireAt": "1998-05-09T00:00:00Z", "price": 88, "purchaseAt": "1989-08-11T00:00:00Z", "trialPrice": 1}, {"currencyCode": "iqQz0jCq1ZsUGxCb", "currencyNamespace": "I3RUAyWhzAxKHpMY", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1986-03-09T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1984-01-16T00:00:00Z", "discountedPrice": 20, "expireAt": "1985-08-01T00:00:00Z", "price": 6, "purchaseAt": "1975-05-13T00:00:00Z", "trialPrice": 46}, {"currencyCode": "nJRD4ypH51juxUNP", "currencyNamespace": "M4D8b2tEx5XaD7Qu", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1978-06-18T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1971-09-14T00:00:00Z", "discountedPrice": 13, "expireAt": "1979-06-11T00:00:00Z", "price": 6, "purchaseAt": "1983-08-30T00:00:00Z", "trialPrice": 42}]}}, {"itemIdentities": ["QHG9cA2mg1QXhG8a", "jZotHgHjLQkIMol1", "08QFIodYau4SuXjG"], "itemIdentityType": "ITEM_ID", "regionData": {"MzglmDvZhsG6EHQt": [{"currencyCode": "YHEVa6RKUe6Xsr9z", "currencyNamespace": "wEIp6nkiSHpme6XG", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1999-01-12T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1976-03-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1982-07-17T00:00:00Z", "price": 24, "purchaseAt": "1974-05-28T00:00:00Z", "trialPrice": 91}, {"currencyCode": "UJk5Hf7Ks5EAYWOf", "currencyNamespace": "9bVveVuIF2qVIQ35", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1995-03-24T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-03-02T00:00:00Z", "discountedPrice": 21, "expireAt": "1988-08-25T00:00:00Z", "price": 21, "purchaseAt": "1992-03-28T00:00:00Z", "trialPrice": 21}, {"currencyCode": "GBWyXuAbzUnH9zYA", "currencyNamespace": "KPLNBkQiv8SESLQ0", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1985-09-05T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1993-08-17T00:00:00Z", "discountedPrice": 59, "expireAt": "1975-04-21T00:00:00Z", "price": 41, "purchaseAt": "1994-10-28T00:00:00Z", "trialPrice": 72}], "HRePHHbsViG6AXVj": [{"currencyCode": "8fAJOdmx0mkg2FVz", "currencyNamespace": "ZVICCpK5VN1OYIoo", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1996-07-05T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-09-25T00:00:00Z", "discountedPrice": 25, "expireAt": "1976-05-06T00:00:00Z", "price": 58, "purchaseAt": "1981-10-19T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ed36dikJH6b4b8C0", "currencyNamespace": "E6bNwyHwLtf1xrnY", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1973-11-09T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-11-25T00:00:00Z", "discountedPrice": 91, "expireAt": "1979-12-25T00:00:00Z", "price": 21, "purchaseAt": "1975-10-21T00:00:00Z", "trialPrice": 26}, {"currencyCode": "se0JBSyTWt8Vqzzl", "currencyNamespace": "Al6i2h4kyQPmkDcn", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1988-02-06T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1985-08-29T00:00:00Z", "discountedPrice": 87, "expireAt": "1988-05-03T00:00:00Z", "price": 33, "purchaseAt": "1993-02-23T00:00:00Z", "trialPrice": 84}], "HfZN1PRe53UJlZcf": [{"currencyCode": "alAW3k7HVUuz18Y6", "currencyNamespace": "1N0TxZX2jfD1v5Oz", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1986-05-05T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1980-08-15T00:00:00Z", "discountedPrice": 65, "expireAt": "1994-05-17T00:00:00Z", "price": 65, "purchaseAt": "1977-05-11T00:00:00Z", "trialPrice": 49}, {"currencyCode": "to7TQ3j8B9IxirfS", "currencyNamespace": "mpzkgkoNmNYYo3M8", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1977-04-08T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1976-02-15T00:00:00Z", "discountedPrice": 48, "expireAt": "1993-11-22T00:00:00Z", "price": 88, "purchaseAt": "1972-07-19T00:00:00Z", "trialPrice": 3}, {"currencyCode": "P2he8W5xLp4LOnpv", "currencyNamespace": "XztVpql5O1VQcPwo", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1975-01-22T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1988-04-09T00:00:00Z", "discountedPrice": 45, "expireAt": "1978-06-17T00:00:00Z", "price": 27, "purchaseAt": "1999-05-15T00:00:00Z", "trialPrice": 8}]}}, {"itemIdentities": ["tekxN5njsMF3XjnQ", "VJwzZctGCkAHZL0Z", "jw9idI6WstI7N4Fn"], "itemIdentityType": "ITEM_SKU", "regionData": {"CfsxcSaGE7t94cBt": [{"currencyCode": "TDOItuW4Y82zeaOU", "currencyNamespace": "xn2hr5F8jgMWRqO0", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1978-12-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-02-11T00:00:00Z", "discountedPrice": 79, "expireAt": "1993-08-12T00:00:00Z", "price": 92, "purchaseAt": "1993-06-11T00:00:00Z", "trialPrice": 96}, {"currencyCode": "Xze9W9JB0gmLDhZ3", "currencyNamespace": "U2elhG6asCaYl9pt", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1974-04-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1991-07-09T00:00:00Z", "discountedPrice": 36, "expireAt": "1973-02-25T00:00:00Z", "price": 17, "purchaseAt": "1986-05-17T00:00:00Z", "trialPrice": 40}, {"currencyCode": "uIlR3JIpJxJ79hrk", "currencyNamespace": "XEYpSI2qEvM51qlK", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1980-12-06T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1991-02-05T00:00:00Z", "discountedPrice": 3, "expireAt": "1984-08-31T00:00:00Z", "price": 77, "purchaseAt": "1983-04-06T00:00:00Z", "trialPrice": 87}], "hbLJ9bTGI2NP9Neu": [{"currencyCode": "8cgyWXfCyI5zDU6w", "currencyNamespace": "rEczilwBd6omsUWi", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1992-09-01T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1998-11-10T00:00:00Z", "discountedPrice": 82, "expireAt": "1990-03-19T00:00:00Z", "price": 28, "purchaseAt": "1973-04-05T00:00:00Z", "trialPrice": 56}, {"currencyCode": "W1DoYsiU66qGrbGr", "currencyNamespace": "IKYg7YfefdKBoUvF", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1981-12-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1992-05-30T00:00:00Z", "discountedPrice": 63, "expireAt": "1998-04-23T00:00:00Z", "price": 61, "purchaseAt": "1984-11-17T00:00:00Z", "trialPrice": 13}, {"currencyCode": "q6SWFD1Yq4RxPeI6", "currencyNamespace": "HXwPs0hzUhKQpecM", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1985-05-13T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-03-10T00:00:00Z", "discountedPrice": 24, "expireAt": "1971-08-20T00:00:00Z", "price": 46, "purchaseAt": "1995-05-12T00:00:00Z", "trialPrice": 47}], "jkASkfPQJo5yEAUZ": [{"currencyCode": "DqiYq6Zb6QPoW9JG", "currencyNamespace": "R7znkYuSSsYaKaZh", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1997-07-06T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1985-05-16T00:00:00Z", "discountedPrice": 7, "expireAt": "1996-10-12T00:00:00Z", "price": 28, "purchaseAt": "1982-05-26T00:00:00Z", "trialPrice": 53}, {"currencyCode": "xHhCxHfDyQKVNfua", "currencyNamespace": "xX6Qij8ggFWxGavQ", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1997-05-27T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1997-04-09T00:00:00Z", "discountedPrice": 31, "expireAt": "1981-09-11T00:00:00Z", "price": 23, "purchaseAt": "1986-11-01T00:00:00Z", "trialPrice": 74}, {"currencyCode": "2Z1zO52W5lmY0qBI", "currencyNamespace": "nDWeVHD1IVTIVdWY", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1999-02-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1984-07-13T00:00:00Z", "discountedPrice": 90, "expireAt": "1996-10-26T00:00:00Z", "price": 14, "purchaseAt": "1973-12-04T00:00:00Z", "trialPrice": 3}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '97' \
    --offset '77' \
    --sortBy 'sWmG8DyON6Y8lcIY' \
    --storeId 'hBAQUUQ7FoicW80V' \
    --keyword 'SKyGDgMYbVSqhkar' \
    --language 'midhW8CbaA6Fr9qW' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '22' \
    --offset '21' \
    --sortBy '["updatedAt:desc", "updatedAt:asc", "updatedAt"]' \
    --storeId 'NyHDvNUzqNnZ1mdw' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'Ie9IiqzAvPMaPFAE' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'LM5F8muufuqptdE6' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'n3Gq5eh35lrQYrdC' \
    --namespace $AB_NAMESPACE \
    --storeId 'AMsd8L294syazEyT' \
    --body '{"appId": "eIdSuB8jdZQZ4GFz", "appType": "GAME", "baseAppId": "COtROWbrqOJ5S8p8", "boothName": "iuhLXs6QNL2lJiwz", "categoryPath": "We4GrD5TyvLwuyZj", "clazz": "IZuYpfe2WB918095", "displayOrder": 95, "entitlementType": "DURABLE", "ext": {"Ly8OKBG9JqUYViHi": {}, "vY4FwXuH9RXMrZzV": {}, "ePlaWVt8TSjTbKvR": {}}, "features": ["xihtq7XGe2iJGxTb", "2vCxNcSesOHEl62U", "xC2X4BKvbzbHMBEI"], "images": [{"as": "VYbzBNzb2SDCSis0", "caption": "yiwRHJcD3WZmm6cG", "height": 57, "imageUrl": "76coKF0MIwZqllXx", "smallImageUrl": "JqJxhw5DfZoypiK4", "width": 67}, {"as": "3Ml2EEwg13LxDdOH", "caption": "BFFkgnFRGod2i1nU", "height": 76, "imageUrl": "ilYs79CtyCwKcqug", "smallImageUrl": "YyyR4UFU1GdhZZQl", "width": 47}, {"as": "WceBVRWvqLwVMAmZ", "caption": "BiHbCAnpdMmNYUB1", "height": 17, "imageUrl": "aU0l3bTchHWpkzR7", "smallImageUrl": "IIXOp4zZeMikKo4l", "width": 28}], "itemIds": ["tZpZ58w0TVGoD2YN", "ksZA7M1qMRAmZoXm", "wL6BmBw0yMvzLSRw"], "itemQty": {"4lS61DAv5yb6vmge": 28, "a7DfxPzqYgFVB1E9": 34, "cuTX1Z5Sn6ERniwz": 67}, "itemType": "SEASON", "listable": false, "localizations": {"yNhFnkQCFNc6Plwo": {"description": "2xlCJXBd68NiBFY8", "localExt": {"cIOmgTNvLGJeiRwb": {}, "eP5lGQA3CPlVlw2U": {}, "AFrIDGIG11AB36Id": {}}, "longDescription": "oDuAK1QbznbDzDA2", "title": "ofXfiX9BmJBCfrB0"}, "js1HhbTn351qZYhz": {"description": "kLPbYXJFyDPre2SG", "localExt": {"YEecRowh9ih0yaip": {}, "Zalnab2cgMPyLlro": {}, "ygRtKRUVYdPe6NyF": {}}, "longDescription": "6hYaTV13xTQV76FG", "title": "swOwiLpRyz9q6Ew2"}, "YDTBxFAKOAIT7ipN": {"description": "VPHbZAQohFqegoBl", "localExt": {"ZCqo7xMLDn7xjbKW": {}, "XBeI5eHBkL8jc6Le": {}, "w8rAwHden9h5JNJU": {}}, "longDescription": "3ro3dRNRym00wi7G", "title": "7ROgolOZDrRNelOW"}}, "lootBoxConfig": {"rewardCount": 75, "rewards": [{"lootBoxItems": [{"count": 46, "duration": 95, "endDate": "1993-06-22T00:00:00Z", "itemId": "pH0yM3dZQtqqVTbh", "itemSku": "JFkzscJ3UV2LD1Xq", "itemType": "3JyJVWCgGWwJPzQF"}, {"count": 68, "duration": 46, "endDate": "1973-10-20T00:00:00Z", "itemId": "Ou4nZVbmXERnQsLX", "itemSku": "g4t8HFDOyp5gXPMi", "itemType": "CiUy7idoWYUPPzDc"}, {"count": 62, "duration": 4, "endDate": "1971-10-24T00:00:00Z", "itemId": "6R7lU5shp5HCqx7u", "itemSku": "tJ7Dp0cnfgotUBp9", "itemType": "6PyP2jlD0xPFgg2i"}], "name": "1jRoNYiyX2MRGe2J", "odds": 0.8207270737821921, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 3, "duration": 20, "endDate": "1983-10-22T00:00:00Z", "itemId": "XoRlYt0o47Lq8jbB", "itemSku": "w2WY2DfhrDzOiUnO", "itemType": "6B7ytSLbBLk4qoqd"}, {"count": 92, "duration": 77, "endDate": "1982-09-26T00:00:00Z", "itemId": "aeUMl1PSjJL1xrED", "itemSku": "DsDVsCNjjV8KUwM1", "itemType": "zVbXAQpGukWdKU7V"}, {"count": 53, "duration": 37, "endDate": "1992-12-29T00:00:00Z", "itemId": "soLuS89gWK4Q3e04", "itemSku": "l3CZAfihRYZeIwK5", "itemType": "gSanJPZkenG3o2Vz"}], "name": "LFYvQRCp1hXkp9cd", "odds": 0.5349008400652758, "type": "REWARD_GROUP", "weight": 41}, {"lootBoxItems": [{"count": 87, "duration": 90, "endDate": "1999-01-14T00:00:00Z", "itemId": "TSYIWdzYy3TF8sPu", "itemSku": "6itJrub8tydlVrdq", "itemType": "0V4ekR51cHcbyevO"}, {"count": 10, "duration": 15, "endDate": "1971-03-29T00:00:00Z", "itemId": "jxAjXhmG620f4P1c", "itemSku": "0juzCVkeMZViwmuc", "itemType": "9gfApzG9GUgMNo9x"}, {"count": 31, "duration": 23, "endDate": "1972-06-21T00:00:00Z", "itemId": "RYodDoD6KagT302a", "itemSku": "8HCY8r7Oud00izMC", "itemType": "w9c5NEmduiPZvERU"}], "name": "YPYF6x3m2UeiUiKi", "odds": 0.32821890052811853, "type": "REWARD", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 66, "maxCountPerUser": 94, "name": "V7jiCNE9Deaatdlb", "optionBoxConfig": {"boxItems": [{"count": 51, "duration": 22, "endDate": "1991-03-09T00:00:00Z", "itemId": "iqklmczDoYflo5Q0", "itemSku": "sW3g9V7yP51nnhrT", "itemType": "6yRNwgS8khJH1gua"}, {"count": 84, "duration": 97, "endDate": "1986-09-02T00:00:00Z", "itemId": "GMtfCly4SStYlSVb", "itemSku": "6qnnTXNL9ATqelEa", "itemType": "bFRGNmwlNshYl9Nu"}, {"count": 100, "duration": 3, "endDate": "1981-09-26T00:00:00Z", "itemId": "67d53HZRL8ycDce7", "itemSku": "9SpdDpm4kzXDFO7q", "itemType": "UePZCatRyaFmMNTR"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 45, "fixedTrialCycles": 27, "graceDays": 4}, "regionData": {"PitaS88D7cENOOPa": [{"currencyCode": "muAe8AT6P3vzsRRW", "currencyNamespace": "qCmLvWJuOJqPN0BE", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1985-03-19T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-09-07T00:00:00Z", "expireAt": "1989-11-29T00:00:00Z", "price": 17, "purchaseAt": "1976-11-10T00:00:00Z", "trialPrice": 30}, {"currencyCode": "p4dOBbReuVsKkC9y", "currencyNamespace": "r9jkQJBxaMXtVK17", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1978-03-07T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1974-11-15T00:00:00Z", "expireAt": "1991-07-22T00:00:00Z", "price": 87, "purchaseAt": "1983-08-14T00:00:00Z", "trialPrice": 4}, {"currencyCode": "u2N7hninopcW88RE", "currencyNamespace": "E0YBlT12r25SR3Ze", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1979-02-16T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1981-04-15T00:00:00Z", "expireAt": "1977-03-24T00:00:00Z", "price": 71, "purchaseAt": "1982-05-25T00:00:00Z", "trialPrice": 28}], "6x5vQh7W4T4zlMH1": [{"currencyCode": "GJDUGvjLoqBlrgJY", "currencyNamespace": "iZIbZi9tNAkmMhC9", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1973-10-10T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1979-10-15T00:00:00Z", "expireAt": "1993-06-10T00:00:00Z", "price": 93, "purchaseAt": "1994-06-19T00:00:00Z", "trialPrice": 3}, {"currencyCode": "wiTVRGCUfgSglYPW", "currencyNamespace": "363Finpcaf0TTHJ4", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1994-12-27T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1998-05-09T00:00:00Z", "expireAt": "1981-11-09T00:00:00Z", "price": 28, "purchaseAt": "1987-09-13T00:00:00Z", "trialPrice": 35}, {"currencyCode": "3RT7PWmi5tlt0wMO", "currencyNamespace": "6nktqEhigiVPJPvb", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1999-08-09T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1981-07-20T00:00:00Z", "expireAt": "1971-09-09T00:00:00Z", "price": 87, "purchaseAt": "1976-05-20T00:00:00Z", "trialPrice": 24}], "2Q7OhPhQ62R1XJSr": [{"currencyCode": "ou9aFskgfe4G5vX0", "currencyNamespace": "hNlgLSR5XNgW5MeK", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1979-01-03T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1977-12-02T00:00:00Z", "expireAt": "1979-10-09T00:00:00Z", "price": 3, "purchaseAt": "1993-07-12T00:00:00Z", "trialPrice": 43}, {"currencyCode": "w8fOfczkWFQsUbfG", "currencyNamespace": "r45iMxsMtoAYrN3p", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1982-07-19T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1974-08-22T00:00:00Z", "expireAt": "1982-09-30T00:00:00Z", "price": 4, "purchaseAt": "1977-08-06T00:00:00Z", "trialPrice": 45}, {"currencyCode": "PIbX324NGHSE0zI5", "currencyNamespace": "2llQtFABiMuGxbNH", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1989-06-03T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1975-10-10T00:00:00Z", "expireAt": "1999-03-14T00:00:00Z", "price": 79, "purchaseAt": "1995-11-02T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "kRKx8NhKWJWWAPXG", "price": 72}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "YcFywWmu5FhbSslW", "stackable": false, "status": "INACTIVE", "tags": ["x3S3kwHuB3Dm2paB", "hPXOUm5hRgBsj3rB", "EPOeBpGUecvDt7GU"], "targetCurrencyCode": "rqgkSizPV0skAmtT", "targetNamespace": "PTN052BavHSRKY7N", "thumbnailUrl": "Gnmn0DOk1y62IT3K", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '68cYjAFrtam0JqWY' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'JxoTSjN6aQTNEw4k' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'j0RHodVKOEI0r40p' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 61, "orderNo": "xUkJo2neHn5Bo8jv"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'C2dGMCPzervPsLLq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ZDarXvadxxUzshV3' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'kn4CXS8Y06Ap9Uk0' \
    --namespace $AB_NAMESPACE \
    --storeId 'Yr8Mq90IKlHaeVky' \
    --body '{"carousel": [{"alt": "778QByDVtifFQ8W8", "previewUrl": "BdPDSCtTe5nwasdb", "thumbnailUrl": "Krx90s5CDR77pK1x", "type": "image", "url": "yreCKPhL2n6SZ637", "videoSource": "vimeo"}, {"alt": "jVxb59VFTXwHMcXe", "previewUrl": "3oNhMLZgDOaaA7qA", "thumbnailUrl": "uU3edMpX6DuhfgDk", "type": "image", "url": "yZZ3QMBFxN2PRbXc", "videoSource": "youtube"}, {"alt": "GoQ8m4wo2YKjRNXF", "previewUrl": "E5DmIFXxzGy6O50G", "thumbnailUrl": "mj7a2ZdkFr4fx6qZ", "type": "video", "url": "uSd7euXuqtzi65qN", "videoSource": "youtube"}], "developer": "4OCe62d1qRtFIpvk", "forumUrl": "ynVsMcIunBrTeI90", "genres": ["Casual", "Adventure", "Indie"], "localizations": {"zGJK1fum4C2mZdda": {"announcement": "xLXtwZIeTQuQySoD", "slogan": "hh7F0q7Lc0nEBgUY"}, "bVhSiX2rim2LhrsD": {"announcement": "d8TwidzjxbZ3sEzB", "slogan": "oj7oThw39gemGwG9"}, "qPGkgvk0st1VX1ZY": {"announcement": "JwSbSDeaNEYyFHAZ", "slogan": "fUYlXvUOStgVRwRb"}}, "platformRequirements": {"ZM8TW592QVfIVSUL": [{"additionals": "ZRBoCz1oCfjOmizQ", "directXVersion": "rbyo3qDevUvMlohH", "diskSpace": "YYjLDy052NqeYOg2", "graphics": "XxU17GoNbydCqWaq", "label": "OiulY3Gb5ORYnMv6", "osVersion": "uC6Ki8OXxrgXUJFk", "processor": "bLSdg7Am0V4Vcru0", "ram": "GXpgFJ3w5K0b0nyt", "soundCard": "xX3U1t35PzCYkEeA"}, {"additionals": "F4rgz19TZburQak0", "directXVersion": "W699wgj26xIIqFvy", "diskSpace": "JtLdwcaZvAqkx9VL", "graphics": "3inHL8VGW60vfGmL", "label": "twnvyGrFvQrmUoLK", "osVersion": "afGUmQfaFfUItO3b", "processor": "KAJxpTpHhzYirYOX", "ram": "7oiV9srFM0vhgil3", "soundCard": "iSxMas8bSVRrC8tr"}, {"additionals": "TzNzoitwesEFcH4M", "directXVersion": "kFsgE9WjZarm4mvM", "diskSpace": "QkJJwH85tut2hyI8", "graphics": "c1xZFF2V2cp97MtE", "label": "1fLqd6u8Jl2xkqfP", "osVersion": "A96BaAOdgkZzpIlI", "processor": "SSnjRLzhCdCAFmXC", "ram": "dyV1i4XymaXJHzvG", "soundCard": "SKjz67m547qLJz0v"}], "x62xVF4z72cRHU2H": [{"additionals": "mMzhtXiiW9fMKEKu", "directXVersion": "mqJHoODDsJmYPcQ6", "diskSpace": "H3R8rIpyRaVy8FDU", "graphics": "Urdy9FhK5xHLHfrV", "label": "IzHBGQdHXBoxEFqe", "osVersion": "P0ubsiqpq80JWyss", "processor": "mL6whZIDCX8u83TF", "ram": "OZvil0ZQp7U2HuIT", "soundCard": "OUsGeOIU6lprdTya"}, {"additionals": "fQfJsOEUYfbLo73a", "directXVersion": "szqJIKTJew3pS4El", "diskSpace": "U8jxv7bJTnPS53f3", "graphics": "MIKI9Sq0c3ZQ0XeT", "label": "YsiSZ41Ironry476", "osVersion": "Lfe71j8ftQ28Cg2x", "processor": "UnOEJndnzclGfXN6", "ram": "IK6dN4o5OSkMpFEL", "soundCard": "IIM97JDSQyi93UOc"}, {"additionals": "ViYPP7XjyomNY0Wr", "directXVersion": "Wfy5aBbx0WveMrNR", "diskSpace": "R9Ou99BBN32qem4a", "graphics": "2hXc6ZNB5raCLhX8", "label": "FkpxPD26jD6pOTMa", "osVersion": "hy34AAz6uCeG3IfO", "processor": "nzJ00z2c6CayOkEM", "ram": "fcHNk4ckvuLF662I", "soundCard": "CoUs2MoY0NdZtKSE"}], "BqeRFGbxT1z8YS4r": [{"additionals": "UhwqJLjwWquVAUN7", "directXVersion": "oyljkBUHKMRc2AsU", "diskSpace": "pzQxZDpCqKi7JuYa", "graphics": "NuzPCvy6qJlZXxmh", "label": "Ceb3DYA1ayv0WIGB", "osVersion": "FHjyDpfNfMYn8Jia", "processor": "U3Vs7EKNGngidTBA", "ram": "wBg5BICONavOmhkm", "soundCard": "k0lRJzT22CQyD9Ih"}, {"additionals": "eLMtQSNAxEF2HllK", "directXVersion": "UNMzKkKYdHRKvOP2", "diskSpace": "QJD6RV9KPBwoUOLo", "graphics": "QrjOvXiDA53ZkyC6", "label": "j9RvZTFB27YV9hku", "osVersion": "JJuJKEjr0aHP3PFA", "processor": "BO3Mr7FuoIVxmOCE", "ram": "FW9DniQNGFAzJfpb", "soundCard": "RnD3j5P0ZmyFFNfK"}, {"additionals": "MqNJTFs7Qa2MU28y", "directXVersion": "mUH2Qn15TBKGpdvU", "diskSpace": "7o5czFvTwX2kAaAc", "graphics": "pbu1aGoiBHn6EBQh", "label": "XxnohpVRw83w4lz8", "osVersion": "9b5kVLvHPQF847rR", "processor": "aoDMfN3CoPjXtSRf", "ram": "NmIZ9Jd1ZHRkyFst", "soundCard": "6zfAQXVq5w0pXPLT"}]}, "platforms": ["MacOS", "Android", "Linux"], "players": ["CrossPlatformMulti", "Coop", "Multi"], "primaryGenre": "Sports", "publisher": "JotOmtwm0Wdevr7f", "releaseDate": "1997-09-16T00:00:00Z", "websiteUrl": "76da56FaYEKlhLnU"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'DC5bFkAJljPFckEq' \
    --namespace $AB_NAMESPACE \
    --storeId 'QzJFSuQHhWVGQnQM' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'WoLvDpZuN5Qodkg2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'KXOnUdtuG47ZnABj' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ni9KhupwOfvrCobd' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'rIN397cTCpg9JnuZ' \
    --itemId '9dn4NB3zJjwO6f0T' \
    --namespace $AB_NAMESPACE \
    --storeId 'dknyvUVZMjHM1XPY' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Qm0Z3wIOai4014P3' \
    --itemId 'mWgcbAFRZglhf5Xi' \
    --namespace $AB_NAMESPACE \
    --storeId 'SYOJRGefFjWLLiIO' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'ObIDoz3Q3vjJconZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'DT7jkl4borubiCkK' \
    --populateBundle 'true' \
    --region '88NtqfcEiBT4qpp7' \
    --storeId 'meVWvPVHYvhfOBHr' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '0TQfrkNI4w5J5jSn' \
    --namespace $AB_NAMESPACE \
    --storeId 'lnJVdEcIaTxy4crg' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 25, "comparison": "isNot", "name": "9gxVMu6b4iKcqyBK", "predicateType": "SeasonPassPredicate", "value": "PpgwiVVxt3ZVTdT9", "values": ["ACkVWYQnnRIplLsM", "2mQhuydfbunud8dr", "q8kzRV1GRhHfTVOQ"]}, {"anyOf": 22, "comparison": "includes", "name": "RPHO8b03h0WriBNj", "predicateType": "SeasonPassPredicate", "value": "LG2Zmh76vSVfy4ed", "values": ["YVeMlRsQtCaVOmUF", "V3TmoHLMsUbm2mz8", "fEOxRleiKmhwKz5S"]}, {"anyOf": 100, "comparison": "isGreaterThanOrEqual", "name": "te2CWmeNF0fZZVsq", "predicateType": "SeasonPassPredicate", "value": "z3Vf3NPHQTEoF73m", "values": ["4dsTT3h5MT67WVIZ", "O7ksU89OSHvo7X9d", "wmpQULuM02TWlAS3"]}]}, {"operator": "and", "predicates": [{"anyOf": 36, "comparison": "isGreaterThan", "name": "8wDTJSFOAw4tevdj", "predicateType": "SeasonTierPredicate", "value": "UrXub8e0mb0yn6YL", "values": ["GruwRizVBSlRHNAv", "IkJBvOGEb9zXUhIt", "jTmt3EMP1uqPnYHI"]}, {"anyOf": 42, "comparison": "includes", "name": "UAgRij0zaLNWSM41", "predicateType": "SeasonTierPredicate", "value": "CdSZp81uVBqqgmgB", "values": ["tiMKgSTt9CFZtBjb", "tCQgUXdVrTHbVako", "KP1xSSectrzNgKFi"]}, {"anyOf": 95, "comparison": "isGreaterThan", "name": "JE4iNsaYw2M1FzgH", "predicateType": "EntitlementPredicate", "value": "JzEWG6jH1F6c1iqZ", "values": ["ZiaH1Yc71WSP5lgO", "hWicMVnYGvdaQ5CX", "KaGMWut22S3yyzNt"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isLessThanOrEqual", "name": "3YJmYwKeKHJhGb63", "predicateType": "SeasonPassPredicate", "value": "XNVgQt2RHOj0TW3j", "values": ["pPDcwlA54DYECsaC", "NvF10fnxJm0Y3ShQ", "ZD29xfzeSAGjOcYY"]}, {"anyOf": 77, "comparison": "isGreaterThan", "name": "xWrboBjOtEvkJ8Lg", "predicateType": "EntitlementPredicate", "value": "faX3WYOO7TsSMp5f", "values": ["rv1NtGyxc8upGSXy", "6TM0Ub6zGiLk7qLr", "ig6yzhTaohitcqjO"]}, {"anyOf": 51, "comparison": "isLessThanOrEqual", "name": "cVHKkHrCxLGPKzH3", "predicateType": "SeasonTierPredicate", "value": "DzaaixlrwalMKmHn", "values": ["nRj7Pkkck2X2bKWU", "eFPyQRZDJpKRtBUB", "OyMjH9FCYTwrOKRI"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'uvNGIu7xip7Q18Xf' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "OGe9Zt3lqxGEcfQo"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'tWTirvzLuJx3Jw7f' \
    --offset '2' \
    --tag 'c4Jx1832A0sCu6u1' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NKL1YwPqpxAmWf8c", "name": "AaCAjOmQKo970uFD", "status": "INACTIVE", "tags": ["PNEokudyEB3Dppr6", "f2M0HD8hPExyExeH", "5jO6EHlRRcc8tgk7"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'z4RBmU5aZ1QUQM87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '0DmgqiTdBp3Kjzmg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oySjvWB1j0pPNOtS", "name": "Hf52Qk8xe085eyrv", "status": "ACTIVE", "tags": ["7vIAxXhudun5VZsl", "B3xoYwnYjc7bkVA1", "vBRG90WVBs3sW6PR"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'mmuDW1QCaJNbcDVG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'l9c8KuK4BEtu1wPR' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '3' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'p0hXlscyxTBohrlw' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'JvyrWpygoMpBJ9RD' \
    --limit '100' \
    --offset '22' \
    --orderNos '["MohQjcCmUSG2MJfI", "jEcQOGF6CZrybP7W", "U9G08kMHn4TZrZ79"]' \
    --sortBy 'zeLxlp7nV2dLt0gk' \
    --startTime 'RaYbFgkiPsOKn1SI' \
    --status 'DELETED' \
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
    --orderNo 'XV0SivKNdwVkGf0S' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '98IO4t0qpv5LVPaR' \
    --body '{"description": "WxHcXboQAOaJTAje"}' \
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
    --body '{"dryRun": true, "notifyUrl": "b1zG6NFabMwzs7gY", "privateKey": "F6jpKyo29dVwxgFf"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'TiZ8Yxkp9vIZdOti' \
    --externalId 'ecxUx8ILSudY7FSX' \
    --limit '72' \
    --notificationSource 'ALIPAY' \
    --notificationType '99Fgkuav18VlWINH' \
    --offset '41' \
    --paymentOrderNo 'aIelPjmJAw1kRc3U' \
    --startDate '6agcxgg1scb9dirb' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'OSKgp4KgpO5JBoJi' \
    --limit '12' \
    --offset '95' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "JBk4QHh53Tm0xZSg", "currencyNamespace": "R1Nw1usYdVnW1sZC", "customParameters": {"3BBGwX8wFjm054jK": {}, "JPEkRuYkWVqXnJiX": {}, "fhWtQfYaf9RYgSDy": {}}, "description": "z6yE9lawOExakpvE", "extOrderNo": "jjOy5pjxyX2MKtQb", "extUserId": "7Noh1MQfW90UgFMR", "itemType": "COINS", "language": "hYy_743", "metadata": {"Ob8wZfEVK8grVJaa": "McvueydZMEzeSNWa", "L4vmLu8n4uoXn6rz": "56mpNI7Q1019aGb6", "COBD7vAYwVd03qO9": "Y5btfMCq1pTpABPd"}, "notifyUrl": "eQ1Gm8aHGUu5UjvU", "omitNotification": false, "platform": "29M0Adm75SfiatrC", "price": 15, "recurringPaymentOrderNo": "GKToyxZo1rKrb8dE", "region": "6s5Lee7iT966WJdd", "returnUrl": "HS9ZVNoO9FPQ61xD", "sandbox": true, "sku": "qGguV7VWOBVOuxKF", "subscriptionId": "Tx1j9tNgjFUBE9fA", "targetNamespace": "vyl7C56dvxgLLc5s", "targetUserId": "A0fy5VciqcXBh0RD", "title": "UohgJZwh3kqbGfEh"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'LgFtPMahJhrAzmSF' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7VwqQDQJQPZZN9cF' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kVRr6TIQKjCD4ajS' \
    --body '{"extTxId": "USHZl8OEyxyAQqPT", "paymentMethod": "pAfPbaDDJxkd7A9L", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6x8DrgfHjS19lz4A' \
    --body '{"description": "pi6SNKTi3gGC2X8w"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Z3Z27sDWHXj0UF4c' \
    --body '{"amount": 87, "currencyCode": "JYMGvrWK3LYX9YH4", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 60, "vat": 21}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dZnpVihCrmkOiJOC' \
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
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Steam", "Other"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'anAalPJsgkAsMAFm' \
    --limit '95' \
    --offset '39' \
    --source 'ORDER' \
    --startTime 'nIW9xMxYt3KYnEt6' \
    --status 'FAIL' \
    --transactionId '2XYMxLf6wNERnnw9' \
    --userId 'Zur13frh6faqtIuc' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CiSp7Pjv4anIMmVp", "eventTopic": "dcq2RHv7rrx54SnM", "maxAwarded": 77, "maxAwardedPerUser": 12, "namespaceExpression": "sPT7LQd6vrLZz7eq", "rewardCode": "Vyb4vohaFfyzaQYO", "rewardConditions": [{"condition": "YAWqIw9YQXWgmBhO", "conditionName": "2dqb3c2MfEO7At9W", "eventName": "UaaI2Z1gvzXGgcyd", "rewardItems": [{"duration": 14, "endDate": "1977-01-05T00:00:00Z", "itemId": "JsfiuxACuIWv1MrM", "quantity": 66}, {"duration": 93, "endDate": "1978-08-18T00:00:00Z", "itemId": "Q8IU5sswaM67Si4S", "quantity": 61}, {"duration": 67, "endDate": "1981-01-05T00:00:00Z", "itemId": "UiotCqlYvHVHh9qD", "quantity": 97}]}, {"condition": "QIiWaOff2hPusQlk", "conditionName": "Ln8CvkmbF3fV9At9", "eventName": "7UDP8OgthVwifIxT", "rewardItems": [{"duration": 39, "endDate": "1995-12-29T00:00:00Z", "itemId": "PkjukhxgZ2UyfzEZ", "quantity": 42}, {"duration": 26, "endDate": "1985-05-20T00:00:00Z", "itemId": "0Il0IIcZCGMYc0nv", "quantity": 55}, {"duration": 17, "endDate": "1990-06-07T00:00:00Z", "itemId": "0OnftT3NEeg9xvgl", "quantity": 15}]}, {"condition": "ckuwanE5EzgClkUd", "conditionName": "Euh5EKSjsd7KDlpc", "eventName": "i3B8nJnS0Xuk7kqj", "rewardItems": [{"duration": 11, "endDate": "1980-10-13T00:00:00Z", "itemId": "VsBAd7RBLXYsBpbT", "quantity": 17}, {"duration": 64, "endDate": "1971-11-21T00:00:00Z", "itemId": "60ks0pOV78LQlTlu", "quantity": 96}, {"duration": 94, "endDate": "1979-03-12T00:00:00Z", "itemId": "c5xVaclNxuIYd6mo", "quantity": 30}]}], "userIdExpression": "Y2FADFuGVGP894oN"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '8seJSiWSucxODydi' \
    --limit '87' \
    --offset '40' \
    --sortBy '["namespace", "namespace:asc"]' \
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
    --rewardId 'STN4Kl1qnpmeEv39' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'XdtopHWXqJnxAArn' \
    --body '{"description": "e586njzzTZUVWkpl", "eventTopic": "4Yab7tsz0UNjEH2p", "maxAwarded": 65, "maxAwardedPerUser": 17, "namespaceExpression": "NDCJrQ5AQC8lTet0", "rewardCode": "6P5Si8xfSvQGj7Xe", "rewardConditions": [{"condition": "c1qA798b6TgxGTvI", "conditionName": "sJ79rmeYUvblpYYN", "eventName": "5UZB9XmuIn1wOHhK", "rewardItems": [{"duration": 65, "endDate": "1984-06-28T00:00:00Z", "itemId": "Egrtb6DyfKk3xvZ0", "quantity": 100}, {"duration": 88, "endDate": "1983-10-31T00:00:00Z", "itemId": "UE7zmSGDEmtFJDag", "quantity": 1}, {"duration": 53, "endDate": "1976-03-11T00:00:00Z", "itemId": "Egl10dzDHV75h91J", "quantity": 57}]}, {"condition": "VrIAh4RR5ZerAUvS", "conditionName": "nSLMdOkfDaOj87Wu", "eventName": "Gv3CGbJqlalNIwfJ", "rewardItems": [{"duration": 66, "endDate": "1977-12-11T00:00:00Z", "itemId": "RDAYwaEbfbUGSX92", "quantity": 93}, {"duration": 13, "endDate": "1986-10-14T00:00:00Z", "itemId": "VqWBNyIPVhqhHmX8", "quantity": 44}, {"duration": 38, "endDate": "1990-09-13T00:00:00Z", "itemId": "gUNHD9KUplZ0mFri", "quantity": 1}]}, {"condition": "jmJvFsSFnB8cjAOf", "conditionName": "HnTydX8AEjyPKska", "eventName": "roFiNxvvicSYNMF6", "rewardItems": [{"duration": 65, "endDate": "1979-01-06T00:00:00Z", "itemId": "2aw584VapKLGTdCn", "quantity": 98}, {"duration": 13, "endDate": "1978-10-29T00:00:00Z", "itemId": "iaoLFE2dD6zfTcHo", "quantity": 98}, {"duration": 20, "endDate": "1971-10-27T00:00:00Z", "itemId": "KiBGki3UOYRd3Sj2", "quantity": 22}]}], "userIdExpression": "FUOPsjcVTcPzzjsL"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '7Jz2OghujpDytEUd' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'JBjH9FcHNT0BIYj0' \
    --body '{"payload": {"0oZYv4G3Rs5QmIoz": {}, "lpbtpVoSgulMTC9B": {}, "NOwLUBNtYc7kmIJO": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'gHJot1DjDQfyPhNd' \
    --body '{"conditionName": "33Iw0qabJbjUVpXT", "userId": "Dar3fe7gpaT8VZAw"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'lxWraPlVHPJEfgb4' \
    --limit '3' \
    --offset '84' \
    --start 'aXejfXgyE9DvCSSz' \
    --storeId 'Hey3R3iuBjFmOj2R' \
    --viewId 'nZI9JulHnKUxSkf7' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'm3IZt5by5kvBwTI8' \
    --body '{"active": false, "displayOrder": 9, "endDate": "1986-01-29T00:00:00Z", "ext": {"XbbtmHUSKgrJomhY": {}, "pNEKcV0h8NaqjSGR": {}, "OMkyYGExemz57pRr": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 14, "itemCount": 25, "rule": "SEQUENCE"}, "items": [{"id": "qI2geUwvjWrpqRUb", "sku": "0Pc1NROm4aAYgQSs"}, {"id": "ujjG0BdWZQe4LQFZ", "sku": "6nrZWxAK5EMdDoiO"}, {"id": "tw2f2BtMpiFeO0Mj", "sku": "OpRLOz52jBqneUSE"}], "localizations": {"uEsYGIY8uzUyS2QX": {"description": "sv7z51Pgt06Ayro0", "localExt": {"1W8omr114fxcaMhO": {}, "vzABNnZ2Xj5WZV5i": {}, "NwCpYBfzb5b6LFh9": {}}, "longDescription": "buIOEXIUDnTdXuic", "title": "bkDEMs0u6tmx31qr"}, "XBYAvGSyZE8PWgCj": {"description": "qCwTwKdwFR1BFxEb", "localExt": {"fhKaMZaBUK7BCQDr": {}, "Te8vb6q3uTLEe4cx": {}, "sPDLjKb6dbHff3lP": {}}, "longDescription": "pv8lv673KFqVf3WM", "title": "zmbzC2QnHrT4qOQ2"}, "uMxNeki4XQFmpJc4": {"description": "Mt7Ndjmwq37yRoXX", "localExt": {"S0tgejP5V1fWRdGn": {}, "8Nfdw4wps8yUQIG6": {}, "JaBJxRWtKzGz0s3O": {}}, "longDescription": "P3loOmx7FxzLNQoM", "title": "jL64glLCgKGcmD1M"}}, "name": "Shg9AJLykEwauOnV", "rotationType": "NONE", "startDate": "1994-10-03T00:00:00Z", "viewId": "xGsSE77I9023mjFb"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'yQnRTl5ni3HO0MYC' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'rprbwBWY81JKn0XX' \
    --storeId 'szM9dfwi5l0hchej' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'pG7nHsFkbRGti0oN' \
    --storeId 'ARIGJ7L8vH5RF9rF' \
    --body '{"active": false, "displayOrder": 98, "endDate": "1972-03-01T00:00:00Z", "ext": {"9H58E5Yq9rOYYVMM": {}, "NYDAHzUU0RrqSMPz": {}, "KseLKIqaLMiRaCdO": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 63, "itemCount": 63, "rule": "SEQUENCE"}, "items": [{"id": "vjjsixbb7pxQVaWz", "sku": "kY6es2Y4NGofi8cF"}, {"id": "fMF96pzGxMk6iIm9", "sku": "DCKQRUfhIL3hXGQk"}, {"id": "Us9E3hbqfQRWPX8O", "sku": "TGRsOGFWSTL7wgLD"}], "localizations": {"D72ueapLfkz7DFEV": {"description": "cRLIkkSVssy4spkz", "localExt": {"TnJwR5iAkkSxK93T": {}, "Ewdcaf9EEWhfJxu2": {}, "yWHAVpik1iFLoIzn": {}}, "longDescription": "6y1OpdMcp6iChKCp", "title": "yR6i1qeskpOr2Sqf"}, "nVN7PLu56QxTDwam": {"description": "EsOCghWVBxwZ0PMa", "localExt": {"REQOEW55pHQBjUW3": {}, "7sIp7WPYoEj8YGxd": {}, "uN9oiRXq0CsTC6DZ": {}}, "longDescription": "cZS335B8FkMvp1pd", "title": "sbPl6pEqwWb1pcd9"}, "RwRN96CUYKGIRtVV": {"description": "Ut1JzZ3169eD6Tq4", "localExt": {"FJgWOcqwLwc0I8Wd": {}, "SA7jMDVQZ8bIQhQY": {}, "KQPKb7laI2ztNF2l": {}}, "longDescription": "xJv9IvT8t0FIxwKH", "title": "9AKeNRL07QjRdQUi"}}, "name": "dqJfH3V8fTn05SqH", "rotationType": "NONE", "startDate": "1999-05-05T00:00:00Z", "viewId": "SuQCvmTpgzKFpWks"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'C9mSQrgTSXJhswbA' \
    --storeId 'HJXjQskXFee6cJ58' \
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
    --body '{"defaultLanguage": "fTYZChgOySq1Sssh", "defaultRegion": "sUrGgUcosjKoEjHh", "description": "UDDoHwvWq9ZUvCkS", "supportedLanguages": ["yL3JOkocC8OLlk8v", "HF5igpOTszzzXpdT", "bI2BtS1lPFyMcYxA"], "supportedRegions": ["46Cj8Ih5Ekbjq81U", "aRhdQMsCNzHAcpiU", "O9Ek6vXOe37AWKrI"], "title": "zaGhpLV8dxW8rC3z"}' \
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
    --storeId 'sHdJ1Ny8VvY9hrfE' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'XAV6uw6q3wIHNtHx' \
    --body '{"defaultLanguage": "Fg15E34GKj6qEL3a", "defaultRegion": "RWMUNM72zUhH4OWm", "description": "Rr2YT8wSjSohpdnm", "supportedLanguages": ["PgOlOm91i5ipu87N", "pRbrJMNdIGHlG9yg", "tpHbEwCft4PL2CG9"], "supportedRegions": ["rfAa0CWsNPLUwFTO", "6WmTN5BfazgQo2R2", "k6zWRN1hGu2JAuVh"], "title": "YGOeLO597Ii2IB0Q"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'pl0wpv9qoF829lup' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '0edAc7ZGdEd0kPUc' \
    --action 'CREATE' \
    --itemSku 'WJxgOY5MKrdOfNWQ' \
    --itemType 'INGAMEITEM' \
    --limit '62' \
    --offset '90' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:desc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'mHTg5FQJMa08tGQz' \
    --updatedAtStart 'TYtVN6cc3NbX4lkL' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'ILaXsu736rDTR1GR' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'hX7uH5M64ZpQDssl' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'zZpBTyriHfcrYKI2' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'uVPMbcQSxf5VTub2' \
    --action 'CREATE' \
    --itemSku 'fuQJJCDiR6ijZSHp' \
    --itemType 'INGAMEITEM' \
    --type 'CATEGORY' \
    --updatedAtEnd 'a7p96S7wcHmz7Geb' \
    --updatedAtStart '7t54ULTCwNbEAEQw' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'MyltLoOPNz1K3Q2j' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'OzrAsnEJcLiavUuJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Pt839Gx5hGnDXoos' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '2vKfUbAtvmNjOTtw' \
    --namespace $AB_NAMESPACE \
    --storeId 'oT2ILSgWlvMVtQbh' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nqHBO5lD8asULGRy' \
    --targetStoreId '27A8Vc8su2iSnV67' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId '8UHs5D7hzVrGiN87' \
    --limit '2' \
    --offset '16' \
    --sku '3gfl74YzrD0XsUFw' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'H5VXDLATIURGSDIa' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LtHosx0oIaJlXG8v' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'PHVmvHfJz7FNMcNV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '8Ae8iddZ4dmTHhdO' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ilp2dla8KV7YW3xH"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'vHz7hxt6TrMtlMCN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'FpOKzvk1M2tsXzWY' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "2LXI2J2dehUDvx1l"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'FRBrvJVaO8PbwTcV' \
    --body '{"achievements": [{"id": "UJfqW7yvNtQc7VDc", "value": 49}, {"id": "5kKUtq6wLFci5NBj", "value": 77}, {"id": "0GTUmmIooHQxYvP3", "value": 44}], "steamUserId": "ZwBckfarj1GJBUpi"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'c4HQFB4jDhMZ0Q1g' \
    --xboxUserId '1fsYrSZosLVFnSs2' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7s2qoLG65yHGbEKd' \
    --body '{"achievements": [{"id": "qMrHsRGK3EPiPSAZ", "value": 40}, {"id": "tNUM6Fm5l0RTpZXZ", "value": 47}, {"id": "9z4PGwYsKYM1yeh7", "value": 93}], "serviceConfigId": "My8Ujds26il2Ee7g", "titleId": "ojRUbywehAz18L6r", "xboxUserId": "uhQkXfqgT3v0hAb0"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'A8YFEExlGESh7RB3' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'uqG4jwhtQYtomW82' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'XRLrbkGzeDT8nPmh' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'YjoNl1UZjYGgPYKj' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '2mcp53jPQHhJXL6H' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'CWnrOvtiBAMBUn43' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ZktE2ihP2lWrvhmV' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wR413aDYYTKlxUhs' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'r2ins8rjVTX3hwpE' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'o2OJiytoOa896240' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uRyXgbsx1kQoDyXN' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'qejE6Hvq05oPw4xR' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName '6rl1MIfxbZl0wZoZ' \
    --features '["8Fn4QC8SGwp1Vagu", "h7Q2antwK5ArmhIq", "RIXewqiIT9KMJbO1"]' \
    --itemId '["6ARor9MY8AC8lNJy", "AJOzfaKgSDr7qCQh", "GSSreQuc9b9WmffF"]' \
    --limit '11' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WmzmoUc8oiLncFhW' \
    --body '[{"endDate": "1979-11-19T00:00:00Z", "grantedCode": "1fOtbbnLCkbxqEXJ", "itemId": "NtbLNY49v1XFqgs3", "itemNamespace": "sTAH2yQAx1x8TYJp", "language": "WClE-eEos", "quantity": 16, "region": "Vkmt9phPtuF0hkn1", "source": "PURCHASE", "startDate": "1998-03-28T00:00:00Z", "storeId": "KNi4HFA4a93HeT7h"}, {"endDate": "1990-05-02T00:00:00Z", "grantedCode": "AqwAYscUFn6t8yhp", "itemId": "jHv0MOFKGbX5XjLZ", "itemNamespace": "NcFgtiL17YZHzFgE", "language": "WPaz-112", "quantity": 52, "region": "ABNhLz12T6oQkHa0", "source": "REFERRAL_BONUS", "startDate": "1992-09-29T00:00:00Z", "storeId": "MhJsUFrnc29iEzd4"}, {"endDate": "1976-06-29T00:00:00Z", "grantedCode": "CmwLlXST2e8LTmdR", "itemId": "yxnlLBkLNTOqtubZ", "itemNamespace": "OWxzA1BU9olhMiGC", "language": "lPWC", "quantity": 82, "region": "77DBhjZhfx1XDPWq", "source": "GIFT", "startDate": "1998-07-11T00:00:00Z", "storeId": "emEtJ5bFQsAsq28l"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BcsgFDS2QuYD8bi8' \
    --activeOnly 'false' \
    --appId 'LeQwZNCBecAiVtqj' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'S7s74H0VEDBcYHVB' \
    --activeOnly 'false' \
    --limit '86' \
    --offset '11' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BcYufpLlDkdKtYzt' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'nP1pkL9yYjRPwXxH' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 't5rkwVtbOG7BSdDd' \
    --ids '["G5E2IihYtwWSS7Mh", "jSD6azMdzKqWDsdl", "K2NN2BQ76cwKstpG"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'fzHNTUgazRzBvDEf' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'yN4zeYLfZiWxozVe' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'n3vgpqEn5i1E9NMF' \
    --appIds '["8C0lUq7smuYzAWLL", "gygVMQJj9xol7hoR", "LWZYXSKRB7NCYA6D"]' \
    --itemIds '["igEtzcXP2Gmb1kLr", "yoqbsBNVJa24Xgfw", "sfCv8t711dQNBUEg"]' \
    --skus '["6QSwEQ5n7KRpy3Gp", "mFbgqQ6BVobvlK6P", "Qa1AW84YmlTZ7AY3"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'T935P4ZwFnw9kcxw' \
    --itemIds '["jVdVsxrCzBQWWpNO", "Ne3HTWIcNxk4H3Cs", "t8z21y9ELWkzVAyl"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'OPiOnlVMIIATxZwT' \
    --appId 'y7PPMgDY4D09qvkT' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'LWj1BBcVOSOqBHlI' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'OM1zsniamvG2I3Qz' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'M4t91CboeXowC4kM' \
    --ids '["ganvGMRL2Gy1DiZ8", "z82Tl60AMUU3ovZw", "gBzAxra1vvLWpRXn"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '0od48Vf4iHB80AIn' \
    --entitlementClazz 'CODE' \
    --sku 'NHUFdf1UbQoa5L7x' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WoKxhQbgKtHvDHjw' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dztuPAYfdgxLR0l3' \
    --entitlementIds 'pifmaQJ8LjBizXgm' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'tJ37XHZ00I9xrS09' \
    --namespace $AB_NAMESPACE \
    --userId '9DwSzuQePOMhU2tc' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '0ntnGhAa2mGXEBnL' \
    --namespace $AB_NAMESPACE \
    --userId '0gxdLFkXRTsVnpBh' \
    --body '{"endDate": "1992-09-04T00:00:00Z", "nullFieldList": ["QYdW9Z4bsdHO2vrA", "8wV2ntytDhPA7erS", "oxHiF5k87ColbCwK"], "startDate": "1971-03-05T00:00:00Z", "status": "CONSUMED", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'ClbNLAb1U1KPxqeE' \
    --namespace $AB_NAMESPACE \
    --userId 'GreskF2BUBhsSV6p' \
    --body '{"options": ["YR0ekd1Yimmn3VE5", "y4whoNz2CQKsSUH6", "JGSwc5HWLfD0M4GB"], "requestId": "kQhDIv0r8gPKQHrS", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'MU6pF7zNKnKl2lxG' \
    --namespace $AB_NAMESPACE \
    --userId 'Jvkqx5WCdJEWwBg9' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Qu40vTQMS9eZYicb' \
    --namespace $AB_NAMESPACE \
    --userId '1xKD9qKPYh2lszTp' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '0hvF5MzXz2gkww6B' \
    --namespace $AB_NAMESPACE \
    --userId '1CwicZKKqSm5wRZ3' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '22luSSNLDa2L7cox' \
    --namespace $AB_NAMESPACE \
    --userId '68RET2AZlLgO2uYi' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId '8jsfAxAfqhDMbNQs' \
    --namespace $AB_NAMESPACE \
    --userId 'QZngJdDTlKNm0GUI' \
    --body '{"reason": "hEY5s66A9AvoAaSb", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'Ih8VGNAYr5KGYdhq' \
    --namespace $AB_NAMESPACE \
    --userId 'r3CUpc06agOlIwS6' \
    --body '{"requestId": "uwIfKvwH63D7OmGY", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'facw0ySJOxyqX2El' \
    --body '{"duration": 64, "endDate": "1990-09-23T00:00:00Z", "itemId": "vYNB54DaEv6JrAup", "itemSku": "8XHg3GYlva0qrwbW", "language": "VJbhnJVq3wyle4nx", "order": {"currency": {"currencyCode": "eJWsBV2QMK0vbgwy", "currencySymbol": "p16zQvezPZavZzWZ", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "VsHAMIvIk8S4mma7"}, "ext": {"YcofUQ5JPQqcVHV9": {}, "GJWSFvFt0UHtJ7HE": {}, "TZ31hBoFk8IMhhpc": {}}, "free": true}, "orderNo": "Skqv8H7CoJbT7ldo", "origin": "Steam", "quantity": 26, "region": "8e4OKktWtSN6UvXu", "source": "OTHER", "startDate": "1987-06-01T00:00:00Z", "storeId": "g4HdOz8hohKZuLf9"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'hlkJPSh6USsPcnJE' \
    --body '{"code": "pquvapq2djNx7rnI", "language": "wjfa_khCy", "region": "G9PoiE5nVFmnNh8v"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'sxQ90L92q02wxytZ' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "mUqnWtdZEYW72LKu", "namespace": "DVFVbQbZLPSYlT1i"}, "item": {"itemId": "QLknIqqmryFKGhMu", "itemSku": "TNBW3KCltr5bO0TV", "itemType": "6w6DsB38bFcAD5v2"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "K34BgK0wVcmkkNJs", "namespace": "itObf0bKYjKykVq6"}, "item": {"itemId": "3Wt9Mb5bVxIjitRZ", "itemSku": "pBIniWanPOnUIhQy", "itemType": "bXucAUb6NPXtud3A"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "jgXQZuOHsFiOCppj", "namespace": "hbeG35U3usaLuBKE"}, "item": {"itemId": "FkmfmoyC83SQZ2JB", "itemSku": "5622oMG2AM5ryrKs", "itemType": "N6DXHx8ufv1AvGbg"}, "quantity": 63, "type": "ITEM"}], "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Q2UWZIvqjFo4Zr37' \
    --endTime 'nE1jBkO3G2uC0R6t' \
    --limit '98' \
    --offset '74' \
    --productId 'umSXA1rpoKohhN3w' \
    --startTime 'VqxXsW5YI7PCBqfa' \
    --status 'FAILED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'sVhZiVnY5PQEov3S' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZDcoqNNJlbsd0p2h' \
    --endTime 'WGI33V1jxDQdplcH' \
    --limit '58' \
    --offset '29' \
    --startTime 'yheD91lyQNzs4S6G' \
    --status 'FAIL' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '43FxxgpePT9fcAy3' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Hlbk-gXCp_Jh", "productId": "Ioal6WkIopwmza3Q", "region": "qIpBzIqM4oChljDQ", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oyF8Xlxh18NTtgJ4' \
    --itemId 'l6gJTBBSZGg34pUE' \
    --limit '99' \
    --offset '100' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'e46kYcjMaFPyE8qv' \
    --body '{"currencyCode": "WnkD7bt0qvZQcv0v", "currencyNamespace": "quWKORRSxnNsU4dH", "discountedPrice": 83, "ext": {"aRxT23JxHfpdpUJO": {}, "qxPf22fZrCVOjrGB": {}, "eq3h2teBdzos4gEQ": {}}, "itemId": "PgtkUecJjZfpQsVs", "language": "WOvdWhTHBILFQeJv", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 11, "quantity": 3, "region": "Q5S0X0ICeEPFeTPU", "returnUrl": "Wmvy6HQTsS4hJnWh", "sandbox": false, "sectionId": "bHZVHVgcwzdnBhOg"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'a3cE0cydjEf6wKBC' \
    --itemId 'higvPgSpQVPu4OwH' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ld6mWfo0mdzH7Avq' \
    --userId 'rrRvdasIeNK71DJp' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '17asK4XD9zKyQLkI' \
    --userId '8mBeYFkXJ8Xbrdjr' \
    --body '{"status": "CHARGEBACK", "statusReason": "qBEcPcU1ydumHjWh"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NHDfz9Tacbuv7gXw' \
    --userId 'TfD7sC7m0nq1wP0B' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '2e87COBgS1g14YDJ' \
    --userId 'CvcAyZ9HewLAJxQG' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'I301c5F6730w9tXz' \
    --userId 'OLaapeGFwy9nfbQX' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'wDY8CuF7p8kjgmQr' \
    --userId 'VD5RHKaSAGbtTqdk' \
    --body '{"additionalData": {"cardSummary": "TOuuh5gCH4aEwuXY"}, "authorisedTime": "1978-12-09T00:00:00Z", "chargebackReversedTime": "1981-01-07T00:00:00Z", "chargebackTime": "1989-12-23T00:00:00Z", "chargedTime": "1979-07-14T00:00:00Z", "createdTime": "1979-06-01T00:00:00Z", "currency": {"currencyCode": "3jzgLtl9cdeR1cUl", "currencySymbol": "dA1lCTD12T26BKP1", "currencyType": "REAL", "decimals": 8, "namespace": "pKkOzib98VRHmJwZ"}, "customParameters": {"PRowEMlxiLkYzrYQ": {}, "C2HVNrLgxI0Xtr70": {}, "QhftJufWuiixdlLs": {}}, "extOrderNo": "q13XraKR5wqcZKxh", "extTxId": "8bCqaam3r6WxhUXB", "extUserId": "Wq3y9hFUy0EGXYUT", "issuedAt": "1984-07-24T00:00:00Z", "metadata": {"430CZ7hi7mcH7qzk": "tfuhu34QRQHRQbRH", "sDRKMIDHgIs4QWN9": "LHXv5dsbsLm9ojfu", "UpkEzo8Gy307QEOu": "huYXCor3yo4Bc0zm"}, "namespace": "Fvxh0EwJwAWV1IaI", "nonceStr": "hAgzFUYHhZQo9vfL", "paymentMethod": "0Lip76QKKygWuaST", "paymentMethodFee": 62, "paymentOrderNo": "IbZcuBy8bwOdgVHR", "paymentProvider": "ALIPAY", "paymentProviderFee": 32, "paymentStationUrl": "6zO9QC5Sk0KQfG73", "price": 33, "refundedTime": "1986-06-19T00:00:00Z", "salesTax": 42, "sandbox": false, "sku": "yiUPGIg8V8z1T9Am", "status": "CHARGEBACK_REVERSED", "statusReason": "MuuaUvfB4ATWuPdv", "subscriptionId": "s2lyQSDD9UEykm1h", "subtotalPrice": 99, "targetNamespace": "3Po2AgBsv3PVtsXb", "targetUserId": "nt11OlwPqMqENOzm", "tax": 41, "totalPrice": 58, "totalTax": 75, "txEndTime": "1999-09-23T00:00:00Z", "type": "bT6nmh4oDPLIdNP3", "userId": "NiWvxyMtsu07G8X8", "vat": 63}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'jdPijOqSoduy5IGu' \
    --userId '3d3kCaI6r1nekzo0' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'XDW3DjrH4Zceo1Ji' \
    --body '{"currencyCode": "YRiacLTIrO1AKLtQ", "currencyNamespace": "fip7igVJCMFSR93c", "customParameters": {"BJwO0GILxCvLaZ0W": {}, "WzrOnVd463QHomTa": {}, "xHx3mfZDRK8XElVg": {}}, "description": "V1leLCamYag6OZQu", "extOrderNo": "UN2BEd0aU8wPbiCg", "extUserId": "0RBq7PPlVkkImw3z", "itemType": "BUNDLE", "language": "Hao-uWcG_998", "metadata": {"EQIm6EreEES5rdUF": "QdZm8LUggLFUdHzb", "l7DTsEVhB6YzlBPY": "Ro2qINmzxsmom4lQ", "UwyeSdFBlYFd9Uou": "eWN66V1cFq8tP5g3"}, "notifyUrl": "vLbUC8UmTLTRaGxe", "omitNotification": true, "platform": "SiG9nknfhSeLp4sq", "price": 32, "recurringPaymentOrderNo": "XYwRKvzhUU9ObziI", "region": "Ll5SrnU5lyyzHo0R", "returnUrl": "g4XVimoz7k9BJE41", "sandbox": true, "sku": "USKmx4lkUFcJIO2t", "subscriptionId": "Y84MVhmlUJpZl5dT", "title": "d62oWbhffL3D1il9"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1uHt560SRqBVsENz' \
    --userId 'JU30y0l4AQsS4snv' \
    --body '{"description": "jvpJmbwG13eSVNEQ"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'vN0ewPAjTHPtCOai' \
    --body '{"code": "l1M7fgikygu6jDVQ", "orderNo": "y1qs4TWbYNcrBVXT"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '3AEhNf21IlfLfVgJ' \
    --body '{"meta": {"LQgg3TY87RrHYN7F": {}, "CrJygUJfPcVJyqJd": {}, "bk0iBM5mmwrRpf0K": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "65xwvUbRTnosn7w8", "namespace": "DLWAiPldkDxekUI8"}, "entitlement": {"entitlementId": "9IvuCgKf6ck1hk0f"}, "item": {"itemIdentity": "CNB8plIkZQdXyvK4", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "VwIJNFWKHNROvJ3I", "namespace": "AqOBE6rEf6XECLtK"}, "entitlement": {"entitlementId": "x6nQSdmgUCXN7QUB"}, "item": {"itemIdentity": "IsVOpdClDW0z06kL", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 50, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "yTuBthZWF6htAB9I", "namespace": "QRFkPa3wbyuuzysk"}, "entitlement": {"entitlementId": "075LymKrR3ONXiyd"}, "item": {"itemIdentity": "oCplAaIEV3bF4zHi", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 2, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "OhrFywi60JPqd6LC"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'lE7yyUME0lFP39GQ' \
    --body '{"gameSessionId": "x1P0xMrCP5eZ2OSg", "payload": {"b6Foq1kciFEnz2pg": {}, "F9BeInYpE4L15W8t": {}, "3olEgoWJuubQa65c": {}}, "scid": "KHqaSNi94Xm86kLQ", "sessionTemplateName": "N0jTw2qTq4eyhUOk"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '0arKPdMd1VPpzHLU' \
    --chargeStatus 'NEVER' \
    --itemId 'aLJMoWGK0AUCYwHB' \
    --limit '93' \
    --offset '66' \
    --sku 'mGLDJ40evRf7c8HP' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'MB6FsVMb969PHz08' \
    --excludeSystem 'true' \
    --limit '83' \
    --offset '54' \
    --subscriptionId 'hOE8FsXm5U5ei5L7' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '9opXLI6hPLJaHx6t' \
    --body '{"grantDays": 2, "itemId": "T2xWLcUYeG1exqSf", "language": "kfUOp57FAIZZrbUf", "reason": "xvBZvcDbLIVBQ5SE", "region": "5IbzzIBZqkyhLfgV", "source": "xatnimM31ioM1IEa"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rZ7nTKZuBNjg7x4m' \
    --itemId 'ynProAy9eLtVKAd6' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'C3aAJprZJEmLfRRo' \
    --userId 'iOGDkCdKbWj1yBDG' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Wa29DkbX1XvaG5dW' \
    --userId '0zvbBSQG4sntV0sl' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'v135vDD3OPa28nql' \
    --userId 'Wuu06C9J144LoYww' \
    --force 'true' \
    --body '{"immediate": true, "reason": "gZ03dHOTaGF3QrPS"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3KlQ5HIQWuRRShiB' \
    --userId 'ZzxRq3STnJX1rtnh' \
    --body '{"grantDays": 20, "reason": "2ZQnYDRMmCsXM8QI"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '35ER64A3h9Eu123m' \
    --userId 'TxjgslN59RRlto1X' \
    --excludeFree 'true' \
    --limit '60' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OTTwnzq47WA2paWa' \
    --userId '10tAriiDk8VGK275' \
    --body '{"additionalData": {"cardSummary": "ovlTFSGB9gtpnzgV"}, "authorisedTime": "1995-12-23T00:00:00Z", "chargebackReversedTime": "1980-10-15T00:00:00Z", "chargebackTime": "1978-10-05T00:00:00Z", "chargedTime": "1983-06-01T00:00:00Z", "createdTime": "1988-07-07T00:00:00Z", "currency": {"currencyCode": "bmI1qrpNRmVXkVio", "currencySymbol": "ncJx4oQPDofl5U9d", "currencyType": "VIRTUAL", "decimals": 44, "namespace": "f6RjOpJwsXsn8hEJ"}, "customParameters": {"cDJecKBuHg9riv0O": {}, "eTsEJs374DFbAdfI": {}, "qgV7Vr1LpuhmC4EH": {}}, "extOrderNo": "akDCOWm4PXf8ZFlX", "extTxId": "a3cDay6MWuKlptlh", "extUserId": "VGgojUxp8FOgaKpN", "issuedAt": "1992-09-12T00:00:00Z", "metadata": {"cz298b95dVtd3D8u": "t6UTfi7w5KDIv3nY", "ZTPkvkwIgMgEDoPu": "WxxJKQ991DxEoK2E", "m1VeuEVFCXdHirhT": "58tkC6uQvPnSCMvv"}, "namespace": "TTytubSZkQ4mdblF", "nonceStr": "2fuCLMLZXRtl7owW", "paymentMethod": "GbdtFp08ygNDFSrd", "paymentMethodFee": 15, "paymentOrderNo": "J20tK87vLMvQoZ0f", "paymentProvider": "STRIPE", "paymentProviderFee": 58, "paymentStationUrl": "OqMwyEW8yq9j2ycH", "price": 28, "refundedTime": "1971-04-09T00:00:00Z", "salesTax": 21, "sandbox": true, "sku": "FXDAy7BZNLn5ZLoP", "status": "CHARGEBACK_REVERSED", "statusReason": "Tv0CnFd7BifddJkw", "subscriptionId": "FqAeEMHUldoIL1yB", "subtotalPrice": 70, "targetNamespace": "f1bAOAMXBD4hrNBW", "targetUserId": "hPjX74HyRi3XFoRv", "tax": 63, "totalPrice": 63, "totalTax": 82, "txEndTime": "1975-01-26T00:00:00Z", "type": "PS4iBy2OLkWtWAkT", "userId": "uDolW2q19IHELdTQ", "vat": 84}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'uyexp52c5VOBT5bA' \
    --namespace $AB_NAMESPACE \
    --userId 'j1fBz1di8EJfZnP6' \
    --body '{"count": 37, "orderNo": "gbx8XUFh978BXxjH"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'z3dgzw9mx0W1dYHz' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Fb3M6YrJ6DRUngWD' \
    --namespace $AB_NAMESPACE \
    --userId 'ymQyCyo4RbVMTA27' \
    --body '{"allowOverdraft": true, "amount": 2, "balanceOrigin": "Steam", "reason": "hWVoeG0T4a6xzJHs"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'NeVF6XG8AwnHt8Iy' \
    --namespace $AB_NAMESPACE \
    --userId 'DYZ6y47uOBGteuEX' \
    --limit '67' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'LmRZ043HxlzoDjqd' \
    --namespace $AB_NAMESPACE \
    --userId 'nwV7YgTB4s1QY7ip' \
    --body '{"amount": 55, "expireAt": "1999-11-08T00:00:00Z", "origin": "Xbox", "reason": "glSpqW6GYGkup00S", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'n22zAuj86dxFOme5' \
    --namespace $AB_NAMESPACE \
    --userId 'OAiaKRHXwWQsG48U' \
    --body '{"amount": 62, "walletPlatform": "IOS"}' \
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
    --storeId '3g7wKdstOZJdYXge' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'CKKjt8smZjAsSk3B' \
    --body '{"displayOrder": 52, "localizations": {"4ofAO4nmVsWn2qUL": {"description": "SL59X1k2nLgdvDsO", "localExt": {"aEOxJiXOAl65YQOm": {}, "syg3Wf9pB9PsDFJs": {}, "3ExY0RNlCYX5XXiD": {}}, "longDescription": "mpGtZtOgrlfLCjlH", "title": "AMRJIvsWBW5xU2Iw"}, "6BoCFO96WRyszJtu": {"description": "aBnTDC6Pghrcl5n3", "localExt": {"cSGRj09ierKtAd3e": {}, "fD4AvC0tdBHXpmu1": {}, "krDjtaRl22nDZYzZ": {}}, "longDescription": "hhp3aew2zAWAmhdG", "title": "P2Z0KwHixksIU6VU"}, "p9kVBdSbrnupJtcs": {"description": "8MDjAN0H2QIfmWN7", "localExt": {"MHHaiAEwKiLdfnKA": {}, "NdTqXkxjegqUwdkc": {}, "GvLK8otv8Et03j0V": {}}, "longDescription": "bUsc8Di8dZTpWLHJ", "title": "lMqHcRBtu7nRBaZ8"}}, "name": "q1uJitJiB0NuK3mc"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'QDrIMag6Ped6sqkg' \
    --storeId 'cURfmDjnOAxtSajq' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'XPPJ8iTxFk5izkQI' \
    --storeId 'iQlCOExyQaEtjHUl' \
    --body '{"displayOrder": 38, "localizations": {"zUnQgXSUs6s9m1js": {"description": "x3WwsNmLdJuAyqVi", "localExt": {"H0jmqAta6o6NlMqu": {}, "hb42LaOON0CtKbR5": {}, "4OHZfBGJn8hgoOgT": {}}, "longDescription": "VOYtKZjSvEvrjXZc", "title": "bagiYrdQ4Uurfzl7"}, "Xk6J9zkffnZAl8YM": {"description": "cLeadrZhaNy26dMh", "localExt": {"uRHKcSmHgD5aI5F8": {}, "UhTdqZBQrEVkvty1": {}, "zUWS5KoFocBKhNPA": {}}, "longDescription": "fyHbR5jph0E1OmI7", "title": "A2nWvBsjvnBQFFt6"}, "sSC16UD6xInCWWvy": {"description": "CGPfwudcm9aGsonG", "localExt": {"DsoESOR3YgqADzaP": {}, "cDKcWVR1I1h3HuGH": {}, "y4oW8nA2je7NDdvK": {}}, "longDescription": "tD5Mtuujzj43wgaK", "title": "GN5j39BV9iyjLZ12"}}, "name": "SHM3CncpJiBaoaTC"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'V85kerafmVxl2Bgs' \
    --storeId 'EhHIyIv2bSYSd22J' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 10, "expireAt": "1983-03-15T00:00:00Z", "origin": "Nintendo", "reason": "3IJGdNiynbsy5RiL", "source": "REWARD"}, "currencyCode": "EuuOGhEX2vFufEaE", "userIds": ["Kqy8qKLF2sXUriNz", "Olmy6fmuGl9sKrss", "SQNSnWmSZHy8AC1D"]}, {"creditRequest": {"amount": 94, "expireAt": "1985-06-10T00:00:00Z", "origin": "Steam", "reason": "x3GTJYrpRGREInCv", "source": "OTHER"}, "currencyCode": "xvKPZGgNVDn4lTIo", "userIds": ["tMyVkPoEBPT3zkWL", "QjQxXl2DdzpuZSNR", "FcsMQkvSG8n0mtyR"]}, {"creditRequest": {"amount": 89, "expireAt": "1974-09-01T00:00:00Z", "origin": "Nintendo", "reason": "FeJFrH1YcicXuag0", "source": "OTHER"}, "currencyCode": "4U9FGd65ukMUiFvu", "userIds": ["ixNBxNx41ZJvB0XR", "nwzCr9q97azI9aX8", "K0Yz6wyLxbdcNvK9"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Jt5TPsXTJf2uMJ9a", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "System", "reason": "2GnybBtR8SxWD85v"}, "userIds": ["NC5Q0vZR6zZAmAbr", "mYLOurjuRRmdYxSw", "s5M42uc1GwnaSc5L"]}, {"currencyCode": "BP200gy1feMRKk5k", "request": {"allowOverdraft": true, "amount": 38, "balanceOrigin": "GooglePlay", "reason": "wwe6SoynbWFHDcun"}, "userIds": ["Y3DOD0IOq49899Ld", "Nc0PVmht3jze7CuF", "jREJwJIWA1dChneJ"]}, {"currencyCode": "Pi58JBAHvzFlRgeP", "request": {"allowOverdraft": false, "amount": 21, "balanceOrigin": "IOS", "reason": "5ZiLrb0NjArvLTUm"}, "userIds": ["wEUPlP3f3XIRGyv2", "VsuQzvz4078MkDB3", "fZebf58WoK2P1iHZ"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'dkiSBCV9T7ZaVgc9' \
    --end 'H9LRiM9awpifo4e5' \
    --start 'DQVkH84T9wfVayvu' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["jRAlmx6htfSfa6Uk", "IqmDXkeDRiowz32Z", "l5YEQPibLETKSdfW"], "apiKey": "JSJ19b8AFEoQg4MO", "authoriseAsCapture": false, "blockedPaymentMethods": ["cCJroHHxr4PWP5Kf", "l2tLdKLmnB5y2MJ3", "wZPH1DqTo6flAqqV"], "clientKey": "Hb173zkVnK5KSWRR", "dropInSettings": "a3GBwk9QKvHhueqt", "liveEndpointUrlPrefix": "cMKbbHHqHtzoeQEc", "merchantAccount": "68x8r2iAx1pWbpwN", "notificationHmacKey": "wvK4GXYzfnq9dCWi", "notificationPassword": "H05qsdBDAJdYdTOW", "notificationUsername": "ArebCZSljc2vaaNx", "returnUrl": "ll4mNfEktVOXZaSH", "settings": "WxfN45PWTrZSa2QV"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "STGklrNqgMo2abQR", "privateKey": "pPJUeFeNZiGDMStP", "publicKey": "kuMUOqMTzN4r5gO0", "returnUrl": "6joRmACbXPESa9OE"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "BXv79JZ8tAmF0Tsy", "secretKey": "LGDvvqk75tFpv61B"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '7B6RjNtllvZQ4dPJ' \
    --region 'n7bkDtRs5HRt37E2' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "xnIfPR4MDuGRojBD", "clientSecret": "QTknYqsjqX6iwkS2", "returnUrl": "PvmQjLsBsqVd8Poy", "webHookId": "Dzu6itRSuT7CgEQC"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["Gc77blyiHL5skQSl", "7lF07ajYIvzFGT97", "nR1PmHMxr9m7vf3D"], "publishableKey": "U1T6XUc1paMUBp6m", "secretKey": "PddbbTRSM9Nbu4qp", "webhookSecret": "MlYUYXLcznCPOHWC"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "PJIXbYs3FZU37waD", "key": "4thIF3nmS4RlNIhy", "mchid": "WxQXHVQM6EG7nN6h", "returnUrl": "SpGvASPatoRyuslT"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "50HeYAwDp6e7n8J7", "flowCompletionUrl": "HqwxfLQggMHEmhl6", "merchantId": 9, "projectId": 23, "projectSecretKey": "pRloulvBz7PnjA6j"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'STKItDlmSUmWNBwv' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ZhAJHTJdJ2zPoDiG' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["w8taOSza3z1gUV40", "H8LUZzXFTQWLcWP4", "2T6kfnlnTEYFHdAf"], "apiKey": "btjM0IjScMdELhLK", "authoriseAsCapture": false, "blockedPaymentMethods": ["R0sbEKRwq0K8ZhdQ", "kKQKGRGRkqQxy9T4", "NAoP7ljm7MKdJvzU"], "clientKey": "mPL6ZN82PdVu3dmZ", "dropInSettings": "YaywEgVRD49xkE2V", "liveEndpointUrlPrefix": "FpkM1ewJNMICRbb2", "merchantAccount": "KjfYF0guaOeqFn99", "notificationHmacKey": "3YkraMMas8lHYMHe", "notificationPassword": "dYnaAj658xjtLWOP", "notificationUsername": "59odIz3B5VbSlDon", "returnUrl": "MNo80b30kb1A6sMB", "settings": "M2EKV4lJrp040cXJ"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'zlhq9dD5Gb83bpu7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'GxZy19r5Q1YdZDUN' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "EvTHzyjYFZeuMxJG", "privateKey": "zwD24WWK3d36es6h", "publicKey": "lTcnVHnURqNFpqxU", "returnUrl": "fpQPCndrcPtfaOuu"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '1vzxgSQu2TQMZRun' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'pnOCdxBKVeaVAxyS' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "osLhB0RlsgSGNwOc", "secretKey": "Fh7i2KRgZ0VHryk7"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '9Ak5IGDMPUsDGO7Q' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ZYw6FSkR10eqypsx' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "CiuuvjD7c3Wc3k1p", "clientSecret": "8Tu6d9gflf5EKzmE", "returnUrl": "KxQ5vmqgkkEU1hVS", "webHookId": "GVjWKM7VDe3nq0Q2"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'vQGVceT3OOkPa4c2' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'Hmq3MMDYi3XdXJcZ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["O83TueKuRhamHy3w", "AWvPsYxRJMOyRuke", "iGLuWqQaUoNRA2jU"], "publishableKey": "f6838fe3Ue9vSLVr", "secretKey": "Tg7hVFVKefOHONGK", "webhookSecret": "rkz3MUAn6FXXfwRw"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'hxelZzpGADuENh3b' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'UEdvuSF4Q7ASE5Os' \
    --validate 'false' \
    --body '{"appId": "uNsIWPCts6vggpET", "key": "CaimOyggdsmHda89", "mchid": "VrsyTBavlpXO95ht", "returnUrl": "PsgSQmKoNgqgUL4R"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ECQc6sYYhyzNhZgE' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'SdABD2evUKnfsyMi' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'WPUNYemy68dFgjSO' \
    --validate 'true' \
    --body '{"apiKey": "KsJ6Q9B6JQCu9Jz6", "flowCompletionUrl": "D3bnYUEX7NtgRSlB", "merchantId": 65, "projectId": 6, "projectSecretKey": "XcqKUOg28s3sM91R"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'hDeEqwLeRpQuITlj' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'pl53gUPuHzwWdrj8' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '68' \
    --namespace 'cUQT6I0kOQkwfXTD' \
    --offset '44' \
    --region 'ZlKP2vyWNatG7kJ5' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "4qwBBOGTq1QgePEV", "region": "Q5Dk3shqPIJmnoPi", "sandboxTaxJarApiToken": "RVrUcC6iSPdjlITT", "specials": ["STRIPE", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "Ih0Akh2cFsNwxU1m", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Hd3EHEsMJ1n6fuWE' \
    --region 'Xk6iGe4ZYCDgmFti' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Fh19fDjTOZ1LgxI2' \
    --body '{"aggregate": "ADYEN", "namespace": "GZ9agPF8NtFUiYND", "region": "dNmRsPi8Kvj6CnoE", "sandboxTaxJarApiToken": "IN90VInnoeRz3YOO", "specials": ["XSOLLA", "PAYPAL", "ADYEN"], "taxJarApiToken": "eeEJrR0luboHPn6m", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'XZbaJRjKzi9uYmx3' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "3OPCyX6t8ZWctTO3", "taxJarApiToken": "zOIQ9PEnsKB54LdP", "taxJarEnabled": false, "taxJarProductCodesMapping": {"xhxZMwbB6dvIPxtn": "0U8zlOffz8CCzWEu", "o8N36sL6lAOElNw0": "LlCu24PFlNgDZhVp", "Kr89NCdKYxAXzhJc": "5a3F1GAMlQylsVt2"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'uYXCr0XpEhD2epSR' \
    --end 'ekdGJDfsqe7LWP1T' \
    --start 'Uz2dmyD3y6900A9D' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'NoYKXil89TzWnN6x' \
    --storeId 'gSAkoTC4oJG0ZUO3' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '89go8WqsJYt6HJVe' \
    --storeId '7ASMXSDtXkCXp8Ph' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'h7YvHqSKixe6BUM3' \
    --namespace $AB_NAMESPACE \
    --language 'lhSyL6wos70a0v2T' \
    --storeId 'bdSrd6z0UkTXu8Ke' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'VX2FuYVzw6OuyaAn' \
    --namespace $AB_NAMESPACE \
    --language 'j17HxkjQGVMiY4va' \
    --storeId 'nlvC0kF3cgVtFTUa' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'FJoFt9vG2eh3aBUk' \
    --namespace $AB_NAMESPACE \
    --language 'DIOtbm9uacb5J36D' \
    --storeId 'LnqKnvehbWM35k1h' \
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
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'Wcxb0XHum6TWgvv7' \
    --region '1M1lgrToBmY8Wx5H' \
    --storeId 'eo5QtoP0UddRDYPC' \
    --appId 'Tijqda9NY9XfV1PK' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'xPuuuN8ZvcFMP8cI' \
    --categoryPath '0ftbtnnW5wm5QUA7' \
    --features 'fGOyzOwfISk2yIVG' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language 'piOnAyoWB3nM1Uzx' \
    --limit '87' \
    --offset '61' \
    --region 'f3TFUtHfEXxuB2WH' \
    --sortBy '["updatedAt:desc", "name:desc", "name:asc"]' \
    --storeId 'sScXtp1KCqZcsKur' \
    --tags '6s1nroQk0TfA3vQ7' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'SPp55mj1ZGhpqnkb' \
    --region 's1dWJCGi9BcpRzgo' \
    --storeId 'fPqve0EynMQF9wht' \
    --sku '66hRROkkmFnFG4fL' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'qScfLXChzaFW6llH' \
    --region '3LhyReDa8me2O3UL' \
    --storeId '94mgcl228h0C50FJ' \
    --itemIds 'iph4aVp0Z6LM0y1U' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["0Ti4ENF6aorKxa4T", "68Bzj7Xp9MRduC36", "m2W7sySsrvB2bbeT"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'CODE' \
    --limit '30' \
    --offset '29' \
    --region 'DlAGx2jNRcQy9aLz' \
    --storeId 'iRlCjUM4t1zAwxka' \
    --keyword 'bHElGwJnlPEEuz22' \
    --language 'MHS26TY9geV3Hnif' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '3GbWF7HlSNMsKNq0' \
    --namespace $AB_NAMESPACE \
    --language 'WxhP1wlGtZrO5LWA' \
    --region 'DdndFny7QQ2t4SJ9' \
    --storeId 'thjejQr4VD7atJpm' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'rwLR0pHcLrSqqCiH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'lOwyw6PEHrtkEisi' \
    --namespace $AB_NAMESPACE \
    --language 'AXpwG4FvLrnZTcbx' \
    --populateBundle 'true' \
    --region 'VYuvIIWaVJOGsgq5' \
    --storeId 'EPd3JNvWbqqXIhYE' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "oO7ERZNaeRKbI7IW", "paymentProvider": "CHECKOUT", "returnUrl": "A9dEsyIzJqZqrZXd", "ui": "HitHwSlOj0GUIAW1", "zipCode": "rI2RJ48kEyMSSa2M"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'w4pOHb4Z66Ml5xhQ' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MuQ0kN5d4FjnFTLt' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hteVOupkUICt9Ne2' \
    --paymentProvider 'ADYEN' \
    --zipCode 'HwlCtMHZ0YqjZ4YG' \
    --body '{"token": "VExwLW83cJnWujQj"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bCcuKP0k6TyeraLR' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region '0K5sQNS4LZyUO7ni' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'UZekRB4wIGgLBvrG' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Y37kud8dCqPVyiNP' \
    --foreinginvoice 'm327TH6U30eNrcg8' \
    --invoiceId 'OgkYwtUcHAKLs8MC' \
    --payload 'DpbUPhUGAIHlFCSw' \
    --redirectResult '4AuwfHJdumnC2rgy' \
    --resultCode 'TncEoKamLIyO86jj' \
    --sessionId 'HGjHKBQfCy60Q4d5' \
    --status 'YcoC8nKsnxbMrGE7' \
    --token 'bxaqhmr614a3Y0Nm' \
    --type 'tPgfCQVISNufhv7Z' \
    --userId '8gaWmnDZQ4HLSlyz' \
    --orderNo 'qpX1hWiEg0SCVLYl' \
    --paymentOrderNo 'U9pml88UkKCJZRLN' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'waX4D4gNR5axUMEG' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'q8ZH8zdJPTvmwtTz' \
    --paymentOrderNo 'qg890R7RFgJOCoPS' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'qGJbeRdj3ZTFRgiy' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'uEwot3CUargfFXU2' \
    --limit '52' \
    --offset '53' \
    --sortBy '["namespace:desc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'CfXtFrJArI2e6ztq' \
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
    --appIds '["MGuiy3zBhu2iwFss", "vMs10YThLRynukT3", "eu856SNgZSo2RtV9"]' \
    --itemIds '["KkJMFnD091Wh8ATQ", "CrXhHK3oJK5NWP4v", "aF4QGcYwwlyR5aLW"]' \
    --skus '["a64K0850TN7DVrv9", "Yv1Xkhryxm4NT2KC", "uRgiGonqLqHDvHmd"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'pRsUSaYwqTuZz0xV' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId '0ayiP7cBIgjZL1PG' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'JyKC8ghIRZTG21ej' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["qXq6MAoBqHHI0WEQ", "luQLQwjIXbS8ajtJ", "duqmTxo6MBaUZy7C"]' \
    --itemIds '["hNVMhzp6MuMgVpHa", "3mVJbVfiH7W0yWl2", "aQjZ53RsX99G7hPA"]' \
    --skus '["OcB5KvBGdctkBLMS", "P14fCeJRJ8NNZW6o", "V0agVq3aZun1OLGr"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "GyQIUZJMqKcPvN40", "language": "Bke", "region": "3CvFwAMTnrSpB2bw"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'rTzEczQT65Erpazw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'EC3SVLFTxLj9l2X1' \
    --body '{"epicGamesJwtToken": "HN53w4IMDOuyqGFa"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'eEWXI6NWrJJZFRHC' \
    --body '{"serviceLabel": 14}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'qZRhlPlSu8CxQQbs' \
    --body '{"serviceLabels": [49, 6, 87]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'jrHWOgvO5LlE3Jbd' \
    --body '{"appId": "duwkGEbZ1NqMh0WW", "steamId": "5Ndw1ZZJZPPGF6rB"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '2DL4OvKWFaCd7rKb' \
    --body '{"xstsToken": "jJcm3OMWDUoMLk14"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NRkNiXFqQtgD3z1x' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'mvQH9T4wgYYfPFlH' \
    --features '["TfnMNrpfb7kYtXk5", "vWtb2fcXO9JfAB8A", "txRiHxNznqvvqakl"]' \
    --itemId '["FqsaAElEjXnL9Kfe", "YkZkfteWwtIazRYn", "q9G0iawzAMuu7CPf"]' \
    --limit '78' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PrHCS4DpgnjqJGvE' \
    --appId 'Bv8TxfvK8fd20dOz' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'PRcNc3JMvg4D4Ezu' \
    --limit '14' \
    --offset '91' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sS0UK2gVCyLD6AyP' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'Pry6xuDzmn5oAOBt' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'GUmpIp2daVTs8vhM' \
    --entitlementClazz 'MEDIA' \
    --sku 'hGEIlptKEME9FbZb' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hRrB6VcfhhzFc2Y5' \
    --appIds '["5dzPIybw7ay6WNvC", "0O8RKNQn0XoPL0Z2", "vPMIzklfoYaFdvna"]' \
    --itemIds '["QENfhBXPUD5cMp2e", "Na1i6soBOByRejHD", "KYYe2xPEXpWUU4Ql"]' \
    --skus '["9yVZIbcKjKfQYwDY", "o59xRf5MtS1IJD5R", "f8MEORCfDY6g08FX"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ywlnOWdNSf0TqcBy' \
    --appId '4YZJv8IM9be2tkGV' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'kiGdeVLXFNamqscq' \
    --entitlementClazz 'MEDIA' \
    --itemId '3rfmcmqt4bNM6q4c' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Mfd4IPgRwsc7oYls' \
    --ids '["bcOSJ0zytWoYsR2C", "QeoBGyQ72UAEIcWm", "fXghn7C6PRco8eeW"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'eja2ac1QqrysUVzj' \
    --entitlementClazz 'LOOTBOX' \
    --sku '080deyiwoimLcBIs' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'D082cvvjp9QiahWV' \
    --namespace $AB_NAMESPACE \
    --userId '0I5Co8ad1b3a2yxj' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'kaSZoDoVjPvWK5r0' \
    --namespace $AB_NAMESPACE \
    --userId 'WG985SDfO27ZAgzX' \
    --body '{"options": ["jN6HlGj2mReWQywT", "9DdU1hsRoViGfB2A", "8R1k3XHrJRPpbTl7"], "requestId": "WFvyWftKVteUHVMi", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'PNQpmwFOBErZE4oV' \
    --namespace $AB_NAMESPACE \
    --userId 'oxwQbfAFoFxK0Mht' \
    --body '{"requestId": "l9mmrFWSqz9kElr8", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'pEDRsoh873VcLfZi' \
    --body '{"code": "resYGmf67DsVvqTS", "language": "Ts-UiWx_YS", "region": "nlffWxCuimH7AuJw"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WLNEQKjFzlrjyBUx' \
    --body '{"excludeOldTransactions": true, "language": "fbLQ_059", "productId": "Ezbbgt3gTaKarBgl", "receiptData": "XLNbtUlHohlAYW9I", "region": "aCPnLnHSOLr3leTS", "transactionId": "1W8DyLhHLxupy9ul"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '4GbxPv4Lh0WSuo3G' \
    --body '{"epicGamesJwtToken": "u2qT1OKNswNQJkvN"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'paMBkedCnwccK2yu' \
    --body '{"autoAck": false, "language": "uhDJ-LyQv", "orderId": "ceVKtOdkOokbsB4X", "packageName": "tMrtWKLAxY2h19uv", "productId": "CD4WPZuqdvaukS92", "purchaseTime": 11, "purchaseToken": "gHCvHERWVhZVeZZt", "region": "ORBmZaL3N2hsxFCi"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '1inm9apD48b9lVfY' \
    --body '{"currencyCode": "1vR2iCjtkV028iRw", "price": 0.8512621167732876, "productId": "1gwa70E0bX7uGjzL", "serviceLabel": 29}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'SVT4l0FiVjkB3wy2' \
    --body '{"currencyCode": "oUgrOnEqkLMcxu7C", "price": 0.5934470831417136, "productId": "znhMVc9cnWRGIaak", "serviceLabels": [61, 27, 93]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'uBtDoau09rYIOVwt' \
    --body '{"appId": "CrnACRAnOphPt5GH", "currencyCode": "LHsU7YQoiftUUOD9", "language": "UbO_mVek-eb", "price": 0.05815948324870024, "productId": "V3shuoZPGI2pMmZp", "region": "sGYXSmoNKZvtteRh", "steamId": "Y6Ihbz88BCUa96dT"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'hcipo7rySL9M5OH1' \
    --body '{"gameId": "rpgBRaMhaW4DyjQW", "language": "BbFE_Thta", "region": "V5J0tGWVPPw4lkB3"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '8HnBy8nBCasW75IU' \
    --body '{"currencyCode": "wN3wuIaffX0feMlA", "price": 0.8875904130368163, "productId": "e6MPdU8Z6RyugBN1", "xstsToken": "EIKeV1VIjY76owUA"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'IWMQSfJgSWrAExnd' \
    --itemId 'XjFa53vhR9bm391W' \
    --limit '42' \
    --offset '50' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CSvxroHyCZJ49ylX' \
    --body '{"currencyCode": "71NHoJMtJzMC1RJ0", "discountedPrice": 19, "ext": {"w7FQv5B0Fw3Yp1n7": {}, "at3fPUGYrEb6q94Z": {}, "2sexqRLROr0JTaHD": {}}, "itemId": "heNLev55eqqxt9ai", "language": "xROa-KJCq-Ms", "price": 86, "quantity": 21, "region": "yyjSnjHF9PClHCu0", "returnUrl": "APGQyCBa77rDVYp0", "sectionId": "oBMsrJjoyk8QGdfu"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RutUDgEmyAuP9a2g' \
    --userId 'GH9gP2gG7lXSzq7y' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 't4OaZvkQAgdF1vzO' \
    --userId 'K1NDsYVNRkVQQTAq' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JWycihAMrVaQFxpV' \
    --userId 'TQXpQ4c0pXCWIyDV' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'TR4qRJTcibb4t1HR' \
    --userId 'CWLUOlZ9ZnbR1ZZz' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'OmsDvztbRmmytFNY' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'rKwOe8zLx5OlxjhA' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '49CsSt0C002mxC3Y' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'zXyKk07soSbC4U72' \
    --language 'XxyrhqmFXyMjclQT' \
    --region 'x3yFWTSnYkzSq1et' \
    --storeId 'plNFSSQSicg2Pppf' \
    --viewId 'vJmeOBL7tiAuVFfQ' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Q4vcFlCokhZAl7yH' \
    --chargeStatus 'NEVER' \
    --itemId 'kwwSACSNtwhmN2r0' \
    --limit '19' \
    --offset '14' \
    --sku '2gH83votXpolC1sS' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SNKQcog6Pm9yyqo1' \
    --body '{"currencyCode": "6MV3ojTVOfznJxUh", "itemId": "TVAVSTLLdQNy0zF8", "language": "Qt", "region": "BjYB7Vr5xy4D8Fse", "returnUrl": "pJTaHAyjrnFZhXQV", "source": "HpvCbLZjZsBdqZzX"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'F9HTtzAE1NV2mbiW' \
    --itemId 'pX2WLlpZ2Lk7jMHv' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'E2OLIlCLJpBSsVVM' \
    --userId 'DgbxfB8NvnKU270A' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qOdIX8kDTFcYHHEs' \
    --userId 'NxxLHV2Bjrdh8rsk' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TWD0JBrgi0nb6dFa' \
    --userId 'KPN5GG4y4Nl9Yt6D' \
    --body '{"immediate": false, "reason": "O2uHlLha1RYOncgd"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OriVZmLdaoN1m7RC' \
    --userId 'sCaO4fAmGG2ZIX92' \
    --excludeFree 'true' \
    --limit '68' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wjmRwtykOf1XOOHg' \
    --language 'eELzFzlMjWSyXkR4' \
    --storeId 't6Z4L74nZhaiweB3' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '1sqV1L2wdTvh01nD' \
    --namespace $AB_NAMESPACE \
    --userId 'H1oRZWHSMGqFNGm7' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'MzwZCjHzlSHleQIR' \
    --namespace $AB_NAMESPACE \
    --userId 'KAUO9zhP1cQwb5Tl' \
    --limit '55' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'WPxiVeMCeXiFiHG6' \
    --baseAppId 't5rGdWfAwr8SLAAo' \
    --categoryPath 'p6qsZ1VOzgYn1A13' \
    --features 'ggW6NnM7b6uxl3ui' \
    --includeSubCategoryItem 'false' \
    --itemName 'MDbraweCB2NUL2g0' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '92' \
    --offset '74' \
    --region 'lFTRz18MEDTljFUL' \
    --sectionExclusive 'true' \
    --sortBy '["name:desc", "createdAt"]' \
    --storeId 'pkjH4NqL5E2fm8ZG' \
    --tags '1TgjxAC5kmsbyYRs' \
    --targetNamespace 'Hg2M2wJi42OgF6gn' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7MNlaNTruxqx2D2e' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '5jNGA5ZON7Y9MI42' \
    --body '{"itemIds": ["z4ivA08Pxb9Mgbye", "gs6sUS6Of5zHtiPf", "6PEuDyGOiZYCQ8tX"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE