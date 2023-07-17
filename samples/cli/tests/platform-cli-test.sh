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
    --body '{"context": {"item": {"appId": "DD4a8nR6ZuBopAVH", "appType": "DEMO", "baseAppId": "4TUny2vEo0HT99w8", "boothName": "Co168dsxHv4gtqae", "boundItemIds": ["JzeepHOXrL4JWFNu", "jucT4qI3EWVJGSY2", "Qv98tlhoRRNnemxt"], "categoryPath": "NZfde6NPKqu3e1bT", "clazz": "ZBYX6C18pF3NvHus", "createdAt": "1990-05-09T00:00:00Z", "description": "Tewh2w87MNR315k4", "displayOrder": 92, "entitlementType": "DURABLE", "ext": {"wDXqIN9cbkt7DQAn": {}, "6ZIGOVfSUUuHFG7k": {}, "8mFc7NgWu4NJsF8a": {}}, "features": ["4sS61bsDwQzHiwSt", "yJLlmag8zKmKQO4K", "WUrhu9ppQ2ns2UN7"], "fresh": true, "images": [{"as": "2ofXJPidDcEfUdF8", "caption": "ifwcuoO7ZLgsxsg3", "height": 64, "imageUrl": "VswG4ih4AU20qcb4", "smallImageUrl": "oIfASUDbBIKmfxXK", "width": 83}, {"as": "WNlWQmtugQGQDztc", "caption": "GuK656lmYWeRXEAn", "height": 44, "imageUrl": "XTZ2P2CumNqWRQ4z", "smallImageUrl": "HREdvUz1UqsnTref", "width": 11}, {"as": "93dydYAj00B5edbK", "caption": "e7fo4L9IFGiOVntE", "height": 89, "imageUrl": "fRuHbj9VSsrOQAJH", "smallImageUrl": "gyLAC0m3ItRzvw4c", "width": 31}], "itemId": "jlGknE2JoZp7x2Z6", "itemIds": ["aBuZzfUzXO2fIzKy", "dyinR36taAfhGTup", "JNyD8oLCIMH5weZh"], "itemQty": {"E4N8GKkUiXwGuHpC": 85, "EaoF7K5a4NHesnQy": 21, "l4oLjxLt8TjqrEAZ": 28}, "itemType": "MEDIA", "language": "DiettzHdpkwyMOG8", "listable": true, "localExt": {"hIkk7M0ezO6LaMC2": {}, "PsuvKItNvGb8Y79A": {}, "i5RnYR0RuWMiJYmO": {}}, "longDescription": "BGLV5kqBnnNHJcgY", "lootBoxConfig": {"rewardCount": 32, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 39, "endDate": "1999-10-22T00:00:00Z", "itemId": "SPlOMcOy6oYd7nR1", "itemSku": "ClnKUYgTqnnSO0yX", "itemType": "BfpAd8w6lrEsHIiG"}, {"count": 11, "duration": 11, "endDate": "1991-02-25T00:00:00Z", "itemId": "mzidqg8GPekF7tTo", "itemSku": "RIlnLa7EULeD0ILH", "itemType": "lDQXpbE6S7ML3zEy"}, {"count": 99, "duration": 95, "endDate": "1976-11-08T00:00:00Z", "itemId": "PoRcC5cNisHH458Z", "itemSku": "sVcsfSF5Zj3caRmx", "itemType": "XYWVdyovnsUrEJKG"}], "name": "1vjSmQRdDINrMgHw", "odds": 0.30878754605287406, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 47, "duration": 6, "endDate": "1997-09-09T00:00:00Z", "itemId": "aPyEo6Cfm98hjfYD", "itemSku": "Zfozd3FENe8oqTdE", "itemType": "62YclnsB3JxA72SV"}, {"count": 14, "duration": 26, "endDate": "1972-12-29T00:00:00Z", "itemId": "VfDzFfKD7FwuX9rx", "itemSku": "HPkyh4cAkDsKTWjP", "itemType": "0ayHElo7WB0Yk8r3"}, {"count": 53, "duration": 26, "endDate": "1973-08-01T00:00:00Z", "itemId": "dzlgxbWJWjjr4aoe", "itemSku": "OmaSvCw14DT6Qpsx", "itemType": "dHxYcBYOm1R8vWrW"}], "name": "Y2W0gnrGVE49Z7YO", "odds": 0.469667884193142, "type": "PROBABILITY_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 68, "duration": 77, "endDate": "1978-05-25T00:00:00Z", "itemId": "e4VY6AUKxZA2ZLFM", "itemSku": "9kzdZrf5WeJOXkL1", "itemType": "9am953HmqUjIFFL2"}, {"count": 69, "duration": 32, "endDate": "1988-11-05T00:00:00Z", "itemId": "yFIGqVGnmeD0LMKX", "itemSku": "pQ7Ss5XJGNIWSzAe", "itemType": "UQNpfEsNyTyJJfr7"}, {"count": 54, "duration": 33, "endDate": "1992-12-31T00:00:00Z", "itemId": "0yHonqfU0u3kaLBS", "itemSku": "RT55JuK3vpXNrsMX", "itemType": "dabJepwIGdyBeTFe"}], "name": "p8oxE5ckFzlinBLM", "odds": 0.25051632767764354, "type": "PROBABILITY_GROUP", "weight": 15}], "rollFunction": "CUSTOM"}, "maxCount": 41, "maxCountPerUser": 82, "name": "hgnGuM3r5FAKRVku", "namespace": "6DulgjHXBly2YBPr", "optionBoxConfig": {"boxItems": [{"count": 92, "duration": 27, "endDate": "1992-12-30T00:00:00Z", "itemId": "RoPXgHiCA3NFmbPr", "itemSku": "RHfLzcY4VifzcaK2", "itemType": "NhTj1WcenFESFjtr"}, {"count": 50, "duration": 96, "endDate": "1987-02-26T00:00:00Z", "itemId": "kjHw4yYHRjTSWEcT", "itemSku": "DaXjP5CNS4s03Cd0", "itemType": "0gGrpEXj7oSnksNy"}, {"count": 65, "duration": 8, "endDate": "1983-10-11T00:00:00Z", "itemId": "S21nzIJCoW7kVXBx", "itemSku": "vW5amf6XCS9PD591", "itemType": "UQdZZKEITZpBcVzd"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 35, "comparison": "is", "name": "QpaYoL7VOxgn4cXG", "predicateType": "SeasonPassPredicate", "value": "4zbxXtsM85NxzUMZ", "values": ["gxKjy1uQBjRFMmDr", "4gNtB4emePhFNFpu", "Hu5dKZ0BwTlGYHaP"]}, {"anyOf": 8, "comparison": "isLessThanOrEqual", "name": "cKWtxeEDkxZ8zikF", "predicateType": "EntitlementPredicate", "value": "s4WpGpjrAqrAvjMz", "values": ["yuyawOVd2UOq7D2h", "4e3lZM07WabBh5jT", "wccIjurcW9nWUBjE"]}, {"anyOf": 58, "comparison": "is", "name": "KdDmKe1et3EArWhL", "predicateType": "SeasonTierPredicate", "value": "eYXrkQ1SYpfHLHYl", "values": ["yc8oVTuikXtrOHwk", "gRgEQgelM2ar5YaW", "JASJun7wh5iszuN9"]}]}, {"operator": "and", "predicates": [{"anyOf": 24, "comparison": "isGreaterThan", "name": "RDBZqXA8fN5DONFa", "predicateType": "SeasonPassPredicate", "value": "L0CyDHgSM9K3zsbU", "values": ["ye5kdCe5Rc74BbWd", "16sFblORI8bwS3jT", "plQowUTBVI2QA6OQ"]}, {"anyOf": 100, "comparison": "isGreaterThanOrEqual", "name": "7jhkHePIdJCL7ZX2", "predicateType": "EntitlementPredicate", "value": "BHGDs0nwikycF1CM", "values": ["hJnxe0PbxTXvjIYF", "bmbCUkf5g40dHPhW", "nmwPQ2Dy9gHvvspm"]}, {"anyOf": 41, "comparison": "isGreaterThanOrEqual", "name": "MSVUMKkSEPcaTikj", "predicateType": "EntitlementPredicate", "value": "zdNQlPUV8KAlzKo2", "values": ["4li1JtCi7Wu2JSJr", "tdwQ0Q5GRx1BXur5", "elWvSHc4uZVgYWJ9"]}]}, {"operator": "and", "predicates": [{"anyOf": 40, "comparison": "is", "name": "v4CuZ5A8JGk3mgTv", "predicateType": "SeasonTierPredicate", "value": "9zB3qJMmMnaKdBB2", "values": ["VRirnqbqiUGvlNid", "mrNSW8Wk4wgCV1gT", "WZNA2Uvxfg4qLJ71"]}, {"anyOf": 84, "comparison": "isLessThanOrEqual", "name": "VFHtZtfSk575AqOH", "predicateType": "SeasonPassPredicate", "value": "OS9mGljHMPqhdzpf", "values": ["mGNXeXq4kKRWfQ7O", "YcP45O66cog9q2CC", "B6V8hl8Gn8pCH3rc"]}, {"anyOf": 18, "comparison": "isLessThanOrEqual", "name": "Fswfi9MaqUUpi0Al", "predicateType": "SeasonTierPredicate", "value": "dMBXhIghmVhRg4vJ", "values": ["kWYFPOA71rSSgLtS", "efqKn2i0BK0QzCqM", "KiA2M8uy9oB3sNGd"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 64, "fixedTrialCycles": 89, "graceDays": 7}, "region": "VaFjfqhvSd0q3mQq", "regionData": [{"currencyCode": "UkLKuloPCxfmaZQb", "currencyNamespace": "dQE3Wqyyuv5e56vD", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1981-11-14T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1977-05-14T00:00:00Z", "discountedPrice": 78, "expireAt": "1973-04-24T00:00:00Z", "price": 66, "purchaseAt": "1973-11-11T00:00:00Z", "trialPrice": 42}, {"currencyCode": "cdkrUuszOEc7Ycba", "currencyNamespace": "HNJX4Vfxk7G1HlPz", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1994-04-15T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-05-11T00:00:00Z", "discountedPrice": 79, "expireAt": "1984-03-08T00:00:00Z", "price": 98, "purchaseAt": "1993-02-03T00:00:00Z", "trialPrice": 59}, {"currencyCode": "zN1FP5Nla1zVCfXe", "currencyNamespace": "EL7fZX4FTjEEGToG", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1991-02-15T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-05-10T00:00:00Z", "discountedPrice": 71, "expireAt": "1975-04-15T00:00:00Z", "price": 16, "purchaseAt": "1976-05-09T00:00:00Z", "trialPrice": 83}], "saleConfig": {"currencyCode": "NyThX0n14vpJ8Qeh", "price": 27}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "Khkqd3bj8gIE00mI", "stackable": true, "status": "ACTIVE", "tags": ["vYCqTPH2S4RskJg1", "oqf6RY9kC5e4eP6r", "NecUutgZxeKq3GYy"], "targetCurrencyCode": "8nAb65jKu6WtTzXj", "targetItemId": "yVTzhNR9G6tK11Jm", "targetNamespace": "EKprEaLsImHORJY8", "thumbnailUrl": "wEeCHKDLiJPneke6", "title": "92WE1TxRPGxRqSme", "updatedAt": "1971-03-14T00:00:00Z", "useCount": 64}, "namespace": "JfRs722Voobs4dAc", "order": {"currency": {"currencyCode": "h2pR3YNDttf1wm2k", "currencySymbol": "mJKdPZalZ7tB6VuU", "currencyType": "VIRTUAL", "decimals": 10, "namespace": "4tyayBnt7O0FqsJl"}, "ext": {"pjS9v5ljDmst8CwD": {}, "EYaDMJ8tf9DEp9oD": {}, "H8pUDO0dhDDZnpJs": {}}, "free": false}, "source": "DLC"}, "script": "qnU8RVFkZ3dP4aXK", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'R19WMcrzOZ3c6KhB' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '2B3lQ6VUevMpcNUd' \
    --body '{"grantDays": "FupHwh0MxIbI4dNk"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'lvhvXQoZ4ONGFCkn' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ndu0pGdihWgHd25h' \
    --body '{"grantDays": "zM7uepUgVZerEc1j"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "7OlmL3HXLSXSQxAi", "dryRun": false, "fulfillmentUrl": "CTZz2HwrW8YNI6u5", "itemType": "BUNDLE", "purchaseConditionUrl": "Gvm0NczUmkkvSwiT"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'JwyVWWBuzAkysi5k' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'KBWOKMNKAi2HxUFL' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'hwWmdDVUf9vSUG9n' \
    --body '{"clazz": "eZN1plHVP4h2i2Q3", "dryRun": true, "fulfillmentUrl": "Zr6vLB21ftEw94or", "purchaseConditionUrl": "REC4xxxPzwmY9Olg"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'gecgxfnYNN4BQC4Q' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'bZKxruUsoHfuufJC' \
    --offset '53' \
    --tag 'oN1qTXGfq3C7KmMX' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "g1TOrZyLIXYzwVLM", "items": [{"extraSubscriptionDays": 45, "itemId": "5MoFaOit8e89i09P", "itemName": "kTv8qUbLU1q592Ir", "quantity": 35}, {"extraSubscriptionDays": 81, "itemId": "t6F17MxN2iQENwrr", "itemName": "Hn3rcs841eWSFRha", "quantity": 100}, {"extraSubscriptionDays": 94, "itemId": "IhXiXoSzpFjaGjEI", "itemName": "a0bCq772yBuS31fl", "quantity": 7}], "maxRedeemCountPerCampaignPerUser": 59, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 12, "name": "5WkgiGV6NQkEb26h", "redeemEnd": "1986-04-17T00:00:00Z", "redeemStart": "1978-09-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["W2nfafULATSHBopk", "7oDXT3ElNHpzmEdR", "c4cF5Df9PemVUlZI"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Nk8THHPtp63jVydV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'UklzZTkH9kMNzdFE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3fPLtisjTAzCVUfj", "items": [{"extraSubscriptionDays": 16, "itemId": "cga1SDHHQhib6sSx", "itemName": "YIW20knjU3FGVLJD", "quantity": 90}, {"extraSubscriptionDays": 77, "itemId": "DSzxhiwaahIcSIh8", "itemName": "gq9MQU8mmrAGmICc", "quantity": 75}, {"extraSubscriptionDays": 42, "itemId": "ntqTJjlMlXmZ41gS", "itemName": "J2eKoufIyYmX93Gz", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 49, "maxRedeemCountPerCode": 93, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 21, "name": "rvmDHs4jnGC9ft2O", "redeemEnd": "1971-09-05T00:00:00Z", "redeemStart": "1976-01-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Vn40ppaCZPZV5CiS", "xDoZhuarXHO9yyro", "4hXMecnskSqT9nmr"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'XnWQ0D6CaKYIRujn' \
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
    --body '{"appConfig": {"appName": "daTcurBh21NzgV0L"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "xJjy0fD7u6GW9kQc"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "iX82xLpEheVGQ8Jy"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "NZ3xJCcd1oQppQct"}, "extendType": "CUSTOM"}' \
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
    --storeId 'AgsPJKy7anIjF0yd' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'o5FhGy6M8Q5Cowm5' \
    --body '{"categoryPath": "uhDOBiW3fcugkAwg", "localizationDisplayNames": {"uWMSNYg7ibg3zlP2": "2r10eoAyoNw7l0RM", "HsniCgQnWQbCI7dP": "MRLiwTIX6ENR29vf", "8MJNJgyhayEzbyLs": "4yrx5BmkPz3Uk7rS"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'mRhIe2E7sjE7xWDg' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'QYssqOO50EBYjRA1' \
    --namespace $AB_NAMESPACE \
    --storeId 'qwdL1pBqrC1ZnFGS' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'h2GYmCPLI0sDbTGv' \
    --namespace $AB_NAMESPACE \
    --storeId '2hVXyRxq2xOlNPWd' \
    --body '{"localizationDisplayNames": {"7ZuVb6lPa3Y1csu5": "CMPOUuwhnc9E6Ijz", "Hx3FCyee9eGTZNNL": "5zK0djXcirM9ZxXx", "eUQiWXxNa9qBKno4": "gu0Bxyfe87ifJBFo"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'yNl4XwpRqaRRBy23' \
    --namespace $AB_NAMESPACE \
    --storeId 'QiF7XDlZjMNzAJuo' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'DNQuHv23h2CA2iKJ' \
    --namespace $AB_NAMESPACE \
    --storeId '2t2FThOpnAMZx4rX' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'c7HcqnvZ9UFo9GWM' \
    --namespace $AB_NAMESPACE \
    --storeId 'BFABXurSrYzGJO3d' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'd13Oo523w2LcbsRG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '74' \
    --code 'ymwjintZTkr4Q2yz' \
    --limit '3' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'pcRePnIhv2KyZJM4' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 77}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'oPJCIlJuepXuXojs' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'GtUR9SXdV6gcwDiX' \
    --namespace $AB_NAMESPACE \
    --batchNo '62' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'lf7JCYp67D5gXvba' \
    --namespace $AB_NAMESPACE \
    --batchNo '51' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'BsHN5JkzLXurhnJd' \
    --namespace $AB_NAMESPACE \
    --code 'SEMaWcsyPXoZfyf2' \
    --limit '33' \
    --offset '96' \
    --userId '3iUnew4FbcUWu41e' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'OLtc3EAQbGBYcxox' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'SBXpHUfuTktBaJBF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'DGgwDEFzhZ3NaUJe' \
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
    --body '{"currencyCode": "AsERwoPJRx50Llsk", "currencySymbol": "0iGX4B3pDT95vJlO", "currencyType": "REAL", "decimals": 8, "localizationDescriptions": {"xOO6sSD7oV5IMgeC": "yhbYHZEEwqlRltQJ", "x61W5rA5XZEiK7tL": "vpNEYFCh0DJzwxus", "WCOjlGE4on2SjlwM": "v8ce3s5eCwTssL26"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '2hdZg7D7Xj4ZGNyG' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"6P6MkJNk0hvFjmyd": "zpkNQigY02I5Ypiv", "oj6ymQZiE38BQs1D": "kJQyZvlb0XEawQtH", "Sfp9ecSrhow83Ojl": "pfpwGfbEVCY6wYh6"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'lsZ5lslLQOsZOsgd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '6Qrciq5jr4cAYBZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Rk9IE7kFdVhIA6D0' \
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
    --body '{"data": [{"id": "BaetAagJ7nD9HR9B", "rewards": [{"currency": {"currencyCode": "6ZbGbAhOOUIP1RBJ", "namespace": "siXRlPOSnd4yb8SO"}, "item": {"itemId": "h40qo0wfvOqIELwp", "itemSku": "TsobkKObxK5qPhP6", "itemType": "4lYM8HPvrsyt7tRw"}, "quantity": 17, "type": "ITEM"}, {"currency": {"currencyCode": "svSiRAAKjsTH1YMg", "namespace": "RYPcP0UUG8TgidJb"}, "item": {"itemId": "0kSoyvU7e487QaJ6", "itemSku": "LB59VCgtUrJ80XUF", "itemType": "RlNHLNnnXkwwAdPi"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "CDWlsQsqK1X6imtb", "namespace": "Q3ouHrpViDZBDvK0"}, "item": {"itemId": "qykq6wX8QR5jhHV4", "itemSku": "PBFOGQtNHs4aYcee", "itemType": "iioY1QKxUcYrus5q"}, "quantity": 51, "type": "CURRENCY"}]}, {"id": "xrzRqvNw1BE3hZAw", "rewards": [{"currency": {"currencyCode": "uvpEtcZWebpXmJol", "namespace": "Yh4576KeQ1qPwwge"}, "item": {"itemId": "c7qqs1FnTKhsIMIs", "itemSku": "zyyOS8ulC9JkIpuf", "itemType": "86OKoMJXnAdIWoZ7"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "2t4R1PVwovkTB69F", "namespace": "YLRsVFjL7J8TLc6c"}, "item": {"itemId": "E3zIyWcbuKjOHkb0", "itemSku": "oPEq34oZDhwF7fyB", "itemType": "2iTMJIOZH2qP1JX4"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "uPD15GwYa6y8iTSN", "namespace": "nOwI0c1UqjElomRR"}, "item": {"itemId": "h8GvDFQN7gcS6vR9", "itemSku": "pskiKIgQ9pGrRjSO", "itemType": "eqWa8HZZPbBLWwWp"}, "quantity": 22, "type": "ITEM"}]}, {"id": "Mu01AHiwqSXFLMBc", "rewards": [{"currency": {"currencyCode": "yAL5F0XGDyKfNUCG", "namespace": "m4XxiESakvkDWuul"}, "item": {"itemId": "UT9iQ47BkoDPSona", "itemSku": "HwgbYIhIFbV2A17M", "itemType": "QQhEYgw4Fv0nSnZm"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "VWL7xaUXtwC4J1yl", "namespace": "z8vONeGyGcRMTMfM"}, "item": {"itemId": "z6IajkFWiaZhZ8Nu", "itemSku": "6PXFKoSOvf08qKFd", "itemType": "ePxeargitjmhse0s"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "2E9zP1mfsOU3xYBa", "namespace": "QnzVij7ZHjXLfePK"}, "item": {"itemId": "2AV5KHz4YOKrgJI7", "itemSku": "GP67NGNvlkOP1uX4", "itemType": "ncQT2Wq225AkN1aC"}, "quantity": 85, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"YhfLOM4jPS7IQ0kV": "NbnzaKDTwdExLLU1", "SbeAkJwQJJqOlpHY": "Ax5aqlGQzPWcE5GQ", "WEiu1lBiOvUoLTzk": "Y3YQgAwOlvmE1hr1"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"V38JKbuFah7S8WZW": "H629YYYJPfWeewlL", "2zIzlBV4F70frQUS": "dCo0qxEnkeNlObHp", "WvEjii16YnNmG8V4": "sQRwLpLc6gbC1b8Y"}}, {"platform": "PSN", "platformDlcIdMap": {"g09p2d78RfUQ65SV": "7nkAZex75JcDx28F", "JqbKVOqty2GaK6pw": "8CBiwl9XaU6SPRqG", "cNt0m41u06fSrfQQ": "VtKkB8MwlrU7bhsA"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'qX4pYAMeWdjbti8K' \
    --itemId '["Epp3hbiKc7d2Tu6D", "TSxzMEuUsIJSmVWB", "N9RoYP7ANedFUDXQ"]' \
    --limit '37' \
    --offset '68' \
    --userId 'FGVwizTBFwJUbbWp' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["fbTA02IlVhtKibks", "rOpqIObHNLWlTPmp", "ieMWZdVSqSmRzHwY"]' \
    --limit '35' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1974-12-23T00:00:00Z", "grantedCode": "LU56jCSFrzCdenL5", "itemId": "0brKzMmdSXsxCtKg", "itemNamespace": "WhlC2YTxjoYk2SsK", "language": "Hqm-HNUY_190", "quantity": 90, "region": "Lw5r1vnO28ywpTSV", "source": "ACHIEVEMENT", "startDate": "1989-05-22T00:00:00Z", "storeId": "jC8IaBZmiplRhhDM"}, {"endDate": "1978-03-21T00:00:00Z", "grantedCode": "4EzKkiT7L5d59nzO", "itemId": "SraFn8CQiBVmEk20", "itemNamespace": "9cQGYq9ZjIRUxGqv", "language": "kmm-WzVD", "quantity": 80, "region": "CUaSECDSlPKYVsJk", "source": "OTHER", "startDate": "1991-02-28T00:00:00Z", "storeId": "jCGrPemc1tR552Ug"}, {"endDate": "1991-06-26T00:00:00Z", "grantedCode": "bwEXLzG5pdwGik9F", "itemId": "zoaGw03J7ArdVn5q", "itemNamespace": "gkwCXPmZPHAqmlcw", "language": "One", "quantity": 72, "region": "XVeLmYGxx0SzdBw5", "source": "REDEEM_CODE", "startDate": "1985-07-08T00:00:00Z", "storeId": "50sNXeoq9Z0hNegg"}], "userIds": ["fNHFcd1ta3mToeoj", "epc6x7bKQsbfMgv9", "5gzKDKQmC7Din83E"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["bpk03b1qOEqvHo3Z", "ZCSBIqTJBskOpMvf", "82OYG5i2q2zXPnBz"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'axnKsLQ48vNKoU3E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '44' \
    --status 'FAIL' \
    --userId 'WqQdSOcltotAitUC' \
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
    --body '{"bundleId": "Yy44ZGI5QJQJvQBN", "password": "v1pVIS7ZuvNvGZjm"}' \
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
    --body '{"sandboxId": "PsPzli9vlYaEmCwb"}' \
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
    --body '{"applicationName": "UWiTzVS1GEzACsfw", "serviceAccountId": "5k8PBzNhD2G3sJbB"}' \
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
    --body '{"data": [{"itemIdentity": "dP6YNLingqlN2FD3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"paMZIzSIiWSRidkM": "qyqJTCTDuLSV2cOq", "y7rDysDXo30dWI70": "Aqa4jf1UhBlxspUE", "ktO0VZQyyGtv99Nu": "XIH1qrCFOFzBtSIs"}}, {"itemIdentity": "DbgZJpMtSieLxDa1", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ghZ21uL2J3QUxrc5": "nIzbu7C5m8UA4fG1", "UW6hKHvu9uBtX565": "mAGdHG7HlEuu9oys", "jz7616eosFl7SuOC": "jXLdOKL0KqQWaD1M"}}, {"itemIdentity": "sEW9xy9MgpWbCaoJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nz3QvHMI9wXAcJX8": "Plm7LBuulYAge0kQ", "qfWpvJryQIhWSsAu": "qsJPxeH9WalpPxiY", "JgCMTPOLMDhdme8d": "SK1FAN4bKuo4QjH4"}}]}' \
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
    --body '{"environment": "qKCdtS3fhmBKsG2r"}' \
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
    --body '{"appId": "qi3voWtwIXOAUHGe", "publisherAuthenticationKey": "2AX73aR2NuhlyVRN"}' \
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
    --body '{"clientId": "ja4r6URCWndiad2P", "clientSecret": "TK16KBTUTilL3vXM", "organizationId": "NiTw5BdluYiqTDmj"}' \
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
    --body '{"relyingPartyCert": "EJKjhJpFiKlM9HER"}' \
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
    --password 'FpkeMTQNaHC7qXMj' \
    > test.out 2>&1
eval_tap $? 91 'UpdateXblBPCertFile' test.out

#- 92 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'bNfbWjLEnT6a9uv9' \
    --itemId 'ew6WFx1xwdLi9Cz1' \
    --itemType 'APP' \
    --endTime 'XXRvMbKVFKreCUyc' \
    --startTime 'omcSQuH6M3AJ9A1q' \
    > test.out 2>&1
eval_tap $? 92 'DownloadInvoiceDetails' test.out

#- 93 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'ODUG0R0KNMIEuucQ' \
    --itemId 'RivYBRQaOe3P01uK' \
    --itemType 'EXTENSION' \
    --endTime 'F4iQqfw05DgNfDyX' \
    --startTime '8QUOLL5fHlGzcuVB' \
    > test.out 2>&1
eval_tap $? 93 'GenerateInvoiceSummary' test.out

#- 94 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'uy33PcD73ejuSBgg' \
    --body '{"categoryPath": "Bx4C3IxMeKPRvRTZ", "targetItemId": "eLutAFN9Fz7StiNx", "targetNamespace": "IsOz5sovzPv0pJrt"}' \
    > test.out 2>&1
eval_tap $? 94 'SyncInGameItem' test.out

#- 95 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TStU3E2O6WLTpttJ' \
    --body '{"appId": "fjQAYYgl81PhGZeC", "appType": "DLC", "baseAppId": "gtS4xG6a90MqH0Sr", "boothName": "XZuNwFoCOfEWnfV3", "categoryPath": "1H3TSZvxBBmyznGS", "clazz": "Bhhtq0tmDEoyETiS", "displayOrder": 59, "entitlementType": "CONSUMABLE", "ext": {"oMhpbqtnTMPUTOxz": {}, "F7857g4zZ9eMccr1": {}, "FCPj21MxZrwTTAld": {}}, "features": ["rvH68rttHOdNThLa", "ceXA5nquR1NbMkIO", "m3jh0D19QWIn4ZcP"], "images": [{"as": "HqfWw6XPwozq7mSx", "caption": "JqDeX0MaEHgPt6oG", "height": 51, "imageUrl": "RLcakDv3PFrJqbVL", "smallImageUrl": "82reQjKmHlcXCre5", "width": 100}, {"as": "nAmDPZKyS6zkkKWr", "caption": "M0i6DLrQHkZRHNPQ", "height": 2, "imageUrl": "rtMoogRvYFvZQ1S0", "smallImageUrl": "oe7WhkENeIe98zCO", "width": 43}, {"as": "Ujqr4edsGFS1ClIo", "caption": "pp05ObPNO0miSJT2", "height": 2, "imageUrl": "sKOvQbUHhd0JSfQO", "smallImageUrl": "Mf3FCbrtf6lF0aBx", "width": 86}], "itemIds": ["yvSIIun67n3Sgln0", "xjYSB2uAyqSmECLu", "asZKD5qJTkiXpFHZ"], "itemQty": {"kuCz1yILeuGNBqEz": 43, "jfTOEJMl4qFlicCD": 80, "AQa6hESM6qzaLGco": 22}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"b6Bpjlo0gOAnazJI": {"description": "tEruGJjBdyuu4S4r", "localExt": {"WDvtoV60yfqnX5b0": {}, "5Nn4Z7GTFaOqx6LC": {}, "Rf4yjQnLBb11uvcR": {}}, "longDescription": "oe3fPdGqIXd2Bi2n", "title": "ZmkREDox4xP9mtil"}, "oNMThR8teJ8f8IjG": {"description": "ATzdFV66SreLnt7i", "localExt": {"g2PuTr8gZ1IorJuA": {}, "8UrzitOCSEkwBo0q": {}, "4e5ZJguNfSD4OjNy": {}}, "longDescription": "uMKMo2OCpuc4b4TS", "title": "ld6r295JehsVbM09"}, "x830aUjxTigYlwBN": {"description": "Evs0Triz6cZjIUWG", "localExt": {"X2di7NDtb7KFmsbJ": {}, "8Gf897UYlozer9sE": {}, "M7aMDPOqtbalnpFn": {}}, "longDescription": "C2xKLqiZainyvO3U", "title": "2kWuQDurMcluNOfV"}}, "lootBoxConfig": {"rewardCount": 47, "rewards": [{"lootBoxItems": [{"count": 95, "duration": 81, "endDate": "1994-08-17T00:00:00Z", "itemId": "bU139zHxGb7H57i1", "itemSku": "II2KPA7idzFjHR5d", "itemType": "xETP0wCvQIGNtWgl"}, {"count": 15, "duration": 33, "endDate": "1973-01-25T00:00:00Z", "itemId": "oXYgT7HFRM5lgbl5", "itemSku": "4Dd2sgTcHf4EXkT1", "itemType": "otxEyT32WE4TgxGw"}, {"count": 2, "duration": 2, "endDate": "1975-04-20T00:00:00Z", "itemId": "ZKMZDf0icExPkBJO", "itemSku": "5clfpunJIIeT80oJ", "itemType": "DYLL623DO50Bs5Y5"}], "name": "icOdX8GC36PU7d9U", "odds": 0.6208316985095147, "type": "REWARD_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 8, "duration": 21, "endDate": "1978-10-23T00:00:00Z", "itemId": "z8XFIOKJtIBNgorY", "itemSku": "rXQ9nl3iF92mloUQ", "itemType": "dD42dvKzbI3XFVGR"}, {"count": 38, "duration": 37, "endDate": "1990-06-07T00:00:00Z", "itemId": "VZRTIRCUXMxKfBJK", "itemSku": "YW45G83vQZUbhnu2", "itemType": "XOG9tOkvZcAcjnLE"}, {"count": 16, "duration": 38, "endDate": "1991-10-16T00:00:00Z", "itemId": "7nXL0hOMGrEwzS5I", "itemSku": "PmRzvFtKugOarM7X", "itemType": "NuDo3pZXeqUxGJIe"}], "name": "qBWp1kMA9j0JHEJj", "odds": 0.5476492103343851, "type": "REWARD_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 55, "duration": 98, "endDate": "1985-06-19T00:00:00Z", "itemId": "8LBFXRENlxsGVjtP", "itemSku": "6T5addr1SzI5X01t", "itemType": "EWjP0fyastD2HwJ1"}, {"count": 57, "duration": 4, "endDate": "1998-05-29T00:00:00Z", "itemId": "e1RL0yAOWPVikk0r", "itemSku": "3kn86S1zloePMG4H", "itemType": "FFmEUKl1i9V5JLQf"}, {"count": 79, "duration": 58, "endDate": "1973-08-14T00:00:00Z", "itemId": "pPhoz6wIxZuFT42F", "itemSku": "QoGGtgdm07GJLFc9", "itemType": "LrfjjuZ4pEFBX1GN"}], "name": "F3zoOHMi80MWwIup", "odds": 0.15339738101680267, "type": "REWARD", "weight": 34}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 84, "name": "Bw5VMj2w5D0eiZrE", "optionBoxConfig": {"boxItems": [{"count": 83, "duration": 75, "endDate": "1986-01-14T00:00:00Z", "itemId": "k74Grli4Hyg3rJMG", "itemSku": "5PRVgwHI3ZHk8cal", "itemType": "kx92Ezn0m6trW0lm"}, {"count": 100, "duration": 55, "endDate": "1981-06-03T00:00:00Z", "itemId": "fGF6Oah9AMmDIUik", "itemSku": "uI54mwCDfNug90ci", "itemType": "SEbbnujagc8rNOpK"}, {"count": 18, "duration": 42, "endDate": "1992-01-13T00:00:00Z", "itemId": "7RxkciY6rL6N6fVG", "itemSku": "OKddV6FLNRLtFt7D", "itemType": "ll6V8afKLR8wbg86"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 98, "fixedTrialCycles": 49, "graceDays": 39}, "regionData": {"XzEMwye0HNwMkZ13": [{"currencyCode": "4jWy5pCW1VSIOqHR", "currencyNamespace": "RPn9tuooaQJBptgL", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1988-09-04T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1975-05-01T00:00:00Z", "expireAt": "1972-03-18T00:00:00Z", "price": 24, "purchaseAt": "1977-10-25T00:00:00Z", "trialPrice": 59}, {"currencyCode": "U38PHggQeyuHOYMm", "currencyNamespace": "9cLAKRL8kzyIlof8", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1996-11-08T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1991-01-12T00:00:00Z", "expireAt": "1979-05-31T00:00:00Z", "price": 43, "purchaseAt": "1983-05-17T00:00:00Z", "trialPrice": 62}, {"currencyCode": "gynJMoCe8qsefdI9", "currencyNamespace": "9ZnagYGV533HZBbe", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1997-03-06T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1993-09-04T00:00:00Z", "expireAt": "1985-11-25T00:00:00Z", "price": 10, "purchaseAt": "1972-03-22T00:00:00Z", "trialPrice": 22}], "uddpbrOzvHrPyhrK": [{"currencyCode": "1MFH2tzhCEG8S67K", "currencyNamespace": "CWwiBSumHkXW0Pfp", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1987-12-03T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1990-12-27T00:00:00Z", "expireAt": "1980-04-04T00:00:00Z", "price": 67, "purchaseAt": "1989-02-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "DdRzaGz8AmyZqGHQ", "currencyNamespace": "ibqAHF3tVzSI7FOU", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1993-09-21T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1981-07-22T00:00:00Z", "expireAt": "1982-12-25T00:00:00Z", "price": 75, "purchaseAt": "1991-04-09T00:00:00Z", "trialPrice": 28}, {"currencyCode": "5CLFINJVszzCAQqr", "currencyNamespace": "axe86NkAJKFxYzsX", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1988-02-17T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1976-03-28T00:00:00Z", "expireAt": "1986-10-26T00:00:00Z", "price": 38, "purchaseAt": "1989-06-27T00:00:00Z", "trialPrice": 41}], "jGqI8o11VKBcB3aG": [{"currencyCode": "7etmmE301Bo59pWT", "currencyNamespace": "cvQVxtyvKjc6XoMg", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-11-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1987-01-21T00:00:00Z", "expireAt": "1976-05-07T00:00:00Z", "price": 17, "purchaseAt": "1978-10-24T00:00:00Z", "trialPrice": 99}, {"currencyCode": "xUxTCsIvdFFvFrQA", "currencyNamespace": "151qngwbYgRCLZgC", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1974-03-07T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1996-05-17T00:00:00Z", "expireAt": "1973-03-12T00:00:00Z", "price": 40, "purchaseAt": "1991-12-14T00:00:00Z", "trialPrice": 89}, {"currencyCode": "ZK4CQk6o4JD9P0rX", "currencyNamespace": "MuS3o9yj5Vm8rdHx", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1993-07-05T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1995-11-01T00:00:00Z", "expireAt": "1987-06-12T00:00:00Z", "price": 7, "purchaseAt": "1976-10-22T00:00:00Z", "trialPrice": 1}]}, "saleConfig": {"currencyCode": "sewHUqXPd67EWveK", "price": 56}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "FhJqIH5MeEFsSOLr", "stackable": true, "status": "ACTIVE", "tags": ["Kj99hyToIwK8lF53", "lFjcKaAzxp7UN6Yq", "u4naiaZKso4zxjoP"], "targetCurrencyCode": "yV1vJXZEPoRPBYi2", "targetNamespace": "yDALKb3VzCqvmOtv", "thumbnailUrl": "pt79LNCu27edgScr", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 95 'CreateItem' test.out

#- 96 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'GCOxpeTwchMspBCb' \
    --appId 'WHHL7Cy3alkmUgsI' \
    > test.out 2>&1
eval_tap $? 96 'GetItemByAppId' test.out

#- 97 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'aZI7uiz5h3sYpWUT' \
    --baseAppId 'ZlsoI60orSTtLV7w' \
    --categoryPath 'yaNDKZYELhdpxI0O' \
    --features 'ipkDNEKKL8j2b6lw' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '54' \
    --offset '23' \
    --region 'eTagdUwFAiHsRpuG' \
    --sortBy '["name:desc", "displayOrder:desc", "createdAt"]' \
    --storeId 'PekcxQ6lbFZfHfb2' \
    --tags 'SkGZkhDc7wC4WHfn' \
    --targetNamespace 'cKY1YCWCaepDcPoH' \
    > test.out 2>&1
eval_tap $? 97 'QueryItems' test.out

#- 98 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["rUTnVDDfRENRApTd", "CJOUGnZF2yghgxnM", "ktJnE0cNDQG8WfAg"]' \
    > test.out 2>&1
eval_tap $? 98 'ListBasicItemsByFeatures' test.out

#- 99 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'j9gvRZUoWog51qQ2' \
    --sku 'fJXRd9bK6BwLRQfS' \
    > test.out 2>&1
eval_tap $? 99 'GetItemBySku' test.out

#- 100 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ULp2MjhKhFgQUxtR' \
    --populateBundle 'true' \
    --region 'r1IZ1ZVCmpmuGSKi' \
    --storeId 'M8ymLGPNOkvr1wAI' \
    --sku 'P758wR71zPzUDs5W' \
    > test.out 2>&1
eval_tap $? 100 'GetLocaleItemBySku' test.out

#- 101 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'pDzZ7ObUr7UANjze' \
    --sku 'OjUMXLi0wzvVoCmU' \
    > test.out 2>&1
eval_tap $? 101 'GetItemIdBySku' test.out

#- 102 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["KCIrTXM6K0gPFqQt", "swpixSIaLSvwQAaP", "xetF0aeHoBEKXJHH"]' \
    --storeId 'H5vyo8vDirXu0jMq' \
    > test.out 2>&1
eval_tap $? 102 'GetBulkItemIdBySkus' test.out

#- 103 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'k82x9mot7XjNH9NI' \
    --region 'j7WMh3eRwHxblgJB' \
    --storeId 'EvMiRsX83piWHInj' \
    --itemIds '41PYVF8FZwBbTyBY' \
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
    --userId 'wMXTjx03OqiSwysQ' \
    --body '{"itemIds": ["xXA861kjV7AOunwh", "aFeToBnjr3CYV7Uh", "QOIDgprrODol7l6x"]}' \
    > test.out 2>&1
eval_tap $? 105 'ValidateItemPurchaseCondition' test.out

#- 106 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'll8Kyc2Cv9ypf6SN' \
    --body '{"changes": [{"itemIdentities": ["6X1lFDq9IpaOhckO", "YZruzgKQdIHtrPyk", "LV2wXsACXhcTESdR"], "itemIdentityType": "ITEM_SKU", "regionData": {"0vPwE6pD8WWwjN3U": [{"currencyCode": "6GWPhhXsn2LjhTFL", "currencyNamespace": "sCobgxfls3tIqez1", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1971-03-15T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1978-01-01T00:00:00Z", "discountedPrice": 48, "expireAt": "1972-03-04T00:00:00Z", "price": 64, "purchaseAt": "1975-08-17T00:00:00Z", "trialPrice": 50}, {"currencyCode": "W7Pn1NcWIFAm5r0S", "currencyNamespace": "MgYLU2q3bWV0tVih", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1995-01-02T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1995-07-24T00:00:00Z", "discountedPrice": 92, "expireAt": "1985-11-05T00:00:00Z", "price": 52, "purchaseAt": "1996-01-24T00:00:00Z", "trialPrice": 16}, {"currencyCode": "yfSSLmuE5aeDV3Gi", "currencyNamespace": "nCvwpnpSxXkPSLjT", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1998-09-22T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1982-08-05T00:00:00Z", "discountedPrice": 77, "expireAt": "1991-03-12T00:00:00Z", "price": 83, "purchaseAt": "1997-10-27T00:00:00Z", "trialPrice": 53}], "dIFWLpfoU2Ozj7xC": [{"currencyCode": "6zajOIPf42btaVDi", "currencyNamespace": "vzbyP8ncd3K1EIQk", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1988-01-24T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-09-16T00:00:00Z", "discountedPrice": 36, "expireAt": "1988-09-04T00:00:00Z", "price": 33, "purchaseAt": "1976-11-05T00:00:00Z", "trialPrice": 93}, {"currencyCode": "ZM5oRTUolS7X4U1P", "currencyNamespace": "THOZKgZ6MbHhFJrC", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1995-01-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1977-12-21T00:00:00Z", "discountedPrice": 48, "expireAt": "1980-03-19T00:00:00Z", "price": 29, "purchaseAt": "1978-10-11T00:00:00Z", "trialPrice": 88}, {"currencyCode": "hjVK5sN8SNHCgUkq", "currencyNamespace": "GBuTbygXx2NuwrtF", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1986-06-17T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1982-05-29T00:00:00Z", "discountedPrice": 64, "expireAt": "1990-03-23T00:00:00Z", "price": 3, "purchaseAt": "1999-01-01T00:00:00Z", "trialPrice": 31}], "bFRGUYoqtJXT8RX7": [{"currencyCode": "W93VxqYplxwvgP6E", "currencyNamespace": "Lriliv58pLeOk1jM", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1979-04-03T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1999-02-17T00:00:00Z", "discountedPrice": 1, "expireAt": "1973-03-08T00:00:00Z", "price": 38, "purchaseAt": "1991-12-07T00:00:00Z", "trialPrice": 74}, {"currencyCode": "8zvC2BTTYS3iX8dw", "currencyNamespace": "ac12PtVvv4UfFwzY", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1971-01-26T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-10-04T00:00:00Z", "discountedPrice": 2, "expireAt": "1995-05-18T00:00:00Z", "price": 37, "purchaseAt": "1997-05-15T00:00:00Z", "trialPrice": 40}, {"currencyCode": "vxO4XXeShgbt5m5S", "currencyNamespace": "iNF78Pb9MPiDdPXW", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1980-09-05T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-03-28T00:00:00Z", "discountedPrice": 23, "expireAt": "1973-02-12T00:00:00Z", "price": 97, "purchaseAt": "1995-04-17T00:00:00Z", "trialPrice": 7}]}}, {"itemIdentities": ["98rf3dA8AaCJTGe7", "MIyJxn4I7LJK56n1", "CflYPbPDlgNi5WLl"], "itemIdentityType": "ITEM_ID", "regionData": {"6bUJI9veSQAo7EaD": [{"currencyCode": "8gXfTwk8J71cQEsF", "currencyNamespace": "PMDOGPPXE2ehEDf0", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1989-10-23T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1978-04-22T00:00:00Z", "discountedPrice": 92, "expireAt": "1983-02-09T00:00:00Z", "price": 22, "purchaseAt": "1978-03-29T00:00:00Z", "trialPrice": 94}, {"currencyCode": "TcuXQpqwckKulFEw", "currencyNamespace": "zDcnZp2ole5MZGZt", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1974-06-28T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1991-07-07T00:00:00Z", "discountedPrice": 63, "expireAt": "1980-09-29T00:00:00Z", "price": 34, "purchaseAt": "1982-08-01T00:00:00Z", "trialPrice": 31}, {"currencyCode": "hb7XVabgftSVpirO", "currencyNamespace": "EAaSIScGaeLN5WVy", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1985-12-16T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1992-04-25T00:00:00Z", "discountedPrice": 1, "expireAt": "1972-11-27T00:00:00Z", "price": 52, "purchaseAt": "1994-07-23T00:00:00Z", "trialPrice": 62}], "X0IUaIZ8GOJgaOlc": [{"currencyCode": "cmrZueKOVPatL0E0", "currencyNamespace": "mm3ZknfTkwLay9I3", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1990-09-03T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1980-08-28T00:00:00Z", "discountedPrice": 56, "expireAt": "1980-12-26T00:00:00Z", "price": 80, "purchaseAt": "1976-08-10T00:00:00Z", "trialPrice": 64}, {"currencyCode": "MEDOKK6VYPSR7FUj", "currencyNamespace": "iUbYP1FPygAJAMmY", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1988-09-03T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1984-06-14T00:00:00Z", "discountedPrice": 21, "expireAt": "1985-08-20T00:00:00Z", "price": 87, "purchaseAt": "1980-11-10T00:00:00Z", "trialPrice": 61}, {"currencyCode": "CtjjQM89teoiSF6Z", "currencyNamespace": "pcmUmzMxW5Fyk9ex", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1992-08-24T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1974-04-13T00:00:00Z", "discountedPrice": 17, "expireAt": "1981-10-14T00:00:00Z", "price": 4, "purchaseAt": "1979-04-13T00:00:00Z", "trialPrice": 54}], "TeXJWJgoFYTqtuEj": [{"currencyCode": "aZ5Tr1P2l91JgJYj", "currencyNamespace": "OKqxEOT35LWAR2Hp", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1977-06-22T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1992-02-10T00:00:00Z", "discountedPrice": 32, "expireAt": "1991-09-12T00:00:00Z", "price": 26, "purchaseAt": "1977-01-20T00:00:00Z", "trialPrice": 72}, {"currencyCode": "AqB4RilKhprM4QGg", "currencyNamespace": "wwpd7jWPCF0mjq41", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1972-08-19T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1977-11-18T00:00:00Z", "discountedPrice": 6, "expireAt": "1993-11-25T00:00:00Z", "price": 54, "purchaseAt": "1976-12-06T00:00:00Z", "trialPrice": 46}, {"currencyCode": "ZGza1jfU5njjXJu1", "currencyNamespace": "H5FmXErOC24qCEZb", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1994-05-20T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1988-01-03T00:00:00Z", "discountedPrice": 32, "expireAt": "1993-10-04T00:00:00Z", "price": 30, "purchaseAt": "1994-08-10T00:00:00Z", "trialPrice": 81}]}}, {"itemIdentities": ["g7SjHi3gk5t8lxDk", "hAmmo3RLt1ID1PJA", "1Zmk6RhTR6Ici2te"], "itemIdentityType": "ITEM_ID", "regionData": {"GVkAbmBNrJALFTCI": [{"currencyCode": "0c14nFruR00h5JHY", "currencyNamespace": "Hn4oUqxGDVh2mdKa", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1995-12-29T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-04-27T00:00:00Z", "discountedPrice": 68, "expireAt": "1997-10-04T00:00:00Z", "price": 60, "purchaseAt": "1994-06-20T00:00:00Z", "trialPrice": 94}, {"currencyCode": "TFwcstMNeuqmjIJB", "currencyNamespace": "cOSd2GebxsiE3zn9", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1991-03-02T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1972-10-14T00:00:00Z", "discountedPrice": 100, "expireAt": "1998-11-06T00:00:00Z", "price": 30, "purchaseAt": "1979-08-26T00:00:00Z", "trialPrice": 27}, {"currencyCode": "nHMWj0ZolMWOiMvP", "currencyNamespace": "2FIg7FkC8oBWudG6", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1998-11-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1983-03-15T00:00:00Z", "discountedPrice": 3, "expireAt": "1994-06-10T00:00:00Z", "price": 43, "purchaseAt": "1972-03-18T00:00:00Z", "trialPrice": 28}], "L0s0c7bq9QJoJkKV": [{"currencyCode": "iIhzdq2JsoSI1B5Y", "currencyNamespace": "G3q5AGoxiMyPT02Y", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1996-01-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1980-03-17T00:00:00Z", "discountedPrice": 56, "expireAt": "1990-10-26T00:00:00Z", "price": 39, "purchaseAt": "1994-10-24T00:00:00Z", "trialPrice": 14}, {"currencyCode": "i8TtAqUrDVwf64Gk", "currencyNamespace": "ABf2qMuQ8aGrKYTU", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1971-01-03T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1976-06-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1982-05-09T00:00:00Z", "price": 37, "purchaseAt": "1979-11-24T00:00:00Z", "trialPrice": 35}, {"currencyCode": "BaQBfO6IzVBxmCGu", "currencyNamespace": "iHUxA560IbS3ez3F", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1998-08-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1998-07-18T00:00:00Z", "discountedPrice": 36, "expireAt": "1997-03-01T00:00:00Z", "price": 60, "purchaseAt": "1992-12-17T00:00:00Z", "trialPrice": 62}], "HU1q3DI9CmCKNvT5": [{"currencyCode": "DziX1mrSbi9Br5s0", "currencyNamespace": "feSjPUMefhXYPrkk", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1984-11-25T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1974-03-28T00:00:00Z", "discountedPrice": 46, "expireAt": "1980-01-13T00:00:00Z", "price": 2, "purchaseAt": "1974-08-19T00:00:00Z", "trialPrice": 74}, {"currencyCode": "fcHLJO7nhKy41leE", "currencyNamespace": "eDvl8KDJGy6jFBBt", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1983-12-31T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1987-05-18T00:00:00Z", "discountedPrice": 74, "expireAt": "1990-08-31T00:00:00Z", "price": 1, "purchaseAt": "1997-10-01T00:00:00Z", "trialPrice": 37}, {"currencyCode": "6NsxfKy5mspedOxa", "currencyNamespace": "BQs7HRUWl9IhnNAQ", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1996-05-10T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1986-06-23T00:00:00Z", "discountedPrice": 42, "expireAt": "1980-01-20T00:00:00Z", "price": 20, "purchaseAt": "1984-12-12T00:00:00Z", "trialPrice": 36}]}}]}' \
    > test.out 2>&1
eval_tap $? 106 'BulkUpdateRegionData' test.out

#- 107 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '90' \
    --offset '3' \
    --sortBy 'bjJB0IwFNzL8hott' \
    --storeId 'IalCV04gFa6Phdaj' \
    --keyword 'c05x5QXsR2ugQA62' \
    --language 'CaJ99Owwh9ZsSOcY' \
    > test.out 2>&1
eval_tap $? 107 'SearchItems' test.out

#- 108 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '59' \
    --offset '69' \
    --sortBy '["updatedAt", "name:asc", "createdAt:desc"]' \
    --storeId 'NoT8HaYONaFgg5CQ' \
    > test.out 2>&1
eval_tap $? 108 'QueryUncategorizedItems' test.out

#- 109 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'VbfDwxjklSel6TkE' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'W2HuzXRafnbLMyQf' \
    > test.out 2>&1
eval_tap $? 109 'GetItem' test.out

#- 110 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '7rytgAbztI4plbDL' \
    --namespace $AB_NAMESPACE \
    --storeId 'frLBrkTBZoU4k40u' \
    --body '{"appId": "Y9Eq88KugdB6G2Fo", "appType": "DEMO", "baseAppId": "MnFZPGk4Safu0hEE", "boothName": "M0Bb66gd2bYnzepg", "categoryPath": "TJ18cifH7Cy5HNVC", "clazz": "v8V9syLBSjWatFAT", "displayOrder": 80, "entitlementType": "CONSUMABLE", "ext": {"5aBoYfIi1yPx9bAZ": {}, "CNt52PQLAHtoUnGt": {}, "lvYznJFhZxbzkYvo": {}}, "features": ["ruMeMlJ2DURvCUTK", "miNx9cQvt9viq4KO", "BCUG9mc9KP7eHskj"], "images": [{"as": "TRhCvEnt46a8taWq", "caption": "dlBVxRnWSgRM2C9w", "height": 94, "imageUrl": "QCFjDFmZE6GmdBHN", "smallImageUrl": "PUSczXZlX514YsOy", "width": 87}, {"as": "RZxyC75pmCIcaRSP", "caption": "IPLxkZYsEPYxD1J6", "height": 50, "imageUrl": "bixCe0UCeNGXC9YQ", "smallImageUrl": "h6tYp4bm7Zj9lfJl", "width": 99}, {"as": "5JAV8RnGRKhSp8bk", "caption": "DBkaVwUEuAUhhtuq", "height": 20, "imageUrl": "Qmzirk8K2u5DAzDY", "smallImageUrl": "yljQbujXZDSCwFt4", "width": 74}], "itemIds": ["GfPVQmNDYzGwAFiH", "N9eGvDCBlUBWjaYX", "45QGPHluJUysT3hz"], "itemQty": {"kDUwf6d23IURI9be": 92, "hFJS9C4gHEPi69SP": 0, "HU21oG7WGnjal42q": 100}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"GAmIIVLt4LuOKTmZ": {"description": "BMvGzMc1ZwOsavyW", "localExt": {"7VY257ptmaIbqrPN": {}, "46fIhiLiyVIIE6ki": {}, "KnVrlOr80vTRdlyy": {}}, "longDescription": "eQofT2Y1f7mUo28s", "title": "Wc6PerP0UMDLltqr"}, "DmMAtY5XiuieX57q": {"description": "m2Y5oXAmcNOiZBQc", "localExt": {"lri6zGKwTIL3HH6o": {}, "L9PQYxwH48jKry81": {}, "8GLBd9bqa4nw4QCR": {}}, "longDescription": "JgYLmBkRq2Po1njZ", "title": "eHN1os02CwAbJuOv"}, "63BGWvK7LIhA3nHT": {"description": "g81FBgAtMLLBXyPU", "localExt": {"45QO3ylBxpdzF38X": {}, "QiSwlrEuXEZnyVSe": {}, "8xGhtjhjJloXOZOA": {}}, "longDescription": "Ch6Pn8TLVdzKJZEP", "title": "6HGynTx6j6vfGAio"}}, "lootBoxConfig": {"rewardCount": 80, "rewards": [{"lootBoxItems": [{"count": 32, "duration": 68, "endDate": "1999-12-08T00:00:00Z", "itemId": "n8n9z2gISOPjAwrA", "itemSku": "e1XAiQaJpRB3SiA5", "itemType": "d3drdrbxqJzMGBsk"}, {"count": 5, "duration": 85, "endDate": "1998-01-23T00:00:00Z", "itemId": "KtpAvKBoPpNZ1ytG", "itemSku": "V7qMEvA9hC4PZDow", "itemType": "CzJYZ3zJOrmtUFzf"}, {"count": 77, "duration": 28, "endDate": "1990-05-28T00:00:00Z", "itemId": "O69QHtAVA3UCQRkN", "itemSku": "fC5anB59fHkLYd20", "itemType": "jkLpUjYwME7K3f7p"}], "name": "h6OhUCu1iVzvHQkl", "odds": 0.6561147557024685, "type": "REWARD", "weight": 94}, {"lootBoxItems": [{"count": 29, "duration": 99, "endDate": "1994-04-12T00:00:00Z", "itemId": "SX5HYglCp2tpD5ER", "itemSku": "xZmtTV74cGOIiEjf", "itemType": "V6uLsUnw4vVnL6dY"}, {"count": 8, "duration": 13, "endDate": "1991-07-20T00:00:00Z", "itemId": "DZjgs2XgiezGY6ui", "itemSku": "eho5nBf4CEz4wJkd", "itemType": "eiO7FnP4jHck6TJT"}, {"count": 4, "duration": 42, "endDate": "1972-05-09T00:00:00Z", "itemId": "Bf2pnOQOt07MF5e3", "itemSku": "WcjmSs3kjwNti2aM", "itemType": "JLRaXNUBhuJAKZfz"}], "name": "Es6IP0u4izKhcw1e", "odds": 0.49186442332047475, "type": "REWARD", "weight": 28}, {"lootBoxItems": [{"count": 31, "duration": 90, "endDate": "1976-06-12T00:00:00Z", "itemId": "mwvi8FfYpLFdWGKN", "itemSku": "WK6pzB9wbrZBUK7c", "itemType": "dmc8Q9heedQAKc0m"}, {"count": 97, "duration": 43, "endDate": "1988-10-25T00:00:00Z", "itemId": "TIeNrmXKUkxBeIr3", "itemSku": "6enBELMN8T85Sqlt", "itemType": "McVJtqr70X9t2Khb"}, {"count": 0, "duration": 23, "endDate": "1976-07-24T00:00:00Z", "itemId": "0IoRcp34jMpKccAQ", "itemSku": "eoHsqifKGqe0934K", "itemType": "wOmCVr0nRqFCKYR6"}], "name": "1tCgh2YRsCzgueKu", "odds": 0.9973945833584579, "type": "REWARD", "weight": 54}], "rollFunction": "DEFAULT"}, "maxCount": 8, "maxCountPerUser": 93, "name": "lUhzsug5vKzze9SK", "optionBoxConfig": {"boxItems": [{"count": 66, "duration": 98, "endDate": "1980-07-25T00:00:00Z", "itemId": "c63v5MBuJUaNakVp", "itemSku": "5buJFpZdnKkj7C4B", "itemType": "BaiGQ2ofwtUnr2Ob"}, {"count": 84, "duration": 95, "endDate": "1991-08-07T00:00:00Z", "itemId": "yOxB0wxVkVoVypqh", "itemSku": "9A1sP1ZMqXHA2ktM", "itemType": "A2AsJhwN3CKIXNK6"}, {"count": 3, "duration": 82, "endDate": "1980-01-01T00:00:00Z", "itemId": "2yJ1UKoPCmIO55N4", "itemSku": "IPm6ouNHOhKCKrID", "itemType": "VdyHXJOXSeSOEgw7"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 59, "fixedTrialCycles": 25, "graceDays": 62}, "regionData": {"XVpG0FDZ2cz3LyfS": [{"currencyCode": "ASW9CxHx7jd9XP3w", "currencyNamespace": "tAqcWfMBPpxs297a", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1993-08-01T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1998-04-01T00:00:00Z", "expireAt": "1974-01-23T00:00:00Z", "price": 0, "purchaseAt": "1976-11-22T00:00:00Z", "trialPrice": 8}, {"currencyCode": "mLf92mD4L1sQstkz", "currencyNamespace": "EIuv1o9tzAFO89ho", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1999-11-28T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1979-12-14T00:00:00Z", "expireAt": "1977-12-11T00:00:00Z", "price": 17, "purchaseAt": "1996-01-22T00:00:00Z", "trialPrice": 83}, {"currencyCode": "s4Al2Oex6KOtr2Jv", "currencyNamespace": "SFCaToMWojpUSMR5", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1974-09-02T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1985-01-21T00:00:00Z", "expireAt": "1975-02-19T00:00:00Z", "price": 94, "purchaseAt": "1990-11-06T00:00:00Z", "trialPrice": 7}], "OdYsYL4FXoIJ0w9E": [{"currencyCode": "bG86E9z0vK4tsUOC", "currencyNamespace": "4qm5TfjJkE01m5AE", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1994-10-01T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1991-08-23T00:00:00Z", "expireAt": "1980-02-23T00:00:00Z", "price": 84, "purchaseAt": "1988-11-29T00:00:00Z", "trialPrice": 82}, {"currencyCode": "lfikH6g36LVTQyTa", "currencyNamespace": "PlqZ6I1sFss8YuPk", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1993-07-19T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1989-11-28T00:00:00Z", "expireAt": "1981-11-14T00:00:00Z", "price": 13, "purchaseAt": "1999-10-05T00:00:00Z", "trialPrice": 46}, {"currencyCode": "tOUmOfDfVo9rW5Xf", "currencyNamespace": "Sy3JBDvnugtGTbbq", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1985-06-08T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-07-01T00:00:00Z", "expireAt": "1991-02-06T00:00:00Z", "price": 0, "purchaseAt": "1996-03-04T00:00:00Z", "trialPrice": 30}], "B4XlRv2gY7v8Dmx4": [{"currencyCode": "131yXbCXK9piRd5u", "currencyNamespace": "M1X6Pkhh9Il52YVL", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1972-06-27T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1985-08-03T00:00:00Z", "expireAt": "1991-09-24T00:00:00Z", "price": 47, "purchaseAt": "1995-01-21T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Hb0xTrOYLjDKPq2s", "currencyNamespace": "YX60qMrtH4ESrIpQ", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1994-11-11T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1997-07-24T00:00:00Z", "expireAt": "1992-05-01T00:00:00Z", "price": 65, "purchaseAt": "1984-12-31T00:00:00Z", "trialPrice": 12}, {"currencyCode": "p5wN7DF8H5k6h7i0", "currencyNamespace": "TDyu0jTCCvBFQO7s", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1985-12-31T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1990-11-19T00:00:00Z", "expireAt": "1989-06-11T00:00:00Z", "price": 82, "purchaseAt": "1971-03-03T00:00:00Z", "trialPrice": 1}]}, "saleConfig": {"currencyCode": "Lf8H5ZuMW4YQ7CgH", "price": 7}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "g0z2IZhtXmHIP9J7", "stackable": false, "status": "ACTIVE", "tags": ["QbXK0Ib98HbAGvP7", "meBadJIjCWqXWbnq", "I9OCuQfVuNKPCS07"], "targetCurrencyCode": "McfYeRhW1zTXbDom", "targetNamespace": "g0JQxa0FJzTsZRHt", "thumbnailUrl": "uWHFYI5s179L0xKu", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 110 'UpdateItem' test.out

#- 111 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'o285TSMR26ns87J3' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'rMCw1Mdplrs94WSC' \
    > test.out 2>&1
eval_tap $? 111 'DeleteItem' test.out

#- 112 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Pwe5sWGmieCyVFqt' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 38, "orderNo": "M8sXynd4RLYWNfHe"}' \
    > test.out 2>&1
eval_tap $? 112 'AcquireItem' test.out

#- 113 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'NshnmnGzm0oGvD8z' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'bu4jbmdkEH6nxbFj' \
    > test.out 2>&1
eval_tap $? 113 'GetApp' test.out

#- 114 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'DvmlIQWEiH5UJ8lb' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ibs4aDlFauKnpBMu' \
    --body '{"carousel": [{"alt": "k7xiOIPtnmufO24W", "previewUrl": "55irQaM9fGsFqQPD", "thumbnailUrl": "UwQ1TsdMXAa2rDpU", "type": "image", "url": "j2DNy7mKehApeOdv", "videoSource": "generic"}, {"alt": "mSM3U2rS7NRoMIB1", "previewUrl": "Mb0lyNE946pLqY7w", "thumbnailUrl": "QejqcH8zNGGKgq6K", "type": "image", "url": "mwA80wdDrkWKF280", "videoSource": "generic"}, {"alt": "BWwEHBIkZa4aOWhf", "previewUrl": "uS6rLo6AOJcVAP7b", "thumbnailUrl": "uMWiH7XjCPo2cq6y", "type": "video", "url": "tlveLrGdSNHxLR6k", "videoSource": "youtube"}], "developer": "dlxH5ISeGZ46W4k0", "forumUrl": "7cDWog3TlsfthXuQ", "genres": ["Racing", "Casual", "Adventure"], "localizations": {"pHGzddCedepzDSoY": {"announcement": "xINtOzWHJs7TnB7L", "slogan": "aCmc1pHkM33xVi9G"}, "eo0UPN43ZwVZzTrZ": {"announcement": "nkEaTE1FifGzE5v0", "slogan": "Pg3b4IJk60tgSmXX"}, "WBAsrsiPN8roDtWn": {"announcement": "nOqUL34D7GxVtuxS", "slogan": "muh1W1QqPDnUppQu"}}, "platformRequirements": {"D7lylHmABusxR2DN": [{"additionals": "7CkPK3ZTrD9ssMpP", "directXVersion": "i8N26uajf9GSM6fy", "diskSpace": "x21VJyi4knPnc8eo", "graphics": "3iCgVZmtMDrvfCrj", "label": "DRHfjiWZE3eOaiM4", "osVersion": "UZMeOOyEcgBNxzuZ", "processor": "dPn3DtUoTQ1eUIZb", "ram": "etviVTbyFtwEaFx7", "soundCard": "YIB9iI03tjoeK9gI"}, {"additionals": "z6ojctSBTnLgeohH", "directXVersion": "ZymQB7yp8wWPKJs1", "diskSpace": "TJihwe7BWGSncWNy", "graphics": "sS5rgXBf5rc3BvSt", "label": "lNVlbB652aNrDmlx", "osVersion": "u6nQWzGyGMMgZRbO", "processor": "E7QO6An9LLpVfJtO", "ram": "cOsv14tUSWf1ngLV", "soundCard": "rRA453uvKn2EQpT8"}, {"additionals": "ciPj8AVBpvaLWH5L", "directXVersion": "uZXScAVNJAnbQbtp", "diskSpace": "uwYrWI1GwPjcKdoE", "graphics": "kusRUOwtjm55qc0y", "label": "O050nq3dI9H0u3v6", "osVersion": "M8hkps6xhC7R89Hw", "processor": "4eMtsR9M9sT7BiJb", "ram": "ApIGNp46fBo5yozP", "soundCard": "976VcaANFTCRzgvD"}], "CTdpDGHt09HvuMSr": [{"additionals": "zGkZFMvfqoqGXkSz", "directXVersion": "K6SfL5JK0w31eJwn", "diskSpace": "guKffoQL3nqmWLR0", "graphics": "0AxSJapVB9xpQCx6", "label": "gZp0BpC6HqXJP1HK", "osVersion": "qSbnlygGB9gjITWD", "processor": "fc3fD7FmGi8a8RiH", "ram": "eW1zjJ1BHrRvwcjd", "soundCard": "oH488j2rwVeCEuGk"}, {"additionals": "ywJBNRUYtg1H79ly", "directXVersion": "DobkoOOjlZrRL8Cy", "diskSpace": "SZBIk84j8RljfWEr", "graphics": "1u0pBK6GGs3JYGqu", "label": "QwfGKfhNnqBHmfYx", "osVersion": "8eZLFO8thRlttMpW", "processor": "TOLYOE3Cl2r5Isb7", "ram": "FNIn0gWTFYcq6EQp", "soundCard": "UXpma9XJKS1sddVu"}, {"additionals": "M2l7qGN8Y5BneCaC", "directXVersion": "pcXUcpmjYWZulPOO", "diskSpace": "5i3roirv13X2IWlt", "graphics": "lcVrfaosDemX9HAC", "label": "Yl0pkKncS1CSMO22", "osVersion": "xElzpYZj6GnBkb1u", "processor": "6XSK9hv82QW7hTcH", "ram": "knntFi1wzj68NuSC", "soundCard": "v4AyMVh1hbqYP8gQ"}], "qV54pNk46e4IubGi": [{"additionals": "ABGdCYK00BF1jCBn", "directXVersion": "QE5bvbHkBwnPDYqZ", "diskSpace": "VpIAVpxSVtzcF7h5", "graphics": "SL1M4sfY24UbHrQb", "label": "V8vqeV3LW6Zx2i88", "osVersion": "TnV2nKkN2DMEGI3i", "processor": "itI631m4tKebxK9f", "ram": "4S6SCk8sIGU7iB07", "soundCard": "RjlZQBJ3XqrK18np"}, {"additionals": "AINyHj4PFaA8YHOh", "directXVersion": "B5XOPNuPzN9TpUii", "diskSpace": "6zfV9D6OlSbbJGrN", "graphics": "6nBIkyEl8nqPOVV0", "label": "QAP8Gb9FSt3oBi3S", "osVersion": "hOfdddOKpjucZG8z", "processor": "49WjcSV5OPffsg3B", "ram": "qZszpesXZgmrv6Av", "soundCard": "bSEzZxAykJpyhI2P"}, {"additionals": "OAN65pBzU3qd4mpp", "directXVersion": "jxv2TUeVK0AWAvbh", "diskSpace": "4cQ9deM047Rh7z9m", "graphics": "zeL7HYR6ZeBONBYG", "label": "jOoPu0jzUJ1ujrrb", "osVersion": "qAP1uWhEAtH7y0zi", "processor": "YC2BzaN4NtQSJW0N", "ram": "bSOHplqTrVmnXn5B", "soundCard": "SOAzS0AnOPP6Vkha"}]}, "platforms": ["Linux", "Android", "Linux"], "players": ["MMO", "Coop", "CrossPlatformMulti"], "primaryGenre": "Indie", "publisher": "Qi9Aowx7itZkEuA9", "releaseDate": "1979-12-21T00:00:00Z", "websiteUrl": "AqbDWg2Ess59Ku3N"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateApp' test.out

#- 115 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'pLcNjrjfAHmb8Fuw' \
    --namespace $AB_NAMESPACE \
    --storeId '9CTVAUjHrG9fa3Xt' \
    > test.out 2>&1
eval_tap $? 115 'DisableItem' test.out

#- 116 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '07GuBUpagT7zH72R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetItemDynamicData' test.out

#- 117 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'APEVgDXs3xjps6oC' \
    --namespace $AB_NAMESPACE \
    --storeId 'lrg1i06Dcpacaxlo' \
    > test.out 2>&1
eval_tap $? 117 'EnableItem' test.out

#- 118 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'bcvFk9xfwUy950sa' \
    --itemId 'gaCsUwCr6i6PkWoU' \
    --namespace $AB_NAMESPACE \
    --storeId 'hFUyQG27Ke2Lpr0J' \
    > test.out 2>&1
eval_tap $? 118 'FeatureItem' test.out

#- 119 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'dDVRW2JFR3Apg2Ef' \
    --itemId 'D9DQJZmRX58n2FPg' \
    --namespace $AB_NAMESPACE \
    --storeId 'QqJM60lpEUaHdvCQ' \
    > test.out 2>&1
eval_tap $? 119 'DefeatureItem' test.out

#- 120 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'KYDwplVxgheGNJPB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'rARMS1cCTLUedgYN' \
    --populateBundle 'false' \
    --region 'p8Ha7i8Lk6wwdzA7' \
    --storeId 'BVMFfTiJSSgeTiRD' \
    > test.out 2>&1
eval_tap $? 120 'GetLocaleItem' test.out

#- 121 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'fKs9zEjivzNAZf4D' \
    --namespace $AB_NAMESPACE \
    --storeId 'l7miR94MPbBqbcv2' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 48, "comparison": "isLessThan", "name": "VOvss915cBmx1Gn6", "predicateType": "SeasonTierPredicate", "value": "y5qz5WJnaGVzXbtI", "values": ["hFTQ4P7ggfBIeuj6", "HX5VFmPju7ltZAsd", "2wmJrH59FLGc3N5Z"]}, {"anyOf": 15, "comparison": "isGreaterThanOrEqual", "name": "PdjVeY9eioP1X5s7", "predicateType": "SeasonPassPredicate", "value": "JIIichNqEXhM0dx2", "values": ["m95W3ez8Fd4AJroO", "wkE4jKkJMRQ7I9r4", "4rsGZKnMYSnXuS7D"]}, {"anyOf": 85, "comparison": "is", "name": "fiE96weX7IVtrFZR", "predicateType": "EntitlementPredicate", "value": "yHMarHdpmd2QYIzw", "values": ["hbarHfxXmZA9tNCT", "qe37OWNARxLhrb7K", "72E9snrZiLfB6knX"]}]}, {"operator": "and", "predicates": [{"anyOf": 77, "comparison": "isGreaterThanOrEqual", "name": "lWzynavtydmRbnMX", "predicateType": "SeasonTierPredicate", "value": "iVruZfXQO2pgdA0a", "values": ["4PpA12tcrPIcPfTX", "5q21XQiBEfe6p2pf", "udTxSmLJ6UDq4U2r"]}, {"anyOf": 66, "comparison": "includes", "name": "fFRW1jBQ0CevNAFv", "predicateType": "SeasonPassPredicate", "value": "rOKTzkijVlo1Qjvr", "values": ["3k6WwBLWTYNpZMfW", "sGfB1OxOx3JjFz6f", "bVeSRZRVzO1Y4xWU"]}, {"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "oGNI17lW1szxQ02X", "predicateType": "SeasonPassPredicate", "value": "B1lmnsncOBGh2fb4", "values": ["Uy3W7heKiL7GZfCX", "jpXkokUHcJNX4eO1", "JOnV9sFpuYcUzZhS"]}]}, {"operator": "or", "predicates": [{"anyOf": 89, "comparison": "is", "name": "nSJu6XK9tLBV99Sa", "predicateType": "SeasonTierPredicate", "value": "OCXIMsPY6yA80Nuv", "values": ["HGQkJPwINXMxlgzQ", "UIQb55wxki3lgz0L", "4CdrpLLlnQ2yxgsY"]}, {"anyOf": 63, "comparison": "isGreaterThanOrEqual", "name": "0W78PcujfldliY8i", "predicateType": "SeasonTierPredicate", "value": "7VtTBEExu3Svrk0r", "values": ["3nD2p5p32ycQsCZ9", "dzf4RF7vSHYa77l5", "UYmIJYGP8eUrIu75"]}, {"anyOf": 92, "comparison": "is", "name": "OpP4tUNqDM6jnzLO", "predicateType": "SeasonPassPredicate", "value": "FVvSHmiFyl9CVqMt", "values": ["YfELG9Lx0E3BQXjI", "4Y44JQaMIw7ND8e3", "ycm0cbyA1Hwwh7Iq"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 121 'UpdateItemPurchaseCondition' test.out

#- 122 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '4uDql7xZ3qO5Dx15' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "RUdMVF7bQuPuNiUq"}' \
    > test.out 2>&1
eval_tap $? 122 'ReturnItem' test.out

#- 123 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'yBEy6lKYZHACvVuT' \
    --offset '98' \
    --tag 'pJPlmG5EbRmrVGUs' \
    > test.out 2>&1
eval_tap $? 123 'QueryKeyGroups' test.out

#- 124 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uOtRZedIfcOCKeZB", "name": "vCL13sr7UYvey7aN", "status": "INACTIVE", "tags": ["BZyHO6A42ZnKBg5O", "bT5ctfsgQlrVYjbM", "HJUpPLbTgWtn8ZOI"]}' \
    > test.out 2>&1
eval_tap $? 124 'CreateKeyGroup' test.out

#- 125 GetKeyGroupByBoothName
eval_tap 0 125 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 126 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'jVBQV9wCKtBdT16F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetKeyGroup' test.out

#- 127 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'CR92mxuFtlLuu4Qz' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xi4Q6GML7kd0rL1j", "name": "2r4sUwIfNmCnWPUk", "status": "INACTIVE", "tags": ["bPhs3g7HIhrlo59N", "wW62uhzzE3LYmJu0", "i1PDPixatnlqArKS"]}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateKeyGroup' test.out

#- 128 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'f78PZuCs8vwz08ta' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetKeyGroupDynamic' test.out

#- 129 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ibNzOEiCibX61wkE' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '13' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 129 'ListKeys' test.out

#- 130 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '85qRiRp5m36itbDR' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 130 'UploadKeys' test.out

#- 131 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '2YkycCz2dNxFxlqY' \
    --limit '20' \
    --offset '96' \
    --orderNos '["YZfg6XsSMMTJiMX5", "8c30hdJcw4kgmOZ3", "4AhjE2c9nk6841sA"]' \
    --sortBy 'Th5m5vQOPcGJJl2c' \
    --startTime 'XfEXAmck9ewF6f2F' \
    --status 'FULFILL_FAILED' \
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
    --orderNo 'ttQnTDg2Vu0OCKzf' \
    > test.out 2>&1
eval_tap $? 133 'GetOrder' test.out

#- 134 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0AM1bNNwRIoT0wFM' \
    --body '{"description": "NpWZ19VoaSuuwgxN"}' \
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
    --body '{"dryRun": true, "notifyUrl": "beA2HaU9uF4uTOKR", "privateKey": "IyHorvVa3xre0fRf"}' \
    > test.out 2>&1
eval_tap $? 136 'UpdatePaymentCallbackConfig' test.out

#- 137 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'fsyrLsBbgOlhyz6D' \
    --externalId 'yUlMcyh4xXAenkND' \
    --limit '27' \
    --notificationSource 'STRIPE' \
    --notificationType 'vIEmWhInBU0Gio3S' \
    --offset '16' \
    --paymentOrderNo 'ujoqWkxgYNeF1MH0' \
    --startDate 'QzOGMzUuplhvYbs1' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 137 'QueryPaymentNotifications' test.out

#- 138 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '3EOk02yZFxqbSHRC' \
    --limit '16' \
    --offset '30' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 138 'QueryPaymentOrders' test.out

#- 139 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "oor5BMalgC23wnwf", "currencyNamespace": "FVzm9PpISQXEw713", "customParameters": {"TzskYjUoyjsOcXS8": {}, "VFPJysWb19EgqukP": {}, "K27YY5nfaQNRCS8K": {}}, "description": "bPG92w2HRLDmX3Od", "extOrderNo": "DeocCZrgxbZLwIbs", "extUserId": "EMootyPCenagX2dx", "itemType": "LOOTBOX", "language": "duSx_lOeY", "metadata": {"bnnyhdvZ9182vfOK": "h90A8xQPPk03MhO9", "fFBb6b25mD0qNHHF": "Pxket3wyRwVIniOG", "6rdhjZcsBt9dVLxA": "XQqjeE8TV9yzNodf"}, "notifyUrl": "zpaIYSKEr4BvnRoa", "omitNotification": true, "platform": "4vFTlHA4Zwod4YcO", "price": 76, "recurringPaymentOrderNo": "TO3iV34OBOAKGojU", "region": "CkvUPAqE3LIzfWea", "returnUrl": "9OgKdcYcswk00VP6", "sandbox": true, "sku": "r7kQnnxfRZ7eiasO", "subscriptionId": "VQGnuqrs0B7LoZEk", "targetNamespace": "mr1Gxib3iPbCBToE", "targetUserId": "3PbECTdF3bzivpmI", "title": "pjIDQhhHqzz3Vywg"}' \
    > test.out 2>&1
eval_tap $? 139 'CreatePaymentOrderByDedicated' test.out

#- 140 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'B1UA7hIPEVRKI157' \
    > test.out 2>&1
eval_tap $? 140 'ListExtOrderNoByExtTxId' test.out

#- 141 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fpAc4z7xEixdbM3u' \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentOrder' test.out

#- 142 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wBemqTs1yPJbhaSo' \
    --body '{"extTxId": "9aYktKQg3nmdbgrd", "paymentMethod": "TRTksYfNaFL07VQr", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 142 'ChargePaymentOrder' test.out

#- 143 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LIMrb5xOetGJrCmc' \
    --body '{"description": "mE4UFAJ6ZRaYYihF"}' \
    > test.out 2>&1
eval_tap $? 143 'RefundPaymentOrderByDedicated' test.out

#- 144 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WANnGQPkvXUROwSf' \
    --body '{"amount": 90, "currencyCode": "s4R9ZQ3khESlQd19", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 81, "vat": 53}' \
    > test.out 2>&1
eval_tap $? 144 'SimulatePaymentOrderNotification' test.out

#- 145 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NBEWv35GGhRRKQw7' \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentOrderChargeStatus' test.out

#- 146 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 146 'GetPlatformWalletConfig' test.out

#- 147 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "Playstation", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 147 'UpdatePlatformWalletConfig' test.out

#- 148 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'ND0UwGwUJKGTEq7v' \
    --limit '98' \
    --offset '14' \
    --source 'ORDER' \
    --startTime 'nfQI1W8Ieyc36li1' \
    --status 'SUCCESS' \
    --transactionId 'LcacKl8t14rfMNkL' \
    --userId 'IjQ6VLabfh7dz0Qo' \
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
    --body '{"appConfig": {"appName": "btq0vUlPlXaHFG2E"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "2OtSqbXxfhoV9J7C"}, "extendType": "APP"}' \
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
    --body '{"description": "gx7bjZDluhsCjJ20", "eventTopic": "leGGUeVORc2XE80E", "maxAwarded": 11, "maxAwardedPerUser": 52, "namespaceExpression": "iaMNvBjKSUODl9vi", "rewardCode": "veeJnUnxHcrmm4dn", "rewardConditions": [{"condition": "LiVwWUlhRZASN22t", "conditionName": "X6ueFOxphrAvUpYS", "eventName": "JNWIn6p0xRq8dLPi", "rewardItems": [{"duration": 1, "endDate": "1975-08-25T00:00:00Z", "itemId": "g5LNnjDym5KRaE0p", "quantity": 7}, {"duration": 46, "endDate": "1973-05-22T00:00:00Z", "itemId": "xeZaYGx2xx1o1b3M", "quantity": 17}, {"duration": 81, "endDate": "1991-12-14T00:00:00Z", "itemId": "lxpk11p6BYF7g2fg", "quantity": 25}]}, {"condition": "RSZfhbPT5W5QAOvX", "conditionName": "VbkUjvxIpIhY9gik", "eventName": "qdUrRjC3s8ZG0tJI", "rewardItems": [{"duration": 36, "endDate": "1995-12-14T00:00:00Z", "itemId": "4ilLolgb7ysIzdMb", "quantity": 75}, {"duration": 71, "endDate": "1992-10-21T00:00:00Z", "itemId": "KcJV9HT7ZdH6qNMK", "quantity": 24}, {"duration": 71, "endDate": "1982-12-11T00:00:00Z", "itemId": "Y3iCB3gI7CtALvCE", "quantity": 76}]}, {"condition": "TczUlzlKIMlv6ytf", "conditionName": "bSitG1pEkD6Zn6lA", "eventName": "Ohyu4HwFbi7lHM1s", "rewardItems": [{"duration": 21, "endDate": "1971-08-07T00:00:00Z", "itemId": "h7t1nYyDHzLR37Mn", "quantity": 96}, {"duration": 83, "endDate": "1993-03-05T00:00:00Z", "itemId": "tvogoFvSrxoU9o3i", "quantity": 22}, {"duration": 74, "endDate": "1977-11-29T00:00:00Z", "itemId": "7iGFquIfiPM1gB9W", "quantity": 41}]}], "userIdExpression": "P4cyjJGyj4QXuXJy"}' \
    > test.out 2>&1
eval_tap $? 157 'CreateReward' test.out

#- 158 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'cFMBfvYxPiIVFSNA' \
    --limit '56' \
    --offset '17' \
    --sortBy '["rewardCode:desc", "namespace"]' \
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
    --rewardId 'XnPamxCdKwx10fJA' \
    > test.out 2>&1
eval_tap $? 161 'GetReward' test.out

#- 162 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4cyYvVR4hlLeitj6' \
    --body '{"description": "b1bLhyzxH9HRUSR3", "eventTopic": "GUPXWg26iefcQSC9", "maxAwarded": 38, "maxAwardedPerUser": 73, "namespaceExpression": "4TRh7SFGvmIsxHu9", "rewardCode": "gKZGoBVHsZzSx3bp", "rewardConditions": [{"condition": "oigrZ6DIHvkAfhZx", "conditionName": "TBRLrYCUAJr1AorL", "eventName": "XpMrOSUOmVpgt58K", "rewardItems": [{"duration": 0, "endDate": "1997-11-03T00:00:00Z", "itemId": "J5ZO692tANxtRVYu", "quantity": 23}, {"duration": 66, "endDate": "1975-11-28T00:00:00Z", "itemId": "XZFBIoYYgXt5S281", "quantity": 57}, {"duration": 41, "endDate": "1974-01-22T00:00:00Z", "itemId": "aUB9DzZd6HCGomqN", "quantity": 37}]}, {"condition": "JbFDOQKvsjPM5YeW", "conditionName": "wrf3ja8gfMEzQxQF", "eventName": "2vooqlN34mH3mphu", "rewardItems": [{"duration": 93, "endDate": "1987-05-02T00:00:00Z", "itemId": "ow3Gt4h6vwG8nZsB", "quantity": 15}, {"duration": 13, "endDate": "1979-03-28T00:00:00Z", "itemId": "a1PebblqqwwzJtUA", "quantity": 94}, {"duration": 84, "endDate": "1991-08-30T00:00:00Z", "itemId": "vL2VnfP4hk76Wik3", "quantity": 83}]}, {"condition": "tjmHr7VtjQXtbCW5", "conditionName": "BaUPvsv9pLhs4Dig", "eventName": "KCzkus5HkwCqJU9L", "rewardItems": [{"duration": 54, "endDate": "1980-11-12T00:00:00Z", "itemId": "eqe8vDHaxW9mXssR", "quantity": 38}, {"duration": 4, "endDate": "1993-08-25T00:00:00Z", "itemId": "RH2FKyHCpZ8UgPTF", "quantity": 0}, {"duration": 16, "endDate": "1998-01-06T00:00:00Z", "itemId": "pvcHGGZOWD40rahy", "quantity": 91}]}], "userIdExpression": "kOfQnHSKnGHHsWOl"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateReward' test.out

#- 163 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'lW7GMi59CiXG6rEs' \
    > test.out 2>&1
eval_tap $? 163 'DeleteReward' test.out

#- 164 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'hJjzoS7SEsGxv7oo' \
    --body '{"payload": {"U1zJgieHKHvh43vJ": {}, "CRw8FsMrSThK5BHG": {}, "hX1eIqDoIn5RlfpP": {}}}' \
    > test.out 2>&1
eval_tap $? 164 'CheckEventCondition' test.out

#- 165 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '1L81gkJOaIVwJBIT' \
    --body '{"conditionName": "ebuF3Kfu2bVUfik8", "userId": "Ux3epshb50rub2wc"}' \
    > test.out 2>&1
eval_tap $? 165 'DeleteRewardConditionRecord' test.out

#- 166 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'NN19Ki9ItnCW1HTa' \
    --limit '19' \
    --offset '48' \
    --start 'CZRdOtD1JsXwPFYi' \
    --storeId 'hzUx5azDQ93eMu17' \
    --viewId 'yfo06L787UMTlF77' \
    > test.out 2>&1
eval_tap $? 166 'QuerySections' test.out

#- 167 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'We8W86zIXKoWM0Pr' \
    --body '{"active": false, "displayOrder": 7, "endDate": "1991-04-05T00:00:00Z", "ext": {"KfKY0cmw5r0eyoJK": {}, "AqtZEFUgyrDb4kuD": {}, "20klfqz2SXJP0HWf": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 57, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "Nqn3GQNxeo3MBa9w", "sku": "KkkLFp9fGFOmFowH"}, {"id": "IPEbXjp5GJKFeESb", "sku": "OfE4Jb63gvhPlwU1"}, {"id": "l5rQSLISts1keuV3", "sku": "b1VqIyDZo0vuvWdM"}], "localizations": {"bEfb2kPBZRDYDNyH": {"description": "hH3w4KqO4BY238t6", "localExt": {"litAcXjtSGMpn9jT": {}, "Rr0kse45SYI2wGbo": {}, "h9ajfAxAKw4rBZKz": {}}, "longDescription": "rsjlVAGM947BHFx0", "title": "vAveJEEbBtBos8uc"}, "Ve93md5K6ssif3kJ": {"description": "LgcQysLFbQU0em1s", "localExt": {"Ge8GLU8C2gDiZNPZ": {}, "Z5LhwPZ8O3ZOIo0I": {}, "9dimLnDpvgzfn7Ki": {}}, "longDescription": "VN2ZcJO426EFJGFo", "title": "HaHWlFApC9WcYbGU"}, "L6nPK6BAepHcWRng": {"description": "EOtD2Y9j8neDQARo", "localExt": {"6x9EGnS4JvVbcliU": {}, "X608Z0tKqLYrv7Cn": {}, "9bjlJpZciCkK3Dub": {}}, "longDescription": "AAIlh0RLMUYSvKhw", "title": "B7OXVaCFFvOuj4k8"}}, "name": "EoHbsfE4icKZZsW9", "rotationType": "CUSTOM", "startDate": "1993-11-18T00:00:00Z", "viewId": "CA2AKB9hgjRRIR5N"}' \
    > test.out 2>&1
eval_tap $? 167 'CreateSection' test.out

#- 168 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'psMrJ0VSzAkJmYrL' \
    > test.out 2>&1
eval_tap $? 168 'PurgeExpiredSection' test.out

#- 169 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2YbJOBUwMq2ENHBr' \
    --storeId 'IcpgtBMWLBlImzKP' \
    > test.out 2>&1
eval_tap $? 169 'GetSection' test.out

#- 170 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'J8GL58niwSP15qs3' \
    --storeId 'aWOTJyQNPTXbmOqC' \
    --body '{"active": false, "displayOrder": 61, "endDate": "1981-11-24T00:00:00Z", "ext": {"AdAQ7SH71TDKe0N2": {}, "wK32fz4oFUIEkRa4": {}, "ngUCpf5l6R8Ts1h4": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 44, "itemCount": 72, "rule": "SEQUENCE"}, "items": [{"id": "tiD8FJ8jkkrl8iGC", "sku": "BEvEldTFYuwDAVIa"}, {"id": "ui4y98749GQUFz2q", "sku": "sKsYFryYqDBAjP5O"}, {"id": "8L3Giu7mmOylgG5G", "sku": "0OAcvh8BzeyY5fyX"}], "localizations": {"Xuu1ZMOrnqGU1qYN": {"description": "8xqSluLymWzSdTjy", "localExt": {"hlvBBXjzSMTUCzH4": {}, "mAP6smegaGvBiNvq": {}, "8ANYomUFzYVx6ywz": {}}, "longDescription": "fOGDbVXzbdGJayTV", "title": "umBO7jHGM83hwNwy"}, "PgM2dwoMirHMql6N": {"description": "OA5KWIRcja1lEBLn", "localExt": {"36V4FO2mLUK9Vq76": {}, "MWkPgVesfOiUhJTs": {}, "3l0PUkEo1tAHQqzM": {}}, "longDescription": "AYKlN1CEOvJS8hIO", "title": "QxdCOrdlV82QQXDJ"}, "NmVJFJYGaAUvgimT": {"description": "IJx7InbZ4vY13y9k", "localExt": {"YBMzQWJ3jQCtXr9n": {}, "QCCoC2x1XS6YZzq0": {}, "yrW9boTJ7qbXGodl": {}}, "longDescription": "5GTxdEtbLAHhwdQE", "title": "eNXXT8IyLS68HJf7"}}, "name": "fDyEtd5pturtNjHx", "rotationType": "FIXED_PERIOD", "startDate": "1997-11-07T00:00:00Z", "viewId": "jU4TU6G6cB8Bj7ZQ"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateSection' test.out

#- 171 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'vqH08I6gFwhwVBcC' \
    --storeId 'RVcnnG52URaGK9Zj' \
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
    --body '{"defaultLanguage": "jZhA4q0ApitgpyKi", "defaultRegion": "4p0ybToXSzMlscA4", "description": "TJtl1iKsqp4d0jPJ", "supportedLanguages": ["gIpij6IlTau423U9", "QRAa75y5f99dXTBy", "d3nthPRcRFidEKgH"], "supportedRegions": ["ogltBk55WSXwKPMK", "gvMowUUtyC6tbZoY", "U8bryIPfPcGi5Vh7"], "title": "9SAI9q4ge9DgLyzA"}' \
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
    --storeId 'ghKQv6Oyl16ymD9v' \
    > test.out 2>&1
eval_tap $? 179 'GetStore' test.out

#- 180 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '2PsY7yt6FCJysE30' \
    --body '{"defaultLanguage": "w9aHIzPMnC60ivCE", "defaultRegion": "BNBW8tLKKA0i2oI1", "description": "6Vsf5ULkDjklUo66", "supportedLanguages": ["JHMUz5ZUphaNRDIF", "gQ1OJdAC1c8p6c4D", "zzJ9gfW7IU72loas"], "supportedRegions": ["t3W6PDF2pDPFOK4t", "8YiuNR5ZfzMp0EmD", "CRyy87UHX0nbGlgw"], "title": "7Y4NfW7JbleB7SfL"}' \
    > test.out 2>&1
eval_tap $? 180 'UpdateStore' test.out

#- 181 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cJcPCTKKJ6Vvwk6x' \
    > test.out 2>&1
eval_tap $? 181 'DeleteStore' test.out

#- 182 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'tBC2jxrmm6yPEDoc' \
    --action 'CREATE' \
    --itemSku 'Dn5Xcg15UhMqmkcy' \
    --itemType 'BUNDLE' \
    --limit '91' \
    --offset '20' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'LCFMFUVT4VjjS3S1' \
    --updatedAtStart 'NVZAiRcdlbo0Ifjs' \
    > test.out 2>&1
eval_tap $? 182 'QueryChanges' test.out

#- 183 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'fjBQKPnFvtysPoDG' \
    > test.out 2>&1
eval_tap $? 183 'PublishAll' test.out

#- 184 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'laOdt9YZtPrrbWDe' \
    > test.out 2>&1
eval_tap $? 184 'PublishSelected' test.out

#- 185 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'VQwI9dkYmo9xaUJB' \
    > test.out 2>&1
eval_tap $? 185 'SelectAllRecords' test.out

#- 186 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'ArgtIfnFYvVG5Lhj' \
    --action 'CREATE' \
    --itemSku 'aCvENlOtK5nSy2O5' \
    --itemType 'LOOTBOX' \
    --type 'ITEM' \
    --updatedAtEnd 'JgR7xOwl6V2is9GW' \
    --updatedAtStart 'HO3xFtJT3YyjIaTf' \
    > test.out 2>&1
eval_tap $? 186 'GetStatistic' test.out

#- 187 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'JWhwep53qzudcuwz' \
    > test.out 2>&1
eval_tap $? 187 'UnselectAllRecords' test.out

#- 188 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'Yq4CyylwUkWenDrj' \
    --namespace $AB_NAMESPACE \
    --storeId 'F1vX5OI3Vd01Pnw2' \
    > test.out 2>&1
eval_tap $? 188 'SelectRecord' test.out

#- 189 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'CwEkNDgFbSPu9EtH' \
    --namespace $AB_NAMESPACE \
    --storeId 'vfS0AXaBEgT6X7lz' \
    > test.out 2>&1
eval_tap $? 189 'UnselectRecord' test.out

#- 190 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'eqz9ZrO7ZEJhQzGy' \
    --targetStoreId 'GcsHWE8LiY99g6nS' \
    > test.out 2>&1
eval_tap $? 190 'CloneStore' test.out

#- 191 ExportStore
eval_tap 0 191 'ExportStore # SKIP deprecated' test.out

#- 192 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 't7ce2s92ZK1B4kAm' \
    --limit '2' \
    --offset '56' \
    --sku 'FsAygqawGEYO75ie' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'UQZOf6eXxwH57nEe' \
    > test.out 2>&1
eval_tap $? 192 'QuerySubscriptions' test.out

#- 193 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jHuEWQKmlwZy72Zb' \
    > test.out 2>&1
eval_tap $? 193 'RecurringChargeSubscription' test.out

#- 194 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '1mzyAxQTOBwI1w6K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'GetTicketDynamic' test.out

#- 195 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'bcp1FQblMx6w8vJ3' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ON3wM8LIvzeddvgl"}' \
    > test.out 2>&1
eval_tap $? 195 'DecreaseTicketSale' test.out

#- 196 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'g1MZ9lJc5pP9Vo2D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 196 'GetTicketBoothID' test.out

#- 197 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'iXqVp1RCtB2jp969' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "8x7erkNNC5ELZSn3"}' \
    > test.out 2>&1
eval_tap $? 197 'IncreaseTicketSale' test.out

#- 198 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NZ5UikmBTGHrCyzm' \
    --body '{"achievements": [{"id": "Bx6MWKfq1aGfO5gA", "value": 0}, {"id": "pzjdjvUR13n1Jdou", "value": 42}, {"id": "0UrmjjKK92ryjbeU", "value": 80}], "steamUserId": "DTDc3srEg0LNe55E"}' \
    > test.out 2>&1
eval_tap $? 198 'UnlockSteamUserAchievement' test.out

#- 199 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'a7b9aJD5YR0YrYBm' \
    --xboxUserId 'iG7bEBvN0I6TUVtM' \
    > test.out 2>&1
eval_tap $? 199 'GetXblUserAchievements' test.out

#- 200 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4f9gW92SWTNfVihv' \
    --body '{"achievements": [{"id": "5RSLy0ZxR0mkqVis", "value": 75}, {"id": "gXX6Gv1e0Zze2mIa", "value": 88}, {"id": "FBCkwcfT61C1a0cJ", "value": 50}], "serviceConfigId": "kGCAj38YYCNFu5MH", "titleId": "vfsigngF8ZflHJnZ", "xboxUserId": "vsSRumnqACy0Yvs4"}' \
    > test.out 2>&1
eval_tap $? 200 'UpdateXblUserAchievement' test.out

#- 201 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'uUNzDtIwiTSVKQT5' \
    > test.out 2>&1
eval_tap $? 201 'AnonymizeCampaign' test.out

#- 202 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'vRZYculBuzhqh4bP' \
    > test.out 2>&1
eval_tap $? 202 'AnonymizeEntitlement' test.out

#- 203 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'qfnnbowMuwkOg1ea' \
    > test.out 2>&1
eval_tap $? 203 'AnonymizeFulfillment' test.out

#- 204 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'qJFTMxukajx4eltA' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeIntegration' test.out

#- 205 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yNlwNVLQDzvm3Tpj' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeOrder' test.out

#- 206 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '1uwNCMnYK1qkpTNT' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizePayment' test.out

#- 207 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'FCbLb4JhD5yuRQZu' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeRevocation' test.out

#- 208 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 's2rFJ83INpdXlmVF' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeSubscription' test.out

#- 209 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Df1ldyVa4nzna47t' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeWallet' test.out

#- 210 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'L7xjKjGsCnXxGxBc' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 210 'GetUserDLCByPlatform' test.out

#- 211 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HhOneoKXM17Dg0g7' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 211 'GetUserDLC' test.out

#- 212 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ucK8KfBbLY7CHzuq' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'NthL6h9H4M4bDxvu' \
    --features '["zrmQEyTZtFmUMmXf", "N8y5QhN6hGwJ2KtA", "2W6eGk3zupzNeQbH"]' \
    --itemId '["VWIhjMUsefUzOdJa", "Mt8hvbjsY3loHoI4", "Dm9FmdZIvzECj2md"]' \
    --limit '12' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 212 'QueryUserEntitlements' test.out

#- 213 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AOcUl49VSRtQckM5' \
    --body '[{"endDate": "1992-06-25T00:00:00Z", "grantedCode": "wzzB7iaLDODjI0eG", "itemId": "YOUcMfMJ0ppr5bpg", "itemNamespace": "LNmIBUGmm2EOqSMS", "language": "ZAT", "quantity": 58, "region": "3se898EcZpQJVHs5", "source": "PROMOTION", "startDate": "1984-11-14T00:00:00Z", "storeId": "tenFLht7R1X5x9gc"}, {"endDate": "1972-01-11T00:00:00Z", "grantedCode": "NRF4FdeDz4X3w1BB", "itemId": "IS163A7woRUkUi44", "itemNamespace": "b22O1bK4c2rIBtEs", "language": "lWd-438", "quantity": 0, "region": "aOKTzOJ3nGbe9CQM", "source": "PROMOTION", "startDate": "1992-01-08T00:00:00Z", "storeId": "f17H8JsKJfXAUiSa"}, {"endDate": "1996-08-18T00:00:00Z", "grantedCode": "nC0FW7tu1f5Wf61S", "itemId": "Jso2R2UF9L99fWfN", "itemNamespace": "lXlOjgvWINK2kKFo", "language": "WBp", "quantity": 54, "region": "K6PdMrKL7pbvqvqq", "source": "GIFT", "startDate": "1993-03-12T00:00:00Z", "storeId": "5LIw2D9npTf44VbU"}]' \
    > test.out 2>&1
eval_tap $? 213 'GrantUserEntitlement' test.out

#- 214 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YR2wJB6gKjt4Cqk3' \
    --activeOnly 'true' \
    --appId 'S6fmid3bbRbktfSs' \
    > test.out 2>&1
eval_tap $? 214 'GetUserAppEntitlementByAppId' test.out

#- 215 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'UrkfeJzt69vtq5Uz' \
    --activeOnly 'true' \
    --limit '77' \
    --offset '49' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlementsByAppType' test.out

#- 216 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ArbCTLEF3sL4k6QA' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'ZRUWMvvaT04PVG8a' \
    > test.out 2>&1
eval_tap $? 216 'GetUserEntitlementByItemId' test.out

#- 217 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 's1JDgLKWYBYakcNe' \
    --ids '["lWCsoH8kRpkH19b3", "Mc9l3feRS946l0Im", "0hrcbGcp19mCkSjv"]' \
    > test.out 2>&1
eval_tap $? 217 'GetUserActiveEntitlementsByItemIds' test.out

#- 218 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'qUJyq0SqZAKbeEjq' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'q4VuaLl1Se5SFlTx' \
    > test.out 2>&1
eval_tap $? 218 'GetUserEntitlementBySku' test.out

#- 219 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '30pAFahHuSRo2KyH' \
    --appIds '["50YbK2prNYDvzuYu", "IupG7pr4hgUHlWNe", "3aJX0SmVuBORO7vM"]' \
    --itemIds '["tATYqos6flyLanCx", "DorUK70VO5XD5oaB", "4Sz3ZkhdGEmFaSnH"]' \
    --skus '["DlTfyXYXE2SAhFz2", "a400wEkhNlkckxMh", "PoPCtRoQ0yspfwcT"]' \
    > test.out 2>&1
eval_tap $? 219 'ExistsAnyUserActiveEntitlement' test.out

#- 220 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5AHMvBe5qnOWhnXA' \
    --itemIds '["BDF89b3g5H1Mvr0H", "2u9eX5fxlbAVXvWm", "BbSXdbeM5AxSr2PW"]' \
    > test.out 2>&1
eval_tap $? 220 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 221 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JS82W1CxM1DUm0jm' \
    --appId 'al0Jf7auv5wFIUFc' \
    > test.out 2>&1
eval_tap $? 221 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 222 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5QO9flPcx3oaITf5' \
    --entitlementClazz 'CODE' \
    --itemId '8AVE0Y7g57oz49U2' \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementOwnershipByItemId' test.out

#- 223 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ioMEc2hBvjEtlsV9' \
    --ids '["FCL64jqHJXVVPZJv", "aKniFfTSBHJ0cMho", "AImCXol9UO3wKlGi"]' \
    > test.out 2>&1
eval_tap $? 223 'GetUserEntitlementOwnershipByItemIds' test.out

#- 224 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'cBk0xrDNLX7VfiWs' \
    --entitlementClazz 'APP' \
    --sku 'FXNpgJR9dHNELEx0' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementOwnershipBySku' test.out

#- 225 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'whWmkQK4s0gcHQzX' \
    > test.out 2>&1
eval_tap $? 225 'RevokeAllEntitlements' test.out

#- 226 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vHn0EsTMOFeXW9nT' \
    --entitlementIds 'FnRTl0ZFoKT6PKGN' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserEntitlements' test.out

#- 227 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'GTXNAamXq7ImzUQO' \
    --namespace $AB_NAMESPACE \
    --userId 'Dz3t5ApQFobT6Qv4' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlement' test.out

#- 228 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'FfHuNPLXyd8tQpdW' \
    --namespace $AB_NAMESPACE \
    --userId 'BXVJjvdIkB9UGFQw' \
    --body '{"endDate": "1982-12-14T00:00:00Z", "nullFieldList": ["Z23Pv70DIt3xGAnZ", "zgeGk3YBRWTxNEVv", "LTNEuJMIQHp6GtxK"], "startDate": "1998-02-28T00:00:00Z", "status": "REVOKED", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserEntitlement' test.out

#- 229 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'l0Mn2gSWnJ0Xxoq9' \
    --namespace $AB_NAMESPACE \
    --userId 'epFh0wYXK9LsAk8g' \
    --body '{"options": ["7B1OXN3Y1fHdC8Vq", "4nZdKYZ9r5XLd8Hg", "naIG6HVO69m0HQi2"], "requestId": "fwjEHpYiSJ7JP2nM", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 229 'ConsumeUserEntitlement' test.out

#- 230 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'f1qGP2Q7NlW5qNGk' \
    --namespace $AB_NAMESPACE \
    --userId 'A4x484QF89HLbmIT' \
    > test.out 2>&1
eval_tap $? 230 'DisableUserEntitlement' test.out

#- 231 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'XiPVjZPICZIHy3fx' \
    --namespace $AB_NAMESPACE \
    --userId 'K4ghhRPt9qFh6YJh' \
    > test.out 2>&1
eval_tap $? 231 'EnableUserEntitlement' test.out

#- 232 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'I79boVfVZoInLw4x' \
    --namespace $AB_NAMESPACE \
    --userId 'b6QTdDBpNm3AIdMn' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementHistories' test.out

#- 233 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'BcK9E6rDKQd9qfzp' \
    --namespace $AB_NAMESPACE \
    --userId '0k9N565tI3AsU12h' \
    > test.out 2>&1
eval_tap $? 233 'RevokeUserEntitlement' test.out

#- 234 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'YftKaDTZmrubS0Ma' \
    --namespace $AB_NAMESPACE \
    --userId 'skam81FtqQRkdFVD' \
    --body '{"reason": "Ees0tjgBWjKLR42I", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUseCount' test.out

#- 235 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'lCwBHIIQXvsEDSxV' \
    --namespace $AB_NAMESPACE \
    --userId 'NFVdwN5FiLtBg5h2' \
    --body '{"requestId": "sbTk4uWarGpkn4UR", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 235 'SellUserEntitlement' test.out

#- 236 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'BCvjYFAlQ1HhjmLs' \
    --body '{"duration": 26, "endDate": "1984-01-13T00:00:00Z", "itemId": "noGSBR6ylsknJGQK", "itemSku": "Fstjm9Rv5ZM4RJam", "language": "zB3sN59EjZhRV8sq", "order": {"currency": {"currencyCode": "9sqdvONKsOB5jvyk", "currencySymbol": "eFSVgLYm2Er2A345", "currencyType": "REAL", "decimals": 24, "namespace": "GsctuclAeTnYIi8y"}, "ext": {"iTqEu06klKdIoDmB": {}, "JyL3KqlEO4p8jU2o": {}, "ksUnf7H8jnuYAJsY": {}}, "free": true}, "orderNo": "fuDIgTnFpF75AxxE", "origin": "Playstation", "quantity": 6, "region": "gc5TNvaaUTBeynhg", "source": "OTHER", "startDate": "1990-02-22T00:00:00Z", "storeId": "Y4avwQOTxhWM06Aw"}' \
    > test.out 2>&1
eval_tap $? 236 'FulfillItem' test.out

#- 237 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'W5OndGThuFyuRsrw' \
    --body '{"code": "i9SuPC7WD53SEwzV", "language": "tCLf_dZnr_qV", "region": "1PiUk9qPK31RxJ3w"}' \
    > test.out 2>&1
eval_tap $? 237 'RedeemCode' test.out

#- 238 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'w5q1SWKZhPPDMKv7' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "DXwDAbCPcrKGxuyY", "namespace": "HOcdsJb5lKeRsHl4"}, "item": {"itemId": "fI7jXqIMpSTnusfa", "itemSku": "JoMA8Q1X3721sMRF", "itemType": "fV31HkTjn8r24v6j"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "Txqu0wUYuhz4y5x5", "namespace": "bsDLvy5jL0TSAPtd"}, "item": {"itemId": "noXVkzCNAgx7GyHs", "itemSku": "64KMAENura7aHxB4", "itemType": "6h1rYnIxbwKN2ksJ"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "g1CESH1NlgrjRFIm", "namespace": "8rZFg3e5euEHZcUt"}, "item": {"itemId": "bx5lGxbMQ8rUxhfF", "itemSku": "zFUScOVyVYCtwclj", "itemType": "yP35XsgCHlnlw72i"}, "quantity": 33, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 238 'FulfillRewards' test.out

#- 239 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'v9zuSjctuWqzwxrC' \
    --endTime 'cYhPAr7LKtPd2Ef4' \
    --limit '48' \
    --offset '43' \
    --productId 'D6JT7iCnlpBRX5on' \
    --startTime 'z9O4CmT4i0zxHfu6' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 239 'QueryUserIAPOrders' test.out

#- 240 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '05LDIfLt3RGT12Ws' \
    > test.out 2>&1
eval_tap $? 240 'QueryAllUserIAPOrders' test.out

#- 241 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Zuo1sdzvavDqtrMG' \
    --endTime 'iys1SwD62zoBzLPm' \
    --limit '82' \
    --offset '84' \
    --startTime 'vApLgLdWQpdzY5nh' \
    --status 'SUCCESS' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 241 'QueryUserIAPConsumeHistory' test.out

#- 242 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lp47WGkIpuhIa6cQ' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ee-Teti", "productId": "6oWGCM9Crb6a90LS", "region": "G45K1YP758ED4c1q", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 242 'MockFulfillIAPItem' test.out

#- 243 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gvp4Z9y7JQEH03H7' \
    --itemId 'hDXdSqtNyY13OXOT' \
    --limit '74' \
    --offset '63' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 243 'QueryUserOrders' test.out

#- 244 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8co7GzLIND6zmKHE' \
    --body '{"currencyCode": "rMaEnxEAjNlvQ4hh", "currencyNamespace": "vottCwOs2cPfGgS6", "discountedPrice": 82, "ext": {"OU592JhgNtMwvV7r": {}, "CwxgCU7xXmPp860C": {}, "qEopvIMjCs3Bjmqh": {}}, "itemId": "ggRvqgh8q0ymzuQi", "language": "6Op6RjiaVK3fdWwh", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 3, "quantity": 82, "region": "lyqweWNSbG4UjdpU", "returnUrl": "5dzbBiDMpVNvk6gY", "sandbox": false, "sectionId": "CJIoVDdgvHzSLY0M"}' \
    > test.out 2>&1
eval_tap $? 244 'AdminCreateUserOrder' test.out

#- 245 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'XHWg5QCmYBueCZYR' \
    --itemId 'aJgh2cI4brJHtGRs' \
    > test.out 2>&1
eval_tap $? 245 'CountOfPurchasedItem' test.out

#- 246 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0XXKXOLKSlS1fasv' \
    --userId '9W30ykw8MVoqDgIF' \
    > test.out 2>&1
eval_tap $? 246 'GetUserOrder' test.out

#- 247 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'S1m66nXMTbsRBqNn' \
    --userId 'agKB9LeFPDGtahRA' \
    --body '{"status": "REFUNDED", "statusReason": "20ILmdwZEy9l78LR"}' \
    > test.out 2>&1
eval_tap $? 247 'UpdateUserOrderStatus' test.out

#- 248 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vqlJ7ZgjQnXz5ku9' \
    --userId 'uhzcK8mlZyFlY68y' \
    > test.out 2>&1
eval_tap $? 248 'FulfillUserOrder' test.out

#- 249 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'vtwdLlU6QiRb38fE' \
    --userId 'lMYOkecvp3IbPgbV' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrderGrant' test.out

#- 250 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'ga6I7O2eCV9CC0Jq' \
    --userId 'KFpfWjVVR2miH3XZ' \
    > test.out 2>&1
eval_tap $? 250 'GetUserOrderHistories' test.out

#- 251 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '2lkjF7lMembyu3Mj' \
    --userId 'cn7QoaEVMbhzrPov' \
    --body '{"additionalData": {"cardSummary": "yTVO8qyUiMccjngG"}, "authorisedTime": "1984-09-17T00:00:00Z", "chargebackReversedTime": "1988-12-29T00:00:00Z", "chargebackTime": "1982-06-18T00:00:00Z", "chargedTime": "1972-07-24T00:00:00Z", "createdTime": "1983-05-01T00:00:00Z", "currency": {"currencyCode": "J5iO89VFbvYRS809", "currencySymbol": "CeoObCGQIWKCfpUb", "currencyType": "VIRTUAL", "decimals": 39, "namespace": "r208JTeYwgxjXJxD"}, "customParameters": {"I8tFDwfss7ubEWaQ": {}, "JHq1eeaoh9GkACTH": {}, "BmdiB6mXCy6LHe8Q": {}}, "extOrderNo": "v68jE3J4j2WT8EYa", "extTxId": "57HuBQXqVlgPyOUE", "extUserId": "TjcNHwVG77fLZzXh", "issuedAt": "1991-04-27T00:00:00Z", "metadata": {"LLR7TQX9fkU2P2Cc": "uOUL3Uji9TzQVMyD", "hEIRZ6VryvlKWndP": "VyIG71h6MFO2J4GB", "3HvFEB6OJziqjOJG": "3eDD1HYBwoRQe9vC"}, "namespace": "4yiKQH7OLPf4L6lR", "nonceStr": "UiveZidbKmGjhDXg", "paymentMethod": "bBI5VJlPIR8LrSkO", "paymentMethodFee": 13, "paymentOrderNo": "23zevWqSvshH4JV1", "paymentProvider": "PAYPAL", "paymentProviderFee": 55, "paymentStationUrl": "9RuHF0JlAkqI3w1r", "price": 64, "refundedTime": "1974-08-20T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "LmKJMH8pXyUkatvQ", "status": "INIT", "statusReason": "YGOAisWkYzMlDDuU", "subscriptionId": "NFYsn6FXNUqerRVH", "subtotalPrice": 72, "targetNamespace": "yPSXOoK7mbYMSam5", "targetUserId": "nYjMtYeYPAolzz5N", "tax": 62, "totalPrice": 39, "totalTax": 53, "txEndTime": "1987-12-15T00:00:00Z", "type": "qmkTD3Zbne53LIRE", "userId": "PnKPYb1lIpEK87rE", "vat": 37}' \
    > test.out 2>&1
eval_tap $? 251 'ProcessUserOrderNotification' test.out

#- 252 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '9Hy5lCrnAdYrqvHY' \
    --userId 'bcp2KI5TF7VSHHsK' \
    > test.out 2>&1
eval_tap $? 252 'DownloadUserOrderReceipt' test.out

#- 253 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'EphofDGV0UAWLlBA' \
    --body '{"currencyCode": "5dY0bnKebf18ZAyS", "currencyNamespace": "drQTDgueua2a03u9", "customParameters": {"rLvpzt3KmXszWkci": {}, "YHH9SHXh2nqZsxhs": {}, "LlrXNGCmvXLAJ4iU": {}}, "description": "WDMnH8czqvVjRYRL", "extOrderNo": "t65mi06pIs9XpIyQ", "extUserId": "m0kr5HTVAxPlQxwo", "itemType": "INGAMEITEM", "language": "emDS_337", "metadata": {"xaE5fM9nfYuQ1Ogg": "4oVvzmmBlfzI58Vv", "N17f0gr1lgZFFh7l": "QaR3xl9rmUSbXp1r", "XBoy9nVggPJnALdr": "MbUBXyvfDWIMuhJa"}, "notifyUrl": "fvFQeizzmmBB1rMF", "omitNotification": false, "platform": "EJe41VPyboDGXpXo", "price": 62, "recurringPaymentOrderNo": "YCx9kVE4kKjdqvqS", "region": "1W3k86CHPwVy6F5N", "returnUrl": "k2U0KeSEsDmiD7GM", "sandbox": true, "sku": "MQmbJfKm5eEfwsrT", "subscriptionId": "dOOXXRNeegYtRUob", "title": "MtWilVs13JPBhZ66"}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserPaymentOrder' test.out

#- 254 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ujhHnYH4oGkPfEh4' \
    --userId 'q8PwwLOTVfBQRwgs' \
    --body '{"description": "rOqTFVXGuw3cNbQ1"}' \
    > test.out 2>&1
eval_tap $? 254 'RefundUserPaymentOrder' test.out

#- 255 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'liflE3vhrSOoawuY' \
    --body '{"code": "6ROGIlhbRc3PDz6p", "orderNo": "EZ5Ld4AdMcGIGjXN"}' \
    > test.out 2>&1
eval_tap $? 255 'ApplyUserRedemption' test.out

#- 256 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'tuc9mxl1uF6NtMIu' \
    --body '{"meta": {"EINKeANXHIgzwr6i": {}, "OSwo7mDGjfOpHkMy": {}, "HJkHcoZEdEJzuX1f": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "enZ6VB6Pb2V510gf", "namespace": "2cVYPwFmxYEuRPeg"}, "entitlement": {"entitlementId": "g8Zm13i84ZdEvVAe"}, "item": {"itemIdentity": "QNNLrDXFcKANXVio", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 77, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "BTgCnNNzGWTgfRDx", "namespace": "VjstKmVZr6ZaBwlo"}, "entitlement": {"entitlementId": "gMbYwzvSVLCvnSyZ"}, "item": {"itemIdentity": "AaunOkcR8FnvzDp5", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "5vG2cLOCf9LZXEH8", "namespace": "J1ppvNkUPZhcQZxL"}, "entitlement": {"entitlementId": "I5m6MqPnbPyKSqaQ"}, "item": {"itemIdentity": "0YX7An5t7e7UwjIC", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 59, "type": "ITEM"}], "source": "ORDER", "transactionId": "LFvR2Zqktzgx7eOO"}' \
    > test.out 2>&1
eval_tap $? 256 'DoRevocation' test.out

#- 257 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'YcV8mtEzLs1i2q1v' \
    --body '{"gameSessionId": "eqk5ItP0wbelagd0", "payload": {"pxaCoT8TQovpbATy": {}, "DA4xZLan2DzOe1QM": {}, "kD7wziY8ni4yfeCk": {}}, "scid": "xqQojBGqYxsMfrpn", "sessionTemplateName": "U3EqsyMmMSAn0Gto"}' \
    > test.out 2>&1
eval_tap $? 257 'RegisterXblSessions' test.out

#- 258 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7aVrrLdyzxQ1Ncx0' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '7Jl3w2Jnu6ypGIW2' \
    --limit '94' \
    --offset '79' \
    --sku '2jTR1cXmM9rIUZdO' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserSubscriptions' test.out

#- 259 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'rOhU2rJ8x4cNWQsr' \
    --excludeSystem 'true' \
    --limit '98' \
    --offset '74' \
    --subscriptionId 'Vkin3bYo11ZZcBYE' \
    > test.out 2>&1
eval_tap $? 259 'GetUserSubscriptionActivities' test.out

#- 260 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RsdpPsBCP87pQPUB' \
    --body '{"grantDays": 14, "itemId": "f0ooNokvovBX8ZqE", "language": "41H1xJTGQ3ADCTGj", "reason": "2ICQeuFE7FBbW7bI", "region": "geI2QSkij8uZtszP", "source": "zNle7Yvz9fnu0KeV"}' \
    > test.out 2>&1
eval_tap $? 260 'PlatformSubscribeSubscription' test.out

#- 261 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6DwLZW2V24VNTBb5' \
    --itemId 'n4wJF0H9G2BJzvb6' \
    > test.out 2>&1
eval_tap $? 261 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 262 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WElJUG5xjCBpBNFn' \
    --userId 'hmtzc6lx1Ys4nHMy' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscription' test.out

#- 263 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0TV9zYSvggJ2FCtw' \
    --userId 'PDYZy5iWknG4URzy' \
    > test.out 2>&1
eval_tap $? 263 'DeleteUserSubscription' test.out

#- 264 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DxA9yKkP63IBpVZz' \
    --userId '8yyJhzbn9IWmwvEn' \
    --force 'true' \
    --body '{"immediate": true, "reason": "Y7y2TJHeMZKtvWwN"}' \
    > test.out 2>&1
eval_tap $? 264 'CancelSubscription' test.out

#- 265 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'N5VSCy9SoCPfw8JB' \
    --userId 'k16I1ufmuxnyg8Y9' \
    --body '{"grantDays": 40, "reason": "ERxeR4gHRj9cbvYm"}' \
    > test.out 2>&1
eval_tap $? 265 'GrantDaysToSubscription' test.out

#- 266 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9QyqRqNV483uvoFd' \
    --userId 'WMHLcktuus9SQ4W0' \
    --excludeFree 'true' \
    --limit '63' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 266 'GetUserSubscriptionBillingHistories' test.out

#- 267 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '425WT8QMJmCBVfQx' \
    --userId 'Ak6HWHV2tPcl2URm' \
    --body '{"additionalData": {"cardSummary": "J2Mr4exhTYQtmjcA"}, "authorisedTime": "1996-08-20T00:00:00Z", "chargebackReversedTime": "1987-10-04T00:00:00Z", "chargebackTime": "1988-08-11T00:00:00Z", "chargedTime": "1972-04-27T00:00:00Z", "createdTime": "1982-12-11T00:00:00Z", "currency": {"currencyCode": "ZxGR9V1Xictpan5f", "currencySymbol": "OC19bD1QLBANFgxH", "currencyType": "VIRTUAL", "decimals": 12, "namespace": "Uu6zI2oox0WOX9Zr"}, "customParameters": {"pxUq00oePWLEmr4r": {}, "g5oTXbL91MekEbRM": {}, "fclsKQLBOCG9Oyr4": {}}, "extOrderNo": "Z3SzjEuif3IkQHSQ", "extTxId": "szyNDzBE0K4THfxW", "extUserId": "tb10djtlsiNxD5cb", "issuedAt": "1988-12-24T00:00:00Z", "metadata": {"D0Sx77d5Hm0Y7zn5": "IGuQBppRvP3pg2HQ", "dpYusAUiTMkzMKeT": "vigKbRBpdApwzVWj", "7k3JawIwxNwrjAkz": "y4eNvds0m3icNiPD"}, "namespace": "Ms8mpKWdTX158xkb", "nonceStr": "jZCobuS398MU2wez", "paymentMethod": "uyIO5salSCy6b8cI", "paymentMethodFee": 41, "paymentOrderNo": "NnbF837l2aaQWXin", "paymentProvider": "WALLET", "paymentProviderFee": 64, "paymentStationUrl": "jXDxjiJonArPB2vN", "price": 46, "refundedTime": "1978-12-10T00:00:00Z", "salesTax": 43, "sandbox": false, "sku": "P8TCyutA3uoydnBX", "status": "DELETED", "statusReason": "tiziuu6gVGDqRkLJ", "subscriptionId": "tZm8pO898Doww2bV", "subtotalPrice": 21, "targetNamespace": "XwQo273vkukN1AMM", "targetUserId": "OAZgXGCRAKuQXxN5", "tax": 37, "totalPrice": 52, "totalTax": 89, "txEndTime": "1994-11-25T00:00:00Z", "type": "tjovUDno4Nln08qJ", "userId": "zSf1eRECrmPmDNTv", "vat": 25}' \
    > test.out 2>&1
eval_tap $? 267 'ProcessUserSubscriptionNotification' test.out

#- 268 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'fu2eRBubbxRje4M6' \
    --namespace $AB_NAMESPACE \
    --userId 'tACrMcIu33Bv1q3L' \
    --body '{"count": 36, "orderNo": "Aa0iSnga4sCULos7"}' \
    > test.out 2>&1
eval_tap $? 268 'AcquireUserTicket' test.out

#- 269 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'RB8ccmAlB8Lp8hQu' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserCurrencyWallets' test.out

#- 270 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'R2O1V7Lpj9iqzbNI' \
    --namespace $AB_NAMESPACE \
    --userId 'XpApKM6tmvM2k9YZ' \
    --body '{"allowOverdraft": false, "amount": 93, "balanceOrigin": "GooglePlay", "reason": "V3d4P4qklwq4mTlq"}' \
    > test.out 2>&1
eval_tap $? 270 'DebitUserWalletByCurrencyCode' test.out

#- 271 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'QalipzSDZquPTcS8' \
    --namespace $AB_NAMESPACE \
    --userId '0QgqtNdqplDVj11N' \
    --limit '7' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 271 'ListUserCurrencyTransactions' test.out

#- 272 CheckWallet
eval_tap 0 272 'CheckWallet # SKIP deprecated' test.out

#- 273 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Kg5sewTMvPv0uaLy' \
    --namespace $AB_NAMESPACE \
    --userId 'SjChe9fQ5EoUsdzG' \
    --body '{"amount": 21, "expireAt": "1991-04-08T00:00:00Z", "origin": "IOS", "reason": "7Ch4FMfmp9hFHPtH", "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 273 'CreditUserWallet' test.out

#- 274 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'H60d6zWOSjFZK9ve' \
    --namespace $AB_NAMESPACE \
    --userId 'be7Y12hAYllGFwKk' \
    --body '{"amount": 100, "walletPlatform": "Xbox"}' \
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
    --storeId 'psrQ1xUorIqqqM7Q' \
    > test.out 2>&1
eval_tap $? 280 'ListViews' test.out

#- 281 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'NyD3BAo4zjWHmqBT' \
    --body '{"displayOrder": 9, "localizations": {"ij68ZLsBe3sBuqoI": {"description": "Te19cPoykL9rwmJI", "localExt": {"nRpIr373vmDrHO2f": {}, "RK8sUSeFigw01cAN": {}, "clrzeMfGcoGJssvz": {}}, "longDescription": "erbSedY86YJTRvcL", "title": "BVNaZEcKGOxL5l0i"}, "sq7BHfdDPcGBPlxZ": {"description": "49KuyUWMfVIjo5nP", "localExt": {"O3uLTN30aLJcaUUa": {}, "ZoQUdLG2MJC8zwd5": {}, "iug4GWWFXkgaFZpJ": {}}, "longDescription": "hsPM7QUHJmRctUOr", "title": "H1nhgHusus0kRv0o"}, "NRPoUnYilYoAbkq9": {"description": "xXyrhnajNeLmlfOf", "localExt": {"IA9VX8Ixr2MQ8s4g": {}, "eynHHB7cq0TlNmCb": {}, "AZXuzqDm57iHbf17": {}}, "longDescription": "3P1hteh1r8SHo7cQ", "title": "xUAYXO4ROBtF8Cqg"}}, "name": "X1YjxY5Ls3TNAUj3"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateView' test.out

#- 282 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'fPk8yp4gheCPf5lb' \
    --storeId 'FEzXvtwG7F9xebtV' \
    > test.out 2>&1
eval_tap $? 282 'GetView' test.out

#- 283 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'kRkVFs8JASFnx5qK' \
    --storeId '5c1PgtekI8Jdr3By' \
    --body '{"displayOrder": 47, "localizations": {"Skwj3chD94FX4cJB": {"description": "bKZ2UuWFIZrxNGjP", "localExt": {"nhhXvdz3emZ35oUy": {}, "Hg6MVeFUJWe5iGyM": {}, "FcCY6ZYjUEENLLEU": {}}, "longDescription": "JjANGHoazpf0sVzV", "title": "uPlbcp6ElDFyGZIO"}, "kW4m7QYD30k6AbPX": {"description": "hkspfhVV45mpKhdl", "localExt": {"2qLrnfV1YpaAb075": {}, "frepoeTwkAICGGIu": {}, "oX4r1QDj3DVSdmrq": {}}, "longDescription": "cod2SrfCANgaHhJ8", "title": "HoG2gtUeJ5ib0Vyz"}, "nWsAA0zGjnt35K4P": {"description": "EEoCEZCroPbOBpvv", "localExt": {"JCBHz4YwooMHfwYp": {}, "6btGmCgZvopTCyI7": {}, "LybK4NEhhLEgxPbE": {}}, "longDescription": "4VxRqcg2l0yaPviJ", "title": "vwigWGbYg5oHA5vK"}}, "name": "mmuCdTdrupnhuf5c"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateView' test.out

#- 284 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'aH74Hm9uPeTondrC' \
    --storeId 'oIRAtJZyVY9FbDCO' \
    > test.out 2>&1
eval_tap $? 284 'DeleteView' test.out

#- 285 QueryWallets
eval_tap 0 285 'QueryWallets # SKIP deprecated' test.out

#- 286 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 14, "expireAt": "1984-05-28T00:00:00Z", "origin": "Nintendo", "reason": "A1RkcA4jDLpeXico", "source": "REDEEM_CODE"}, "currencyCode": "XcFoTmdfSJmDJdtL", "userIds": ["R6e2i0XntGUgPG9S", "AHmqqD4RfCby5PAz", "6jSb3YHeUmZ1ewUu"]}, {"creditRequest": {"amount": 89, "expireAt": "1973-10-14T00:00:00Z", "origin": "Playstation", "reason": "fuA3JCrqdsyxcWxE", "source": "REDEEM_CODE"}, "currencyCode": "z3mqhVL68fcyyND1", "userIds": ["OoxumtWjevbVjFOo", "JQJe4nmgsZ9Y7kmc", "z1sTamV8Zwrlh3sy"]}, {"creditRequest": {"amount": 71, "expireAt": "1984-11-28T00:00:00Z", "origin": "Steam", "reason": "pb2NNI5m5pHd0fAF", "source": "REFERRAL_BONUS"}, "currencyCode": "FjS5aG364lstBB3j", "userIds": ["4MPyqvHVqBai78sW", "pKgbfjaUWXdkw1q9", "MLDGh5FNQjQkwx8E"]}]' \
    > test.out 2>&1
eval_tap $? 286 'BulkCredit' test.out

#- 287 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "pNsspTk4gN5n1fct", "request": {"allowOverdraft": false, "amount": 24, "balanceOrigin": "Xbox", "reason": "w5495lLtqomFnZWQ"}, "userIds": ["t1KAPIX5cx3H78ME", "3r8rbocWJ3KuYSSL", "uwovAzbFBYhwLQ1f"]}, {"currencyCode": "8tbRJa3VEOIXHTbp", "request": {"allowOverdraft": true, "amount": 94, "balanceOrigin": "Other", "reason": "1itqJXVXiMXwswJA"}, "userIds": ["ZpucwSQD1tMhEPY2", "icy0WYUjqHapr9Ou", "nK7ttw9cxQ71M5mG"]}, {"currencyCode": "x3Irk8bO2tbRxcVD", "request": {"allowOverdraft": true, "amount": 89, "balanceOrigin": "Xbox", "reason": "DqrnFaSox6KdfqMc"}, "userIds": ["8XtvaqVJXjsW2faj", "PYl5Ss1c0upBxY00", "fsEejfW0qKrg9P9c"]}]' \
    > test.out 2>&1
eval_tap $? 287 'BulkDebit' test.out

#- 288 GetWallet
eval_tap 0 288 'GetWallet # SKIP deprecated' test.out

#- 289 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'AWCrcDSjooof6GmB' \
    --end 'z8C1ojYSEEGfDlOr' \
    --start 'wX2yQzC49r4iuvix' \
    > test.out 2>&1
eval_tap $? 289 'SyncOrders' test.out

#- 290 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["GXujeG8MFf4sLPQt", "XfKz7AYMxxvAaOpQ", "eMSl7nrGMOVlDk3p"], "apiKey": "68o2MYnK9StCht7Q", "authoriseAsCapture": false, "blockedPaymentMethods": ["IslPVxiVfCMpxlaV", "e1Bd25qQyv2mtY9E", "RsZOXi1gHVkk5fvq"], "clientKey": "dzKe5MbkHvI5IvvU", "dropInSettings": "xbO9ZyMoA1ByT160", "liveEndpointUrlPrefix": "kJ92sYXNNtyhLvC1", "merchantAccount": "PoS79J76Ma7zgCr5", "notificationHmacKey": "QHOwZI0ERZPeX4GL", "notificationPassword": "nsB9Hu2qE2yIHDgC", "notificationUsername": "LpmazDqeysPWVZrs", "returnUrl": "z3MJc1t84WHLvMQO", "settings": "CD3hInpZAEJv8fJD"}' \
    > test.out 2>&1
eval_tap $? 290 'TestAdyenConfig' test.out

#- 291 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "enCrCwvTlxS5rCpu", "privateKey": "S62pwKPihHFCL1P1", "publicKey": "t3jWfyKHiTJJMh9l", "returnUrl": "OfZpxfR7mqzm1xCg"}' \
    > test.out 2>&1
eval_tap $? 291 'TestAliPayConfig' test.out

#- 292 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "VWfLbFFdVA2rHfg8", "secretKey": "392gAempJqh6d4QQ"}' \
    > test.out 2>&1
eval_tap $? 292 'TestCheckoutConfig' test.out

#- 293 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'ODP4aUmFmkcs9vnn' \
    --region 'vgCDRp9zYhQDiPnZ' \
    > test.out 2>&1
eval_tap $? 293 'DebugMatchedPaymentMerchantConfig' test.out

#- 294 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "5mcZ0aZY29rLCfAx", "clientSecret": "IevOqlrCYcFLFvAR", "returnUrl": "Ij50Ezt9JzeT7IKE", "webHookId": "md3ms46NXbanYxfs"}' \
    > test.out 2>&1
eval_tap $? 294 'TestPayPalConfig' test.out

#- 295 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["F18tZmsu5MN1U54A", "OWdp31eFe7luVmRY", "DWgAm72dkHe8MpqI"], "publishableKey": "tBpEDCt9EIJU9d1Q", "secretKey": "UP8RWQLArhudl5RD", "webhookSecret": "TOAEeMJOXZdk1AEJ"}' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfig' test.out

#- 296 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "AIJNsUgQ2wv6GkEU", "key": "ldH2hUm41DQxkE0r", "mchid": "JFoQ89mvjL8HxEcO", "returnUrl": "rsGGD3SXwvw8eb7r"}' \
    > test.out 2>&1
eval_tap $? 296 'TestWxPayConfig' test.out

#- 297 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "7imQMBdhCkXFq8EB", "flowCompletionUrl": "h3nEVj72HsAwtXJa", "merchantId": 93, "projectId": 45, "projectSecretKey": "gWTxXlEIa4MoY93M"}' \
    > test.out 2>&1
eval_tap $? 297 'TestXsollaConfig' test.out

#- 298 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '8ufY2xh706XyyoBi' \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentMerchantConfig' test.out

#- 299 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'hXg3xFCji2USx3cC' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["qzvH5oDwaJFRVEUO", "jDpUfLz9pcXWqUtq", "cYUJJ5tCDK9OrQxH"], "apiKey": "VG53IpjpykaybRbA", "authoriseAsCapture": true, "blockedPaymentMethods": ["eAQVq5lWsWhfiPRf", "9WiCQ7mW0eq2jgCL", "NAFP8Ky23iFd3zS8"], "clientKey": "uI2966sLj2Xnac5u", "dropInSettings": "B5w7NisNKFWcrUM4", "liveEndpointUrlPrefix": "ATY8OKWa6QyzA4DF", "merchantAccount": "9vsj7fTlBXg8b71W", "notificationHmacKey": "WK4kGZlI2GIrNDcx", "notificationPassword": "lAwxmBpanE2Nyvjd", "notificationUsername": "uVl803rJYkXsEqa0", "returnUrl": "BgCuZ8URJaWjiOLl", "settings": "jHgEFfPxaZyqG8J5"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateAdyenConfig' test.out

#- 300 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'icoWC98B0T1Ttl9J' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 300 'TestAdyenConfigById' test.out

#- 301 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'rJ4tw97NbtAIcBJL' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "NQgvZNKrUwxxKIjm", "privateKey": "rH2TSG9qWJ0DWY1g", "publicKey": "p1V0sdbTpkafXwPD", "returnUrl": "GxMLGvjGADvHpNjB"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateAliPayConfig' test.out

#- 302 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'scciFotP5Kag0gYy' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 302 'TestAliPayConfigById' test.out

#- 303 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'YXzt95qYQmcta7tq' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "Doco3aUkqSCnYbQc", "secretKey": "QLV13oqfTLOkjyG2"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateCheckoutConfig' test.out

#- 304 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '0iGOjOpjFTgsJxpU' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfigById' test.out

#- 305 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '5bTMN0BI3jXIFa4N' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "xmG75vvtuWRGLKEm", "clientSecret": "sxUNqG5l6NvFKIzh", "returnUrl": "Fc83e89ilo6VlFNH", "webHookId": "nf4O0u1frjpt7mN3"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdatePayPalConfig' test.out

#- 306 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'z4ZJtrVVqH8VJby1' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfigById' test.out

#- 307 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'FMZxqCSS8nDR2GoN' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["cNp7YKeThy4Yn0yv", "MzzYGCWzDPxpEbdH", "JdmBVYaUTv7r7b0l"], "publishableKey": "15ykqv8A06x7EAGS", "secretKey": "U3IE6pKblpO1lu63", "webhookSecret": "CzG102HQXiKRmG47"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateStripeConfig' test.out

#- 308 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'eXdlQKO44moTg1AX' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 308 'TestStripeConfigById' test.out

#- 309 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'Iq7n06mskdjTSuSB' \
    --validate 'false' \
    --body '{"appId": "C6HDLCsYucCy02du", "key": "geodk7hrXTLaTxqq", "mchid": "O2qyd82TkjqNLLIj", "returnUrl": "YUTgiIBLai78meaR"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateWxPayConfig' test.out

#- 310 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'xQ1oV0sxBytjbDQH' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 310 'UpdateWxPayConfigCert' test.out

#- 311 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Xx35Tt5qWy7SO2j6' \
    > test.out 2>&1
eval_tap $? 311 'TestWxPayConfigById' test.out

#- 312 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'IVaGruhaiqnrcqOA' \
    --validate 'true' \
    --body '{"apiKey": "pf4iVobulZJQ5XVt", "flowCompletionUrl": "GKrry7BPOHVN4zQq", "merchantId": 1, "projectId": 57, "projectSecretKey": "63LBYCC1LTaGkks4"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateXsollaConfig' test.out

#- 313 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'JKdvEqWRHrVzdevg' \
    > test.out 2>&1
eval_tap $? 313 'TestXsollaConfigById' test.out

#- 314 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'meonOb4SCuZOrB3z' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateXsollaUIConfig' test.out

#- 315 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '12' \
    --namespace '4d84kHzQazVongQ4' \
    --offset '75' \
    --region '9PlTCKlCeWjoNKC2' \
    > test.out 2>&1
eval_tap $? 315 'QueryPaymentProviderConfig' test.out

#- 316 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "9stFiXLIibJZNk9n", "region": "GNWTNIjHyU3qCLOs", "sandboxTaxJarApiToken": "chT4ivL7abKqqx7r", "specials": ["ADYEN", "STRIPE", "ADYEN"], "taxJarApiToken": "ZD6AmGmsAmWXqM00", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 316 'CreatePaymentProviderConfig' test.out

#- 317 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 317 'GetAggregatePaymentProviders' test.out

#- 318 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'fBpKbqBt5ZYRU3PE' \
    --region 'V5bAwA4inejBIXMB' \
    > test.out 2>&1
eval_tap $? 318 'DebugMatchedPaymentProviderConfig' test.out

#- 319 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 319 'GetSpecialPaymentProviders' test.out

#- 320 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'JnfCTVkQkD5ca0Tc' \
    --body '{"aggregate": "XSOLLA", "namespace": "2zdEpfqvv9dQTozo", "region": "xqgl1fePqiab1cFC", "sandboxTaxJarApiToken": "6a2vwqAw5QXiYOVf", "specials": ["PAYPAL", "ALIPAY", "PAYPAL"], "taxJarApiToken": "iQ0u2kWCQxvge4ps", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 320 'UpdatePaymentProviderConfig' test.out

#- 321 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'm51RWHP6G0Rrroy0' \
    > test.out 2>&1
eval_tap $? 321 'DeletePaymentProviderConfig' test.out

#- 322 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentTaxConfig' test.out

#- 323 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "jrOPcO9zmYXrE7QP", "taxJarApiToken": "hFb3JxKbXAfuQlBO", "taxJarEnabled": true, "taxJarProductCodesMapping": {"l5wiuaQnTUW96hIt": "2wxGwuPXS9UqdhPf", "bQpecXZsI9cjQVBx": "0uxx61vnpr8Ij7Jt", "CwvhotzvMT0sNmV7": "6zmF4zjPuOAeguwD"}}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentTaxConfig' test.out

#- 324 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'GTZzPHlwFF6YKp0P' \
    --end 'y6SCouCG0fh5fOXf' \
    --start '5LlKoJgUC5OGvrUK' \
    > test.out 2>&1
eval_tap $? 324 'SyncPaymentOrders' test.out

#- 325 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'd9XTp4UwyJ0VDyST' \
    --storeId '5yuUGBQLDlwWCE5O' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetRootCategories' test.out

#- 326 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '0vFCpa3xATgDHXDo' \
    --storeId 'FTBpqMsJooK4ATI7' \
    > test.out 2>&1
eval_tap $? 326 'DownloadCategories' test.out

#- 327 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'o9hzWlJ6vPjr8NTG' \
    --namespace $AB_NAMESPACE \
    --language 'hmP50THpBiDNkEyD' \
    --storeId 'oClR2YhX0Ybp0F3Y' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetCategory' test.out

#- 328 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'we0if5MaJ2MXhAov' \
    --namespace $AB_NAMESPACE \
    --language 'CzS1sG3DQS7RIi7T' \
    --storeId '8eOkjVwjMDHBYBxl' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetChildCategories' test.out

#- 329 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'ORvPODpCw9SE21Ha' \
    --namespace $AB_NAMESPACE \
    --language 'iutebP2tmZjGrQFa' \
    --storeId 'q8Bqbk0mtkE3Mu4K' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetDescendantCategories' test.out

#- 330 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 330 'PublicListCurrencies' test.out

#- 331 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 331 'GetIAPItemMapping' test.out

#- 332 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'TmClCC5ljNcsYRXU' \
    --region '9BtLdF7pLqXg994I' \
    --storeId 'Ep178WFzyvG6rmDg' \
    --appId 'D7wE3zzFhUhqJdWc' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetItemByAppId' test.out

#- 333 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId '5Z3LYv9zGcUQnXn6' \
    --categoryPath 'q1dy3lNutrAsHG4L' \
    --features 'g2a0V3HicHXwdTbO' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language 'mvfy7wASqQNKUjSg' \
    --limit '87' \
    --offset '35' \
    --region 'axsihRynYwbm2mr4' \
    --sortBy '["displayOrder", "name", "name:asc"]' \
    --storeId '9g3rrm3a7r52gatI' \
    --tags 'NtzVsPbw91HwwFdf' \
    > test.out 2>&1
eval_tap $? 333 'PublicQueryItems' test.out

#- 334 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'LFdkrEfOff4cDiJ7' \
    --region 'UNkz8O3ACFYHDp1j' \
    --storeId 'xKngmf1LejCho4QD' \
    --sku 'mp0KGicnJHXH1DxA' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetItemBySku' test.out

#- 335 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '2xTDu24JEYXCVmKn' \
    --region 'ZpLf5OfNHFQCbYTJ' \
    --storeId 'hbkUgelP7JUhtwDt' \
    --itemIds 'tSPFa2XQhz9cp5IL' \
    > test.out 2>&1
eval_tap $? 335 'PublicBulkGetItems' test.out

#- 336 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["ETRxFB5LhREWPmHG", "sBSbaaSsZaPzRRyA", "LeMn2jlx4lAXJQpx"]}' \
    > test.out 2>&1
eval_tap $? 336 'PublicValidateItemPurchaseCondition' test.out

#- 337 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'OPTIONBOX' \
    --limit '42' \
    --offset '97' \
    --region 'ZNioWAzxrHhrNtge' \
    --storeId '1FccCmEHPikddGfs' \
    --keyword '0gbwm4barlpra8I2' \
    --language 'yxr6CL2kcW5GLflw' \
    > test.out 2>&1
eval_tap $? 337 'PublicSearchItems' test.out

#- 338 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ejx37HPHx36q5v9G' \
    --namespace $AB_NAMESPACE \
    --language 'SgcpHlcJ1OLk3Y1n' \
    --region 'jprENz21S8axQhDo' \
    --storeId 'gKebMenUiWflBTmx' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetApp' test.out

#- 339 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'KEN3oBl4fWUGpMuD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetItemDynamicData' test.out

#- 340 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Y9WfEpVQnms9jUNa' \
    --namespace $AB_NAMESPACE \
    --language 'YFomwDOZ3P6HZLYg' \
    --populateBundle 'true' \
    --region 'jF47cUqw78bonsuv' \
    --storeId 'Iy0eb3uDFVbIxlMb' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItem' test.out

#- 341 GetPaymentCustomization
eval_tap 0 341 'GetPaymentCustomization # SKIP deprecated' test.out

#- 342 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "odPq8JwJVFPUDrIN", "paymentProvider": "ALIPAY", "returnUrl": "LFMN0xXIdgt7kpdq", "ui": "IcyGV3OGRtUtQQDD", "zipCode": "emtlHLyNoZQXNdyd"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetPaymentUrl' test.out

#- 343 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WxRYgyBEBaFXBGBy' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetPaymentMethods' test.out

#- 344 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ens63TbzzaTlBN2O' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUnpaidPaymentOrder' test.out

#- 345 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9WjGKdIVbzQSPQyz' \
    --paymentProvider 'WALLET' \
    --zipCode 'LFOGyIcy1DzpqtrE' \
    --body '{"token": "lKiEjQneQU7nQKjq"}' \
    > test.out 2>&1
eval_tap $? 345 'Pay' test.out

#- 346 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jGNtuUjE5pmTqxy7' \
    > test.out 2>&1
eval_tap $? 346 'PublicCheckPaymentOrderPaidStatus' test.out

#- 347 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region 'LV9qy9DcJlBSjvin' \
    > test.out 2>&1
eval_tap $? 347 'GetPaymentPublicConfig' test.out

#- 348 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'DdHgAsISeGmJWBx4' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetQRCode' test.out

#- 349 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Pd1f7Ye3e5aFQyvh' \
    --foreinginvoice 'GUCzZ0nGk1wLpTKR' \
    --invoiceId '8uK3dxQAPPOUkAg4' \
    --payload 'TFxMq973d2TyFs3u' \
    --redirectResult 'GgXPmLbDAGmDNSey' \
    --resultCode 'BINqMVpDMOgMxAZJ' \
    --sessionId 'vOh3RoIOuZgUptVQ' \
    --status 'tEF6jBxU0f9IoUpP' \
    --token 'qkqMeet2FWQO3LgH' \
    --type '0meMuk6hhtTfyTDs' \
    --userId 'QVnH2scvKV9ZXgiB' \
    --orderNo 'MK0QdmYvtt5uiBkY' \
    --paymentOrderNo 'Y5076NKYKTOrRohM' \
    --paymentProvider 'WALLET' \
    --returnUrl 'zdDe7KYe99n39fEW' \
    > test.out 2>&1
eval_tap $? 349 'PublicNormalizePaymentReturnUrl' test.out

#- 350 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'wWujh3bzow6w8psS' \
    --paymentOrderNo 'UXwT0Fd2rCgGJ1SO' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxValue' test.out

#- 351 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'Ee6o20Yg2NLe4qEA' \
    > test.out 2>&1
eval_tap $? 351 'GetRewardByCode' test.out

#- 352 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'y4Io0nwdyL8sOX3w' \
    --limit '16' \
    --offset '93' \
    --sortBy '["namespace:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 352 'QueryRewards1' test.out

#- 353 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'w349tsSytsNoavIe' \
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
    --appIds '["lLwG8WFWP5RWLtBZ", "6KOvNF3bwJ2CGDJJ", "lT2KH6RRGXkZN1Wm"]' \
    --itemIds '["q0KOxgU9Cob9XZp0", "dHRBlBE0B088BzTI", "ci2OunYr3mCNOu1s"]' \
    --skus '["cMCoTbS7mC4PurB5", "ZPemZOhhlARvDZRc", "azeJeSdd203tpOLh"]' \
    > test.out 2>&1
eval_tap $? 355 'PublicExistsAnyMyActiveEntitlement' test.out

#- 356 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '47nLmf58mVcYBLsl' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 357 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'WvWCQAX3CK9C1z2Q' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 358 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'BoACGCiN0KEw0rSa' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 359 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["bywwutLZCaDzLOOS", "EfNKUL8JACQvRTZX", "7sFO86Boo3W5cbMi"]' \
    --itemIds '["BYx2K5FdZeGgEj5P", "iEZU1DUgRinxgIP0", "th8orzRiVaRyFKwq"]' \
    --skus '["WG3vSqiNnqEWrbkf", "W7ya5z5f1CtpB5HV", "Yzvp4WVgZnVpehvr"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetEntitlementOwnershipToken' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "0dGTxnK4igSrtRRa", "language": "RY_CIdE", "region": "LgLMsIkLfM4vt957"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'wZRSIPL5mYy0P2iB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyWallet' test.out

#- 362 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ttGu1hmwpCdpHIjA' \
    --body '{"epicGamesJwtToken": "NDz2ddBa224yCnsj"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncEpicGameDLC' test.out

#- 363 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sfmWmp1xXEZv54tC' \
    --body '{"serviceLabel": 20}' \
    > test.out 2>&1
eval_tap $? 363 'PublicSyncPsnDlcInventory' test.out

#- 364 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'KI4rB9TSu74gkta8' \
    --body '{"serviceLabels": [96, 11, 13]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 365 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'XwQ2l5d5XHocMsZu' \
    --body '{"appId": "5xQC1VPvZPxcvpI3", "steamId": "DeHZ1TmbgfvKnhwh"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncSteamDLC' test.out

#- 366 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LzOAiZ63pCiZ1fpg' \
    --body '{"xstsToken": "NSTaQqPvKqBIaYdQ"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncXboxDLC' test.out

#- 367 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'm8vaXHw5yT92F9dh' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '6wGnbkptYSBlYcxJ' \
    --features '["kQAdnow3MrmMW0J8", "PITTFKOBI9gErkyP", "ucNbqpHKzlXwwLrO"]' \
    --itemId '["kBtpYsZZkTaC3M1z", "WqqcDlNuzCljiIuC", "O2B3OjEQOQY35l2g"]' \
    --limit '2' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 367 'PublicQueryUserEntitlements' test.out

#- 368 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Ayvu2c3a09LdP55i' \
    --appId '9ffkervdu5MasjZh' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserAppEntitlementByAppId' test.out

#- 369 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6CCHRwuuf4mdWEXx' \
    --limit '9' \
    --offset '96' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 369 'PublicQueryUserEntitlementsByAppType' test.out

#- 370 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'p6VEfUKV2ByO0TAZ' \
    --entitlementClazz 'MEDIA' \
    --itemId 'TykKGoJtegrUssEa' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetUserEntitlementByItemId' test.out

#- 371 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'bZjYIM2fYzze2GTU' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Q7tDXXXV3E5wbSUf' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserEntitlementBySku' test.out

#- 372 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HprjIg1Ej1VTzl2q' \
    --appIds '["sZVBUoA6pVswGbYO", "qcYzZrXSP8I1vt1A", "FTIL2605hIwYFIPy"]' \
    --itemIds '["qUZakXbv1sjQxBqE", "PAJxZZsxusCrzfEw", "tkEvTtcuF2CAbrxw"]' \
    --skus '["XID3OrUVUxqikQUA", "IiuNTjgwzZbEnd1G", "9M0AssHAeDoy7QWo"]' \
    > test.out 2>&1
eval_tap $? 372 'PublicExistsAnyUserActiveEntitlement' test.out

#- 373 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HHMpgsJs8uehmWD9' \
    --appId 'Q9sr62lXBg1ZJbko' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 374 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OeYKvjaX1kT8IFfG' \
    --entitlementClazz 'APP' \
    --itemId 'HjKuJkr4NDKoEfcY' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 375 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bNMQjEpLD98jwNcT' \
    --ids '["A8uHNoN4K0wL8cCy", "5jynnn05OU3E20tC", "G8acjyNUjpXzw6UJ"]' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 376 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gM2BRrmyHFHMewAW' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'EfwZRfSwhwngha2b' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 377 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'zIB5JQmYsx0nDjSF' \
    --namespace $AB_NAMESPACE \
    --userId 'Ra8d6tRfIap33UDF' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlement' test.out

#- 378 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'PREFiJRzQ3RkXbpV' \
    --namespace $AB_NAMESPACE \
    --userId 'Y8LrwCNtc1ZCyayf' \
    --body '{"options": ["pb6ECZf30qY6vfGy", "1FXrTH69ayBZ0fD9", "wYFRHudOZLMkWGAw"], "requestId": "rr6M1eDN4gFoanZv", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 378 'PublicConsumeUserEntitlement' test.out

#- 379 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'p69EhDp4YNTY8od2' \
    --namespace $AB_NAMESPACE \
    --userId 'aiK3jqcUbLzoX1Es' \
    --body '{"requestId": "whqH7RBGEM8vKpGt", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSellUserEntitlement' test.out

#- 380 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'sWjGZwTErvAOPD4G' \
    --body '{"code": "raNU02mIRYBesRqh", "language": "kx-842", "region": "VG0f2UBGUwzJMLx5"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicRedeemCode' test.out

#- 381 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'oVFS5Arvbve1k4sI' \
    --body '{"excludeOldTransactions": true, "language": "JN-kARt-fU", "productId": "H8SrskkiCi5rzvWL", "receiptData": "CqxxWRbCnRT3SWeo", "region": "LpWWc0PLRRy91AdL", "transactionId": "RA2NnTXF1LbDnUlc"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicFulfillAppleIAPItem' test.out

#- 382 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NmMy23Cmsyun7gAC' \
    --body '{"epicGamesJwtToken": "Bn62Flkz1cVk1gQG"}' \
    > test.out 2>&1
eval_tap $? 382 'SyncEpicGamesInventory' test.out

#- 383 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VsQCaSx1HUAsRqHi' \
    --body '{"autoAck": true, "language": "sFn-zzHZ-716", "orderId": "UwL11LUKlm6BAaya", "packageName": "SziKL75uaTEAwtDU", "productId": "wBc52ZAyLNbeXlSt", "purchaseTime": 83, "purchaseToken": "lT34AVcOA4jrNkLx", "region": "A0Q6mwV93r0h66ff"}' \
    > test.out 2>&1
eval_tap $? 383 'PublicFulfillGoogleIAPItem' test.out

#- 384 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'PpFYxzjgZEFSOf1S' \
    --body '{"currencyCode": "lMShgtmy9XdRcMlA", "price": 0.9062321629455994, "productId": "e62STeCW8QT0UqYk", "serviceLabel": 2}' \
    > test.out 2>&1
eval_tap $? 384 'PublicReconcilePlayStationStore' test.out

#- 385 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'YBto1a3BzHYRYBzx' \
    --body '{"currencyCode": "x7erEnqF2bMpeMMH", "price": 0.21133811455524276, "productId": "vCOsStYvS3dzeISe", "serviceLabels": [67, 61, 54]}' \
    > test.out 2>&1
eval_tap $? 385 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 386 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Q3B9dk9075e4kiju' \
    --body '{"appId": "2djI8BB254cXTGGj", "currencyCode": "2bTRszhoSdEHiAQH", "language": "lDP_yCpO_374", "price": 0.39313013154486953, "productId": "Nec77WPgosxKFq3I", "region": "yCK5pMPi3O3lCpiN", "steamId": "nWWFYQGaQs85RYGE"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncSteamInventory' test.out

#- 387 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'pqVNHKOxvasIsc4P' \
    --body '{"gameId": "enKJUkQdexSabfLl", "language": "tE_Op", "region": "e2uUJURQj7WfvhL2"}' \
    > test.out 2>&1
eval_tap $? 387 'SyncTwitchDropsEntitlement1' test.out

#- 388 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Y6JuWQXGmt2h3yED' \
    --body '{"currencyCode": "B93LnlGp9zyXu0Er", "price": 0.10090971385050274, "productId": "wi8yVfNZb0sx1Ibh", "xstsToken": "ftVFF9LaraE6jJxM"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncXboxInventory' test.out

#- 389 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'BmRyXYOMfgRT3d5l' \
    --itemId '5efoEasRH48x5a2c' \
    --limit '73' \
    --offset '6' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserOrders' test.out

#- 390 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sMsBHTrKjh3NqJOR' \
    --body '{"currencyCode": "M2PmVKNDYhnSjhsM", "discountedPrice": 31, "ext": {"QxkTJYzlFqA0b54q": {}, "MdNJyubgrVnvp0EW": {}, "8rq9LCv0Rwrbb1qM": {}}, "itemId": "Pq29Aiw85xoJFShl", "language": "wCFS-OjIO_659", "price": 1, "quantity": 47, "region": "k4yDXDTlmV9dK7My", "returnUrl": "Tn00zJp87T5VB4JR", "sectionId": "PXwumkE96pbVZaWr"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateUserOrder' test.out

#- 391 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'L9RYJjNP8csw1bOD' \
    --userId '7KO4bbyxueCZFVag' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserOrder' test.out

#- 392 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HiGetBCW0rK5GBWV' \
    --userId 'KhFyB9f8dHaH5Dth' \
    > test.out 2>&1
eval_tap $? 392 'PublicCancelUserOrder' test.out

#- 393 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'QpC5MFc24oN5GSop' \
    --userId 'Htm0AQX7JuJOpX8V' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserOrderHistories' test.out

#- 394 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'OvHmjtjOHr3jcAvD' \
    --userId 'n4rBc9lXKBynUE6F' \
    > test.out 2>&1
eval_tap $? 394 'PublicDownloadUserOrderReceipt' test.out

#- 395 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '7UdLRRKHg87JTEIT' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentAccounts' test.out

#- 396 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'uNmTbDFriX9Ik9ou' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '7BTzzA9QLQmnzuUl' \
    > test.out 2>&1
eval_tap $? 396 'PublicDeletePaymentAccount' test.out

#- 397 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'E3wU7z4zDHn0NU8g' \
    --language 'M8lMculMqnFrfu5f' \
    --region 'ijtleycW68eROwh3' \
    --storeId 'blkCRMrMdeMYUECI' \
    --viewId 'CUOd1uAtMdTHfdV8' \
    > test.out 2>&1
eval_tap $? 397 'PublicListActiveSections' test.out

#- 398 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '1DO1gd2qLD22Lqx2' \
    --chargeStatus 'NEVER' \
    --itemId 'j1GCRJjX62743NCJ' \
    --limit '3' \
    --offset '84' \
    --sku '4tQyPqisIRJudWX3' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserSubscriptions' test.out

#- 399 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '1b0ulVVq7vMhqxyC' \
    --body '{"currencyCode": "g8nfcUWqfm0tCAzZ", "itemId": "Qvx7ddVJs9nd0YXJ", "language": "uP_LWGq", "region": "YAhLkpOoPlNsWYIz", "returnUrl": "FTybrNTnKvn6lvCX", "source": "ixPTCSDS7gACvnsa"}' \
    > test.out 2>&1
eval_tap $? 399 'PublicSubscribeSubscription' test.out

#- 400 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'S4pEBPT5KqamvY06' \
    --itemId 'R6NMfdPJjmjTsMdI' \
    > test.out 2>&1
eval_tap $? 400 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 401 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'm7sCW0DzcMSpFI0A' \
    --userId 'kn8hdjpOpDUDsM5t' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserSubscription' test.out

#- 402 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yjtFAeTdcHy4zq6f' \
    --userId 'o6UUgM9buVtJJjTI' \
    > test.out 2>&1
eval_tap $? 402 'PublicChangeSubscriptionBillingAccount' test.out

#- 403 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'abN3eRsJwPJKtr7k' \
    --userId 'FvC3GDzgS0o98CM6' \
    --body '{"immediate": false, "reason": "9EWQlquMuofROjU6"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicCancelSubscription' test.out

#- 404 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'AHCrjvcXUHgCz4Ak' \
    --userId 'qvbSD8qMZtA4S4uX' \
    --excludeFree 'false' \
    --limit '30' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserSubscriptionBillingHistories' test.out

#- 405 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'bZWmHnUveXQZVKMC' \
    --language 'jv42d3brie0XYl2l' \
    --storeId 'xebofFfMGat8PfQM' \
    > test.out 2>&1
eval_tap $? 405 'PublicListViews' test.out

#- 406 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'V2VFw5clz56sIcPx' \
    --namespace $AB_NAMESPACE \
    --userId '5Ng0o5mQ3AnVmTIk' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetWallet' test.out

#- 407 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'dmRlJyszkGqYXs4r' \
    --namespace $AB_NAMESPACE \
    --userId 'zz3KUoy3avZGeSnE' \
    --limit '12' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 407 'PublicListUserWalletTransactions' test.out

#- 408 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'kKh4kzbrcJmRLSH4' \
    --baseAppId 'RhqGRsDVHn9Pci0W' \
    --categoryPath 'xr8FOPALgDV9hdro' \
    --features 'ckN066utHUU0wJcl' \
    --includeSubCategoryItem 'false' \
    --itemName 'FNEr1U1qX8IomKMX' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '25' \
    --offset '95' \
    --region 'HD7nYYRO036749z1' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "name:asc", "createdAt:desc"]' \
    --storeId 'o2eSVSkRtJMKiJbp' \
    --tags 'RQFYxVNEyPt2YYUO' \
    --targetNamespace 'PYl9Is7f5s8ZmWGv' \
    > test.out 2>&1
eval_tap $? 408 'QueryItems1' test.out

#- 409 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'FLsJjKAsilZ5ublU' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 409 'ImportStore1' test.out

#- 410 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'TLcKCFDSfGVhlii9' \
    --body '{"itemIds": ["MCdgKM8HvyU0wZl1", "zNMiRZkITXM1dxlF", "tHUGUIBJGnVzO3cR"]}' \
    > test.out 2>&1
eval_tap $? 410 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE