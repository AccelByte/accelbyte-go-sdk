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
    --body '{"context": {"item": {"appId": "gBtxn7LXH9SGkR7C", "appType": "DEMO", "baseAppId": "Z4NfoAhJhKSEDeJ3", "boothName": "XGXGcJ8TDeqMaoRZ", "boundItemIds": ["qV34nrLzBjGLMBci", "nPJr2n2E35heGCoK", "dQciZph5vMqs8zNm"], "categoryPath": "bNhHZepk8Zlg0OJp", "clazz": "grlj0pWbHSQv7I8G", "createdAt": "1998-11-07T00:00:00Z", "description": "sIfel2T4nWarqYdB", "displayOrder": 2, "entitlementType": "DURABLE", "ext": {"qQu8A3TazAKTbhOI": {}, "oQHwmMAGKMN8KqVO": {}, "zjx4i5E73tkU6ONE": {}}, "features": ["a8no0s6kYTTwIPMB", "MqRmi1bKWSkBzXBd", "Xwl2D07VMFhVXpdB"], "fresh": true, "images": [{"as": "vKBzsO8OSdvTN8OY", "caption": "fujQWcQhGV539sLs", "height": 87, "imageUrl": "9LffMZ7e5g2hKlZ5", "smallImageUrl": "EpAclXgKyIzxLalE", "width": 39}, {"as": "6Ejd8Q2REZKw0rpc", "caption": "BTsYRb55kYJN663W", "height": 31, "imageUrl": "gcBG5L0qzcnKQR4L", "smallImageUrl": "8uqqMfWQJGsfuHIc", "width": 33}, {"as": "NvCrTtyh8lFm9Woj", "caption": "8EZGZkkowKR9dLAJ", "height": 68, "imageUrl": "vWv8zxlpwvD1udZL", "smallImageUrl": "PZpHM0MaWwobunAh", "width": 78}], "itemId": "nullgStmXCAJk3ke", "itemIds": ["Ko64zWyiNFTVSllD", "ZHE437TlC4b47tei", "IbMXCvm6m1ZPLslw"], "itemQty": {"IeQj6qUem3rqVpLR": 88, "kQN4i5XnbpAMwg07": 16, "WiOzcolmFrsCQNxh": 99}, "itemType": "APP", "language": "K4DfyFQaPQBpxPqt", "listable": true, "localExt": {"fy5ikGL7ZflfTwKo": {}, "684IyQsGxHXqODPB": {}, "vIe2Ts6mxcG4SVrv": {}}, "longDescription": "MpetColTQZQKy0y8", "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 40, "duration": 38, "endDate": "1995-12-16T00:00:00Z", "itemId": "apAZ3TFlh4mH540y", "itemSku": "7YY2T0yDgZZLbaNF", "itemType": "hAJIGK6Y1Mwp92As"}, {"count": 38, "duration": 84, "endDate": "1983-11-08T00:00:00Z", "itemId": "zzcUdKrKMqhAJ4fy", "itemSku": "tOLBjuUVTYz2uHNf", "itemType": "Ckl9f7pjshCd56Jy"}, {"count": 19, "duration": 92, "endDate": "1995-12-14T00:00:00Z", "itemId": "nKIn1LvLKDoRJlHC", "itemSku": "ajUKDvsZcoAHqmUq", "itemType": "Uqff6cdW6mZoX9rS"}], "name": "1dRxOmYYfd3z99b9", "odds": 0.4067287027024693, "type": "REWARD", "weight": 42}, {"lootBoxItems": [{"count": 59, "duration": 10, "endDate": "1980-07-01T00:00:00Z", "itemId": "MWhggZPa0hF46HNZ", "itemSku": "0tJf6Zh6SXYOZfhx", "itemType": "YhhPVgepAPafGPq3"}, {"count": 40, "duration": 13, "endDate": "1983-03-04T00:00:00Z", "itemId": "EEoIViXrjn5YYNTn", "itemSku": "8a6VrU7GGHYS4kG8", "itemType": "soGIN4pGSyWxv6Ws"}, {"count": 4, "duration": 92, "endDate": "1977-05-24T00:00:00Z", "itemId": "6GgmRvsrlNUnfKZT", "itemSku": "erBmxXcBHYKiO0L0", "itemType": "kkOILYjrFIrNTksF"}], "name": "lA6PsKvpD7vzVMH5", "odds": 0.4064746386249085, "type": "PROBABILITY_GROUP", "weight": 72}, {"lootBoxItems": [{"count": 92, "duration": 69, "endDate": "1976-06-09T00:00:00Z", "itemId": "ABklQ8x31CHU5YVN", "itemSku": "W3yVBVMiuQpfiE8n", "itemType": "77AUcw842XC317tT"}, {"count": 49, "duration": 34, "endDate": "1985-12-27T00:00:00Z", "itemId": "6YBhi8ixvCIvHE0a", "itemSku": "uY35rwRAhVkqw0Cr", "itemType": "hV0eM1MmXvlFrzla"}, {"count": 90, "duration": 61, "endDate": "1984-01-23T00:00:00Z", "itemId": "jCx9b85SkGCpjrTe", "itemSku": "4nqvOIMnRisvtr4U", "itemType": "3X8q52reLTmVcsN6"}], "name": "ZPyvvCALhTLSt359", "odds": 0.8158171438959513, "type": "REWARD_GROUP", "weight": 91}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 47, "name": "tWE2OeVwTZn5TGyl", "namespace": "M0RogguXGuNwotvd", "optionBoxConfig": {"boxItems": [{"count": 55, "duration": 99, "endDate": "1996-12-19T00:00:00Z", "itemId": "NtMujAAUq3nxZSSd", "itemSku": "BuFlZ2lbuPS2oif2", "itemType": "VVCbjvdDNgK3J2Pl"}, {"count": 28, "duration": 19, "endDate": "1997-07-15T00:00:00Z", "itemId": "0osZdilvBbcJd6TH", "itemSku": "0S0WoXs0YZKbAO4u", "itemType": "dmhVELnPCaIZmzbb"}, {"count": 76, "duration": 75, "endDate": "1974-01-08T00:00:00Z", "itemId": "BBPanlHM269ThBQQ", "itemSku": "bzX9OOleHD3AaBei", "itemType": "8gKxqXdB0NL42Zq7"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 51, "comparison": "isLessThanOrEqual", "name": "PsxwuS0aGD5zNF5P", "predicateType": "SeasonPassPredicate", "value": "nrDLhaBXgeSn75sp", "values": ["aHUTkRrWA6G25hYN", "RIjCJjXEbJXNAlCK", "yBIdSND9HMYBP6ys"]}, {"anyOf": 36, "comparison": "is", "name": "Zcup63KWCmR9gyrq", "predicateType": "SeasonTierPredicate", "value": "QgpeRC9B7JJXpIYP", "values": ["PNNjDPcwcb41cP6h", "CG9kfMRSM02DfRTV", "7RzyKN9pT3SeygaI"]}, {"anyOf": 18, "comparison": "excludes", "name": "cvRulpI0HsKYPvP9", "predicateType": "SeasonPassPredicate", "value": "kd3KoSgfEcAL0sU5", "values": ["CCsasq62jRLi2Ejc", "OlV5MOccDYam56by", "qxMQwVC63eNoUoCP"]}]}, {"operator": "or", "predicates": [{"anyOf": 41, "comparison": "isGreaterThan", "name": "q6CwRj3bl0qSSSpe", "predicateType": "SeasonPassPredicate", "value": "KLZ6hSBbUl6sUgbk", "values": ["vKeix7YRhhyrakMa", "2HfremvisZ32K1OR", "eUEhkrLooUnXHr1S"]}, {"anyOf": 36, "comparison": "is", "name": "eJQpOOE3x4y98DFs", "predicateType": "SeasonPassPredicate", "value": "tzXAKFpcQaiI2PEr", "values": ["p7BcOTO7Gh2e297b", "VVTuF4DVifjlBHqG", "ZL168CnWpSmTpzkl"]}, {"anyOf": 58, "comparison": "includes", "name": "wDBNMkxKj8b647Fm", "predicateType": "SeasonPassPredicate", "value": "CFoixssFAfNtweNo", "values": ["zbFkrTsY8hSpqeXQ", "TtDwqfWJOKCOAUV0", "Rci8rjisRLR8LCbz"]}]}, {"operator": "and", "predicates": [{"anyOf": 68, "comparison": "isGreaterThanOrEqual", "name": "6cicE1WEMd9VqkFo", "predicateType": "SeasonTierPredicate", "value": "O8VqF6E7OE3mgjTS", "values": ["4nayAoLo6QT4arOx", "L48ADRDlluWsjDtU", "ytIzwQfpvlPHklie"]}, {"anyOf": 2, "comparison": "includes", "name": "GhJSp3vs6yhY1j7N", "predicateType": "SeasonTierPredicate", "value": "YAljfkKQnyRecWLs", "values": ["XdqptBMNRtkvqQyJ", "068Bb8DZh9WarZOK", "sJYm8EST5xR836SC"]}, {"anyOf": 87, "comparison": "includes", "name": "mUsZaV1yNRdLhr3C", "predicateType": "SeasonTierPredicate", "value": "o5ceRpqpIQKntiHQ", "values": ["y7ggy59BCe3sjAcn", "m5GsoD5HY4ImAdeu", "q5LhqsyL1KnGuDnn"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 74, "fixedTrialCycles": 35, "graceDays": 71}, "region": "gEEalXIbW93zK0QE", "regionData": [{"currencyCode": "Q5ESJzknGG2NInKQ", "currencyNamespace": "mZdkPQFZz2WkHItV", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1977-05-30T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1989-08-15T00:00:00Z", "discountedPrice": 24, "expireAt": "1982-10-23T00:00:00Z", "price": 37, "purchaseAt": "1971-03-24T00:00:00Z", "trialPrice": 48}, {"currencyCode": "hiIiyPUDtF9mmMw7", "currencyNamespace": "xQPJXQHbBs7Oveoy", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1971-09-05T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-09-16T00:00:00Z", "discountedPrice": 20, "expireAt": "1994-11-12T00:00:00Z", "price": 71, "purchaseAt": "1986-08-13T00:00:00Z", "trialPrice": 17}, {"currencyCode": "i0tW1iSEuBDPNGv1", "currencyNamespace": "HkrUWLNe1Mn3Da1j", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1988-02-24T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1991-01-28T00:00:00Z", "discountedPrice": 17, "expireAt": "1995-03-20T00:00:00Z", "price": 40, "purchaseAt": "1998-09-14T00:00:00Z", "trialPrice": 86}], "saleConfig": {"currencyCode": "6M9j6rpJ10z1W451", "price": 15}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "nYOVFYurFdd091Jx", "stackable": true, "status": "ACTIVE", "tags": ["KsYC9hPYodiJbLI4", "FxOnhZm3fUzCq5yL", "BkrJef4TpDx8HQvf"], "targetCurrencyCode": "z8mTB4g6tr3jK0x4", "targetItemId": "ZwUfQhkmthIqZPe6", "targetNamespace": "ONXfFwnHLXTq9LvZ", "thumbnailUrl": "fepNPcQhtcMT3MUx", "title": "1jDqbrX536Avj4iz", "updatedAt": "1996-11-15T00:00:00Z", "useCount": 97}, "namespace": "VHS0bRAieNtzv5NB", "order": {"currency": {"currencyCode": "DFNHz8dmUMu3vB4b", "currencySymbol": "6if8NiX34Vf2glJg", "currencyType": "REAL", "decimals": 34, "namespace": "btqjg3x6qEX1dtBx"}, "ext": {"ghkNmvEzERwPwBXk": {}, "dIjmXjVliwb0eAyr": {}, "cMluFVyDi9p9agZ3": {}}, "free": false}, "source": "IAP"}, "script": "le0UZIjbRBmdE5Jw", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'sNJ8tyyHNK6jMR0v' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'IntkCqYUKuKs7Mwb' \
    --body '{"grantDays": "8rJ5zFcVcWkcv7uS"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'C1Q6UssMGY72Mjab' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'IW8vhNtNhst2enbI' \
    --body '{"grantDays": "FlYUQqXoC7dKilj1"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "TQqoXU9MBki6lH6j", "dryRun": false, "fulfillmentUrl": "0K84hXtyb5TMZmkq", "itemType": "CODE", "purchaseConditionUrl": "tkCypUih9RBAP2Ov"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'k6YTO7RwNOwjiLiw' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'I88Baus5p540j8rj' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'LCdIdFfTYQbmzsmR' \
    --body '{"clazz": "HXVstn7rWye9UZLv", "dryRun": false, "fulfillmentUrl": "iBQC8Ex6TjWTo5aM", "purchaseConditionUrl": "x6Bl0WuOYHUtEI3V"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'GHzYF2OTALduV9Yu' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name '1BwWdDYcleFh85uc' \
    --offset '62' \
    --tag 't1Tr1Fdw8ZKLOryD' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XhQIk1ztx3BBZvdq", "items": [{"extraSubscriptionDays": 86, "itemId": "7gqxtTWxwsr8aeJx", "itemName": "z4UdrEggfKps4xKl", "quantity": 56}, {"extraSubscriptionDays": 50, "itemId": "hlugg9Us5ANFe9Fm", "itemName": "v08WUGHLpHaLgpfH", "quantity": 42}, {"extraSubscriptionDays": 60, "itemId": "eqDBMhQuIks6C5Go", "itemName": "Wef63JBJ1vR0iLF1", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 55, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 65, "name": "wo1EYmFIOQy1YJWz", "redeemEnd": "1990-03-01T00:00:00Z", "redeemStart": "1998-05-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["64ZTPYG1AU3e2LXb", "R02EAP6DJFxMS2PM", "dZbBRVQOP5dan1li"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'wqBLn25cNnzicznp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'nJstJ2VLbjN2AcyR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2Tts6ApXjPp1Eeqn", "items": [{"extraSubscriptionDays": 41, "itemId": "dTxLskSs68Oj6Fx8", "itemName": "myBwChzddjWI9Kqo", "quantity": 99}, {"extraSubscriptionDays": 35, "itemId": "uvK6xFt5vFl5qgaF", "itemName": "71vqKJzqoQPUgM9m", "quantity": 93}, {"extraSubscriptionDays": 20, "itemId": "axRhMB09bxj0zAwx", "itemName": "5dplMZC75QtSxVWO", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 25, "maxRedeemCountPerCode": 63, "maxRedeemCountPerCodePerUser": 71, "maxSaleCount": 48, "name": "wdXO5E1EnkZBpak2", "redeemEnd": "1986-02-07T00:00:00Z", "redeemStart": "1975-03-02T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["pFpocHvVX04M5GI9", "HPA8xq9OFGlq9NAu", "ikIzBGZpLVHwxKeU"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'xqpdTYvUEAUmnxVV' \
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
    --body '{"appConfig": {"appName": "5tgott1hynQ8ciU8"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "SHyYTz8sh4EDmi9Y"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "avOrcRQBSoHvyb05"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "vHQJknNsV6OhVlLp"}, "extendType": "CUSTOM"}' \
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
    --storeId 'eoOBaw7tafwkFhtL' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'XKpJ6MrNKR2LNGo1' \
    --body '{"categoryPath": "9y9zRmmtVOvu7TUm", "localizationDisplayNames": {"eZk9tBk5XuJd2wLA": "hfYGhh13BxUPZy2z", "P8aVQJeXS6UPQDCe": "sHOwJ3jx3Ca8Pmuh", "JmLEblXXHonkVFwj": "B9YIBfzubQ0LnC0f"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'MqcXgrJz0Jv3agD5' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'P3ORtLwyccnKThX8' \
    --namespace $AB_NAMESPACE \
    --storeId 'tAmTpnTpb7KXzmaY' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '2HBzUypcZmZr4ECv' \
    --namespace $AB_NAMESPACE \
    --storeId '7AOfS0Pr09ct80U1' \
    --body '{"localizationDisplayNames": {"0s37rM60jkmgFH9Y": "ExRiNjKzSXhsbkVf", "lBmodtB0TzBxsidK": "WsIOnH2O5VqsIXh2", "cgML6gSX3Z5f4jW3": "tnUuJmROIVpgoH48"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '1UuH20TMUUQxJwO6' \
    --namespace $AB_NAMESPACE \
    --storeId 'E3xfhlGU3StXiwdo' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'ZDSOLuDtbRiWawpG' \
    --namespace $AB_NAMESPACE \
    --storeId 'x97QZVSfBXdwpBOu' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '83KRZgjAT2WF8QA4' \
    --namespace $AB_NAMESPACE \
    --storeId 'bVGbgTrttC0LjoMA' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'cvBAEnCSDmrEhbbr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '59' \
    --code 'XG3Y5rcHB3ZApyBK' \
    --limit '20' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'jFGb2ShGS2tEVf56' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 75}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'PKe0AJEwKcmvtP34' \
    --namespace $AB_NAMESPACE \
    --batchNo '79' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'SYkBiASHDcqZQvBA' \
    --namespace $AB_NAMESPACE \
    --batchNo '70' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'yB7lXyjL8tBhJ2XV' \
    --namespace $AB_NAMESPACE \
    --batchNo '51' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'HXq4wPkAnI6eU6Y0' \
    --namespace $AB_NAMESPACE \
    --code 'M0r4QncZWM8YXhZq' \
    --limit '67' \
    --offset '13' \
    --userId 'S2bBoD7odCqDteIW' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'uvsT5XQsBkv72FM4' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'JwT77drrED41dPik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'JE8Cq8CgvQlkrVCD' \
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
    --body '{"currencyCode": "C1ctRhkwOUvlcaAz", "currencySymbol": "u9Jqdru3pqRlxUj1", "currencyType": "REAL", "decimals": 24, "localizationDescriptions": {"665tu5spF8P8zdGO": "4qE3T1utiqmqVENd", "klfY3IN9K4GRDbLk": "uhUgppKRQPn3GFn9", "BIfMKu3RxOvxBcIU": "2ax8ULkKkd6piCsK"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'bHqynQuhTfeMQ4Kr' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Du9tly58mvhJ3qGK": "8NhnT0f37wxJy9nA", "0Txcf3NDSuDvHtm9": "rZfoL6NfFQCkOUfa", "c9YCEwkTx30pZeMl": "UOp1jELHFxX29Gpt"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'hXQPGZmfTf5sT3pp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'JRxaWV7RM40ksME8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'LHRJxuApnJFBkOe8' \
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
    --body '{"data": [{"id": "MaGfrXwFGYlEMuxs", "rewards": [{"currency": {"currencyCode": "mxMq72uzcUlRPrpK", "namespace": "M8knM7pSyf5veFx5"}, "item": {"itemId": "MezFoyWYZwKevsJk", "itemSku": "TQAmezYwVlGGXMVv", "itemType": "T8EYeDziemv6fHXW"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "X11CddUq62DiV4oC", "namespace": "VJfq6AUPQXtMnm7b"}, "item": {"itemId": "x9PJw652KU45GzoU", "itemSku": "Oag23f3YqdFPk2Wa", "itemType": "0eCb7vpW9OEoayOV"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "s2Trdrf9OyRxkr2x", "namespace": "OFY0b94EgnMkxEAo"}, "item": {"itemId": "qcl0KwcwELn2r6hc", "itemSku": "p0F0vSzbqa0ZgzmE", "itemType": "AblTrEMeg8lXSDoz"}, "quantity": 16, "type": "CURRENCY"}]}, {"id": "DKEOErqY9HiPr7p7", "rewards": [{"currency": {"currencyCode": "FbortiIvN6PTG4p1", "namespace": "tQlitDj549QaMLEr"}, "item": {"itemId": "Vdf1zWa7GzqZBci0", "itemSku": "oxixrAL7GkgswG0g", "itemType": "tJ2xCgJiQNcAvZJ4"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "KkFuJR35u1hIYZh1", "namespace": "EK4b8DHbmYQKoiF4"}, "item": {"itemId": "LxU1EqZjPO2bCo1j", "itemSku": "I6NUxYusx2XeP0qX", "itemType": "9uMJRyGXTCOS1sYb"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "44CSg75lciINDM11", "namespace": "OTjlhknNjAqB7uIY"}, "item": {"itemId": "Hz1BQCdyZgJFvyNI", "itemSku": "aiY1JAXEB5pMBUnc", "itemType": "hxZUtaZ9m4s8YdIA"}, "quantity": 16, "type": "ITEM"}]}, {"id": "OgjBop0nHdRg2B4o", "rewards": [{"currency": {"currencyCode": "2MkNl4povgXcx3wN", "namespace": "TCBPXXxiUM2GNU8i"}, "item": {"itemId": "MezYL1D1ipxftswI", "itemSku": "rUfbOWvNswqiUwR0", "itemType": "XthIflVPAIrJvhkv"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "aYZklS1bbnHuZWFZ", "namespace": "tQi3cEFD3yVbeMc5"}, "item": {"itemId": "FBVCCE6kWQnRhlxX", "itemSku": "wXb8mWaEvYgnOSwp", "itemType": "OGupK9KX0N6sPDXE"}, "quantity": 5, "type": "CURRENCY"}, {"currency": {"currencyCode": "baXxyKr4rsBN9oWJ", "namespace": "uSL1pPkrOfbwHkSU"}, "item": {"itemId": "TDEIk90ljzYZXwJ9", "itemSku": "uJHVHItPHeAHPtH6", "itemType": "NKCxMVsCXyFW1U1Q"}, "quantity": 5, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"vAHRjoRRrwTMDUaT": "LMfxcHjeRRD2lPdX", "DKqk5d6BuhiOMAlJ": "kkKXLlqDR0ul1rQR", "cGwBF5wGgPYgPp9E": "Q4EUmVA5mf86IR6Q"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"RCVjstdOjybp4cT3": "zfaHklI01Lv3hyHs", "RNftVRPpdkWmOLWR": "acZ3l9KGB8v2dzyn", "iM7mlhIanRiQBjTs": "yrQNNQxvcbIZBR7s"}}, {"platform": "XBOX", "platformDlcIdMap": {"j0T64e9iWxWZsVLz": "JbQL7AsgLpeE2fgW", "idg8BCA5j4YLfnF1": "GZBvM6rYaCBo5fYx", "HbvFD7qJ67OmNQHZ": "3y5DmWviqNEzqZRX"}}]}' \
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
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'dLDUtZc563NqIbDq' \
    --itemId '["UFMrCG5wMTVe2fOy", "6hM9v9byHHjwsjgJ", "7Vx9bPk3hV1ie9gY"]' \
    --limit '75' \
    --offset '10' \
    --userId '0bEE6hUMgfcm8w2x' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["RnsABxp193inPNl3", "EAKoxSojuTilgN6X", "IioxB6jvpUSYvzkT"]' \
    --limit '82' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1975-06-25T00:00:00Z", "grantedCode": "0v8yYQDsNyBuqO4K", "itemId": "ftugIgQXo0hSaOTu", "itemNamespace": "EJHlKW62ZFCw5BPY", "language": "By", "quantity": 49, "region": "9eMc8EDepp9AN66f", "source": "OTHER", "startDate": "1975-12-21T00:00:00Z", "storeId": "PUDqmc2kne8kOaFK"}, {"endDate": "1977-12-18T00:00:00Z", "grantedCode": "iDG0Umyyd9OByGCN", "itemId": "e9zxipwMajr4h1LH", "itemNamespace": "IqQw0dMjH41OJfSp", "language": "iXd-Duhz", "quantity": 30, "region": "8UVptzoniMltcDZa", "source": "ACHIEVEMENT", "startDate": "1982-12-22T00:00:00Z", "storeId": "ssEfbNYV0zbhPFTA"}, {"endDate": "1972-01-10T00:00:00Z", "grantedCode": "Z1QMlfOHhoGTw3W9", "itemId": "dYTOhEP2MtSM82jr", "itemNamespace": "irn76kapOsBAvm5Y", "language": "mL_igaR-JU", "quantity": 73, "region": "8hSeWsNzqIN1w1Jh", "source": "GIFT", "startDate": "1978-11-06T00:00:00Z", "storeId": "uo2NM9dQY3V81gmB"}], "userIds": ["ZvTXR2iuMT5olfu2", "2NhirZCHZw6pEmCH", "nrCWEZ7J1DIBx2cJ"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["vt18nFgNMdVcKGR9", "Iha5MbDUgfDpLZwX", "7mxIobcJ6mY9oxz1"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'IdXsPe30g9dusaiB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '94' \
    --status 'SUCCESS' \
    --userId '9VnXndaqKuAQrmJK' \
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
    --body '{"bundleId": "bo0Qie5TV5e3fL8X", "password": "EYNDpcncL6MzpBbL"}' \
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
    --body '{"sandboxId": "iWqf6hTXc322cgfx"}' \
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
    --body '{"applicationName": "1cFJmVHY28BLFjyD", "serviceAccountId": "XQGrKsgojMMqxJC1"}' \
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
    --body '{"data": [{"itemIdentity": "wNC4sAq3jg2p2Ca6", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"zlNih1PH8HWqOPLY": "aBdZdTUx5ua2EAOH", "QeQ4QRUjMJbBtB4L": "msZ4FzhFCM2QsiU6", "HPt7vzo0eXHwQwG3": "2nV1j0GJtUmSrBHw"}}, {"itemIdentity": "8OfdJKnfkfpbp2CJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ba174SulgNhQjbCR": "PS73oR4IwYuX06iF", "1K6ff7qcO66siZEu": "SqqeqZNTOn3JFibR", "cbdsJg19ZnXTxQjT": "lON3Q3QuQqD2WOwf"}}, {"itemIdentity": "eU4k8vgL8T9kjpWw", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iHGnYggKVq6Sgs3Z": "VFH65ETVb2T9jQof", "kv4a8ERiYuwAsSEF": "gNMZY8AcGkComl9v", "LKJlDTo9YRLFLPKO": "kLhWy8TBhmCb01Zx"}}]}' \
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
    --body '{"appId": "jxwtakxAb7LMhOLz", "appSecret": "4oPC2cSjFJ9CLevv"}' \
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
    --body '{"environment": "XpLmVAiOV9BPfOpZ"}' \
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
    --body '{"appId": "U3lgsPsMxWfnRAJo", "publisherAuthenticationKey": "3LKEncgbaPvhqw8b"}' \
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
    --body '{"clientId": "PmNkSJab7Ue40ffd", "clientSecret": "5kf2QXTpnIUm0Gxa", "organizationId": "0fqMyDSjoX1iKZ5x"}' \
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
    --body '{"relyingPartyCert": "jRjLD3a1Rdh0QCGa"}' \
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
    --password 'BNwPh8QMWoRkTbSJ' \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'PgAirWBqrWqIf2rq' \
    --itemId 'uSk0BJ8kRI9CJoze' \
    --itemType 'APP' \
    --endTime 'SedDVGyFUhpUsnij' \
    --startTime 'c00gOaDmDYuWacJq' \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'Bfa5LjxoIGrHrAxu' \
    --itemId 'rvnSyoOdRxOJkBsj' \
    --itemType 'LOOTBOX' \
    --endTime 'mCV7jA4b0RuwCAlo' \
    --startTime '0OvUEud8CtPLnQ0k' \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'wm1KXfZBK6OcO8tA' \
    --body '{"categoryPath": "js220uWxnKzQtFjo", "targetItemId": "DMP2c4oawR2Zw4Ip", "targetNamespace": "JA0361zSzyysDy4T"}' \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TEkHuLxxKH4iQoet' \
    --body '{"appId": "8wCqUzdO8BKACvVE", "appType": "GAME", "baseAppId": "83bD5pVck7h8kY9P", "boothName": "tlGV3fJKHtvvtuZ8", "categoryPath": "eLJOujtCKhvDjx2G", "clazz": "7SRwz3j5aNBzcGr6", "displayOrder": 98, "entitlementType": "DURABLE", "ext": {"2lRq9XTa7xbgiY99": {}, "HzaRqYErdpquwPjt": {}, "tORP7W47vyURlMNj": {}}, "features": ["uzO14fhJG1IKRWVr", "6mFaqe5TlYxtPEOq", "a6PCnylB5G53b8eL"], "images": [{"as": "EjRAztFhKemTaD4b", "caption": "jRUaot829IhBXFRN", "height": 71, "imageUrl": "AYRczGzhbcjlqeHV", "smallImageUrl": "t7DHntV9vNgAWB9v", "width": 34}, {"as": "FdXwzPqiETJ2w2L3", "caption": "mX6OohhlWxXrZYRE", "height": 88, "imageUrl": "ijFCWJ4hQO3dB9gT", "smallImageUrl": "watqP2CASwoNWepu", "width": 4}, {"as": "qnlty7NTmhFysokQ", "caption": "EItyi9pluKGGTKBN", "height": 34, "imageUrl": "GrVsljKSRHCQIIhC", "smallImageUrl": "pyPCZws1tSD0VN9M", "width": 82}], "itemIds": ["jV2NwQaEx1Rsl1r1", "MmSG4Miij9mGZ4Nn", "UAk7gjck6QiYUzXB"], "itemQty": {"b5vJIQPBMjsCD0bc": 82, "8F6HD2EblYmK7skR": 5, "nOegpAngY8hN4E3I": 95}, "itemType": "MEDIA", "listable": false, "localizations": {"Q1sr9hW9LG5Bar2L": {"description": "MvGXVLLRawdieHf0", "localExt": {"oXaeys8RwlvUDjo0": {}, "u1rn29qmVypqPG3M": {}, "N9yyZxT7IUthG0hQ": {}}, "longDescription": "owWExH31263m4lrt", "title": "EtgpFSu4KT9YjNlQ"}, "as89bFtgT4GbKSf7": {"description": "vzRe6VyeYxCfFeOh", "localExt": {"bzRf213TTzulEeXd": {}, "aw6kAjkw65TbzeR0": {}, "M6kfL48PeKekvE5f": {}}, "longDescription": "h21be077S9Vti6UN", "title": "kPoxXR95hh18LVBk"}, "Qvz9eaGZR5khoPy4": {"description": "JjhoFallwbMXGpcM", "localExt": {"JI8Ruxnz8YtxIbJL": {}, "2QZSICgtMouzEIrQ": {}, "aT6F9mDEhS7ZPweU": {}}, "longDescription": "dC3B8SJY0KvxCoY2", "title": "jWUQmeGlfFTuekO1"}}, "lootBoxConfig": {"rewardCount": 38, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 75, "endDate": "1992-01-26T00:00:00Z", "itemId": "hlNDxbnjY8FySueX", "itemSku": "Wm1AXWtNkaOJgSNX", "itemType": "hz9k5aaQYUcKx5n6"}, {"count": 7, "duration": 15, "endDate": "1996-04-04T00:00:00Z", "itemId": "g0rWTkM9w1BGciJt", "itemSku": "qX17WtXwtGNswLOA", "itemType": "mwE6goIREKjcLAC3"}, {"count": 1, "duration": 10, "endDate": "1977-10-26T00:00:00Z", "itemId": "ivcOwqJqYvLWS2dr", "itemSku": "WKN5JuKXC0OLqQ2d", "itemType": "t1az5vbn2IKQVct3"}], "name": "Bu7RodE5UdveJuAq", "odds": 0.778346100899501, "type": "REWARD", "weight": 11}, {"lootBoxItems": [{"count": 9, "duration": 75, "endDate": "1989-08-31T00:00:00Z", "itemId": "eJT7DG5R9pajlipt", "itemSku": "K2txwGc3jgK5jAlf", "itemType": "ENcvz3GKaYfo5n1y"}, {"count": 37, "duration": 39, "endDate": "1976-09-02T00:00:00Z", "itemId": "9w1NFylHiO7oHnmY", "itemSku": "GvRlFJmDA2EiWKbo", "itemType": "VHMTVmzLnRSGnW7n"}, {"count": 23, "duration": 4, "endDate": "1977-09-26T00:00:00Z", "itemId": "5LicJi4Phx6Xi9xx", "itemSku": "ed6o3KECfYiKWbBX", "itemType": "QUtfcCeMphk5aBo5"}], "name": "D13AguEFxOq0P0jJ", "odds": 0.9155914451226863, "type": "REWARD", "weight": 62}, {"lootBoxItems": [{"count": 18, "duration": 95, "endDate": "1996-01-28T00:00:00Z", "itemId": "M05t4XRMrGTbfA42", "itemSku": "X7VA3lCqNFFihyOL", "itemType": "jup9e1GVCbbhIRHB"}, {"count": 43, "duration": 36, "endDate": "1990-04-03T00:00:00Z", "itemId": "VMaGmR3vW5IXdgVL", "itemSku": "DgRYpYZmUULMsZrS", "itemType": "21SkVtrrOX8BhU2k"}, {"count": 41, "duration": 3, "endDate": "1972-09-01T00:00:00Z", "itemId": "ptKMdpsfP0tYxggl", "itemSku": "GVD5PbyWaeMz9imM", "itemType": "Hxj792IgfnOk2SiR"}], "name": "1yXttGrAXvnf1zTa", "odds": 0.9722122614780732, "type": "REWARD_GROUP", "weight": 98}], "rollFunction": "CUSTOM"}, "maxCount": 62, "maxCountPerUser": 85, "name": "IG8xcJmtW3oFIYbK", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 99, "endDate": "1993-07-05T00:00:00Z", "itemId": "aqsajECRCGNXWhC1", "itemSku": "tgMpZ0I0hPKX2VtF", "itemType": "LyWzCUsr3ouc6bgB"}, {"count": 27, "duration": 50, "endDate": "1991-08-01T00:00:00Z", "itemId": "wC6gfyEIIHqhyIEW", "itemSku": "kwSQP5u1G4WwFf4j", "itemType": "c1OVvQTyR6LQOP2C"}, {"count": 94, "duration": 62, "endDate": "1985-12-12T00:00:00Z", "itemId": "UAX5AXOUCrRGNjGW", "itemSku": "myE2prb3wj1jVLWL", "itemType": "uCgQQpOEP67GO8iy"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 11, "fixedTrialCycles": 87, "graceDays": 38}, "regionData": {"niUKvRI91713ybzi": [{"currencyCode": "Z2kLGAEhutiXQm1M", "currencyNamespace": "LjXrxwu5bClHisMv", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1986-02-06T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1998-02-19T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 87, "purchaseAt": "1989-05-19T00:00:00Z", "trialPrice": 4}, {"currencyCode": "QH7g1xvEC9FvAhal", "currencyNamespace": "iIvtBznRLeU6YWu4", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1988-12-19T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1973-08-28T00:00:00Z", "expireAt": "1986-03-13T00:00:00Z", "price": 55, "purchaseAt": "1975-12-25T00:00:00Z", "trialPrice": 11}, {"currencyCode": "mw5kMjZhg9l9ozJD", "currencyNamespace": "g9SDlCpr0Z7ms4Vo", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1998-08-24T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1977-04-08T00:00:00Z", "expireAt": "1981-06-19T00:00:00Z", "price": 31, "purchaseAt": "1990-12-11T00:00:00Z", "trialPrice": 7}], "sQitfVChSbAEIhzq": [{"currencyCode": "kjGd5MUwgL1W4MDI", "currencyNamespace": "yYAUz6my5ylRUwn4", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1999-10-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1997-07-04T00:00:00Z", "expireAt": "1984-01-17T00:00:00Z", "price": 2, "purchaseAt": "1973-03-18T00:00:00Z", "trialPrice": 25}, {"currencyCode": "XgHi86GR8w1pcJ2T", "currencyNamespace": "EC9aztx3agZOJ4vj", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1982-03-28T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-02-11T00:00:00Z", "expireAt": "1990-12-24T00:00:00Z", "price": 17, "purchaseAt": "1976-09-23T00:00:00Z", "trialPrice": 93}, {"currencyCode": "u4VMMwE3FwhqP2oE", "currencyNamespace": "lmQ9jt4iTteDRFzt", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1976-05-30T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1980-08-19T00:00:00Z", "expireAt": "1975-11-15T00:00:00Z", "price": 72, "purchaseAt": "1984-03-01T00:00:00Z", "trialPrice": 9}], "bsRKSh0LQobSvRXi": [{"currencyCode": "5v3FyqjcTrwebfpw", "currencyNamespace": "UsAqNaIY1sHlmdH3", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1985-07-19T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1972-07-26T00:00:00Z", "expireAt": "1975-03-04T00:00:00Z", "price": 76, "purchaseAt": "1991-05-22T00:00:00Z", "trialPrice": 70}, {"currencyCode": "xtSna1iZ6pBLzLv4", "currencyNamespace": "5RDbWRH7vxWWdbFY", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1978-11-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-04-27T00:00:00Z", "expireAt": "1994-04-01T00:00:00Z", "price": 98, "purchaseAt": "1980-07-28T00:00:00Z", "trialPrice": 28}, {"currencyCode": "YRz2dXjU0tqwbFph", "currencyNamespace": "fhxpSFqnz8os6EOK", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1976-12-20T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1991-08-16T00:00:00Z", "expireAt": "1983-08-15T00:00:00Z", "price": 72, "purchaseAt": "1997-05-11T00:00:00Z", "trialPrice": 78}]}, "saleConfig": {"currencyCode": "OeACmhEdh8rZC75o", "price": 40}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "Afpx1HISFWSBWeOE", "stackable": true, "status": "INACTIVE", "tags": ["8KnOAgY9cc0svN4L", "htiuCizrhxwEuEJ1", "NTMu3KRreSTFCX8P"], "targetCurrencyCode": "POmm4MxoU29Uv7lm", "targetNamespace": "pShgzXD2CpPw4pqG", "thumbnailUrl": "SLq13nyiBgq64W2z", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'KOvYNZXSdBxpOrko' \
    --appId 'lcaGqoWl7MklqT3V' \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'SRgvkZkwM6KvMzta' \
    --baseAppId '7IeSaFFUYkWL7qnk' \
    --categoryPath '7OEqOj7C0WAiuE3i' \
    --features 'JnQPYdnNR2OUNKYq' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --limit '2' \
    --offset '69' \
    --region 'LtKsrsxy1Hjm4ZSC' \
    --sortBy '["name:asc", "displayOrder:desc", "name:desc"]' \
    --storeId 'EvHfTPlmPYFtDLlM' \
    --tags '1jT8hUVGFSzst66i' \
    --targetNamespace 'XEI5yimywkpKOBRa' \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["K3Xg2ZxKv2m06D6m", "yqZy03HQsjaQvdIi", "7lUwUY05OOfVoVie"]' \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'm3OcQyThic3zitav' \
    --sku '8tEehgJJFACGUYo6' \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'wyLThjXQTxYevXvm' \
    --populateBundle 'false' \
    --region '9Tuz4Z0LSQiNOgMx' \
    --storeId 'BpsXlTxmLjBDWH8J' \
    --sku 'ykpywJGzJJgfvmHo' \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Xz9I9Ha8TYLa5fry' \
    --sku 'eV6wOxM1h6L2vL6N' \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["TymPsBenAatCDFE9", "VhZpwBHtw3udo05j", "VMTHFoSuf0N4L6km"]' \
    --storeId 'uS4ReNd7teP8wlpe' \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'mTiP8CtL6BWbAj23' \
    --region 'EOQ5UCn7HPlaqN29' \
    --storeId 'Y1cSRb8uI8i5zMfl' \
    --itemIds 'URRNsMBGRj5pOtxi' \
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
    --userId '1vwWuJvgkAP1B2EK' \
    --body '{"itemIds": ["wOzDSO01CW3RuyfC", "f8535kt5uImZEWiG", "pIbgTo8VPAh1ZCpt"]}' \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'X5vGK1gyKGxmBEiB' \
    --body '{"changes": [{"itemIdentities": ["o8Q1BT08yjHd6dSG", "F5NJ52dwe0DzC46b", "XNWokt8xbGiuBCG6"], "itemIdentityType": "ITEM_SKU", "regionData": {"bNjBTvRAzk62H8Zs": [{"currencyCode": "GZS9tR3UYtsakv2e", "currencyNamespace": "jSs8fhDP7w4lPQrM", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1997-04-10T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1983-11-22T00:00:00Z", "discountedPrice": 71, "expireAt": "1981-12-17T00:00:00Z", "price": 15, "purchaseAt": "1975-12-23T00:00:00Z", "trialPrice": 54}, {"currencyCode": "lK5ULrmwiihockrY", "currencyNamespace": "vLKlKg5ixYt3813z", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1982-01-17T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1994-12-13T00:00:00Z", "discountedPrice": 83, "expireAt": "1991-05-14T00:00:00Z", "price": 22, "purchaseAt": "1996-10-11T00:00:00Z", "trialPrice": 34}, {"currencyCode": "a8zMEGrcgFmBt9dV", "currencyNamespace": "OgPejQ43RgvsTW5H", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1986-12-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-07-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-02-24T00:00:00Z", "price": 64, "purchaseAt": "1994-09-01T00:00:00Z", "trialPrice": 31}], "Xudnpv8VNxeQi20r": [{"currencyCode": "5N18ZbUgByW99ebN", "currencyNamespace": "7tj2T1UNjIelxSAH", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1984-08-23T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1984-10-19T00:00:00Z", "discountedPrice": 41, "expireAt": "1974-04-30T00:00:00Z", "price": 8, "purchaseAt": "1988-05-18T00:00:00Z", "trialPrice": 29}, {"currencyCode": "7Wppmws8oIgzPzRm", "currencyNamespace": "cwYyl8BqN5Q7Lu8M", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1971-10-11T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1983-10-23T00:00:00Z", "discountedPrice": 50, "expireAt": "1979-11-29T00:00:00Z", "price": 36, "purchaseAt": "1985-07-28T00:00:00Z", "trialPrice": 21}, {"currencyCode": "ohXfOoHDvVRdvapt", "currencyNamespace": "N99cGgxYdzAZBTgr", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1985-06-13T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1979-03-08T00:00:00Z", "discountedPrice": 70, "expireAt": "1995-10-07T00:00:00Z", "price": 90, "purchaseAt": "1997-01-09T00:00:00Z", "trialPrice": 19}], "Q4JGM0UrZrgHzQ5x": [{"currencyCode": "HyzvmlXW7EcHytJf", "currencyNamespace": "ueV1lU7N4BwH8JkW", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1981-03-16T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1978-08-05T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-07-08T00:00:00Z", "price": 78, "purchaseAt": "1978-01-05T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Xw7y4R9zshyYKfWN", "currencyNamespace": "G3NOOoHcDXuCa2nS", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1992-01-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1990-12-17T00:00:00Z", "discountedPrice": 26, "expireAt": "1976-08-10T00:00:00Z", "price": 99, "purchaseAt": "1976-10-09T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Ye4lVcClhgTgMswN", "currencyNamespace": "ZRZVVBjmn6x1zDc7", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1980-12-31T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1971-01-13T00:00:00Z", "discountedPrice": 3, "expireAt": "1976-02-06T00:00:00Z", "price": 80, "purchaseAt": "1985-04-23T00:00:00Z", "trialPrice": 87}]}}, {"itemIdentities": ["hIjbY7iGY4ETOjOq", "HQjQvzTmtksZMHIe", "7rui2SamxrJLiGXw"], "itemIdentityType": "ITEM_ID", "regionData": {"qVUWAv0DLbdoGq4f": [{"currencyCode": "YGtoSW3iBXBWWR3V", "currencyNamespace": "5XDxG0LHTPBsJkTI", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1994-12-22T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1982-03-16T00:00:00Z", "discountedPrice": 65, "expireAt": "1984-01-15T00:00:00Z", "price": 22, "purchaseAt": "1977-01-29T00:00:00Z", "trialPrice": 47}, {"currencyCode": "k1aCRem9wjzNDMrD", "currencyNamespace": "NgpSFHClrMwLutRw", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1980-07-08T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1978-09-17T00:00:00Z", "discountedPrice": 48, "expireAt": "1973-07-06T00:00:00Z", "price": 86, "purchaseAt": "1997-11-14T00:00:00Z", "trialPrice": 22}, {"currencyCode": "QmS2YBIE5unbTrWS", "currencyNamespace": "UNVsXc51e7GWcdhu", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1978-03-31T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1979-04-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1997-01-06T00:00:00Z", "price": 94, "purchaseAt": "1998-08-10T00:00:00Z", "trialPrice": 94}], "tVdDXOxPTCGo6FV7": [{"currencyCode": "uyKuCdL46nlpD9kT", "currencyNamespace": "sNnQhgfVNAbawqkp", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1995-06-06T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1996-10-07T00:00:00Z", "discountedPrice": 59, "expireAt": "1998-01-25T00:00:00Z", "price": 86, "purchaseAt": "1989-11-03T00:00:00Z", "trialPrice": 15}, {"currencyCode": "10qlWEXfx82hPLHR", "currencyNamespace": "Wmi0Cw2MhXIxNrek", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1982-12-11T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1988-04-22T00:00:00Z", "discountedPrice": 17, "expireAt": "1993-10-01T00:00:00Z", "price": 40, "purchaseAt": "1984-04-17T00:00:00Z", "trialPrice": 45}, {"currencyCode": "xv3lhUmKo5bFtdUn", "currencyNamespace": "55SWjh2KojOHFrE0", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1994-11-04T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1986-01-09T00:00:00Z", "discountedPrice": 27, "expireAt": "1998-01-09T00:00:00Z", "price": 29, "purchaseAt": "1979-07-15T00:00:00Z", "trialPrice": 27}], "EmqqiIVohdHCxCEq": [{"currencyCode": "9Qx0LlKoI22KePyK", "currencyNamespace": "D1AeTDGW6k9XHqDp", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1973-03-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1989-08-16T00:00:00Z", "discountedPrice": 64, "expireAt": "1975-07-10T00:00:00Z", "price": 40, "purchaseAt": "1977-10-20T00:00:00Z", "trialPrice": 86}, {"currencyCode": "VQGBJLaotzDB2FRU", "currencyNamespace": "6qXEtGSzJMDMN279", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1994-01-25T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1977-12-29T00:00:00Z", "discountedPrice": 52, "expireAt": "1982-01-26T00:00:00Z", "price": 84, "purchaseAt": "1997-11-03T00:00:00Z", "trialPrice": 7}, {"currencyCode": "UeAR8LvzIRMSOEMX", "currencyNamespace": "pvAjFv6CATjO1ONo", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1978-08-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1980-04-05T00:00:00Z", "discountedPrice": 95, "expireAt": "1972-02-19T00:00:00Z", "price": 7, "purchaseAt": "1985-03-20T00:00:00Z", "trialPrice": 80}]}}, {"itemIdentities": ["6R9AfmJmavGec0eK", "kTK9DOd25kNN3Orl", "pwuXpNgVPX5ZZrtr"], "itemIdentityType": "ITEM_SKU", "regionData": {"3u1ShKys0Hqiy8Qf": [{"currencyCode": "upAobPW1x0Ewrb1N", "currencyNamespace": "rJ0RO9U3a2b1C0w3", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1985-10-19T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1996-12-29T00:00:00Z", "discountedPrice": 24, "expireAt": "1990-01-04T00:00:00Z", "price": 90, "purchaseAt": "1984-12-13T00:00:00Z", "trialPrice": 63}, {"currencyCode": "Dv1ExFjwQXh5OdEl", "currencyNamespace": "W54Gga5yt7GYtYq3", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1990-11-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1971-12-11T00:00:00Z", "discountedPrice": 95, "expireAt": "1995-07-27T00:00:00Z", "price": 86, "purchaseAt": "1991-05-29T00:00:00Z", "trialPrice": 32}, {"currencyCode": "XrC5XwGniHaFUo1n", "currencyNamespace": "uGmBv5BGZl9gWqZR", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1983-03-28T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1983-02-14T00:00:00Z", "discountedPrice": 79, "expireAt": "1973-03-07T00:00:00Z", "price": 93, "purchaseAt": "1986-08-15T00:00:00Z", "trialPrice": 20}], "04Wce0gQO3bEhF9t": [{"currencyCode": "CxqZsRRtMLeFIvR1", "currencyNamespace": "SGAnV5rg4mHHkmPB", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1998-12-05T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1983-06-04T00:00:00Z", "discountedPrice": 74, "expireAt": "1998-04-26T00:00:00Z", "price": 20, "purchaseAt": "1994-12-28T00:00:00Z", "trialPrice": 1}, {"currencyCode": "u9aw0Wmbcu69yh2z", "currencyNamespace": "zt9DKAVy1G2Ega9Q", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1993-07-05T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1980-01-07T00:00:00Z", "discountedPrice": 37, "expireAt": "1997-04-13T00:00:00Z", "price": 52, "purchaseAt": "1994-03-04T00:00:00Z", "trialPrice": 75}, {"currencyCode": "J88wQ9eLHbIwTE0C", "currencyNamespace": "Th5h2GokBEBQ4rZS", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1986-03-09T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1989-12-25T00:00:00Z", "discountedPrice": 12, "expireAt": "1994-08-21T00:00:00Z", "price": 10, "purchaseAt": "1995-11-21T00:00:00Z", "trialPrice": 100}], "nhhN32os0uAfZyTh": [{"currencyCode": "jQuT5TIj0ByuRtwF", "currencyNamespace": "L5qltuoNuzNNwwy2", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1997-09-20T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1987-07-02T00:00:00Z", "discountedPrice": 0, "expireAt": "1978-10-13T00:00:00Z", "price": 29, "purchaseAt": "1977-04-01T00:00:00Z", "trialPrice": 33}, {"currencyCode": "BZI91I7Jqq3xSzrX", "currencyNamespace": "L4oNa1DVOmkxCe60", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1981-12-17T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1988-06-23T00:00:00Z", "discountedPrice": 54, "expireAt": "1995-10-20T00:00:00Z", "price": 25, "purchaseAt": "1984-10-16T00:00:00Z", "trialPrice": 68}, {"currencyCode": "ax6pOAtMVpbDb7HI", "currencyNamespace": "AkeXyXoqroumLyJv", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1988-03-08T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1985-11-20T00:00:00Z", "discountedPrice": 43, "expireAt": "1976-12-13T00:00:00Z", "price": 27, "purchaseAt": "1987-07-07T00:00:00Z", "trialPrice": 8}]}}]}' \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '17' \
    --offset '95' \
    --sortBy 'r3GewIFSsiRJ7bz3' \
    --storeId 'GIUf0Di7yc3A0GlX' \
    --keyword 'hVQdNkFLbNBjigcj' \
    --language '3NpONq1f9XpKTiy2' \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '83' \
    --offset '19' \
    --sortBy '["createdAt:desc", "name:asc", "updatedAt:asc"]' \
    --storeId 'AO4j3WrWBHxShP2V' \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'ffxSKmrq5a6BJP7C' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '5CHl53vyr3VqjQaK' \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'r2D4WVJa1HvPcGho' \
    --namespace $AB_NAMESPACE \
    --storeId 'FEpNAn98vBx9Z9yP' \
    --body '{"appId": "o3lPi4x9W6K9zKAN", "appType": "GAME", "baseAppId": "di0XuLhymuFyvwMK", "boothName": "79Y6iHg39Ns7AkJN", "categoryPath": "HyQ92sZpvl29IXOl", "clazz": "CjKoMiNx9s9U7Q0c", "displayOrder": 38, "entitlementType": "DURABLE", "ext": {"NL9WUZSmcgw2uDDh": {}, "CCOXs4hBp4cbmKI2": {}, "vMO9L3HECUFKqZBc": {}}, "features": ["ltF7f0gvR3r0hx8S", "N9rwUKdNXa4FB5Iy", "gflAeRF6eh7oTpao"], "images": [{"as": "EPJGiGpg6zF9UZWI", "caption": "lq0BCzhbpmwi6CL1", "height": 36, "imageUrl": "lkR7sylQZr7gtRhJ", "smallImageUrl": "7qslcFV3y70uKCIt", "width": 94}, {"as": "MpvxwBgLjaGxYdap", "caption": "zeMgtyoO1DjlcZYd", "height": 62, "imageUrl": "LkaRMN5R92sfOU3d", "smallImageUrl": "gbogImcGOSv8lq6M", "width": 70}, {"as": "XYLjB4bFKsOR32s3", "caption": "P4zflrEBx3j6cm1u", "height": 73, "imageUrl": "8dFN6lzPpkfEeSVF", "smallImageUrl": "5UHBmOrYYjUH7aQg", "width": 28}], "itemIds": ["cYEyUyDXG7EKAMgW", "jKVVqpPRAZEAkJES", "oP9t3ypkUIB7Fm8w"], "itemQty": {"bYYGme6hYo0NCR5f": 30, "jl1XlYCEzrTQlkb6": 56, "Utl3HN474cfNeAtB": 41}, "itemType": "LOOTBOX", "listable": true, "localizations": {"NbdxHZeUgJuAz3u2": {"description": "3kUIkuvIsd58nlJQ", "localExt": {"pBZDkXFDozWPQeP8": {}, "df3eBuSAnWsS8mlJ": {}, "scgKZyzrHMnlPdxu": {}}, "longDescription": "ERveCJTNqANAw5Lk", "title": "MbGgaAF2l4snh5X6"}, "I4MlMvyJOjgm5xqT": {"description": "k9U5yCZEjztE6ipx", "localExt": {"ALAOE0UIuUTeY1nf": {}, "S1J004GJLujJVjAp": {}, "BFHnc4zL0z06GRUC": {}}, "longDescription": "uRfi2DSXLWkpw8Tw", "title": "yQgDlStbZjl4TDGp"}, "IyPxhE2WilyrqXrO": {"description": "uTQ0sro8wHgTNS9A", "localExt": {"cm8h3CmE9M2W4qOu": {}, "zLGczt765XylRd55": {}, "9O8I8P4G23PW6l47": {}}, "longDescription": "ZCABhmGnHsu9f85K", "title": "8RgGhsH4UT0tRhI7"}}, "lootBoxConfig": {"rewardCount": 15, "rewards": [{"lootBoxItems": [{"count": 69, "duration": 11, "endDate": "1998-03-28T00:00:00Z", "itemId": "dyhr6Esf9JVZXkwE", "itemSku": "HO3jUHy1tmnxY0bz", "itemType": "zPdGDwfa4wiVBuIB"}, {"count": 53, "duration": 57, "endDate": "1989-10-25T00:00:00Z", "itemId": "1rmGRT1hjmtXKMfP", "itemSku": "ldBjwypRKHurjnyx", "itemType": "B7hx6TqlrWNAKAqv"}, {"count": 93, "duration": 58, "endDate": "1994-08-08T00:00:00Z", "itemId": "ij6D6oUTvTNhAtn4", "itemSku": "vdrjPA9vo68E8AQh", "itemType": "LRTUrmhRhp7MaER8"}], "name": "GRfxkZVsJ7rrYumx", "odds": 0.7206557616479389, "type": "PROBABILITY_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 59, "duration": 100, "endDate": "1979-03-02T00:00:00Z", "itemId": "mkbJS63TbJBj2Aog", "itemSku": "WxrLpmQ4jFlpZLlV", "itemType": "dLYsZAaLTM8trWeE"}, {"count": 1, "duration": 13, "endDate": "1976-02-22T00:00:00Z", "itemId": "0gWgIyAg1Cd71Htj", "itemSku": "kSTiYUbee4FAzQXG", "itemType": "fhcStaQvQe4tP46w"}, {"count": 76, "duration": 36, "endDate": "1971-01-22T00:00:00Z", "itemId": "QDziXCdRYZMJzs6R", "itemSku": "LBEcN8W5ROnt8iP1", "itemType": "GAzt38dQ3ZACcE9L"}], "name": "JlD2bVCO0kdlTuQl", "odds": 0.24810439551884655, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 15, "duration": 26, "endDate": "1994-07-09T00:00:00Z", "itemId": "hmMP1tmMRzhVx2j0", "itemSku": "mXdJcYdF2FnTWpTd", "itemType": "8olCirISdjPcOjLj"}, {"count": 73, "duration": 68, "endDate": "1985-10-10T00:00:00Z", "itemId": "kK6ndZ39GUBV2DyJ", "itemSku": "y0LKpL0CVu3QbSH6", "itemType": "Ny1cDNYsIckxTxmo"}, {"count": 64, "duration": 23, "endDate": "1980-01-04T00:00:00Z", "itemId": "QlxVTvlkY021IECb", "itemSku": "2C13BjNLkfA9n3yO", "itemType": "bJ8hJ1nFAUAuHDTE"}], "name": "hvfjnLdVIPUmqbWc", "odds": 0.6280773338049025, "type": "REWARD_GROUP", "weight": 28}], "rollFunction": "DEFAULT"}, "maxCount": 71, "maxCountPerUser": 19, "name": "uxbxajrlcUZGhRFA", "optionBoxConfig": {"boxItems": [{"count": 70, "duration": 58, "endDate": "1991-12-28T00:00:00Z", "itemId": "eHoJAkBr4Rxmjn1f", "itemSku": "2PYy1JinduTGcUy5", "itemType": "9hh1fRbW1dG9TaIm"}, {"count": 97, "duration": 81, "endDate": "1997-04-01T00:00:00Z", "itemId": "we0VDbYVJEA7DUeY", "itemSku": "YNvMWYlX6El5t1Lv", "itemType": "YQaQxfMt3XOwiRD1"}, {"count": 78, "duration": 5, "endDate": "1975-11-15T00:00:00Z", "itemId": "7y3gF6PMwR8P7ttZ", "itemSku": "ZBRUDzzfp3TzjzAJ", "itemType": "nZbpc5ePelIWXknB"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 85, "fixedTrialCycles": 73, "graceDays": 73}, "regionData": {"G0LLpH19BQfcgDry": [{"currencyCode": "lLhzwZZWesg7ZJdz", "currencyNamespace": "PZfAeboBkbPtHC00", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1975-07-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-04-06T00:00:00Z", "expireAt": "1972-07-03T00:00:00Z", "price": 7, "purchaseAt": "1976-07-25T00:00:00Z", "trialPrice": 14}, {"currencyCode": "DdN5oB4wr3W3uODV", "currencyNamespace": "FVzhpXKvG4IMAptb", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1977-03-25T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1977-12-13T00:00:00Z", "expireAt": "1983-04-04T00:00:00Z", "price": 0, "purchaseAt": "1978-12-11T00:00:00Z", "trialPrice": 47}, {"currencyCode": "DnFS7IG9ppePZEZX", "currencyNamespace": "5j95xpv7DeWWFE9S", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1987-04-17T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-12-05T00:00:00Z", "expireAt": "1973-12-19T00:00:00Z", "price": 28, "purchaseAt": "1972-04-12T00:00:00Z", "trialPrice": 19}], "pdafbOJpA2d0dEkY": [{"currencyCode": "PRnuz0xX3gQ0cGT7", "currencyNamespace": "cg3z8tUz16UHY2xX", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1981-02-12T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1983-08-24T00:00:00Z", "expireAt": "1974-09-21T00:00:00Z", "price": 84, "purchaseAt": "1994-05-12T00:00:00Z", "trialPrice": 61}, {"currencyCode": "u7lKM9SjI6Ip7z8B", "currencyNamespace": "CfX3Bzcrmcgo9TFS", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1973-05-16T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1980-11-20T00:00:00Z", "expireAt": "1993-01-18T00:00:00Z", "price": 36, "purchaseAt": "1980-05-31T00:00:00Z", "trialPrice": 20}, {"currencyCode": "L1EWMhTuDqOX73NY", "currencyNamespace": "OQwNiQiiwjnirKxa", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1976-11-12T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1974-09-23T00:00:00Z", "expireAt": "1975-05-24T00:00:00Z", "price": 37, "purchaseAt": "1977-04-01T00:00:00Z", "trialPrice": 63}], "QkqlBSPAHrVJ3dyG": [{"currencyCode": "AK0wsk1c74U3H3QK", "currencyNamespace": "PlpcHKlJOKqzg7qu", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1984-03-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1995-08-02T00:00:00Z", "expireAt": "1994-12-21T00:00:00Z", "price": 82, "purchaseAt": "1993-08-18T00:00:00Z", "trialPrice": 37}, {"currencyCode": "FClI9ZEhS37qxJhv", "currencyNamespace": "gPhTXoCCKZ1VLVjB", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1991-02-16T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1993-06-04T00:00:00Z", "expireAt": "1975-09-28T00:00:00Z", "price": 20, "purchaseAt": "1999-06-26T00:00:00Z", "trialPrice": 60}, {"currencyCode": "WYA0zG9TVQvhRQjp", "currencyNamespace": "WJFtBvFXFyyRwiUU", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1979-05-06T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1983-09-04T00:00:00Z", "expireAt": "1990-10-23T00:00:00Z", "price": 63, "purchaseAt": "1983-05-31T00:00:00Z", "trialPrice": 43}]}, "saleConfig": {"currencyCode": "AwmHemeadBs4ioll", "price": 69}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "Zb5ziB6iIPF1xSGo", "stackable": true, "status": "INACTIVE", "tags": ["WUPXLJ6YaptiVZ9V", "06pxUCgtWljfBMGd", "ZwExOkOLzDIJFijI"], "targetCurrencyCode": "dpcloMuwHHLCrqhl", "targetNamespace": "XuXRSj9CVIFhrXof", "thumbnailUrl": "zeybebHUPZtkVdT8", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '31sX4tAlBsDwVA0j' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'vAGXRrnqW03xeFXM' \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'nhoO3KkCTY4tyLF2' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 85, "orderNo": "QCBxaqSv2zmt5dHx"}' \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'NNItS822dCiRO9Pr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5HdxnEidFFGjuJJv' \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'YsXgs4QaXlV74bfl' \
    --namespace $AB_NAMESPACE \
    --storeId '2iyRlfjOOypxgnK6' \
    --body '{"carousel": [{"alt": "QPFqT9b83FENVHZ3", "previewUrl": "kpUgqByn90lNjKav", "thumbnailUrl": "I6dRfb2S3jDMflUN", "type": "video", "url": "SBPwHJpVzBitd3V8", "videoSource": "youtube"}, {"alt": "rTggf9Z8dkuRNPn8", "previewUrl": "MlOEsCJYr7oRHBtA", "thumbnailUrl": "h82TBTpg67rEv099", "type": "image", "url": "bGUewtyCZUdSadD2", "videoSource": "vimeo"}, {"alt": "7RlxfQ2yKaxOv6bv", "previewUrl": "w8Qgelu0VS297uaL", "thumbnailUrl": "iq8pAXraKSfXo4GR", "type": "video", "url": "JwbpNjg4HNqIh5rL", "videoSource": "youtube"}], "developer": "RtFaeVHSRsMp3FjO", "forumUrl": "6pYIgeMW8gqhEP21", "genres": ["Racing", "RPG", "Sports"], "localizations": {"hpDTy4IHYMHpi0fm": {"announcement": "QFjIWEqurB6SI24V", "slogan": "XotKGWkapZERTw2P"}, "FANeEzMssTClQnfi": {"announcement": "I9KcMUqC91uIXjrg", "slogan": "snOWdSgP2jLI2S5e"}, "kmNyRnshVUUguStD": {"announcement": "OZA8ofQYBn2en7Xr", "slogan": "msjCpSepF6q2ZMDi"}}, "platformRequirements": {"VRZk1u8bVvKXru4d": [{"additionals": "OPSZHR7lMPYBQuAL", "directXVersion": "QY8kQAdUCVpqAB9I", "diskSpace": "pbRVngDWtRYyuwcF", "graphics": "5iTQJtJ3WaFtjAvx", "label": "rctfSE4iHe7RQAnV", "osVersion": "TyYRkPMUXZE72rlq", "processor": "kdmtuLrUg0hxgr52", "ram": "IpL1woWglvfEIs7c", "soundCard": "US9Tvrx3BOASzJYH"}, {"additionals": "tzsJ2InCj5NgaQSa", "directXVersion": "ZIFb0v3J4ZTNXRey", "diskSpace": "bC4o9YTB9u5hu8tj", "graphics": "rrbrDG6qRS6746i1", "label": "DuwCfFBIWgv7P6XA", "osVersion": "gU3qsCR7ci8t5qfd", "processor": "EITeGs6NGfSpO78s", "ram": "G7b5IGSZY5Jmqt1Z", "soundCard": "0wwAy7LxyJG1YZgb"}, {"additionals": "OxnkOTNVXKaIQtJ5", "directXVersion": "IVGxeyehJOdJesIj", "diskSpace": "yRZy0dxhDjIwlvGx", "graphics": "jB7nSzkfPyKdOm88", "label": "9vPhDkx8bTw56u7Q", "osVersion": "mph7RhOHxHlqXuAh", "processor": "pBvM7o6Rx3bfHASG", "ram": "BLYS3W51V1xaq87i", "soundCard": "0TC1APgQb9tmoBLd"}], "E5yypyJBTZBwX5Mg": [{"additionals": "9GouTZ4RzFJQzxCQ", "directXVersion": "kS9ag9CVHHlYMpz6", "diskSpace": "qwRTctGICrfUvbMl", "graphics": "vuVF69cAyxW66eCF", "label": "GeV88K8rBYVL2qEt", "osVersion": "8UxnFnfa7sMFyoKH", "processor": "L0pniCq2WnCP8Vz4", "ram": "TizAqcFvpOEVS2cO", "soundCard": "L6vRU8uBkmWA9YVy"}, {"additionals": "eMfKKsMgyw4lwchs", "directXVersion": "zVtBjlF0PwcnC4FI", "diskSpace": "TPoUbL0nOcrcfo70", "graphics": "sPZOhWjv9F0kw1Kp", "label": "AkoUVcyYCUuITrI4", "osVersion": "q6l9qTlIGJ0hvopU", "processor": "Tizojnrboges7qYb", "ram": "4AwZMX6a7k56rENz", "soundCard": "xHjBYbUjcQiP0Tcg"}, {"additionals": "BuRm8USRhVSKJanP", "directXVersion": "2xllukDrUdwxSG4k", "diskSpace": "hJPXN01uGdbv1ika", "graphics": "bwHd4eBcxi4nbcGO", "label": "9Cy8tFBPR74xGWoA", "osVersion": "6RLxBDDKC49enhIb", "processor": "k6BxG6Pu3RcC42MD", "ram": "iukrjwnpUaBxQoQ1", "soundCard": "5QpZbzkyyByFkKmy"}], "bqOLqn84vssP5XN9": [{"additionals": "0cTtLEkhYIJjVFHN", "directXVersion": "twigTfG7lZPY0iri", "diskSpace": "HKeIYk3Hhnim9bOB", "graphics": "Ooqn1sI2FRLcWm2y", "label": "ByvZF5yduRwccmqe", "osVersion": "4csJYkyXZpCcsJ3v", "processor": "nRkq7sE9J1xUX883", "ram": "XZZ2p2Jx6XmJHr5U", "soundCard": "qek1x5J8LtV9ui9Y"}, {"additionals": "5tIl3EXfXIY6Z88Z", "directXVersion": "wYgHDjXv9gSd4U5K", "diskSpace": "SP9S1Q2hQmK0NuLx", "graphics": "5xhdhMGvFPUlJr3A", "label": "CuXPKi9bIOS2Q2Df", "osVersion": "lQY8HZ590uroKlm6", "processor": "4dlEwH4gCQPDcvjf", "ram": "gh77LDVocUrfsV5f", "soundCard": "6JxNTaKJZOAoTbq1"}, {"additionals": "I6MINUiKKXea8Ko9", "directXVersion": "RoIAfsGdvVW8rJsv", "diskSpace": "YhsWu8aLlEzxAOVK", "graphics": "v4F8LD5FBiN78Bdx", "label": "dW24EQFDjgmAvD5p", "osVersion": "kTEMTCXZNZyCPiWZ", "processor": "3pAxL0tNjRjlFxKI", "ram": "zNZYzkhXV223ZM2u", "soundCard": "RpHDEvyhAjZKVfkg"}]}, "platforms": ["IOS", "Windows", "Windows"], "players": ["Multi", "Multi", "CrossPlatformMulti"], "primaryGenre": "Action", "publisher": "mjwDAkkM7gzVB8Sc", "releaseDate": "1997-04-15T00:00:00Z", "websiteUrl": "TaOQWFcTYl366XAs"}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'zbY67HEdc9d9QOw4' \
    --namespace $AB_NAMESPACE \
    --storeId 'bI8eOcnL5FXzZ7Rt' \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0nl52AhpXw2CtHtF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'NA78sCQKxNm1C0id' \
    --namespace $AB_NAMESPACE \
    --storeId '8t7isaMm6sJMLZzi' \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'Hxq8sXjJHX9dsIEt' \
    --itemId '0hdS663wSIgZeIbn' \
    --namespace $AB_NAMESPACE \
    --storeId 'IJq33MKlgkCSPhiC' \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '3YhF1EaixL6tTuJH' \
    --itemId '2wR7uf1KoIobTOLS' \
    --namespace $AB_NAMESPACE \
    --storeId 'XyZ3XbaSp1I2Sz3p' \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '2Uwln38KvuuREkXA' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'GnJQjG7ZpUM6s3dt' \
    --populateBundle 'false' \
    --region 'LLuTCmsD4PV87vYP' \
    --storeId 'zE41I9E2wpFpEW2M' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'KowvpIQqd7vGGmRX' \
    --namespace $AB_NAMESPACE \
    --storeId 'OmYvG1J0UVTxossB' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 4, "comparison": "includes", "name": "javPpegyBUaEgx1B", "predicateType": "SeasonPassPredicate", "value": "fjEZ4e7JvNtqR6bh", "values": ["WRXiUrqZsBKmIRVU", "8J7jK4Kd57PWUyei", "FbDfNm3S2aE7FV02"]}, {"anyOf": 88, "comparison": "excludes", "name": "KKuJl76udKRQO1Ky", "predicateType": "SeasonTierPredicate", "value": "YyEQwjRYngEcpa9b", "values": ["hCRwOHQD0MSRcBK1", "5vijITkEURWGRHib", "e2TvxxznUKL1bku7"]}, {"anyOf": 49, "comparison": "isGreaterThan", "name": "aaUQ4mWZMJuIQ3Rs", "predicateType": "SeasonTierPredicate", "value": "8RnZ4n6W0VD3q6Tg", "values": ["IpFWqvoqFv6EJP8R", "XTbjBI0goxyQVKcO", "EHo9xau7ibWBfzuB"]}]}, {"operator": "or", "predicates": [{"anyOf": 36, "comparison": "includes", "name": "7K064mkhrDxPrZAE", "predicateType": "SeasonTierPredicate", "value": "7Kq1EU3Rs9UFeoDl", "values": ["gSOCq7FtAluy1Fp3", "Mb83dL8hw3bps3ZE", "UKXa9bLULIy95CVY"]}, {"anyOf": 97, "comparison": "isLessThanOrEqual", "name": "WYvURfeUJSc1mZKO", "predicateType": "SeasonTierPredicate", "value": "V3Fb00gVJNAqBCks", "values": ["tEjGxpiJAdeCdv9q", "h63GF8hVJ5fko5wE", "engyqs9Bv1s1BCpf"]}, {"anyOf": 16, "comparison": "isLessThanOrEqual", "name": "fdwzeGUX8FhpOAEE", "predicateType": "SeasonPassPredicate", "value": "65tUdhKgoydI6gkF", "values": ["5l6rZjl9ICiHPCTU", "F3zZ6hdFxK7FxZlj", "NEoVhcksUVsUKNJB"]}]}, {"operator": "and", "predicates": [{"anyOf": 36, "comparison": "excludes", "name": "et5GcvxFoLxWUHhT", "predicateType": "EntitlementPredicate", "value": "53dU0vivWPiJb6oY", "values": ["1sbaIQnPT4pVApjR", "x7QYCQ2cymDe9u7s", "92vnEXecZHFXONRf"]}, {"anyOf": 15, "comparison": "excludes", "name": "Tfo21vcjxmav4Rmo", "predicateType": "SeasonPassPredicate", "value": "MzUT7S2xMVyCGQUE", "values": ["Tei8c5RxpZCVqMkR", "awPidVELZqUV2av6", "gxDZRQRYJH2NirNB"]}, {"anyOf": 70, "comparison": "isGreaterThanOrEqual", "name": "FUgHE4uEnI9Z7Jlw", "predicateType": "EntitlementPredicate", "value": "Cfsu0qT16VxWY1QL", "values": ["VxHjjFj8cJGR7XsG", "WxEuyir83HUqwYVs", "eHfS59zQPHX2LUcV"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'jjU54fcUaYbSA50A' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "5j1p4q4YRo0YpAUj"}' \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --name 'BWFf4HL8iWDpg4ay' \
    --offset '84' \
    --tag 'ZEjoGalVp3bwJSqB' \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4qgd0dmIkiQ00VaD", "name": "cyyapnc4uucf7Aya", "status": "INACTIVE", "tags": ["Mi5GwQLhXVGzvxpF", "eEqTYnJqGdzwNgSN", "JeLJR3vntwW0pbO7"]}' \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '1aJKYqrSBXC9yEwq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'jKBMgr4IAeWqxpMH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wk3kn8vKoirmf7hG", "name": "CkpyHHqlwgraGzdp", "status": "INACTIVE", "tags": ["RJlCMi7wozr5dCx8", "ZY5Z4b0yi8lKQ6Wd", "IHLpazY3FOM2JMYz"]}' \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'YYyTojWhSxSgzmjL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'uh7j5UsbGQvJaD7o' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '36' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'LirgTDIqH5gxMqZO' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'OmPSArOWQobV8R3q' \
    --limit '66' \
    --offset '28' \
    --orderNos '["GsxCIRYwZZwGFIgT", "jKK4S4YqJDv1pald", "wBaRqvdhSJ2byUPh"]' \
    --sortBy 'FJYw9e5LCSwMxNjX' \
    --startTime '346S042aH8CJ54SH' \
    --status 'CHARGED' \
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
    --orderNo 'BsKxCKpLgjtwCEhr' \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1TKvpcLnEwBTcbE9' \
    --body '{"description": "fSmJvhWXjiLqwYBF"}' \
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
    --body '{"dryRun": true, "notifyUrl": "0k5mrleGykX0r1Ty", "privateKey": "Ft15VW1he36pgWzL"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '0NXAkSABxBF0uHaw' \
    --externalId 'upUpvfok5LiuJHkc' \
    --limit '55' \
    --notificationSource 'XSOLLA' \
    --notificationType '3aDFfIonVzmQuDhy' \
    --offset '42' \
    --paymentOrderNo 'xhCr1zh1Bpv7rSgf' \
    --startDate 'wu2KJbIuESgut5qJ' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'JV0RPOAZrdnewWXV' \
    --limit '78' \
    --offset '63' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "oRp5I2QTGtAnChpB", "currencyNamespace": "s4tS8AsWCQ19Oe0U", "customParameters": {"Hd95wptM403Sjo5Y": {}, "Ty0nur4cex2wG6Db": {}, "F2OuYf4ejMtSuJiK": {}}, "description": "6fTRVmdD0r6s0PsW", "extOrderNo": "R15CNAYKxs9Ce9ah", "extUserId": "weMEvXTUxBvqUmhR", "itemType": "APP", "language": "aJ-mTfc", "metadata": {"4YqR0pUuiiRKq0nc": "1aOqby2NKPvRql3j", "91VO5bLeFNa5Tblv": "kZ5SUhAksQV0DCoo", "Jg5psCLZGsmfT4RM": "Tiw0D7fMnPjYI60V"}, "notifyUrl": "nhdj4ZyyMbh6I4zB", "omitNotification": true, "platform": "hrmTiacjZI1nVWTp", "price": 64, "recurringPaymentOrderNo": "LmewkOqm6hDBrEid", "region": "lj3r2njLIUX47pUy", "returnUrl": "FHuJ9msQnaCgKZaY", "sandbox": true, "sku": "ZS4HfVvPaCaYxxz6", "subscriptionId": "3UkOadsJiL8WwOhd", "targetNamespace": "TuXhPofDWIGrnLzX", "targetUserId": "E9kvdYh4xZrTFqkd", "title": "ljVbNDAoyXfGO26F"}' \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'QvppZqqblan5OtKm' \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aQcqb7DK4zAKpBrF' \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jYAPDQWuKSHGlwd3' \
    --body '{"extTxId": "fJnkN3TeIWhwNpNg", "paymentMethod": "BGX3xfCx1x3AIBpi", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'maSaNqo1a5aAMzPZ' \
    --body '{"description": "fK5QYv53lRj7hA4H"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GsI5vid1cCTcIsOx' \
    --body '{"amount": 24, "currencyCode": "ZvcVRyYf3CUhK34Y", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 75, "vat": 22}' \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'c4bh95DoQVtLErsd' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["Other", "System", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'wfu5FtMhoEEA6Vcs' \
    --limit '81' \
    --offset '20' \
    --source 'DLC' \
    --startTime 'RaBQowH13btZsaGO' \
    --status 'SUCCESS' \
    --transactionId 'BhcGm2uQfGWRerV7' \
    --userId 'j4ImES62tHxz27wH' \
    > test.out 2>&1
eval_tap $? 155 'QueryRevocationHistories' test.out

#- 156 GetLootBoxPluginConfig1
samples/cli/sample-apps Platform getLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetLootBoxPluginConfig1' test.out

#- 157 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "guSxW1Y7yGlP5saU"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "bjovnnxaDfAqPhSt"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteLootBoxPluginConfig1
samples/cli/sample-apps Platform deleteLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeleteLootBoxPluginConfig1' test.out

#- 159 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RnjT34wswL2H8mQ4", "eventTopic": "snriEEYdoqS952Rj", "maxAwarded": 58, "maxAwardedPerUser": 15, "namespaceExpression": "XzDRz09wFJ1v1wSE", "rewardCode": "U4fUXRZ4OlRINios", "rewardConditions": [{"condition": "2Rx1qxJZib8k68pO", "conditionName": "upct6O5SeZVLS4jt", "eventName": "GaN1eSISviV0DMyj", "rewardItems": [{"duration": 3, "endDate": "1984-08-25T00:00:00Z", "itemId": "2FkmiIoduIfpFfSR", "quantity": 61}, {"duration": 28, "endDate": "1992-03-19T00:00:00Z", "itemId": "Io2QlNgBNKy0qbQx", "quantity": 87}, {"duration": 88, "endDate": "1972-05-15T00:00:00Z", "itemId": "2Qs9W0qii51rPU8H", "quantity": 67}]}, {"condition": "o43LphvQPUNn68gM", "conditionName": "zOOefloLmBnARXtO", "eventName": "B9qYwS9OywgR7gfd", "rewardItems": [{"duration": 3, "endDate": "1973-11-26T00:00:00Z", "itemId": "yO7jCzFFrPqZRKdP", "quantity": 13}, {"duration": 41, "endDate": "1989-09-19T00:00:00Z", "itemId": "Uq4HlgCPdOnxxV5q", "quantity": 47}, {"duration": 61, "endDate": "1982-02-28T00:00:00Z", "itemId": "R2vgTFUiFJKeYqDi", "quantity": 90}]}, {"condition": "Uv48ZbTs83MBlI9w", "conditionName": "Gd1SCda1wPzyFHHN", "eventName": "ivoSQVc01YnMvn6U", "rewardItems": [{"duration": 58, "endDate": "1997-01-11T00:00:00Z", "itemId": "HW97NA36XRU9WCzL", "quantity": 92}, {"duration": 92, "endDate": "1985-07-17T00:00:00Z", "itemId": "pIvQSVJbKNnU9mUy", "quantity": 55}, {"duration": 50, "endDate": "1976-08-09T00:00:00Z", "itemId": "I4gKqMusEbHpmFsy", "quantity": 27}]}], "userIdExpression": "lgTjPrAfFIxh93zC"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'RaxUOD2jIBXpZ1bv' \
    --limit '47' \
    --offset '4' \
    --sortBy '["namespace", "rewardCode:desc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'nuZSN0Xb3wvGrWbx' \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'imJNuiFJCPLUyqvx' \
    --body '{"description": "LZXn0wFajJDVxQEH", "eventTopic": "IbfLVwR1UFYGa6b6", "maxAwarded": 68, "maxAwardedPerUser": 41, "namespaceExpression": "RJ7apH234xRAm4pF", "rewardCode": "l3pUSWB0HUlEWZvx", "rewardConditions": [{"condition": "L6i6Nbbf1J4bdtZv", "conditionName": "blO1BxCnkTUDEx72", "eventName": "WJtAw88342H3vnMW", "rewardItems": [{"duration": 17, "endDate": "1971-09-15T00:00:00Z", "itemId": "JNsdwCIMCcJH7au8", "quantity": 70}, {"duration": 48, "endDate": "1984-12-04T00:00:00Z", "itemId": "yPrI8kh4pmrAY2I0", "quantity": 89}, {"duration": 20, "endDate": "1985-05-02T00:00:00Z", "itemId": "qjVkniLbp0YBGFRX", "quantity": 88}]}, {"condition": "dK23fjItttJsTbCH", "conditionName": "g1fkCWtjKAJbahMK", "eventName": "RWnzdftOxHnxrep7", "rewardItems": [{"duration": 62, "endDate": "1980-06-15T00:00:00Z", "itemId": "F7L0NB3DdPXkoXRE", "quantity": 64}, {"duration": 100, "endDate": "1977-07-22T00:00:00Z", "itemId": "aadQp3O7iYA0zFji", "quantity": 4}, {"duration": 33, "endDate": "1994-10-13T00:00:00Z", "itemId": "1gn3hvfbx8PS1C8R", "quantity": 45}]}, {"condition": "bsrrGWa6AuCWzMuL", "conditionName": "irIfGW2kNyPozZy6", "eventName": "cLZ6YcQsgxqnunIx", "rewardItems": [{"duration": 2, "endDate": "1980-02-09T00:00:00Z", "itemId": "BwpyZyEZMzuI9WmP", "quantity": 0}, {"duration": 55, "endDate": "1997-08-09T00:00:00Z", "itemId": "ENPTb7CaCZQnnaAR", "quantity": 34}, {"duration": 27, "endDate": "1984-10-03T00:00:00Z", "itemId": "urGfBYxttJox3Dfb", "quantity": 59}]}], "userIdExpression": "ZniWHD9oF60ocAr6"}' \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'arPsXdCmbaPQFFYs' \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'b9M48msu9yTT4Msc' \
    --body '{"payload": {"5Tmigw8UlPEbuMKW": {}, "jDwjDVXHBXUsyvSc": {}, "1JF08pOMTWcuQcYX": {}}}' \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'WCv09lBsJS5hotSA' \
    --body '{"conditionName": "zyubVIecN8YZY8W1", "userId": "XUFZ8UHNBUxLZKma"}' \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'CtSrseSSx0C9o3mZ' \
    --limit '23' \
    --offset '21' \
    --start '2mY3ASI1tlXsybZV' \
    --storeId 'E592hb2xjJmtKLEQ' \
    --viewId 'vPUtU1J0CHeIO9uN' \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'dB7TrCafcDmlCIUa' \
    --body '{"active": false, "displayOrder": 60, "endDate": "1984-02-16T00:00:00Z", "ext": {"d4GWTRdVTqbEvfV3": {}, "Jo4YJnKEcKDMWdtQ": {}, "EytdE3QkgybpjOpo": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 76, "itemCount": 26, "rule": "SEQUENCE"}, "items": [{"id": "PVQw1xn29Il8LFvl", "sku": "qrN1PdJP2MBovp2G"}, {"id": "jtb7aQv8ebjeBXAS", "sku": "DGpRLHCTizJenf3W"}, {"id": "Lbt2rSDaTDyv3Zay", "sku": "vhTnbmvaLC0FHQSw"}], "localizations": {"8rPr62f30nJ86EOJ": {"description": "GR6Z9RNBKKVNLaBy", "localExt": {"VabIFocFySG9pnCt": {}, "GVJxGOsfMGFl6hat": {}, "fir0AfV5zPLee2jQ": {}}, "longDescription": "DynM1gyKeIHKRBF0", "title": "XYHmO1aMj6fH1Xt7"}, "u5lSwc0xhC5UKadU": {"description": "v5x4vS0swYdJRsTx", "localExt": {"lH6QeXret6pN6RHM": {}, "hlmoRpbw6hhFgQIA": {}, "n9QHDzr4OTcvsCR0": {}}, "longDescription": "FMwitpZlth8OSTjP", "title": "tnIyt9GfdCxcnZE4"}, "Hp0LZgtLDeImaezX": {"description": "f2Nk2C2AQ5Q5UViE", "localExt": {"wKCHz9DhsBLsSzj5": {}, "iopgSjC6LDaqX5Vj": {}, "Uxf7ptjxhscP1paz": {}}, "longDescription": "54KrzRXbSvDbLX31", "title": "9ABo5P2dtuDH6npi"}}, "name": "NMMwMRDrQaWkjLJH", "rotationType": "FIXED_PERIOD", "startDate": "1973-07-11T00:00:00Z", "viewId": "VeQSKPK4rdrI58D4"}' \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'XEtv35uG0GZrq288' \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GySQYiuR7KLJALeX' \
    --storeId '7eyEibTGH7PoJTIF' \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'EL9VljohwUhdbdkS' \
    --storeId 'X3zkBDTFCcwdmdDC' \
    --body '{"active": true, "displayOrder": 42, "endDate": "1997-11-16T00:00:00Z", "ext": {"Mr8alQXD5DWaHqv7": {}, "OC0EYQJohcHQNoOr": {}, "tjuJdVoaPTauGgrk": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 87, "itemCount": 47, "rule": "SEQUENCE"}, "items": [{"id": "3syV7QvBx86A4MMa", "sku": "fSo5IFBOql7S9sQE"}, {"id": "TPD4zZ5N9590V1RN", "sku": "L1MSqpxQlbGo4nKI"}, {"id": "drVDct49g07jsQqr", "sku": "TR0IzO3lD1bYPfb9"}], "localizations": {"ZLn3lPDol665t9sw": {"description": "w4XWVYeuw5a3uJDI", "localExt": {"NooCayu0ujUm5NOp": {}, "fNTWGb6pTJTqjlLx": {}, "HGWrNuNP7VuipdPO": {}}, "longDescription": "SUX9KBTnlCBpukbl", "title": "dgqtrizdzlhiEVRx"}, "8O1k53xS9AFOODCu": {"description": "FxxWy9fxAbTntdKd", "localExt": {"ASWpIKt1DOfa0AuR": {}, "IoqC5TBFLFoJurIl": {}, "OgwMfmGXnssq9Oz9": {}}, "longDescription": "MSOLKqjgCrhmsuQJ", "title": "sMysjS8FVtn8BoeW"}, "BVO7uPE3WmGWJA8r": {"description": "KzAOUhhZNmY0CMA0", "localExt": {"rFUUhMsDkdqjAzUs": {}, "ulVq0lbpuYgyFjw2": {}, "1PhNWWMXJ9ChUSsU": {}}, "longDescription": "JSX3bmXI2QwIvAvo", "title": "aYj8Mo5ZnbG7OBa1"}}, "name": "NIcAzeL9s44AAzyK", "rotationType": "NONE", "startDate": "1989-08-30T00:00:00Z", "viewId": "oH0tKGycSNNRpQle"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 't2YJ0OHaFM1isZpf' \
    --storeId 'PFv834BhtkJjWwBu' \
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
    --body '{"defaultLanguage": "xpOc01rkCuUlfeJ9", "defaultRegion": "E9L67u4EoZZLMIf9", "description": "VL0etthaTB8mCh7L", "supportedLanguages": ["gDfBuiOb8ZaazT3T", "bJCJAw2fRdy19TkX", "3NOb5fUsyEniSjkr"], "supportedRegions": ["wEzDich1IYpuAI62", "XUW1ZEtoDFYTyqdk", "ihU74js0ioafsKlJ"], "title": "zs9rFiZ8RDFBOyRf"}' \
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
    --storeId 'n8E1KZZo4GN4lk2C' \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'uSYtwiJPQgDyIxYw' \
    --body '{"defaultLanguage": "iLBp44QplBBTwgKs", "defaultRegion": "7FbltIDkyap0GpUG", "description": "e2FTqBy4ecrWrprj", "supportedLanguages": ["da4pu0RdEtGHdxaG", "00gGx2hWpyFKZQ1A", "K5Ego26N4LLYnFVC"], "supportedRegions": ["wwXETulmjvAPS4Zg", "CcoCxqaommFBRY8n", "GzVuUb2G5HBR6HG9"], "title": "9JguK8oYSbEoeF5W"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TCIB5Kbad1yvEnzP' \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'aA6bJxRabs1aD1zd' \
    --action 'DELETE' \
    --itemSku 'EaprJWLpUwjL27xz' \
    --itemType 'INGAMEITEM' \
    --limit '25' \
    --offset '55' \
    --selected 'false' \
    --sortBy '["updatedAt", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'Zv6jDnaNhskmU0S4' \
    --updatedAtStart 'PfAIlLl1JS30TEKa' \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '502mtxQdkdiisEuF' \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'bgyabTpx3REvuyB9' \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Nh4gJ3BnTdcmJ4js' \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'BjTnaMftRfk2E9aA' \
    --action 'UPDATE' \
    --itemSku 'L6MT4T38JdZgVc3x' \
    --itemType 'SEASON' \
    --type 'STORE' \
    --updatedAtEnd 'lRXEFxGt4BLsw2gY' \
    --updatedAtStart 'AxVed5SSg3CW5g8A' \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'YmrkM5QkS42IicBC' \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'RMvaPIuTNz0Uae2d' \
    --namespace $AB_NAMESPACE \
    --storeId 'sZW5ugrifK8BIqHz' \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'BZghJvUza8G6Efxz' \
    --namespace $AB_NAMESPACE \
    --storeId 'xUA6u4kPDeCy6cx0' \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'bEg1mtc5EqaG5WFr' \
    --targetStoreId '4eZM5MkSoTxDDVEE' \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'eHyfvKd0atSolYKP' \
    --limit '31' \
    --offset '35' \
    --sku 'CLD4XgurdSI8RKkj' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'IKS531n5ukYaXAzt' \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4neMgFbpCdYadKtI' \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'unCMB4Mxswd5ojm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'zIE4OmUL8mjoAzMB' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DWjb8PameR8toBTX"}' \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'PwJhlvGaerSG25oQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'npQy8D4h9oyiZjvn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 35, "orderNo": "SqZ3MSi12bi9Z4D1"}' \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'CwIAu4VzUjOIfOfw' \
    --body '{"achievements": [{"id": "gNut7NsO1CVDnBUC", "value": 57}, {"id": "Nkn2GFd6z1y2laNA", "value": 89}, {"id": "fGEHJXknsGLry6N7", "value": 32}], "steamUserId": "pJS1qR6fwwP9z7Pc"}' \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ACC46YIbtQTpfCUt' \
    --xboxUserId 'ES6S5tBq7oFgVOHB' \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'GryvMgQEPO8yBFnT' \
    --body '{"achievements": [{"id": "blqPtHAWlJ2hjBf2", "percentComplete": 44}, {"id": "g0JxnMLkolALaMVf", "percentComplete": 83}, {"id": "aDdABXeqFg4hot2P", "percentComplete": 30}], "serviceConfigId": "0yHc3V8zvp2xeYaR", "titleId": "qih71EjCD3j2a6w8", "xboxUserId": "IBpk3VDvzbMabyEl"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'GOCTUOI6JGExVi0N' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YxnOn5KDNXoau4tb' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '5DTCnyPG59VSmMid' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'w5d4kymnGB2BKAB2' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'aDXeljmvqqTfOcuP' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Sz0E8pGksW4FwqBH' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'YMBuMUHhgkg2Sr8l' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EZbNNylkdmq9X9V4' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'NzkxcmtPmvEjYbes' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'YicHugvow0HiYMCJ' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UkBRnh5IhlfdeNd8' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XUj9yiCUDz0fLXCY' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'ui9vHeSNv6L4WCJe' \
    --features '["ioieH9Fn3K1S6pcy", "AdXQneLDlvX0hUCs", "EJTASGTsfStRbxc6"]' \
    --itemId '["QKCFZOPQvty88jgs", "dsvqgvhsnjl78oPa", "dLGJZJ6fq4Hm5RXn"]' \
    --limit '89' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'yZEkWu5favKZ5Jxd' \
    --body '[{"endDate": "1973-02-20T00:00:00Z", "grantedCode": "zl8YzrdFylRYTy8B", "itemId": "4jS4h26MpNbpIgpW", "itemNamespace": "MwKaNLcDZa9oBkKn", "language": "FJz_hGAm-Bu", "quantity": 2, "region": "NZV5ixeGheYTZoWS", "source": "IAP", "startDate": "1978-01-03T00:00:00Z", "storeId": "id5qas07oXWVMxUT"}, {"endDate": "1979-06-18T00:00:00Z", "grantedCode": "wX4v0t2bHSUIuZB0", "itemId": "Li2stglBpyuYqRNB", "itemNamespace": "U3fGW48bUokfDw8n", "language": "MDT_gnmU", "quantity": 84, "region": "rcVjAV4k7t0JCm5z", "source": "GIFT", "startDate": "1975-01-02T00:00:00Z", "storeId": "J1rwtuWaS1Vxvwsr"}, {"endDate": "1977-04-14T00:00:00Z", "grantedCode": "5qjeHVsZyNKigBHW", "itemId": "maQcQEEStPe7eUFl", "itemNamespace": "8XwbjPYsrgGLp963", "language": "cNE_QwdU_213", "quantity": 51, "region": "4gt5RUcjAguNT17l", "source": "GIFT", "startDate": "1995-07-20T00:00:00Z", "storeId": "acCpPUDPYWjdsa1R"}]' \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WYRXb2MkY8Va2SuN' \
    --activeOnly 'true' \
    --appId 'dSpW9TSC5wvf4ugf' \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'hVHtnJix1r6XE8wl' \
    --activeOnly 'false' \
    --limit '87' \
    --offset '99' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4vwycQROHjIISM3N' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --itemId '4C5XoCdzKODvNV6d' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cZpgtWyr4myZvSH6' \
    --ids '["ucPSB01Fnl7ZxZMi", "e7bVdBwlGBmkfMVX", "HApgMqcOz98pX2YB"]' \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hpL8bvpycmlJHVHN' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'RdSgCGyo6dNGfG7n' \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'vzCeO5lcVcDpgMJv' \
    --appIds '["fH7KI8FUzpvGenoh", "Xxlduo2S80o5RfCX", "0ddcjebXOYg7RdDX"]' \
    --itemIds '["uIAoj72pV1MaMrcK", "dsJPlAaDLoeVQRv9", "73n7LwHpd9E5HEtJ"]' \
    --skus '["TJj57jFODsYSh8ia", "8YXxKfrbkfbrcpO7", "gGUiZKhkvGxE3b8v"]' \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rx7Royn8XkZX9JZ7' \
    --itemIds '["JSAkzKdkCnIiZZyY", "F6RfNnrYTyBNX9QS", "bOmluYG6fqr9mcU9"]' \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Ua2pvF4JXYW2VQ5r' \
    --appId 'xNZu2zxUicY0lV2M' \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4Za9tIhHCF2sYQfX' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '6wHOF7XnsVUd7j3K' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '56kxqhxn19Ipln0e' \
    --ids '["EeTyVykGJ7mdDCD5", "PgFDUW74muk4UaWP", "gWns8Wd0O3AI44Jw"]' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'FtZgu9R0EC242uvf' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'lJDd5XDRhtATnDbb' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'sxm0WGIQUdzzNFg9' \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'J7hfrncdNfF0CfOI' \
    --entitlementIds 'HB3hlihFT8AMaLAW' \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'nrTn6hBjBzthRvAa' \
    --namespace $AB_NAMESPACE \
    --userId 'Ejmrym2HeB5ExN9I' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '0esrcg8r04tWgj9r' \
    --namespace $AB_NAMESPACE \
    --userId 'V8iGGFvGzReayhlX' \
    --body '{"endDate": "1971-11-19T00:00:00Z", "nullFieldList": ["bhPN07oaN4mAtf3m", "uJJe6xHG867oEuUe", "vVe80CSv3QHZEaJ2"], "startDate": "1996-05-07T00:00:00Z", "status": "REVOKED", "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'PtrQYCsQej7wrWNf' \
    --namespace $AB_NAMESPACE \
    --userId '65zuxwSAUeDXMSot' \
    --body '{"options": ["aVT0Y8GUiz41fyJB", "NpOtRtG1bum8GwKL", "6Q1QMdCnq5l2p6eJ"], "requestId": "hw6e4Fan6sGYv4bt", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'oGvOatJtzHyO9LU2' \
    --namespace $AB_NAMESPACE \
    --userId '9MyiMZUX9d7XnDsx' \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'LM0FqRtzMmUhq6Rt' \
    --namespace $AB_NAMESPACE \
    --userId 'b6SIoOrYO3rFjDQm' \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'bMXLt6bUppYbyLMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'WmsbEYveL6qIVBVG' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '2Ra1bp0UcgvHJTSg' \
    --namespace $AB_NAMESPACE \
    --userId 'WGreP5MMEoauen9d' \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'VFiWVy43TfJcSoKY' \
    --namespace $AB_NAMESPACE \
    --userId 'GSd2qODX22w1UdqP' \
    --body '{"reason": "5PTruA4WAXHTpdqy", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '1SlUSKKnc4P79mBP' \
    --namespace $AB_NAMESPACE \
    --userId 'gjoB5JnN5OiwVMV8' \
    --body '{"requestId": "WgODvWvyubsrEzHh", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'b3fd4A51mSy4oG99' \
    --body '{"duration": 86, "endDate": "1993-02-21T00:00:00Z", "itemId": "dZqn9A3ImM8jt1ZQ", "itemSku": "PVhgGA0jrCiJnBkj", "language": "hfVJqXx0lWm7eXz3", "order": {"currency": {"currencyCode": "mEsWSELDBPjvH2Gs", "currencySymbol": "ieTjw1YHbncPcuew", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "kOf6ZNTzMAZOTR5j"}, "ext": {"ZZ1qvsrLLYvfpgxe": {}, "qJ9fm5Hk0MatZHRM": {}, "0KMay1Cpx9pKVkHB": {}}, "free": false}, "orderNo": "T3uQoI35O44dmf2h", "origin": "Playstation", "quantity": 68, "region": "V1u1lzBY7kHO6vG7", "source": "PURCHASE", "startDate": "1978-03-14T00:00:00Z", "storeId": "1HNHTK9V4FWeWmPm"}' \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'yFJ3BKyTJ7NgYRih' \
    --body '{"code": "SBHDcaAmDCqcTckl", "language": "MRsR-ccQJ-CL", "region": "0uuhSjzZ9W5QGrtw"}' \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AoL2cuy3p5bngAj2' \
    --body '{"origin": "Oculus", "rewards": [{"currency": {"currencyCode": "5dReS3YdnhQhnktd", "namespace": "gyLFIFdzOo14FoeG"}, "item": {"itemId": "BwfuJdWJrqUguGYy", "itemSku": "EWmftqKYQkcSPZCE", "itemType": "24IX7isaAwTeMgff"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "R8rTBpw50Nlf98N3", "namespace": "BiJqesE3qQVGDV06"}, "item": {"itemId": "jKjczfujq0ik2ZEy", "itemSku": "ePoWqQ4e8qwRLH8B", "itemType": "V1Eir58RcLiuHT6w"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "lRcHHlL0BRSDWovq", "namespace": "eqtfNpzNqcAbs2bl"}, "item": {"itemId": "2fWAD0tmdLk5jmXU", "itemSku": "G78inOfdZ9NIjfoE", "itemType": "AZmEumhFfabJWTZN"}, "quantity": 42, "type": "CURRENCY"}], "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'o7zI8rSEruAhvVJW' \
    --endTime '1tUoX97224bG2P6e' \
    --limit '63' \
    --offset '99' \
    --productId 'TaQEeXY3EYHuMJDB' \
    --startTime 'GJjlgWK4hg6g2iAR' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'S89Et6yoC4uVUEq4' \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'b3uzmzPusATuO7da' \
    --endTime 'hsPF8HrarmjpeGLb' \
    --limit '20' \
    --offset '66' \
    --startTime 'A7Zad1vtnhxozLlX' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mxZFQbjTxhQETG77' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "jNcm-RstX", "productId": "WknHYYXWlM8CHfeZ", "region": "DEoLaW9ntbl3GhGr", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'L5gx13rAVlZmH0xg' \
    --itemId '74uKo130Uk9IgNWw' \
    --limit '84' \
    --offset '53' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'StZl2CBjsEQV9a5x' \
    --body '{"currencyCode": "SkXqPjXpUOtFqSTX", "currencyNamespace": "jPr8hrh1lh79ze67", "discountedPrice": 27, "ext": {"KpBXoj1mwaAvw0gP": {}, "MLzm3TQT0ZTaKN5m": {}, "RfCBcvVuwu6ffK2a": {}}, "itemId": "hBGHkEciolMc9qmd", "language": "RPErE8d2jZy5Mlgl", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 4, "quantity": 78, "region": "CdGuZ7b5IDe6nKgl", "returnUrl": "ZjtDe0wGicacJhWk", "sandbox": true, "sectionId": "az8XPnxNozufrNXa"}' \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'mahxZhsbJLwIPCfc' \
    --itemId 'pdUfNFyu9PTHrnH5' \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Jhm3ndZ7Iw5PLHoG' \
    --userId '8wxk5BAep2OcXDyo' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'OOczynVJBH7rGPiU' \
    --userId 'mWgm0MN0X0x7PNrI' \
    --body '{"status": "DELETED", "statusReason": "UfzVcDVdj27CPTBs"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GKjLuhZkCPWk3KMq' \
    --userId 'cmepuBvnWBjRVZJp' \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'qSApNcE24g57LUxb' \
    --userId 'h5jjnFzDbvYruDWC' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'taTaLXS4Zo5CjFc4' \
    --userId 'nrjZZUushadwqPPA' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'tTR3ZmJi7T2wci7l' \
    --userId 'nU53DG0mqcb1XThG' \
    --body '{"additionalData": {"cardSummary": "6MYaKSGHE8TyMsya"}, "authorisedTime": "1994-07-01T00:00:00Z", "chargebackReversedTime": "1998-01-21T00:00:00Z", "chargebackTime": "1994-06-06T00:00:00Z", "chargedTime": "1974-08-11T00:00:00Z", "createdTime": "1992-08-24T00:00:00Z", "currency": {"currencyCode": "yJbElTwGvOzObvVn", "currencySymbol": "siWdCspWg1EhCA3Q", "currencyType": "REAL", "decimals": 93, "namespace": "MAMOUcoNS6bT1o64"}, "customParameters": {"0aX5GrAwJX4ZGiqJ": {}, "mCLO4fEMz4cbx9aD": {}, "10HHpemxVOLFMXm4": {}}, "extOrderNo": "xN6QFq6Cehd5a61X", "extTxId": "KsxUSXfKPXwBwQSw", "extUserId": "pDY8sgKlti7CAU9w", "issuedAt": "1992-06-24T00:00:00Z", "metadata": {"fT4lFMS2Y28ZRBlh": "arsUaerOUbQCvKXU", "duisrGWCPpsoxOvj": "moOvhpCFhAM4EKym", "ixEx2EcXrnt5kPV6": "3zE12ijJuK2XzupW"}, "namespace": "5pAvM0hrVQsheLa4", "nonceStr": "Kcg5Q9yvPGLMHgeS", "paymentMethod": "g5HlCz62QnatTjvK", "paymentMethodFee": 36, "paymentOrderNo": "WjMfsWvIxoZmyAoY", "paymentProvider": "STRIPE", "paymentProviderFee": 82, "paymentStationUrl": "G1sxAJ12h2YFPaXi", "price": 69, "refundedTime": "1986-07-03T00:00:00Z", "salesTax": 22, "sandbox": true, "sku": "8NVKpJ92PQfhGPfH", "status": "INIT", "statusReason": "M9fzSU3IKVjjcHvM", "subscriptionId": "JBH5i5tzgpi6i6YX", "subtotalPrice": 76, "targetNamespace": "X34vQXuvHALgfQC8", "targetUserId": "mKR4K8sUMZTHjgKV", "tax": 59, "totalPrice": 50, "totalTax": 99, "txEndTime": "1998-09-16T00:00:00Z", "type": "JCq1LMhFb45O3GMR", "userId": "041C1s7doV646ACE", "vat": 71}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'B6iplgdmhZ1OtgNh' \
    --userId 'R7P6L2krIEeNCl8K' \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '1m0NQQjbai021se1' \
    --body '{"currencyCode": "OdC1lNGiHrzP8Hgr", "currencyNamespace": "X72sZWcWeMwBusE4", "customParameters": {"RhUlGYdJCVJ3JGP4": {}, "kNnGwUt7a6NVWQdO": {}, "nqz5b6k9J4HLVpnD": {}}, "description": "zDP8YFVkPMgtnrgL", "extOrderNo": "wQnaSe2wk6qR19mT", "extUserId": "Q4MCrIF3vRyrbUQg", "itemType": "SUBSCRIPTION", "language": "SGwO_748", "metadata": {"6ZooZfM6WEFmlYGZ": "hwjXSvibTLV7UhsH", "NFn3UmSvBBLWRTaK": "P58CSTlmQaJCAcIK", "MtlYw0v319oshD5h": "nfnY9Pu8bR6okvi8"}, "notifyUrl": "nvQy5oE1FvSjdLoO", "omitNotification": false, "platform": "H5QxnxliXcxPXtfp", "price": 92, "recurringPaymentOrderNo": "FJYDhktLHmaSV5hF", "region": "2H4iTTxaxf9eKLQO", "returnUrl": "6rflzB6fCGZYrvfa", "sandbox": true, "sku": "Dftj2HaJHIpSLc9Y", "subscriptionId": "lGifDsZTteaFfYlQ", "title": "nlmjulPFiZgBdqvh"}' \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vMbb2Q377YVo9nhu' \
    --userId 'D3AIbfSQUy9c2V5c' \
    --body '{"description": "Zs3drI0JanLr1Qhi"}' \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'L0A3HyUnZn4DGb1A' \
    --body '{"code": "R5ib5GpoooDvyJfS", "orderNo": "GoqEa0c2QRq8AU6d"}' \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '4sNtwrggcUXKLFFW' \
    --body '{"meta": {"f7iuKTIKYUFPat63": {}, "V6B2lt4BzN7p4Yzo": {}, "ou0Nf4VWrFQrYCgJ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "7lBr9QtLnTO0nuic", "namespace": "l0mPUDYO9UsjZDpd"}, "entitlement": {"entitlementId": "3kmc3ZRCSKGDoocc"}, "item": {"itemIdentity": "0DtJpDmCvkbW5r8R", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 99, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "ekZMbhSw3xWmaO54", "namespace": "LPdSJfBgB2rEr9Gh"}, "entitlement": {"entitlementId": "of6Tglpa0XCjvflQ"}, "item": {"itemIdentity": "oIcfFhWyOo42rQdF", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "t98MpIKD0AEhfBQS", "namespace": "tG38zaVrwCTmFWvx"}, "entitlement": {"entitlementId": "xfrxk3I2mVqN2QpY"}, "item": {"itemIdentity": "BoWmqi9wy7vrTJC2", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 66, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "Mh2pa5Uppwk2bsx0"}' \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'hnBAPEwT5YJ1WKbB' \
    --body '{"gameSessionId": "Ysx7y2YHZWg8874r", "payload": {"mp0viMQLs6sffgDw": {}, "sBujXZjq1J4PFh9q": {}, "aQOkbpNJRs6jefsp": {}}, "scid": "1m8flzOh7cm1GzrU", "sessionTemplateName": "e5NL56FqduaE5S1y"}' \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ql8ILC8pChyV3fIe' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'K9yDWX7heW4BH3TH' \
    --limit '64' \
    --offset '19' \
    --sku '6R1110xVHKdchdi9' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'euR2QpgIC4Ac6GI2' \
    --excludeSystem 'true' \
    --limit '25' \
    --offset '0' \
    --subscriptionId 'a1gXkHztnUb5B0Io' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'IjPnEqnHWuodZJN3' \
    --body '{"grantDays": 41, "itemId": "899Y5t5ScshpG1rD", "language": "j8YXlawPFafuwuCa", "reason": "8kJVmIYrTk5oVqHe", "region": "R1hisdl30C6UmsHc", "source": "11dohgD7jEBOXbH8"}' \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rRi6E9yyZhTdB043' \
    --itemId 'UtwZCig1aNvC1iGp' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9OpknEqMTWhw9nHY' \
    --userId 'zVpnbWJTfDTMvRdA' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zIzVk0LTbYeaAWcG' \
    --userId 'KrdcSZoKwPBA0BnR' \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IwIHfrWTlzaW4Cvx' \
    --userId '2z4X8K8YkrOVtHxx' \
    --force 'false' \
    --body '{"immediate": true, "reason": "SZjA4r1fyioqkfr6"}' \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hwjkWyL3Ea0OVacR' \
    --userId 'uuXXrGNX7iyXLYYx' \
    --body '{"grantDays": 45, "reason": "qvNEjsd1U8KoLqrU"}' \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'REOjsue8R43CvYwD' \
    --userId 'bmOZD5jVZjiIv1eS' \
    --excludeFree 'true' \
    --limit '92' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Hk0suZ9lzNuu5FZt' \
    --userId 'M51NFmghWAzQxhuD' \
    --body '{"additionalData": {"cardSummary": "3zFXiKjTBaNNFirm"}, "authorisedTime": "1994-03-15T00:00:00Z", "chargebackReversedTime": "1998-10-04T00:00:00Z", "chargebackTime": "1981-07-02T00:00:00Z", "chargedTime": "1990-05-08T00:00:00Z", "createdTime": "1994-01-23T00:00:00Z", "currency": {"currencyCode": "WySDqWZAPKolHP3Y", "currencySymbol": "KWsCx3nvt4Th0g4x", "currencyType": "REAL", "decimals": 32, "namespace": "YBYwPGUKw3gC7MpZ"}, "customParameters": {"zM4rlaJoNqvoI467": {}, "a4ICZWuF4tUZDCa8": {}, "0NjsqqewX4IcUwnt": {}}, "extOrderNo": "Ci3Tv2INSZZSESnx", "extTxId": "P1bD9OGFEo8S7YA7", "extUserId": "mj8PYzKm3LQCaj5R", "issuedAt": "1979-11-27T00:00:00Z", "metadata": {"fQKIPK7AL6fZlyrC": "tnxhDWEYypzOdMJo", "J2B7NJ7xrgvTMBr5": "j6j6yMcSL0euHiGf", "dNfrwnr7intwWhGv": "L7Q1jyrEPKH0mIFR"}, "namespace": "9hZVien4WNl7VGgx", "nonceStr": "Lp6DqtxBL8thgx1t", "paymentMethod": "kouV5BRLdBkrgATu", "paymentMethodFee": 27, "paymentOrderNo": "H4CX7hOU7AGNvrlQ", "paymentProvider": "ALIPAY", "paymentProviderFee": 24, "paymentStationUrl": "PdevIc6J86Hz2hSY", "price": 40, "refundedTime": "1998-10-01T00:00:00Z", "salesTax": 12, "sandbox": true, "sku": "nbN1CMwOoFJ1bE49", "status": "REFUND_FAILED", "statusReason": "MUrX7sam1BcVywFp", "subscriptionId": "TgvwHLVN8Ljot1lm", "subtotalPrice": 79, "targetNamespace": "22P7FX7iuAyooHxa", "targetUserId": "v44J40N7uXjNrdXg", "tax": 46, "totalPrice": 27, "totalTax": 26, "txEndTime": "1990-08-18T00:00:00Z", "type": "W1a876PIrxtILG5W", "userId": "Pq9gIgXcgKI4pj7z", "vat": 95}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'AvrKt5lqyezemqCk' \
    --namespace $AB_NAMESPACE \
    --userId '8yuUma8rxXUZBBys' \
    --body '{"count": 89, "orderNo": "XuS0WV3MMonD2dLL"}' \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'FNaeim4kU2c218Sl' \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '5R64l3XGlP3xN7B2' \
    --namespace $AB_NAMESPACE \
    --userId '2ysTwsuEaT8OYgrf' \
    --body '{"allowOverdraft": false, "amount": 14, "balanceOrigin": "Twitch", "reason": "yX1KwSFghIepg6Z7"}' \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'stEMNuoCPxBtU3JN' \
    --namespace $AB_NAMESPACE \
    --userId 'y8JviWcl4w8CEYqU' \
    --limit '67' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'PeoRdLbLmMpOUyRu' \
    --namespace $AB_NAMESPACE \
    --userId 'xpuKFaSObf2pjGYv' \
    --body '{"amount": 54, "expireAt": "1986-05-21T00:00:00Z", "origin": "Other", "reason": "CL749jABaTSavwbJ", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'KFe8AsSkb5IYJdbl' \
    --namespace $AB_NAMESPACE \
    --userId 'NutPMswD3a2N25Lz' \
    --body '{"amount": 22, "walletPlatform": "Xbox"}' \
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
    --storeId 'dSTcboI3aiRgsx3L' \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'mqNFeq2yMf3yBajn' \
    --body '{"displayOrder": 6, "localizations": {"OuLydKTLXhAqda8Z": {"description": "xgheMeG89CfQ415m", "localExt": {"vjNJFkLCyhsECOmq": {}, "cORrCrkGzKJ7opIa": {}, "Q7VuJdnsJk6gbX5s": {}}, "longDescription": "8yAybWpkXalEsCB8", "title": "X5KqRyBaXFWKd6R8"}, "2jq9oOwp8cM9xOTg": {"description": "GoSUX0gaiVxUSrjJ", "localExt": {"Vg7v6NoOOeZEwXQR": {}, "Z6FmZgifiCqoOcX5": {}, "6Xw8QsGht7NoKNOM": {}}, "longDescription": "t9UX3tbYPh0bSGdq", "title": "sRLKuQmwL2lBiT1r"}, "AjP4HSjKMa4zqJeK": {"description": "xgmVsKjTP5vQdS9H", "localExt": {"CMqTL5ko4wC6H3Qc": {}, "2QJOY9LyjerWD5P1": {}, "px5OUe97yfvQ6Cwg": {}}, "longDescription": "HMLoQgJIJNb6Rb7a", "title": "ORQ9YOHAlPO007LE"}}, "name": "vTHje19ZmE9OILqR"}' \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'RnuLfqAVGmw7api2' \
    --storeId 't7lsnfWLBjNC2mYQ' \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'tHnmeFEsrCfb8Qyk' \
    --storeId 'PjMYinWL1KM7anXJ' \
    --body '{"displayOrder": 12, "localizations": {"jhGAaamXi107fsGo": {"description": "uvkjGuYbRQZyAf5q", "localExt": {"mVTkBl59an2x7nXU": {}, "EELglK6PsU573BXN": {}, "qNPaZDKZh3LOQChS": {}}, "longDescription": "qRFOrSFeD4jN9748", "title": "ekymfpuYlySDLyGy"}, "WoqmrQISsXpFvXfx": {"description": "PzD3W91AJctBNioI", "localExt": {"ljCD3xncwOo5aSJF": {}, "n3aYCL85q0oR9bJH": {}, "WCYBvQ7FvPH7lFU1": {}}, "longDescription": "Ya3xtSvzBcJPq2ep", "title": "iBJxMyyTWNgN607Y"}, "hh4kcBjQ3940Dirq": {"description": "6RAfIOPmsrEwkteD", "localExt": {"P9fN72mGMtx0ePsr": {}, "iDYIHZw0qvK0fgIk": {}, "FGjdttwb23OhoMVd": {}}, "longDescription": "aOFYStxT88nAt1UB", "title": "im2qvaCpy2DmZM7e"}}, "name": "3eRtarKrW6cuduEg"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'XDke6e7m6olAckll' \
    --storeId 'HSCklhWKCvzJ50LH' \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 61, "expireAt": "1980-04-23T00:00:00Z", "origin": "Oculus", "reason": "hp47L7dodkOpnL0o", "source": "REWARD"}, "currencyCode": "TymFzMTguwDRo1Hb", "userIds": ["qzZw0OtAhAsPl74e", "zLZzINOtsvhileSK", "cHjvJLkAuBI1OjJV"]}, {"creditRequest": {"amount": 93, "expireAt": "1976-09-29T00:00:00Z", "origin": "Steam", "reason": "n7lonfxU87F1pzxe", "source": "PROMOTION"}, "currencyCode": "X7q7MrhhzqFZjuLJ", "userIds": ["vEHv0QIzLhLocr7F", "aSFaJ2BtzriJsrU2", "MkkrCjQbkh5Rvgsa"]}, {"creditRequest": {"amount": 27, "expireAt": "1986-09-22T00:00:00Z", "origin": "GooglePlay", "reason": "3oyK8tGuWIsKQIbb", "source": "DLC"}, "currencyCode": "1b42P4L6seQaJUab", "userIds": ["47H9byrjQ2AXgNiR", "DYDWqhbgrkRKDdaC", "yKD9mHkSORITT95t"]}]' \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ROYSMn3faQI7uZla", "request": {"allowOverdraft": true, "amount": 61, "balanceOrigin": "Other", "reason": "EBOqb7mTvwb9xDpO"}, "userIds": ["3rVQkgK76C7bvMdk", "l0j97BRVbQ5O02jJ", "YyVhdhS6BC6hxOKm"]}, {"currencyCode": "GtWU41j7vvNHsSkm", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "Nintendo", "reason": "IdlmLYmB6TnMTKnf"}, "userIds": ["0cjgepIOsjGE57YK", "fclmMOGYpjtpRa2i", "xc4xcfXammr10tXQ"]}, {"currencyCode": "02JZBdKF0cjSNccz", "request": {"allowOverdraft": true, "amount": 13, "balanceOrigin": "Steam", "reason": "PITK5f8EJ4yAyeDr"}, "userIds": ["q5IjHBHQTk1DanDg", "yOuxBdHg4aDJAP5E", "JTITifGRmrwjTNih"]}]' \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'L3C3pHi6dCEGeB0C' \
    --end 'oy0XropqjVy91A9P' \
    --start 'pyyh44xMQZmEnxUC' \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["GBnavpZnqQHtEgfb", "f16ji8PY3lKa3FQ7", "oMGSu2VgomSkWabn"], "apiKey": "aCqVpF4e6k3DxEit", "authoriseAsCapture": false, "blockedPaymentMethods": ["bxX4zjIR7Bqe4DFt", "Triil79lAZVMSsyj", "iGOUDYctzOs1Pd4A"], "clientKey": "UCdSu9wmX0rcPx8E", "dropInSettings": "kZJgk5ivogbVOi9Z", "liveEndpointUrlPrefix": "mLfkFBsZ7HIOnrt2", "merchantAccount": "oJ5iYriCYlzsNrDp", "notificationHmacKey": "ChWaThuBbwLF8R7v", "notificationPassword": "Ob3DvRJlGMjHz6nQ", "notificationUsername": "c8weD0yCYAmwale9", "returnUrl": "87VMIKcsyUALGDWn", "settings": "pVybUX0ZFgfV72iy"}' \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "FTYdUo3obL2JOmip", "privateKey": "oydHae557RmNrd9r", "publicKey": "f9RWy3YrXJTHIww8", "returnUrl": "Jjt9FY372iSZQXgn"}' \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "YXb1jeu5ZkeQf4wy", "secretKey": "AYsqWH2MBT49l4UL"}' \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'whHt3x9kAR043aV4' \
    --region '80phSnFsJxKTpmMv' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "0yPgTmdyGJzbfp6S", "clientSecret": "QvR2uBrtSSmNFySU", "returnUrl": "kYNHiCwddeKqlNXj", "webHookId": "gvM9bLhuaG2g64a3"}' \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["XIUIS7GkSNrroeqT", "9LpB0IYRbqLBKKlP", "l2B5vMKGHITeNucI"], "publishableKey": "95rUo1uppr7ridih", "secretKey": "N1wm9XP6EO9UrEL2", "webhookSecret": "PaKpAa1yV97vACx2"}' \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "xJyj0HCGyN4zRQE7", "key": "RP7MmTLWm9kRblFV", "mchid": "AniAW0hfQU77Bhc8", "returnUrl": "WjBhWG3g0ZVUwOMT"}' \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "BPrFoRIbDZfLnGow", "flowCompletionUrl": "POLsRuy9o6UgFHm6", "merchantId": 40, "projectId": 44, "projectSecretKey": "HrwtrqvfxakdAHAg"}' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'ge1DEoMsDQc9Ap4M' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'FX1bZ7tQIaVQIUUk' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["vG3Dgcy2PT05tpmZ", "I8Iwyi6SmaNYSdm8", "SOSVMhgPCTNIiY1t"], "apiKey": "a9xyNshCqwkjd0fz", "authoriseAsCapture": false, "blockedPaymentMethods": ["xaY7AHW1n46Hwv1D", "lf62XbxmSokakQiw", "SufT4Tfuy8hTzHT2"], "clientKey": "Kt5K7cQuAAt0Pm9l", "dropInSettings": "moXNLwxtmFr9vXH4", "liveEndpointUrlPrefix": "LVNsyXzjeOg6PSFF", "merchantAccount": "PqiSicqVn6g6UBdd", "notificationHmacKey": "EK8464QAGmzc15Aj", "notificationPassword": "AuJUfAiLKk4AbUmG", "notificationUsername": "G1Y3HDGu5afpCWpV", "returnUrl": "eSYvCa50oYgBpI6F", "settings": "Cly9syNadOgj69pl"}' \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'ndbk70KB76dwfc4m' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'YMaKmYSDfMZacIOq' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "n741xskQzJfw2EbO", "privateKey": "oOH0q8tyR8L5PDrD", "publicKey": "HmAJZKq9NhJaW6Xd", "returnUrl": "020vFhQbhh8i5Rtr"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'vLBPSUfQ5vtayuWD' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'QSdbKVXiIIwiPrYF' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "7fgoKr4juCAD9Yn9", "secretKey": "97MxkTQpfoxfW08s"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'yEDeKrncQhCrmKNV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'EeuOvRPS0dAkmjAt' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "agY77dx6P1hchjqF", "clientSecret": "PRNdbiptofBOV11P", "returnUrl": "WCoJom1fhboXHHiO", "webHookId": "s3WU3wlO647fcS4y"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Vs5Vn2fWxn4WC0h7' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'lHLxSsYajrKmz6uI' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["s7OY0LNQskmz02Zd", "4lWHkNvdJZ2Oywzd", "pfMRgfgan0XMexLB"], "publishableKey": "7imC3hGPiYjuO5lQ", "secretKey": "2ytS5WAphwH2Nyk0", "webhookSecret": "nDWzhsSczQGOPcWw"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'pyHbNYZpnDu3dfpK' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '0RaviLKm2WaP8equ' \
    --validate 'true' \
    --body '{"appId": "aKQfYFnhaImfp5Jr", "key": "h1zJHFCWjwJ3zVPH", "mchid": "jwl4uTDRQTmf5Zf3", "returnUrl": "oC7NkszR56YbHs7M"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'pPAhaTadwgq99VA1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'GJOa6S4QzOOoVtdk' \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'poxw9lJZ6a0Jgpq5' \
    --validate 'false' \
    --body '{"apiKey": "5AE2Gi8lIP8sEei2", "flowCompletionUrl": "eVLGR6Sa8gcaX290", "merchantId": 47, "projectId": 66, "projectSecretKey": "cCV1Jd5vAErfUdqR"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'wpZkaDsLUNL4aFyL' \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '8e2XZwJkDiQKrgvu' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '10' \
    --namespace 'rYteNvUby2ZVXXhT' \
    --offset '52' \
    --region 'm4KpOEnqKTK7uMxO' \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "EB7eepNLWuyS5bfQ", "region": "uJQvm5JOB45DQs8f", "sandboxTaxJarApiToken": "08qEq75b7ykS0NiR", "specials": ["XSOLLA", "PAYPAL", "XSOLLA"], "taxJarApiToken": "ANnjhN6dDPMaiOXa", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'kFb5I1VV0hjKyeRn' \
    --region '1wTLnZ24mCukNUX5' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'PDmGstqsFjzANV8B' \
    --body '{"aggregate": "XSOLLA", "namespace": "k2gYdzvimPZ7BIzr", "region": "LSdctbVfvjtjQVBP", "sandboxTaxJarApiToken": "gPQqjw7lRfJq5UDx", "specials": ["PAYPAL", "CHECKOUT", "WALLET"], "taxJarApiToken": "M3bGsXvuH5ZanppC", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'BfbhzuPHwPvbQqos' \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "WHoyMMCf0iDjA0so", "taxJarApiToken": "xt0nDElhsPLqB1S0", "taxJarEnabled": true, "taxJarProductCodesMapping": {"9k30lj2bDjJRsyIC": "Wfha7S7Xnnp2M508", "qzrnfczumm0e3HNo": "xATHqlxvT9rBg5Ey", "Pr1yCbEAHuxujE6O": "Xa2LwGxhPd64wKqu"}}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'zwmJa6hLO74Woj9Z' \
    --end '0qdCcqE3wg8ETKX9' \
    --start 'kAwizoOHPmqou0a6' \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'E4kQ5cl9h3krwVvn' \
    --storeId 'mImUGJr9HcKaXCsj' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'BWCnDj5bAxiZ0xyY' \
    --storeId 'pQ5HfRr2z2ZNrf0U' \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'GnDF83kniNq7HWiD' \
    --namespace $AB_NAMESPACE \
    --language 'QA7sr26cZTNdgs37' \
    --storeId 'A9j3iivFP8ahQGY4' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'ke2Kt6WFetQ0dUKU' \
    --namespace $AB_NAMESPACE \
    --language 'yPeFean5AE5tS02O' \
    --storeId 'IjDEuOSAPzvDFfnO' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'fKbBbdC3BC69XrOq' \
    --namespace $AB_NAMESPACE \
    --language 'hp73WtvV7TaDQtvQ' \
    --storeId '61xSzOAu6SWkZ9fq' \
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
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'jM5koN8QKHLJS3c9' \
    --region '8VhGsJqpRdBQ0Nj4' \
    --storeId 'QKP8xGu7WMjd1eYt' \
    --appId 'JgEgKH7RehEYnAnn' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'khDE1ZpNFXM5KqHQ' \
    --categoryPath 'miYWorbABr51fJ0R' \
    --features 'bNtDQkXo7TQP1NEI' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'HJ6Zs03H4G6i8GpT' \
    --limit '85' \
    --offset '20' \
    --region 'JCgMCAhxgZDhIy82' \
    --sortBy '["name:asc", "displayOrder:asc", "updatedAt:asc"]' \
    --storeId 'HgCNKCJKHDz2GzCj' \
    --tags 'u6O6ppxV9svMrAeW' \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '8B1ak7kBmMShMzsh' \
    --region 'rlqq3Pr5zjDKOVJt' \
    --storeId 'rtbTKIZ9P8binAQE' \
    --sku 'RkwWld5TG2YIULC9' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'Yx89YtczDCrtC6lE' \
    --region 'gCBqW5HzqNBuQea0' \
    --storeId 'Ne15u0ZICVNQxIzu' \
    --itemIds 'fSjKtQyuk32IHVxX' \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["xQ3TMt73mooKnVW6", "IltammEr3xkO5VEM", "7NqwQ68hcqaBAxLb"]}' \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SUBSCRIPTION' \
    --limit '85' \
    --offset '5' \
    --region 'JrGHb1LzTq6EtfEO' \
    --storeId 'ii92KWEmfssW71V4' \
    --keyword 'ViXMwUApOInkYkEj' \
    --language 'WFQ9SdFSJUp2pRpn' \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'hWIshU5UffXa4dO2' \
    --namespace $AB_NAMESPACE \
    --language 'PSMx3a7qxbJPlpY2' \
    --region 'B7alRWHGgMHjUsIE' \
    --storeId 'QtITG4zf8Rc3TNtd' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '6A08Y56NoSRhpmsb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '4ooAgg3T8a81zux9' \
    --namespace $AB_NAMESPACE \
    --language 'Nanr1bGugbQiJcW5' \
    --populateBundle 'false' \
    --region '5jyVKwzQkmCdjYXT' \
    --storeId 'NJHvIVNTzA6kGaST' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "i5SBkuLnlqtHPJuc", "paymentProvider": "ADYEN", "returnUrl": "Y3NbrjY86RjqskKx", "ui": "8vMzTftCB2pVvlS3", "zipCode": "NTMHyPbvo2FJ7r0V"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O3gT6tj0NPqmM2CR' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9zY8su0h0zrN3O04' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'g5Z3NYm3eA95ubWc' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'RLw7sVYTgMXzTL1c' \
    --body '{"token": "NFxSrComcIVgMpXH"}' \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YsOGsDaAXvLeJfMA' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'a8pdJe9H4NJg3cZJ' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'rIMx7AkJCLLWCeE7' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'V2Gc5gZxVFSh4h7Z' \
    --foreinginvoice 'wzhpUjsokKv40bHV' \
    --invoiceId 'bERKVrbeoDEVfckO' \
    --payload 'GHvQHTixQ3a67lB7' \
    --redirectResult 'OWIas9pzeqEs6X3t' \
    --resultCode 'lRlmh08Fs0BWLa4t' \
    --sessionId '4QTP8zBTZH7ztw5l' \
    --status 'P9jeclLlBDo8OpIg' \
    --token 'JBDIOXbAVBWNxd6N' \
    --type 'ufZofI5QAP16dvLh' \
    --userId 'lbmHUuYnWgEbxqCW' \
    --orderNo 'aGA0Z39qx5VqzhhZ' \
    --paymentOrderNo 'Pw7Ek7jYRlyohU7j' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'XiEK1HNfChg3P4Iw' \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '0UHczIywai7yz9dJ' \
    --paymentOrderNo 'wm8OrAwyt4PAxjJZ' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'g5Ze7FlM0yVDdl2G' \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'xEDZZ7UkhRk21AC4' \
    --limit '23' \
    --offset '59' \
    --sortBy '["namespace:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'cmaEgeE4FBSoTfec' \
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
    --appIds '["WPwrZD6NCBRF2Pti", "Vmltqn7oD8S8FH2U", "hdyFLcuT0MtAJGQj"]' \
    --itemIds '["PoZFNPoVTtrWP7Mv", "SHOlGNnuLlfjPkFm", "8s0sXtm9fpZ6cLid"]' \
    --skus '["8FMU8MayXtcjW0Vv", "0XiNU4yX8YWdV5Nu", "lcn0Nl22r1ylBDb4"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'gSi5zTyXbHU5QgGg' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'EV7Epeo120YHdOAH' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'oSYQL7e0cn90xxdP' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["67DMMTqXulYvrkBy", "ImCZsI2Lg5QWKQFX", "o97sRkbr9WVByd84"]' \
    --itemIds '["ocwBBMjAup041f76", "I6jIMZiZsceKB5zk", "DmirsZn42PBs53HW"]' \
    --skus '["SZtHUVRzFCQqW6Gx", "TZRowDp7dcIszQ6H", "yMWNvZzSXqcQtMYY"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "qDaiesSP9tSqhhVt", "language": "FEA", "region": "YqAKWuJUqPY0Q6Ai"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'uVg3NVy1pxx35Ikg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tCi3MCBe95VCFF7c' \
    --body '{"epicGamesJwtToken": "MRS3HUYN7fT0n5Of"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'S4WFcB1kFIchi5iM' \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '7Qt0cDMJbRVo2bIh' \
    --body '{"serviceLabel": 52}' \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ANtY9JbkQ87AOJII' \
    --body '{"serviceLabels": [11, 69, 21]}' \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZxwYKbhFyFhO90hn' \
    --body '{"appId": "9l7kbd7C857pabs9", "steamId": "X9zGLUY6kBc3P9pK"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '0nq2TXERf3p18SF5' \
    --body '{"xstsToken": "g0xgDPOM2Fs04jgj"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yTPYbfYi46XvLV0v' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'cC04YAYqgdBL2Z4v' \
    --features '["CHEyafwOrWuZCWoK", "TwABg4zhvCnAOZWq", "613wGGu77ruYb37I"]' \
    --itemId '["mvReGUC6Hseq7klI", "UAY5ZgDhW7JwNBCg", "puyGJ4GMuvvber9e"]' \
    --limit '47' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'e2f5IMMSLhsraL5A' \
    --appId 'TVpNXQk9CZrdu9E1' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'UE98qYJpPokl3oXa' \
    --limit '39' \
    --offset '87' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1JqMLkEsS3o0fn5q' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '5sNwyEF5LITNQhdO' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'FxnQ8S1M6AVzRDeV' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'HDKAmqcjEbntChXB' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kp7wdJeyRShFK6Wk' \
    --appIds '["AK16atEjABWxoZPO", "fR6k6t1mcx58xIsR", "1IWHJwCLXyfENTDx"]' \
    --itemIds '["yweA6icrIF4X347A", "VllkyRj0BKLAomgQ", "LAVmLbMgfTx8ntDR"]' \
    --skus '["x3Kqiq7N4o01sfqZ", "pp0qtJY9Ez8UAwiv", "m8MPuIiIQP0tRlbS"]' \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'hNRFwArb9u25FwRy' \
    --appId 'aeM4p2IWWLPhyeet' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'EwezbJTjqcN2UvUC' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '73YURrNnhHqeaS3H' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'csEV38lM8cugatnl' \
    --ids '["p1B0wu0k3CM7ia01", "iTNKAcsxFSVlVpKm", "5fV0QEYkxfgbEAqg"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WBTaifYmYzSBNOKS' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'oSUAkJAfoEvL3sdB' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'eN39Okh9CDPsh31j' \
    --namespace $AB_NAMESPACE \
    --userId 'nX72lXM3j9Yk9ZOv' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '9vM6E1g9mGsclN0m' \
    --namespace $AB_NAMESPACE \
    --userId 'tmHcOjCz3EexuEks' \
    --body '{"options": ["ML3UigxOOFDfKM3G", "LsgMwF6U5f3u8GMu", "DC9Ki9b7R8I2yOJe"], "requestId": "tuedT8DExfgFfBds", "useCount": 15}' \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'Lch0ifx8o5wH54YR' \
    --namespace $AB_NAMESPACE \
    --userId 'PZ7Z7xmgUyydZ4ZE' \
    --body '{"requestId": "N1sYZoyoMUwELBXy", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'jBu4OEFblscdZSNO' \
    --body '{"code": "mUO0IwZ2V0RQNUbk", "language": "ir_ksGF-987", "region": "lllPM3YgG2X5bOPL"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'iOiXVUA0CSO1GwCh' \
    --body '{"excludeOldTransactions": true, "language": "kR", "productId": "bSuS6NeAWcudBBS5", "receiptData": "qx862AFMAy1rzxcP", "region": "sz29i4PxvY3X7ubh", "transactionId": "v8vXlPNX7Ot42p8k"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '2XRUB7lkkzhJoEvS' \
    --body '{"epicGamesJwtToken": "pG9zAzejcQbE8eiv"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ewei5v7GyEKC8eb3' \
    --body '{"autoAck": false, "language": "ECKv_nHXW", "orderId": "38QQ4N8zHqPqUNYH", "packageName": "rscOrNowoaT4LpqX", "productId": "jc6wUlVgJYIiYWTu", "purchaseTime": 52, "purchaseToken": "4AGIAbNTzRXppBRG", "region": "ostygJu5ClPMY2rK"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5rkrZoFiT3zsqtb0' \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '1sr8UhehGnUap6af' \
    --body '{"currencyCode": "08xUALgX7YCavP4E", "price": 0.29061312096243264, "productId": "yVwmyy2tj9PQ4eNz", "serviceLabel": 84}' \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'DE5nwG2CZD3iuKAN' \
    --body '{"currencyCode": "O52FH7ob2b8B4grT", "price": 0.3733037210062544, "productId": "6DvIRqxAwhVLN4Sy", "serviceLabels": [75, 54, 23]}' \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 't5KOwkh1AllXNSRs' \
    --body '{"appId": "Rnv0D3PNnWipFKHi", "currencyCode": "BWnIpPOQoe7NAXvn", "language": "VAzB_xZNf", "price": 0.8249824859315541, "productId": "hAkaOkH7UpMwCuRy", "region": "TXfnfTo4hTahhhmP", "steamId": "XCItXpaXc8wg2Mn9"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'bESSUBG9CsCh8jXV' \
    --body '{"gameId": "XOkpf78HmhRCYEP2", "language": "jzzK", "region": "FaPMAq6t1IsqyOk7"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'rW7gtWbpjqOkUbVn' \
    --body '{"currencyCode": "81TMqM62vmM03g1T", "price": 0.45377354395872815, "productId": "ueeJfDXEUYc0ypVC", "xstsToken": "Y5YbO8gfzW8yXNTS"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'W68ToeZCpft5Qx0n' \
    --itemId 'V7TYpxXiHmQAOSkV' \
    --limit '89' \
    --offset '13' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'YKuqo97qAvkJG1Mc' \
    --body '{"currencyCode": "7LKuGOliHtdPqD58", "discountedPrice": 9, "ext": {"LMCQZomP5ZzLH9fj": {}, "0Q8flXKqpzTq14j0": {}, "z4m379ivho6NscUm": {}}, "itemId": "efXgIyWxCrQFIbZx", "language": "pq-586", "price": 19, "quantity": 64, "region": "qoVmgZIg9FooM2FD", "returnUrl": "huylnQ1DJAYjTyDk", "sectionId": "Jnw5jReFnLSeYQpy"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'i7ovkaz1IHtQtLgJ' \
    --userId 'jJv6wzpZlFXF7Ewh' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Pr04yIO8piGVgOnf' \
    --userId 'qnduE0w1BbwoE9LA' \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'WjlvZywxdxKzitA4' \
    --userId 'HYwC9qCkH5mWRUei' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Hgq7jhc2YHK77Z04' \
    --userId 'FZIbtcMisDMJRuAS' \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'N8ENfhT38qpTTyTl' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'rPeE3JVd2KPa1b15' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '3VwyB1HMxBwll08n' \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'gN9S1rbjVnQA02ze' \
    --language 'M3qZ9kueqqAWPsjG' \
    --region 'bGSavhr5ZAlHiqj1' \
    --storeId 'daPvPta1nQ6mTDFJ' \
    --viewId 'ALX5HVg0RGQHkMrs' \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'mI3nhqvgyMBuMAXs' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 's9XGkGnUun6uiqJ7' \
    --limit '42' \
    --offset '20' \
    --sku 'x6iG2pnYgAEaj5r9' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'J29IPFZoLi9qdqWt' \
    --body '{"currencyCode": "DbV3cdoqDH1EQRsR", "itemId": "dgfbnnOvN6EbemoQ", "language": "Bvm_uipn-702", "region": "OznHdqGYVE93hVKE", "returnUrl": "1eorumFNeAcic2hF", "source": "NNy1BzXCbKXxpqIK"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sNGFMPoRwF8JkrCb' \
    --itemId 'pIFtJZZAtzV3Q2D9' \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iXhqNYnTMJ2WMC8g' \
    --userId 'SyXI68o8I17IhsEo' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RYJLtegyvTBVe7D2' \
    --userId 'PzRmbLzns5AcnWWu' \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eKFnuXai7fwLtwn8' \
    --userId 'aUBhJT2GEyr6lCy9' \
    --body '{"immediate": true, "reason": "xBEbjodgNVaPQnLF"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'L3hSgByIIvYTk51Q' \
    --userId 'Mhal1UJjT7zB4cTG' \
    --excludeFree 'false' \
    --limit '54' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'z9XH87snTwg3KGiv' \
    --language '0TgFv5tfb5DxhEkQ' \
    --storeId 'TAHa5rpG45S3Recn' \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '1S2A9kzO2t9nzsc2' \
    --namespace $AB_NAMESPACE \
    --userId 'y1d3CzUnbVPfe5VY' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'rANASDXCIWjD389g' \
    --namespace $AB_NAMESPACE \
    --userId '6TWsEGQvLsDlomzd' \
    --limit '0' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate '4MLwtWfadtuy5ISb' \
    --baseAppId 'CNOAl8XYczYymxDu' \
    --categoryPath 'NExgwbiQwExE8JnS' \
    --features 'tS8k1i7vo5UG7wRJ' \
    --includeSubCategoryItem 'true' \
    --itemName 'pH3rPE98Cx8q4skO' \
    --itemStatus 'INACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '50' \
    --offset '50' \
    --region 'VqyLDtrTvYfaZluU' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "name:desc"]' \
    --storeId 'pZrRi7uAYAhd6GGd' \
    --tags 'Lr34Ow2Y7e1h8jPf' \
    --targetNamespace 'OMNCiXaV4TtiXYEv' \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GNtNDFgDG4GDV3KM' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'xCIAn0VaP9EZSVFw' \
    --body '{"itemIds": ["t8qvM8Z2GpQp2DSB", "3zL7Smg7sTaiR80F", "0Jp8hhInJqwzsSrA"]}' \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE