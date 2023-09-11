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
    --body '{"context": {"item": {"appId": "SceVVA2B9syYwVmm", "appType": "SOFTWARE", "baseAppId": "0if3F9OQZ9DaGsmy", "boothName": "gk7kkPARI8sEvHZN", "boundItemIds": ["EgyFwo5s8VX43euX", "3Gpct7yovVvrZaAO", "BqLoKuumdjtm1hxd"], "categoryPath": "R0xSr6jTMQP4zAMp", "clazz": "2fzVat7eEqHBBOS0", "createdAt": "1995-05-22T00:00:00Z", "description": "ZJpDSbU08Q0RoTmb", "displayOrder": 27, "entitlementType": "CONSUMABLE", "ext": {"nRxRTquqkkdjjL5Y": {}, "7LctDCiQcNvNFbGi": {}, "ulrMq6n2xcCGDm0i": {}}, "features": ["amoaewP9r5BwKNZk", "BsDZChuSHl8KH2Cy", "5EqViymphT5xjBeR"], "fresh": false, "images": [{"as": "t3B2XqX7AKijpQzd", "caption": "7ItT4z4oNsXH17DB", "height": 82, "imageUrl": "4JXFZKmoIRY7dqCb", "smallImageUrl": "uamvwcizAvyimp6G", "width": 49}, {"as": "1HVMcMKvt2GHaaEK", "caption": "eVBZynPcfUQmrGCh", "height": 87, "imageUrl": "uwLcxRYV99c45vvA", "smallImageUrl": "AuQpl6iLOJn3qy85", "width": 49}, {"as": "05ACPx1MywkKiGOz", "caption": "5zFMA3lz1Mt0X4f6", "height": 74, "imageUrl": "SQicmEMCimqSLWpU", "smallImageUrl": "5IUEcUvVWYsliZOr", "width": 87}], "itemId": "YsPFJsdQVfqSGKna", "itemIds": ["Q8RrNEF4CT2Laf1g", "kplCQ0BCghcodttC", "m8vobtUd9EaZ6pUs"], "itemQty": {"mHNMohnfscMJdRp4": 95, "PtaagST2ql37NwjF": 42, "9qfl3cpAEJHRgJZF": 54}, "itemType": "INGAMEITEM", "language": "x4h1pc8rXFN8XD1w", "listable": false, "localExt": {"MpP5Y3R7z5kzFXMP": {}, "h7qDHzT13znF4Hu9": {}, "BicmTh2skYEEzdth": {}}, "longDescription": "ZKsx4pqMKbuVsLAc", "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 11, "duration": 17, "endDate": "1989-07-09T00:00:00Z", "itemId": "g6y1JDxoSLX0Gjmv", "itemSku": "E1arj7cS7ZVJ10p2", "itemType": "6dgTlQv6RIHYqSOp"}, {"count": 6, "duration": 12, "endDate": "1974-09-12T00:00:00Z", "itemId": "D0I56B26FMgQ8S0M", "itemSku": "wfWtRiUZLDvqTXOP", "itemType": "CZOHXpVxARbLFogN"}, {"count": 56, "duration": 57, "endDate": "1987-09-09T00:00:00Z", "itemId": "oaCQ5jdSiisEpoIt", "itemSku": "I2MoDdCLGsnOGtG4", "itemType": "DydWFHBOaAigrRle"}], "name": "lRzZoc8eyXfwlj2J", "odds": 0.16067253147106275, "type": "PROBABILITY_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 97, "duration": 29, "endDate": "1986-09-30T00:00:00Z", "itemId": "NBp820A6OlUbo7sI", "itemSku": "ikR3B2koz3YhYCgg", "itemType": "Sdin4uJ5EWOaoiyO"}, {"count": 24, "duration": 70, "endDate": "1999-07-17T00:00:00Z", "itemId": "Rzg2p6jcDz7hcAFx", "itemSku": "9gc2PI8UGxTirS5d", "itemType": "DMylDuBQtMUzWy3i"}, {"count": 76, "duration": 33, "endDate": "1978-12-19T00:00:00Z", "itemId": "6CPlYTKBzLkQOHVR", "itemSku": "LPNPahXX4G3MVucW", "itemType": "PTcYHqgh4HN4CPJo"}], "name": "8pgnyjVU6zR9UT28", "odds": 0.7469957854334222, "type": "REWARD", "weight": 57}, {"lootBoxItems": [{"count": 38, "duration": 70, "endDate": "1981-09-06T00:00:00Z", "itemId": "4aF9KjKSljLEEEis", "itemSku": "h4hY7D8X1PjhNdU7", "itemType": "d5U4houF58cY8HS5"}, {"count": 31, "duration": 7, "endDate": "1988-11-13T00:00:00Z", "itemId": "OKQq6vSY4GjSuAyX", "itemSku": "8IMT9jgCwanWv93b", "itemType": "bD10yWCYNkUNz5Xr"}, {"count": 23, "duration": 26, "endDate": "1996-08-08T00:00:00Z", "itemId": "PvunOSdZ1SHvR8lC", "itemSku": "AqmP7lp07dBv4Pwl", "itemType": "rgFzTASbHGtF4nO7"}], "name": "7GQuRjSw2dhVDITt", "odds": 0.9808868113732019, "type": "REWARD", "weight": 1}], "rollFunction": "CUSTOM"}, "maxCount": 94, "maxCountPerUser": 73, "name": "UJbsLJrKUYufNP9e", "namespace": "3E0Skv28atTqGd2L", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 95, "endDate": "1972-05-06T00:00:00Z", "itemId": "iXDAY6zOBeFgItvx", "itemSku": "RyHcFFiiLHvWfdnX", "itemType": "D4nxryt7gukpoTnk"}, {"count": 91, "duration": 2, "endDate": "1999-07-01T00:00:00Z", "itemId": "xdr17SXx2V1belWS", "itemSku": "Gqork7nEpNCAMSIT", "itemType": "7vjUNe17tSubCnay"}, {"count": 10, "duration": 8, "endDate": "1992-01-01T00:00:00Z", "itemId": "tAXUCHLfKQtVXbAP", "itemSku": "abWcDrx9Ao5CM1Qf", "itemType": "Ww2JnQoGv0ZRqk6Z"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 13, "comparison": "isGreaterThan", "name": "mhhWov0Kka9ZiiUO", "predicateType": "SeasonPassPredicate", "value": "j8ngpvCqEdqLn9jz", "values": ["6VaAhlbPCZfRuwqU", "vZeKApmiRJRjjuuF", "JsInrArHDAhTqQDi"]}, {"anyOf": 25, "comparison": "excludes", "name": "eVikJjFhq7XN8Vk5", "predicateType": "SeasonPassPredicate", "value": "w0yBVE69UpJCXFrn", "values": ["xNNZSOm2Cas7xYTp", "XbBESUN74BpmjGGu", "I7iQ5JakPe8xvfTO"]}, {"anyOf": 29, "comparison": "isLessThan", "name": "TunVbfcE19Q6LTiW", "predicateType": "SeasonPassPredicate", "value": "W0Gr1oBftgw3yzF4", "values": ["oxqKruy92xoQ2MRu", "ydC6VfI6xd4s5lG3", "NYBIHoTbVCIrTv4j"]}]}, {"operator": "or", "predicates": [{"anyOf": 29, "comparison": "isGreaterThanOrEqual", "name": "jWlvIf2fpFjPkfkH", "predicateType": "SeasonPassPredicate", "value": "zwqGLGux0Rf0DJjN", "values": ["5WEtb2JyBxp9pBVw", "l5wt6de3lCm5xFF1", "FF71q9SZ4kwCH7YZ"]}, {"anyOf": 5, "comparison": "isGreaterThan", "name": "Baj9K0ih29g1BjRu", "predicateType": "SeasonPassPredicate", "value": "KI5IkkPJaZWbQVNf", "values": ["Abm1Eq1wcS15P8zO", "bzjgXOivr12jRUF8", "UH85voGsyRkLaHYo"]}, {"anyOf": 84, "comparison": "is", "name": "rphDyZw5pKtvfFrj", "predicateType": "EntitlementPredicate", "value": "4Fo0pV27jv89wNs8", "values": ["RHMBvYfXP8DYAFbx", "UgELgyT2SttF2r1H", "rGJC4wtb6lAXemTt"]}]}, {"operator": "or", "predicates": [{"anyOf": 26, "comparison": "isGreaterThan", "name": "3lduyK0QnsszElSJ", "predicateType": "SeasonTierPredicate", "value": "DLhdCy0YHuRXcb1q", "values": ["5uH3dz4sFuxhoPOo", "aA6I67y2kOMJmlBC", "oOFLWhr5Bk6KZUpz"]}, {"anyOf": 77, "comparison": "isGreaterThanOrEqual", "name": "3rioTCexRPcO9Ojl", "predicateType": "EntitlementPredicate", "value": "6opJ2CCSIffSg2MZ", "values": ["SIUkqOmH1zRRzHKn", "zdk9i9g3QsHoojqK", "8NoDNv4D2L7qR3bJ"]}, {"anyOf": 60, "comparison": "isGreaterThanOrEqual", "name": "kxf3yWNA0cbIaiDL", "predicateType": "EntitlementPredicate", "value": "vYwUsKRrCH8sHbyZ", "values": ["TAsiqV9V1Yv66BSx", "n4REfIefwQOzR8wg", "KjKrsxoxDxPb9pVL"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 7, "fixedTrialCycles": 39, "graceDays": 44}, "region": "muZSt1ncgdbKDYCB", "regionData": [{"currencyCode": "pCdunNaXwkL65NIS", "currencyNamespace": "I0k7OxUeP7ggKC5V", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1972-01-07T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1972-01-21T00:00:00Z", "discountedPrice": 30, "expireAt": "1989-03-28T00:00:00Z", "price": 49, "purchaseAt": "1984-03-16T00:00:00Z", "trialPrice": 87}, {"currencyCode": "YcblLc4dXhUKIE3O", "currencyNamespace": "PmMmcDvcIDxeM6cA", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1973-08-07T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1978-05-04T00:00:00Z", "discountedPrice": 67, "expireAt": "1994-02-22T00:00:00Z", "price": 92, "purchaseAt": "1986-07-22T00:00:00Z", "trialPrice": 40}, {"currencyCode": "miP7CaRsqFuYA0nN", "currencyNamespace": "ROLNZfIPpgm5zmrZ", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1998-12-08T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1983-03-08T00:00:00Z", "discountedPrice": 10, "expireAt": "1984-05-23T00:00:00Z", "price": 85, "purchaseAt": "1980-07-16T00:00:00Z", "trialPrice": 28}], "saleConfig": {"currencyCode": "EdcuzP1F87PT0YZr", "price": 75}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "m8KwjgA1AynlbByK", "stackable": true, "status": "INACTIVE", "tags": ["Raay6hQ6SooDsiAR", "f5orecZ3XSXae2kq", "VHzt8wNStoCUSLKD"], "targetCurrencyCode": "YqSd6B7UfaF7kvKc", "targetItemId": "SngPW3J9r3hLRFKv", "targetNamespace": "DH3xnqvgPfsRyGKG", "thumbnailUrl": "pI2IlTNLoRjmHHz0", "title": "73IIZR27uBBJcU47", "updatedAt": "1998-09-05T00:00:00Z", "useCount": 13}, "namespace": "VzwS00vCJy0vTxjy", "order": {"currency": {"currencyCode": "F3MddFT2kgWLUHiq", "currencySymbol": "TITA5keVwLVjxfe7", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "r9wB7XjgmJXR8z1e"}, "ext": {"Ixd5ZHBPGuwDi77U": {}, "aidUrmgZoZ3PIxmd": {}, "5Rxo7dPeMapKJHFZ": {}}, "free": true}, "source": "CONSUME_ENTITLEMENT"}, "script": "315iel638yvOjmBO", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'LjXNVhBmNscAznnZ' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'eACKp5ulHFGBv02v' \
    --body '{"grantDays": "NcJ23MZcV40Uc5IE"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '0aOrzD6oMRvNv15i' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'dUv8asA898FTnPJt' \
    --body '{"grantDays": "bf72rWDt7bFIoD5j"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "GIMeyleVgt2JISDT", "dryRun": false, "fulfillmentUrl": "m1ixjzX8gsSxu5qP", "itemType": "APP", "purchaseConditionUrl": "h92Z0X1D9Glwxddg"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'uuzv3N2oXLkd1YMs' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'iY7EjwWaJ5QrudSc' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'sofrhhkDUMu34XhR' \
    --body '{"clazz": "DPiZ5mImvfPs1BZo", "dryRun": true, "fulfillmentUrl": "UQCWCaN1fx5ShAu0", "purchaseConditionUrl": "3i2ePPVrMIaZ1Jvj"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '6gIZCS1Qz5A5rjNB' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name '7JqqPETVZ5Zu5hRg' \
    --offset '43' \
    --tag 'xdyPagsQ4pPckDuz' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "c7LeTpZVxI8FS9ro", "items": [{"extraSubscriptionDays": 4, "itemId": "DHQwp3pFyexQSVHn", "itemName": "GSetb8vuQjMzycej", "quantity": 75}, {"extraSubscriptionDays": 29, "itemId": "wItJMmR6cGNA0HJo", "itemName": "71FsDqhFmjITSc3b", "quantity": 55}, {"extraSubscriptionDays": 75, "itemId": "s9H0ILNNcZ0f4hxA", "itemName": "4HTZUeyECG6yP1kt", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 56, "maxRedeemCountPerCode": 43, "maxRedeemCountPerCodePerUser": 12, "maxSaleCount": 84, "name": "f8D75DCSnS461l3g", "redeemEnd": "1989-04-07T00:00:00Z", "redeemStart": "1982-08-27T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ANa03cMRv3OQKlie", "st615o483mu4tY6y", "1iDdjSTeMuJXcVP1"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'enrctru5HMcjl8KP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'mTd6dapy9vS2BFBI' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aaqLhtl1Cl4VMHRj", "items": [{"extraSubscriptionDays": 89, "itemId": "sKNhB8HfpK0bOyrA", "itemName": "5a5US3cJ65efWhj3", "quantity": 92}, {"extraSubscriptionDays": 39, "itemId": "kM07MEK9IMC91kOG", "itemName": "4osqW6gKheyG89pV", "quantity": 86}, {"extraSubscriptionDays": 72, "itemId": "R5cqG2qcMCEeGBpT", "itemName": "MTngAvEuDTpFScA5", "quantity": 15}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 39, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 25, "name": "CEju4HTPih4Oh3bY", "redeemEnd": "1997-05-25T00:00:00Z", "redeemStart": "1992-07-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["kVyc5YiKBUjD9sFx", "jtrKfwCp5cAwEf5u", "WAF9OjxLqFQ82HrF"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'GSP3Rr8l7w0waghV' \
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
    --body '{"appConfig": {"appName": "RJsg151pkp5i73bk"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "F4MFOstyaPskbezq"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "CcRxMeubeQ4PChhi"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "jpyL3a9sXL5tKaAc"}, "extendType": "CUSTOM"}' \
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
    --storeId 'yKMvvk8YrX7kebev' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'PEa5pffZMBbGuaf4' \
    --body '{"categoryPath": "Ke4jqex4a7v1GnTL", "localizationDisplayNames": {"7AmecV8halKyQ3Ie": "qiCLAFVq9uz0f50w", "rWiUcOLBgPCIPZcH": "OpTcaxXMVZtFHOJt", "edFdmrRRP5Dbmd6I": "bmtK2gb0VUzefCzs"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'gmT2YswsGSs12ij5' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'tNbQv5MTSKc0etlW' \
    --namespace $AB_NAMESPACE \
    --storeId 'QiGsWHKeOKJ5kReu' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'PljSQFCGqBSus0kZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'guIP1iB3HLL3Tziu' \
    --body '{"localizationDisplayNames": {"0KJNHC7b0Sb7evW5": "JPYPvgD03yEq8JlD", "1oLt1krxo23NhZjN": "YuFUrgXVFpFIC5c9", "tGiq3l3ISfWG2hKZ": "mi0V0hx10NwpMQ4h"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '0ir9VyAztVA0f5C9' \
    --namespace $AB_NAMESPACE \
    --storeId 'Uxft9RrOx8kKdfkz' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'LpBPsPqvSS0VXXxq' \
    --namespace $AB_NAMESPACE \
    --storeId 'qZtbX1BkNnrCW81H' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'rekRjYZhCczyKcsH' \
    --namespace $AB_NAMESPACE \
    --storeId 'ESnr54bRtHX0npMH' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'K1F3OCSRLEbSaCWt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '80' \
    --code '8GPmSuwiPyy0szpr' \
    --limit '40' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'muVjDgaoo84N5eAD' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 24}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'NS6P8wCcnbKjIeBG' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'RMxMjpo8QhZtZtzP' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '1BgDVINjLZJjImoj' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '3rBNZmVYXOKhigLe' \
    --namespace $AB_NAMESPACE \
    --code 'qAKI2dtZ5RM3wPzg' \
    --limit '16' \
    --offset '77' \
    --userId 'f2t1gKASzAgP9SoH' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'y2slAjdTqdqIbNFJ' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'MQOMZpBwuCgvTQ8P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'qm2vPIaHCDPU31gE' \
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
    --body '{"currencyCode": "lHYSyRcndZp38I8f", "currencySymbol": "HB6k0Boy9GAfV71Q", "currencyType": "REAL", "decimals": 43, "localizationDescriptions": {"QFYt2TbsCHNnq3vk": "MEPdCOZqGeqNARHq", "SzFiIUatHL7mH4bD": "SQmpxTGoHRfKS4gm", "rzj3Ebuouf4Vrn5r": "lXFOcYxWh5cx0yyH"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'UQzKtSwzcS63d18k' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Lcu3auDmHCNa07uQ": "pTT0QTrPFucWy9UE", "uL4SHiYM4CYYGqPk": "jroavkmm4ZQTRFiW", "RnZax4CgucA7IdIg": "6CabrceWbsmduc7L"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'DrZ6tFOZqdo9JCGa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'jTU7A8HN4fYM5T6l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'G9TmwZsqEmslCcpv' \
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
    --body '{"data": [{"id": "1OtyEHLTpyEESnVr", "rewards": [{"currency": {"currencyCode": "a1jpO5chJW8UrAPW", "namespace": "EYVlhVwvExalxDWT"}, "item": {"itemId": "AKlwmwUENsAShavJ", "itemSku": "pnqTsR4oiFWM9lE1", "itemType": "Ofv8Q7FbeHe9q5Gb"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "VZIlp6dRAVJWMZ2X", "namespace": "vYYV1xEfoJtae70X"}, "item": {"itemId": "ARbcnCIjtFkLwQto", "itemSku": "3Ap6Re3DKfpwSIOu", "itemType": "HQBNpGX6a3BzJ7uT"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "AWPUO0kIWeKq5Wyu", "namespace": "Gc7arw7be3Cj7PdH"}, "item": {"itemId": "3dokMZE5ODAQVgbF", "itemSku": "DRa5WBsMvJejgwrf", "itemType": "MCfidsLPRgeQ0n4t"}, "quantity": 25, "type": "CURRENCY"}]}, {"id": "HnOeKhEDLvGKFesJ", "rewards": [{"currency": {"currencyCode": "GZX6zj8oV1meZUav", "namespace": "5cgQ40KNpqVjsZFZ"}, "item": {"itemId": "FvgPB5kuj6E7NRv8", "itemSku": "DsvcfBTKjYL2eeh9", "itemType": "7m4aMtiTNp5GT9RP"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "6lQTwGJyx56dqe9w", "namespace": "d8oO35HB0FDxGZaO"}, "item": {"itemId": "E1sbMlyTHh3eLLRa", "itemSku": "HT3IgJqKPGpO5cjB", "itemType": "mSfJq1jDi7VhfqFI"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "1tRfWgv4SDmmZDrV", "namespace": "4Atol8gMGqx3SFX3"}, "item": {"itemId": "ZWnK3lFZqHkqTlDO", "itemSku": "7Pgt3yY0H9LCzeg1", "itemType": "P08NM9X7bRnHulPP"}, "quantity": 71, "type": "CURRENCY"}]}, {"id": "jBZaW69DJ5F55w6b", "rewards": [{"currency": {"currencyCode": "jBI4a7RpyMVhmf6b", "namespace": "Pzw97MPZDZo1eUuk"}, "item": {"itemId": "qfeZTbhQIWzasyW6", "itemSku": "YQlEtePmw6Fnp8nH", "itemType": "yqpNmLnp9UAieIam"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "cEzn8s881J7GKP3O", "namespace": "FT08P53p9r5gWAsZ"}, "item": {"itemId": "LqgUgweGp4YRhE9x", "itemSku": "XRgC4dvvzDCyUjNM", "itemType": "KyEClleuQyNlx5IO"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "WwLHr3KvSF2o2WF2", "namespace": "coShx0tDn7Pi2Dwb"}, "item": {"itemId": "Vyj7gpA2UqfUPsVX", "itemSku": "OY4DjCcqrp7pkfvO", "itemType": "ctmRyEBBc2YHayZ7"}, "quantity": 43, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"V78vixVPoaLCfdGb": "rWi2YsCqBt749um0", "rm4vl9rzBjRBg9o7": "P734XbG4ceLRM81S", "enzrSLIGjLt4WLxa": "JGF7REsRd7r3Cw3u"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"LnrEaymWoaruNmh0": "9wNqdmDHIWrtCFQE", "uSCp8c7CB79oPRg9": "O0bnxL6tP75wFH5F", "TknAgX7hbR3CYnTq": "B2H65LylvsNmpzi9"}}, {"platform": "OCULUS", "platformDlcIdMap": {"O5QP5tfgv24Tti83": "bNUZ3TZHE09CFWvF", "4ZNJeWFb7yOwCC91": "xicvF2oftX5IAcHl", "etTDXEf3SOcX1LIz": "OlzdaAQprSpchbL5"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'yAOLFK8c7cXoXxAQ' \
    --itemId '["ZhLiYWrvnSmYDqur", "eMX0uHs7f7jGjFU1", "r77hAGfefsP4zdDl"]' \
    --limit '3' \
    --offset '15' \
    --userId 'stRBpNQclCTT7TrT' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["zEqEKOewj4d5sKJw", "atTyx3ubVZ65H6h5", "PYHjgTFrFUifNWOe"]' \
    --limit '10' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1973-01-08T00:00:00Z", "grantedCode": "RQWd3ERYMSMggbHB", "itemId": "RLvPcQPECjV0dNZ5", "itemNamespace": "qSIDtvXvl25amGqF", "language": "oBXz", "quantity": 25, "region": "VPZ5UNrRkligk0h3", "source": "GIFT", "startDate": "1975-08-01T00:00:00Z", "storeId": "nkPIa5913dj5TFte"}, {"endDate": "1981-08-11T00:00:00Z", "grantedCode": "DSK8bLUUpynWalMU", "itemId": "U58GWMEenPtJPaE9", "itemNamespace": "9ixSKDjsvXvNtgmm", "language": "ZKc", "quantity": 28, "region": "oLRQXC3puxlj3BUD", "source": "REWARD", "startDate": "1993-11-18T00:00:00Z", "storeId": "df0RCzO9r8x80u0W"}, {"endDate": "1982-03-10T00:00:00Z", "grantedCode": "dGlpn7jhV2PvFq6L", "itemId": "1FnYnKPRBMaDMb4T", "itemNamespace": "ejCNNICMc5fWQif1", "language": "RkoZ_DLlm_036", "quantity": 5, "region": "P9RYxd8qSS30fZ4e", "source": "IAP", "startDate": "1979-03-13T00:00:00Z", "storeId": "9LQPiMtkrg3i0xdy"}], "userIds": ["LWZ5UMD4q2br8cwj", "v6b7gS6K0p9fszDM", "YvlJEWXZ5RezwEu7"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["r6372QoxjFPdi7Vh", "Add7tVKRKo6KQcbi", "q506ZaSPHuNa0OyE"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'fp24BdTIs9dxCDdl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '32' \
    --status 'FAIL' \
    --userId 'mX4YlY9I5ARhfk7T' \
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
    --body '{"bundleId": "kEWdbDcX08TBkkXh", "password": "UXWgKnnYbKmoeIsB"}' \
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
    --body '{"sandboxId": "dCiPscvau375CAjT"}' \
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
    --body '{"applicationName": "kYlw9i7fKObpA0p1", "serviceAccountId": "K7Aj0Oa35SIkACbk"}' \
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
    --body '{"data": [{"itemIdentity": "dM2NmCcPvoKvzNch", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ZwVTUB9C4mFYp3ec": "yCva6mxJ7uHCuVQj", "CBaJQmSmWymAAnoJ": "xnsWNVEcjVLYSiPW", "mB5Za9tPiFD2Rh1u": "BDUjOpw3pSlJGN8f"}}, {"itemIdentity": "w0g3lGe3fBxAykgT", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"sHSfDdtWSSFPXiRp": "JpshjalhWA2u8wdd", "V8iK1jOKExz6gnP2": "WpS9KCGuvGKnHm5X", "JSkcY4sPLjGmR2Bs": "x9CL9KisvBQav7Gx"}}, {"itemIdentity": "h4GsVYJglxhtrqUd", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"mswOJSmOwxWWT2LY": "XOv9yTm3FhJzxUpV", "57JYI9om9bNftI5Z": "XCHNlj9m3SW4AwRJ", "HTUUKGNfSuJhLFeK": "vXJNYwO3KF4swVzD"}}]}' \
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
    --body '{"appId": "CmSOliw0fWcDurkF", "appSecret": "SnA8aQPEzcG0m2kS"}' \
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
    --body '{"environment": "mu3PRkJLaRqgoa6K"}' \
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
    --body '{"appId": "mtQ78ERZj5mpWqE6", "publisherAuthenticationKey": "ISnOuAC1UuEGEmwT"}' \
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
    --body '{"clientId": "vu6zP756t8k6pXwl", "clientSecret": "UuNZDEbpi2S6wxst", "organizationId": "cqx7LdgqeWW3Efte"}' \
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
    --body '{"relyingPartyCert": "sYxGrGALSqt8oOOl"}' \
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
    --password 'BM5mE5xlag8fUsdM' \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'ZzysvsMU4Vfb9Q55' \
    --itemId 'I3MDxHSA1xz4vpO7' \
    --itemType 'EXTENSION' \
    --endTime 'Mz0krzrYIrJv8eJw' \
    --startTime 'hDE3m4OfGBajYT8p' \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '0f3wPWrD0MMsxjtT' \
    --itemId 'QsqgXQtE3CDrvICW' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'bQbVcBUXqQlUGDsw' \
    --startTime 'HBi81ivcmdvSqqOP' \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TEfCPcqvhtLnTuFd' \
    --body '{"categoryPath": "lWVyBmR6hSAiG07b", "targetItemId": "K1g4LaS42zcwJEww", "targetNamespace": "u9AxQeHVNRb6VSUo"}' \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'IlbjUbxr52Ndk6dM' \
    --body '{"appId": "ZRr2wHPPucBn9ZES", "appType": "SOFTWARE", "baseAppId": "nUwncspveyhSgPhq", "boothName": "2B4EXjEWooSE8yyL", "categoryPath": "bIQ9sN8mDeGwFhEW", "clazz": "2yMNvIZPiqf6URSl", "displayOrder": 38, "entitlementType": "CONSUMABLE", "ext": {"Wbu1KWywrIcX1tTk": {}, "ek600S07ZsAIvsOM": {}, "5PKfdjGgN7oBrMeL": {}}, "features": ["8sPgOrGmM1mLNTSs", "6brefsKhXIAqMLRE", "MSxeDvEoGpjKybiP"], "images": [{"as": "Xvr9NcAw01mgJa4x", "caption": "XDbo4etez6fsYzbo", "height": 74, "imageUrl": "7KyWipuhETyrWGe9", "smallImageUrl": "P6ywnEpoc4cRJDwx", "width": 57}, {"as": "acWR4bgQvEAqSx3F", "caption": "UJhkzmpIeiXO5QMz", "height": 18, "imageUrl": "ombsVZ9AExpJRGU9", "smallImageUrl": "K1FKPAxtbH4CbTi3", "width": 50}, {"as": "u2A2BRpUlfdv410f", "caption": "idJeznJThDVfe8Ld", "height": 14, "imageUrl": "h8wnjTSL5zZY8Cvh", "smallImageUrl": "1YI92Iz74HkUIq6L", "width": 27}], "itemIds": ["kjuj4SHtdCZB2WeA", "8yCjmVm595k14NEL", "vkc49WRmzJAKFFC0"], "itemQty": {"0qpJ4MZWWxlwn3uZ": 15, "WQgdCST0BKAooj5S": 100, "4GdQFs7SwRyJsehQ": 30}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"idTZC9fz8G8CGQ0B": {"description": "zU4aUSVHPfr7PvJ8", "localExt": {"xlo4p8hsOjL9cqxB": {}, "EKYpXQbFWEy1EpPc": {}, "j0QHd8ObMyIpfy0b": {}}, "longDescription": "siR7yGjDzfXWNWvZ", "title": "NUB4SjkVx1rstPUm"}, "EelMZY6arQbweI9v": {"description": "d2yLF9QTyShOfoqg", "localExt": {"RSjsLd3zwE17NAs4": {}, "CsvNkf3VltI6VaX1": {}, "MmqY0dJgyZlYH339": {}}, "longDescription": "8vTcEQxofVSkQi6F", "title": "NC8457LjXtooa1Ei"}, "7mykHT1ajsEzgPsy": {"description": "73yoPSzgXNENBbZG", "localExt": {"1TL3fcF3IAZq14rI": {}, "ed0G04k0a0erRajE": {}, "4qBRleVGqrNLqntr": {}}, "longDescription": "8o8XX1rpADuMy5Vu", "title": "CPSm9kLlX6aefLQm"}}, "lootBoxConfig": {"rewardCount": 76, "rewards": [{"lootBoxItems": [{"count": 50, "duration": 30, "endDate": "1972-10-24T00:00:00Z", "itemId": "J0Ws3qYzBhfORcFy", "itemSku": "oiD1jyGdw8MqZvLr", "itemType": "EdvofZYPKTQyI0zs"}, {"count": 66, "duration": 87, "endDate": "1978-10-05T00:00:00Z", "itemId": "EfEoJ8UovGZ2TbwP", "itemSku": "RJpSxGHx9QQikoIB", "itemType": "lco1uX5fsL2UOMhI"}, {"count": 18, "duration": 23, "endDate": "1984-07-10T00:00:00Z", "itemId": "RR2lDFCJyt9Y0Usx", "itemSku": "xTDuchUlZXqu01P1", "itemType": "96XLdKE9D0jFLLUj"}], "name": "khppHCZvUJGS3MO4", "odds": 0.31783455330038946, "type": "REWARD", "weight": 33}, {"lootBoxItems": [{"count": 17, "duration": 21, "endDate": "1971-06-19T00:00:00Z", "itemId": "jn2ABO5C7BGya2hE", "itemSku": "1GSZGmfGCythsyPd", "itemType": "GkwddAr3VJswXFv8"}, {"count": 11, "duration": 30, "endDate": "1995-05-23T00:00:00Z", "itemId": "PqCLGLXCENX7nIW4", "itemSku": "bocmBv5fvYXBp07L", "itemType": "TudPPPL5zBywag10"}, {"count": 24, "duration": 53, "endDate": "1997-01-12T00:00:00Z", "itemId": "M9jZIisuSv5Cl2bk", "itemSku": "w9Zqd4B0JYapOOhZ", "itemType": "9cRF9YwoGaHs718h"}], "name": "HGttgNWVwdbA3evt", "odds": 0.23889253371305919, "type": "PROBABILITY_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 68, "duration": 43, "endDate": "1988-08-08T00:00:00Z", "itemId": "GzmuBQopLUjBhLCq", "itemSku": "wUaSnKPf20FYmk4y", "itemType": "HYwAu1xA5vJNjsah"}, {"count": 94, "duration": 59, "endDate": "1996-04-20T00:00:00Z", "itemId": "l4qB7DxQZ43l2tQ6", "itemSku": "LMSueLJu55UERwWL", "itemType": "cbtRvmmCOQo1O26F"}, {"count": 54, "duration": 88, "endDate": "1993-12-25T00:00:00Z", "itemId": "Fr3X2B7adSdiDvNs", "itemSku": "cvaAs0uNfC5TK8tm", "itemType": "FY0TVSkJ7LQKd0Pq"}], "name": "KGDrbl2b5BYz3iTf", "odds": 0.1091286486254539, "type": "PROBABILITY_GROUP", "weight": 69}], "rollFunction": "CUSTOM"}, "maxCount": 100, "maxCountPerUser": 100, "name": "jNoZSPhWmNe1m9rA", "optionBoxConfig": {"boxItems": [{"count": 87, "duration": 79, "endDate": "1980-12-08T00:00:00Z", "itemId": "kRAjMAwmrl4orXkx", "itemSku": "URK2MABaz2tPhlPS", "itemType": "oOmNs1VmEKQWhzTk"}, {"count": 49, "duration": 37, "endDate": "1975-01-15T00:00:00Z", "itemId": "tBW3lG7ptqllffsK", "itemSku": "X2r48vBHOcEFlI8P", "itemType": "qd4j06qTBKQ1gImO"}, {"count": 76, "duration": 16, "endDate": "1989-12-08T00:00:00Z", "itemId": "5SDbYWgCN0H14j5a", "itemSku": "KiTQ1bqPxF23XaNU", "itemType": "MiTJJjIy74iJLDgJ"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 32, "fixedTrialCycles": 39, "graceDays": 46}, "regionData": {"0YaLkECKHwr4wSuC": [{"currencyCode": "SBiiUY7ydlNcIAKy", "currencyNamespace": "5PgECNQuPvp2JzmN", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1988-04-08T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1997-12-16T00:00:00Z", "expireAt": "1992-10-30T00:00:00Z", "price": 9, "purchaseAt": "1988-12-18T00:00:00Z", "trialPrice": 88}, {"currencyCode": "10FcyFzKeUZ721Zk", "currencyNamespace": "1YGwdof5vHeMuq6A", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1984-03-18T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1986-03-20T00:00:00Z", "expireAt": "1981-06-30T00:00:00Z", "price": 43, "purchaseAt": "1975-12-01T00:00:00Z", "trialPrice": 10}, {"currencyCode": "gzcmr2hR3LYuR30q", "currencyNamespace": "6atsQNxUS1QbV6JD", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1994-09-15T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-05-04T00:00:00Z", "expireAt": "1989-08-03T00:00:00Z", "price": 64, "purchaseAt": "1978-08-25T00:00:00Z", "trialPrice": 4}], "bYtags4l7oVsv37b": [{"currencyCode": "JOXhklqlecEloHh7", "currencyNamespace": "5tO6wJSPagixNjUS", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1984-11-28T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-08-16T00:00:00Z", "expireAt": "1990-12-15T00:00:00Z", "price": 54, "purchaseAt": "1987-10-29T00:00:00Z", "trialPrice": 27}, {"currencyCode": "GtSVH8MJpyT9Daw7", "currencyNamespace": "xHrg5qIpRayiCLJw", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1984-02-19T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1997-09-30T00:00:00Z", "expireAt": "1994-01-24T00:00:00Z", "price": 86, "purchaseAt": "1993-01-20T00:00:00Z", "trialPrice": 2}, {"currencyCode": "4O8SMjIkYeIiENyv", "currencyNamespace": "1YHxNwdxWDzMQwdG", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1992-08-30T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1994-06-01T00:00:00Z", "expireAt": "1989-01-28T00:00:00Z", "price": 82, "purchaseAt": "1985-04-11T00:00:00Z", "trialPrice": 50}], "XEHLJD6nwR7Ph8ya": [{"currencyCode": "duCPUTJai0LVRkwJ", "currencyNamespace": "FD8lBjT3D1ORjpZI", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1999-12-15T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1976-04-24T00:00:00Z", "expireAt": "1979-07-30T00:00:00Z", "price": 84, "purchaseAt": "1999-09-25T00:00:00Z", "trialPrice": 20}, {"currencyCode": "UmFCYmLtsxXAzefy", "currencyNamespace": "HJKKvm0iLlgtf1C9", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1998-06-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1998-06-10T00:00:00Z", "expireAt": "1992-05-14T00:00:00Z", "price": 26, "purchaseAt": "1984-06-30T00:00:00Z", "trialPrice": 2}, {"currencyCode": "1uKYSznGQeuOZLVa", "currencyNamespace": "nJUsqu5YBArDScMK", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1979-04-07T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1974-12-25T00:00:00Z", "expireAt": "1974-01-02T00:00:00Z", "price": 47, "purchaseAt": "1999-11-13T00:00:00Z", "trialPrice": 48}]}, "saleConfig": {"currencyCode": "cbcyr1KiCVkisfzx", "price": 44}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "h8Ll9PcAKlsQMf8e", "stackable": false, "status": "INACTIVE", "tags": ["DtC0xqW2A4SXSVra", "pndVtdI7oUgQFzzF", "q8KYGpaz4isLXtpI"], "targetCurrencyCode": "Mv2d2gKD9WGYAzBQ", "targetNamespace": "B0cWSpjwrjCLPD0y", "thumbnailUrl": "z1iIB5VWEd5Su18v", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Y52lckUdll5OcgXf' \
    --appId 'o3wb4uAlj6hxKEkL' \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'BxFyVKH3B5atQG9A' \
    --baseAppId '2LRfv612HWxcHdeq' \
    --categoryPath 'rpoYjworLIO4SJEd' \
    --features '8tJ8zlsUOG0QzOPt' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --limit '55' \
    --offset '23' \
    --region 'dt7hVQrTnQeOzEX4' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "name"]' \
    --storeId 'AXRyDMoOY7tZSOir' \
    --tags 'Jrz0O9oO5FApkWpm' \
    --targetNamespace '2ACNjN33RvaroW17' \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["tOnDgmKXVQsGM8uJ", "ryv2kwbSiIvLAprl", "y7Dmn76hKGUskN5E"]' \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fppa5WoznFBBjh22' \
    --sku 'khgKaHDWKINX6LkK' \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'cayVA3ancACDNNjf' \
    --populateBundle 'true' \
    --region 'JcrnVcLr2kOg9VpY' \
    --storeId 'DmtXjpu6mn9L5sOJ' \
    --sku '2OJ7IbM5CAjRkOkH' \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'CPp5N0PP3gnNalIJ' \
    --sku 'e5FYvYL3n3sFhE1v' \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ksU50B9cQRbQCFzE", "dWMhwPoXxCHaFRQU", "aihMVgTtxc7OpnlY"]' \
    --storeId 'cmQIA9olt11aJpqM' \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'heRDJ5qjAmrABee1' \
    --region 'YSe35EvUEYxEdXBN' \
    --storeId 'S4Rvl7tgJjZdZQAk' \
    --itemIds 'U44FHgiehZNfYbxp' \
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
    --userId '5lNHaEaH588XhNHQ' \
    --body '{"itemIds": ["P6pknHQJlEMCZsIE", "qNJjTTB2Qlg4bSXr", "xFtEUseSgbMhAHmZ"]}' \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'GXvhIqAxov4PYrR4' \
    --body '{"changes": [{"itemIdentities": ["S9ZQYMIYdSBX04hz", "WH67rQL41AzKZpSM", "lOrDgyTnM1g3x7WL"], "itemIdentityType": "ITEM_SKU", "regionData": {"nUsFbNm2PSlsxxKo": [{"currencyCode": "2b3vbimcSa6FIh3W", "currencyNamespace": "qfNWSjIAOTbdM4fx", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1994-06-10T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1999-05-15T00:00:00Z", "discountedPrice": 80, "expireAt": "1996-01-18T00:00:00Z", "price": 6, "purchaseAt": "1984-10-22T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Og0TxgbFlMdSEywZ", "currencyNamespace": "xC6HgJMZht6mpc1e", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1974-07-22T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-10-27T00:00:00Z", "discountedPrice": 81, "expireAt": "1997-01-02T00:00:00Z", "price": 86, "purchaseAt": "1982-06-19T00:00:00Z", "trialPrice": 59}, {"currencyCode": "T3VHCgEhbbISKD33", "currencyNamespace": "dzbqdmw5wEVEaNLm", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1980-05-03T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1994-12-06T00:00:00Z", "discountedPrice": 92, "expireAt": "1995-04-23T00:00:00Z", "price": 19, "purchaseAt": "1975-02-23T00:00:00Z", "trialPrice": 22}], "FkDtBXlG9WcSEYkH": [{"currencyCode": "hzfj2LgRnTfTGsLv", "currencyNamespace": "aIbDQQrBS8x1DVhH", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1993-11-22T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1988-03-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1973-02-14T00:00:00Z", "price": 57, "purchaseAt": "1981-01-20T00:00:00Z", "trialPrice": 71}, {"currencyCode": "6FFrikZRKi0FOIZw", "currencyNamespace": "9mBApcKPP9mKlCwQ", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1972-02-27T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1995-02-17T00:00:00Z", "discountedPrice": 9, "expireAt": "1985-11-17T00:00:00Z", "price": 58, "purchaseAt": "1984-12-27T00:00:00Z", "trialPrice": 53}, {"currencyCode": "YhgxCFZcC6LcQ6lo", "currencyNamespace": "6sVeL4cGWKTpTUVq", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1973-01-12T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1987-10-18T00:00:00Z", "discountedPrice": 25, "expireAt": "1983-07-05T00:00:00Z", "price": 22, "purchaseAt": "1975-11-29T00:00:00Z", "trialPrice": 44}], "ytww2pF03qNtoy2d": [{"currencyCode": "eM7KYDfx0WXyyFC0", "currencyNamespace": "qKkwPz07P79WeXSP", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1979-04-19T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-12-16T00:00:00Z", "discountedPrice": 0, "expireAt": "1992-12-29T00:00:00Z", "price": 90, "purchaseAt": "1984-12-30T00:00:00Z", "trialPrice": 3}, {"currencyCode": "3WZLc3i2E7dVeQ0w", "currencyNamespace": "we67TwHv1fHSu4m1", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1980-05-06T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1984-09-14T00:00:00Z", "discountedPrice": 48, "expireAt": "1999-07-31T00:00:00Z", "price": 41, "purchaseAt": "1998-09-02T00:00:00Z", "trialPrice": 64}, {"currencyCode": "hWuabTI4h2yyxn9z", "currencyNamespace": "y0aOq0MrzRTgf5uh", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1972-05-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-10-29T00:00:00Z", "discountedPrice": 26, "expireAt": "1990-12-04T00:00:00Z", "price": 29, "purchaseAt": "1992-12-22T00:00:00Z", "trialPrice": 82}]}}, {"itemIdentities": ["bmKt5LMN5NAu7bFl", "0WUcZeFRi7UIYRZn", "yg7nda1MQNmLBYSC"], "itemIdentityType": "ITEM_SKU", "regionData": {"JzFDecEpNq0Q5arD": [{"currencyCode": "hzhgBs2TrJABy3wv", "currencyNamespace": "4UbX03RncSWneMUj", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1989-03-02T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-05-10T00:00:00Z", "discountedPrice": 23, "expireAt": "1998-12-17T00:00:00Z", "price": 44, "purchaseAt": "1994-04-18T00:00:00Z", "trialPrice": 30}, {"currencyCode": "ex2cOo6HqYARhiNl", "currencyNamespace": "fTXYmdSthIRFdT1W", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1988-04-07T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1994-05-10T00:00:00Z", "discountedPrice": 91, "expireAt": "1976-01-06T00:00:00Z", "price": 17, "purchaseAt": "1974-04-17T00:00:00Z", "trialPrice": 57}, {"currencyCode": "nNKak9TOxeXFdUH9", "currencyNamespace": "jeO9GPY3OluKPJa8", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1991-09-05T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1983-01-18T00:00:00Z", "discountedPrice": 81, "expireAt": "1994-10-04T00:00:00Z", "price": 21, "purchaseAt": "1993-07-25T00:00:00Z", "trialPrice": 38}], "IFYKg9icF6m4Y6Vk": [{"currencyCode": "uODgtGF9re0AfrsC", "currencyNamespace": "jl3NjVyenHrnzFJJ", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1972-03-21T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1984-04-12T00:00:00Z", "discountedPrice": 47, "expireAt": "1996-09-04T00:00:00Z", "price": 2, "purchaseAt": "1980-01-28T00:00:00Z", "trialPrice": 80}, {"currencyCode": "FykptNDC1036VDM2", "currencyNamespace": "kns4zCjLVF140UHr", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1976-07-30T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-07-21T00:00:00Z", "discountedPrice": 27, "expireAt": "1989-07-06T00:00:00Z", "price": 93, "purchaseAt": "1995-09-16T00:00:00Z", "trialPrice": 35}, {"currencyCode": "TT4b8YnKRLiZJEmN", "currencyNamespace": "NVq7eEltqQH7ogmj", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1988-06-07T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1975-11-14T00:00:00Z", "discountedPrice": 98, "expireAt": "1986-06-01T00:00:00Z", "price": 83, "purchaseAt": "1988-04-14T00:00:00Z", "trialPrice": 14}], "NxcRq7vdPTlBQX77": [{"currencyCode": "VK84o4TffSePX1Gg", "currencyNamespace": "cjlhHKvLEoeWVgfZ", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1974-03-06T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1993-05-15T00:00:00Z", "discountedPrice": 88, "expireAt": "1974-06-28T00:00:00Z", "price": 50, "purchaseAt": "1997-08-29T00:00:00Z", "trialPrice": 95}, {"currencyCode": "XHOaoMVFE3dUvqAV", "currencyNamespace": "XfEGGBH9vVDgap1t", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1981-04-30T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1997-04-15T00:00:00Z", "discountedPrice": 63, "expireAt": "1999-06-11T00:00:00Z", "price": 21, "purchaseAt": "1978-03-21T00:00:00Z", "trialPrice": 55}, {"currencyCode": "U2JsIF6nDZnFmzLc", "currencyNamespace": "YLBcW2oRFf5SGSrO", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1983-06-26T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1989-06-06T00:00:00Z", "discountedPrice": 45, "expireAt": "1994-08-22T00:00:00Z", "price": 70, "purchaseAt": "1987-06-08T00:00:00Z", "trialPrice": 82}]}}, {"itemIdentities": ["BkgjaHVqB9RshFka", "tzbnVsqf7OUCC4u9", "NGE9aK45EsJTwp8H"], "itemIdentityType": "ITEM_SKU", "regionData": {"3G3UWC8h9H8sR4kH": [{"currencyCode": "BecAC9rnqwmO5PSF", "currencyNamespace": "sdWieMPr3enjz7fo", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1985-11-30T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1996-06-05T00:00:00Z", "discountedPrice": 63, "expireAt": "1998-08-02T00:00:00Z", "price": 97, "purchaseAt": "1982-11-25T00:00:00Z", "trialPrice": 91}, {"currencyCode": "7f5Fdy6qs9SU82ul", "currencyNamespace": "ttzhDDg8OA5KtDxD", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1993-12-08T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1976-07-31T00:00:00Z", "discountedPrice": 79, "expireAt": "1996-10-15T00:00:00Z", "price": 75, "purchaseAt": "1979-12-22T00:00:00Z", "trialPrice": 65}, {"currencyCode": "JMoZh6WoMi4zvshf", "currencyNamespace": "Tq8dlc5xnZOes95J", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1978-12-18T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1983-04-01T00:00:00Z", "discountedPrice": 1, "expireAt": "1973-08-25T00:00:00Z", "price": 75, "purchaseAt": "1990-09-12T00:00:00Z", "trialPrice": 23}], "sAuPUJsF3Kwwr6uk": [{"currencyCode": "U5bG5VrixewJ7g72", "currencyNamespace": "l7EnWLiPaOJ6dVsx", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1984-12-01T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1995-08-11T00:00:00Z", "discountedPrice": 67, "expireAt": "1975-10-04T00:00:00Z", "price": 86, "purchaseAt": "1997-06-14T00:00:00Z", "trialPrice": 74}, {"currencyCode": "biH42yYK4i8sjsnd", "currencyNamespace": "8hCi294nZTTRol8i", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1999-03-16T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1975-02-01T00:00:00Z", "discountedPrice": 59, "expireAt": "1999-04-19T00:00:00Z", "price": 67, "purchaseAt": "1998-08-09T00:00:00Z", "trialPrice": 24}, {"currencyCode": "2GrjbAOqi3iGOVrk", "currencyNamespace": "PMstUR809EjaihYJ", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1995-03-28T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-11-03T00:00:00Z", "discountedPrice": 91, "expireAt": "1980-10-28T00:00:00Z", "price": 49, "purchaseAt": "1995-11-02T00:00:00Z", "trialPrice": 83}], "DlQFt2Qe30GVDAZ1": [{"currencyCode": "twzwThsFAinHHtkK", "currencyNamespace": "wEilk76WnThPvMQj", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1976-03-19T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1993-09-16T00:00:00Z", "discountedPrice": 3, "expireAt": "1974-03-25T00:00:00Z", "price": 40, "purchaseAt": "1999-08-17T00:00:00Z", "trialPrice": 33}, {"currencyCode": "1N4x6Yq5avsSxDQI", "currencyNamespace": "HEAlWNn2sXcYPH10", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1981-07-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1973-05-03T00:00:00Z", "discountedPrice": 40, "expireAt": "1981-04-27T00:00:00Z", "price": 89, "purchaseAt": "1981-03-28T00:00:00Z", "trialPrice": 40}, {"currencyCode": "rDAhO5N4sYWGFBj3", "currencyNamespace": "aBe10fGyBrmGwXqg", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1979-04-19T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1973-11-13T00:00:00Z", "discountedPrice": 21, "expireAt": "1993-09-17T00:00:00Z", "price": 59, "purchaseAt": "1976-02-18T00:00:00Z", "trialPrice": 4}]}}]}' \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '31' \
    --offset '66' \
    --sortBy 'qYG6u8iIOkAN5OT8' \
    --storeId 'zXYYDOyO0ZwTMZSD' \
    --keyword '3KawKHAPkjJey01t' \
    --language 'mzAs0nswLLwM657Q' \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '80' \
    --offset '84' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "createdAt:desc"]' \
    --storeId 'hdVlGVA8I3fv34Df' \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'l71RXK5xfzrPGZE4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'swNr8Sh0tL11MwzA' \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Oh40RgjblzftWOhs' \
    --namespace $AB_NAMESPACE \
    --storeId 'UAPcjLiLROL3zFzG' \
    --body '{"appId": "KikkrA5vZZ7EaubX", "appType": "GAME", "baseAppId": "mzkHzzGaMIjLVvO5", "boothName": "BnMGFKoC0ekNZD5J", "categoryPath": "OgiY3sIrgDd6YNEx", "clazz": "s93q1YrLHfXAGbh6", "displayOrder": 42, "entitlementType": "DURABLE", "ext": {"46RdKCSgIOaNYhDt": {}, "qcysGQWGCYkIXhUS": {}, "miapHa34YSxvfeYV": {}}, "features": ["wNwjGyuBmVaKJ383", "neHXNDa7ImTunpJb", "hFSYesfDppc0JoVp"], "images": [{"as": "TtERlXMHyY0Mq2ag", "caption": "vYySUg3sfYofLWul", "height": 44, "imageUrl": "HJqoVY4fcGMLVZwk", "smallImageUrl": "qyOPMNIbsmix7n3d", "width": 12}, {"as": "Q0fx6SBSnqlj1y7S", "caption": "v2yt4DOIhQWk5MMI", "height": 94, "imageUrl": "fZwTvLrCeFjXzkhx", "smallImageUrl": "aNDgpRfiIoeRo2H0", "width": 56}, {"as": "N9XEbrb6pVN7NCIk", "caption": "cImThAh60r1mapHO", "height": 71, "imageUrl": "pqtRnaOcXqKtMQQK", "smallImageUrl": "M2Mxj8a1Tb0nBNVH", "width": 56}], "itemIds": ["ODWykP8P2f0XPIcW", "2Fd0QXXaADwZ1N5h", "PAohggA3MPQ08r6Y"], "itemQty": {"Igk3yTwJLfgXShx1": 42, "yKRmq5JNH8Hc9ZGM": 5, "vJ49N4TmFi1QkalH": 31}, "itemType": "BUNDLE", "listable": false, "localizations": {"g4jDCyUI9LLDlNqZ": {"description": "L4M6YNBlZvl7tKTv", "localExt": {"wGKaNUmge4sFXEBZ": {}, "XSKbKEFRuSSlyDKZ": {}, "ArvDp6O2Ggh5l0Oq": {}}, "longDescription": "LUTufkWMIBV6HF12", "title": "w1lDSoLarn292j4S"}, "41Qsw6sOdaqYQwuM": {"description": "D7gepGCvOuc1HzlP", "localExt": {"zzOdbv1a0PSpRrIG": {}, "rhX0JSa8PMcJ58st": {}, "SETp9PTzgUzIkblL": {}}, "longDescription": "KxgPRR1nHxBcEkiR", "title": "aTbldBl2VeUFigoO"}, "SGXpMhaQHLALHn6G": {"description": "CvZJguKaqmj3E8tD", "localExt": {"X4ZHdaLgkqEG63P3": {}, "zjLpJTrtXbebvsgW": {}, "nhICA0gKcLuhmFV6": {}}, "longDescription": "DOm2jTXwXYGiJHhc", "title": "ttwzDJluiEf8S6NM"}}, "lootBoxConfig": {"rewardCount": 72, "rewards": [{"lootBoxItems": [{"count": 74, "duration": 21, "endDate": "1971-09-23T00:00:00Z", "itemId": "bRaZXYDNMyDr4XBN", "itemSku": "hJ3Pjx7nlkHckfuD", "itemType": "idZwAG3dYhfYsnqH"}, {"count": 21, "duration": 80, "endDate": "1980-03-06T00:00:00Z", "itemId": "zj6xXWXSOS8z3DZb", "itemSku": "5Xc0PyK5CJSjmbXQ", "itemType": "fUH1LswhIVe5fxc9"}, {"count": 19, "duration": 98, "endDate": "1977-06-04T00:00:00Z", "itemId": "G9Ymc0AYW0Ka8M7H", "itemSku": "7whAHlOroqs5881Z", "itemType": "GOd6bhSRSA01ZQHO"}], "name": "J4diyfqx7lTPzdps", "odds": 0.7562605371078652, "type": "REWARD", "weight": 54}, {"lootBoxItems": [{"count": 20, "duration": 54, "endDate": "1978-09-26T00:00:00Z", "itemId": "l1k2VPRwKFwTjY4e", "itemSku": "FgJF6SN23ezx6IZ6", "itemType": "d0LqAvbjl6lOr4JU"}, {"count": 24, "duration": 45, "endDate": "1999-01-24T00:00:00Z", "itemId": "u9OI04O5ir0fujp1", "itemSku": "LutwAz3ochcI7kS0", "itemType": "QrSHyZhom9UGIud0"}, {"count": 52, "duration": 9, "endDate": "1994-01-04T00:00:00Z", "itemId": "XXbwKhyVt0qipq2s", "itemSku": "UQpk4ZxcqyMrx3Hi", "itemType": "emIVlcF1OIqsPqzK"}], "name": "g6f4vZ8FHx5cYdbI", "odds": 0.21287382720074066, "type": "REWARD", "weight": 17}, {"lootBoxItems": [{"count": 37, "duration": 93, "endDate": "1984-05-10T00:00:00Z", "itemId": "DpqpP5Jvptp6Y4A2", "itemSku": "MV9reUw9wF3fN23q", "itemType": "szL5mb3ExkfTkYu7"}, {"count": 66, "duration": 51, "endDate": "1987-08-27T00:00:00Z", "itemId": "zBNiiaPdvSLJnLX5", "itemSku": "eXTBfctyquR1r1BB", "itemType": "nXy5P4LSRyEWexsj"}, {"count": 49, "duration": 86, "endDate": "1973-12-22T00:00:00Z", "itemId": "YYvJL8zO99H3Zx08", "itemSku": "GSx74G0wyzy3Gf0L", "itemType": "CkYmL3agcQIwyvWf"}], "name": "J0zc8cBZwWRMP6bf", "odds": 0.6425806717885509, "type": "PROBABILITY_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 87, "name": "HHKWMwrtbwIKfM3O", "optionBoxConfig": {"boxItems": [{"count": 56, "duration": 42, "endDate": "1994-09-05T00:00:00Z", "itemId": "MR5qJehqARmqnYrC", "itemSku": "iFeDA0jzwffZGUa0", "itemType": "MoM8D7TiTCAESWQb"}, {"count": 70, "duration": 80, "endDate": "1972-01-16T00:00:00Z", "itemId": "kivRIVqnP3XJ01oo", "itemSku": "kP2tRMIrMQmKzAlK", "itemType": "w5tcBPfjEO9SJlYJ"}, {"count": 78, "duration": 95, "endDate": "1988-07-18T00:00:00Z", "itemId": "do4aEJoQTtmMFQ1B", "itemSku": "zMtePgBxa8cXnRXM", "itemType": "8c1i9wQaMao16pgq"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 75, "fixedTrialCycles": 75, "graceDays": 41}, "regionData": {"yWOc8geW6aWuXUXX": [{"currencyCode": "Wx6gnqkS75GLbSQ8", "currencyNamespace": "iZrdVDqpmg5vH73v", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1997-01-05T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1998-05-22T00:00:00Z", "expireAt": "1985-04-28T00:00:00Z", "price": 4, "purchaseAt": "1978-01-17T00:00:00Z", "trialPrice": 77}, {"currencyCode": "sm5Vshko4YAu7KHa", "currencyNamespace": "a4YXuvRFeeTF7srW", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1984-01-01T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1992-09-06T00:00:00Z", "expireAt": "1975-03-03T00:00:00Z", "price": 25, "purchaseAt": "1981-01-03T00:00:00Z", "trialPrice": 21}, {"currencyCode": "2NN9y1vm817uoHtJ", "currencyNamespace": "RubUNBYD9Q1Cuw9K", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1996-09-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1987-12-15T00:00:00Z", "expireAt": "1997-05-24T00:00:00Z", "price": 39, "purchaseAt": "1980-02-21T00:00:00Z", "trialPrice": 56}], "8tRMLoxpvvR6JlqT": [{"currencyCode": "Jd1uDfDYEL90FdUg", "currencyNamespace": "5qaSi6NbABPFhSJG", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1979-05-12T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-10-31T00:00:00Z", "expireAt": "1985-12-19T00:00:00Z", "price": 88, "purchaseAt": "1973-04-13T00:00:00Z", "trialPrice": 33}, {"currencyCode": "acVWfyTxaKgDcdDm", "currencyNamespace": "rCJx6BhVkDhfOkeu", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1982-02-20T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1994-01-10T00:00:00Z", "expireAt": "1992-02-14T00:00:00Z", "price": 0, "purchaseAt": "1998-02-26T00:00:00Z", "trialPrice": 71}, {"currencyCode": "jpwPlmYAqm1EQNSh", "currencyNamespace": "K7tk3G1K6YOOvOLS", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1972-05-11T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1972-03-06T00:00:00Z", "expireAt": "1990-06-12T00:00:00Z", "price": 9, "purchaseAt": "1983-01-31T00:00:00Z", "trialPrice": 77}], "mGtRTJvgBOtmWPMl": [{"currencyCode": "VdWaPiFOTlNaAuwO", "currencyNamespace": "P3c7VgQiqhvKFng1", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1972-11-16T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-03-07T00:00:00Z", "expireAt": "1996-10-18T00:00:00Z", "price": 13, "purchaseAt": "1999-06-20T00:00:00Z", "trialPrice": 76}, {"currencyCode": "ZwGUjrWW2rSZxaby", "currencyNamespace": "uKmq9mvSPSCOluwj", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1972-05-27T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-11-21T00:00:00Z", "expireAt": "1988-01-19T00:00:00Z", "price": 53, "purchaseAt": "1978-06-26T00:00:00Z", "trialPrice": 6}, {"currencyCode": "EQR8qYaKoXg0AUAO", "currencyNamespace": "o68EUKh2xqX6Y1hH", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1999-09-29T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-03-01T00:00:00Z", "expireAt": "1982-02-16T00:00:00Z", "price": 30, "purchaseAt": "1995-07-14T00:00:00Z", "trialPrice": 35}]}, "saleConfig": {"currencyCode": "ZcWIr4b7zrXfSUeI", "price": 5}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "TRspTqQDZGYJ8IYQ", "stackable": true, "status": "ACTIVE", "tags": ["7WuZmCWhlXJIsY0h", "CipZMoPlySt8Qz8D", "To7dGrG3xJ0LS36G"], "targetCurrencyCode": "iYSxNPEG52Cx8Wys", "targetNamespace": "EyY5yDhPbn7xktV9", "thumbnailUrl": "NenzAkNROvtottCb", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'LuoAQWmHfVfDibzl' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId '0tMPhK5iJ59qGSw5' \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Bwo1wcJEMx0NT8r2' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99, "orderNo": "IjyGpPJPk1S9CkD1"}' \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'b3oVAWIWSKhp3uKt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Nu6XMyh0CvVcMaB1' \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'fU2b6qjArzggn0ax' \
    --namespace $AB_NAMESPACE \
    --storeId 'SkmkQZ3OBrqmoRaI' \
    --body '{"carousel": [{"alt": "EKVK1zMZ7TgBCd5n", "previewUrl": "HP9MzGiXSOU3RR1K", "thumbnailUrl": "RjDGlEoPUhs7NP4a", "type": "video", "url": "WuBirBZF3gmMqr3b", "videoSource": "vimeo"}, {"alt": "o6Sc7mmhGroAFKSs", "previewUrl": "R7aHj33ELERtFsDr", "thumbnailUrl": "cPISJu71Dw9apMdo", "type": "image", "url": "jwGyy0APMk7a7h2C", "videoSource": "vimeo"}, {"alt": "GrCDmQxUz3Gx1vCg", "previewUrl": "cuWdOSCYOI8v6PBF", "thumbnailUrl": "IQN2lgItwQzPm9KZ", "type": "video", "url": "C9HIlRsLxUJwPMPC", "videoSource": "vimeo"}], "developer": "CstcH86BoigrATvV", "forumUrl": "m8pvr23oGV0H9wgI", "genres": ["Action", "MassivelyMultiplayer", "Simulation"], "localizations": {"RKlrLKkP3c0bUrd9": {"announcement": "AZY3GH3bK64HkupH", "slogan": "LfXLRdBXAEPMAFep"}, "pqHmptWvgukFG9tU": {"announcement": "TpGaqgoGoXYsm3LT", "slogan": "f6gdTM6bunKBbo4U"}, "rneD6xWzXuITz2ss": {"announcement": "y1h3TtlwZzZWzwbU", "slogan": "9wojEc6Tpd3VuxZ8"}}, "platformRequirements": {"JBVNWrh7F6aQYfxO": [{"additionals": "m82lCx6H1PtevJFu", "directXVersion": "36col4CREhrtvYrN", "diskSpace": "FUKUz2CNaNu4ENw5", "graphics": "wNXdpO8VkYiJgj81", "label": "ftJkjd5z6SvdJY2u", "osVersion": "8nGP0wLYN48h2Gps", "processor": "7OmugIuYCCwW7jKN", "ram": "pFsqjlaTEzHKq2M0", "soundCard": "h97qvp70PsJjUSSZ"}, {"additionals": "ocePZLK5ECTjcok6", "directXVersion": "YiivTUvZfomGytbL", "diskSpace": "imP8agf8GLQfN1bi", "graphics": "UaBtjbJOLDWWW2Ji", "label": "zBrnmSFhl3ifzwXQ", "osVersion": "8xhXSNXI5GeMIxHS", "processor": "KzeUaIjaxW1uiPfA", "ram": "ic1x4SLfsM7j8dfE", "soundCard": "yJucKtXbck2kXA7V"}, {"additionals": "ZgKXDu7X6ylymM1d", "directXVersion": "oeDThnvRNcsjENJi", "diskSpace": "gQBWdlGtGJsX7W7a", "graphics": "xuLPx3F0PBUF27Qx", "label": "YUin1iKd2aDu8oHk", "osVersion": "r7FRsKY91CtrOqJS", "processor": "xTKG6aXGb6thrztJ", "ram": "OSl56fM4nR1NACYo", "soundCard": "SYcwuNOTSigNA5Jb"}], "GRfkExMK8Ddo5BGu": [{"additionals": "9rW8PYoTKuCF36tF", "directXVersion": "Uy93tcuKcsbYjfER", "diskSpace": "oYBpzBRg94Kye5BW", "graphics": "FappVxkHyw9INoQA", "label": "FgNVux76lq5GY6ZR", "osVersion": "dXEDKJrG6R6jPDE4", "processor": "RzlBjL6RUDB387qk", "ram": "JMIw6jQhYSUXWhrl", "soundCard": "cqcP2bJ0KIgUS0fP"}, {"additionals": "EAUWGLLePTHknZMT", "directXVersion": "rmVa6jd9KbY2UPvS", "diskSpace": "mwA9w0yjgGcPKFFX", "graphics": "PDs5zhjCLR2jj6s1", "label": "g3yGlJDpL0tXSduc", "osVersion": "ZPW1xMlKTNfBQZjm", "processor": "sFMYAgqircaW4IRh", "ram": "hk2yhPzIw3B9pDAi", "soundCard": "yuByGKAX7D5foRL7"}, {"additionals": "a734g1eTRszgUrFx", "directXVersion": "YCF838nNcvE3qwLf", "diskSpace": "bqgEh3mUD3i6whE5", "graphics": "aUW1J5tJVfAjdX5T", "label": "DmlYa6KkZf91lEui", "osVersion": "rrFQ6h2hMJ9D97AE", "processor": "O7rgBwTULuzPCAMH", "ram": "JYHZ3AxCgrmXu6P7", "soundCard": "oihpjKiOdxYkCmex"}], "osVba23GUBfQwy2o": [{"additionals": "qkOcp0eUaNvKcWbT", "directXVersion": "OYpEaGGYM2369gf6", "diskSpace": "U5lblhtnXH9aj7dy", "graphics": "nhuIAbdBI2KJAaJU", "label": "N5AnGyRjZ9kRdhI9", "osVersion": "MuLtjUrqrEbjdbGA", "processor": "SgbWcyPjBSab2TEV", "ram": "HVOPMgWAZyRJDMKM", "soundCard": "66VnNxYULEEFkHNL"}, {"additionals": "LuAQnt8dfEbUsmSa", "directXVersion": "6Ou8VAbtTaUgxANn", "diskSpace": "sINk1xLFSuMiYELz", "graphics": "9cUEIpcq6XIQgOBd", "label": "OTEt6UsUIrmdhSZf", "osVersion": "31sV3SEw1PUJTlUH", "processor": "5fKBxOIpMhXqVFwV", "ram": "WWjGJR5b9oaknO6o", "soundCard": "2HSIAmqdlZ3eiIvg"}, {"additionals": "b2LYp5IuAmjyXmTx", "directXVersion": "0sd3e7fRvFmQQQjl", "diskSpace": "OQCb1jwEuIchq72X", "graphics": "WY8vjGffOxCPkl8H", "label": "OVpNu8NnOTkYhRO8", "osVersion": "RgBLiU5gqNcl6DtS", "processor": "Td9Pn6wtsTR027gT", "ram": "uqpvwUQnQ1k46rZX", "soundCard": "uenIYtKiorTvNAir"}]}, "platforms": ["IOS", "Windows", "Windows"], "players": ["Single", "LocalCoop", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "hoZcfXNVHS7P67uq", "releaseDate": "1979-10-03T00:00:00Z", "websiteUrl": "THHKsq3stiJmNsIx"}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Vr3VTPfE0dX0fDtm' \
    --namespace $AB_NAMESPACE \
    --storeId 'o4cgOM0sqzIq8dRI' \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'A2ybtGk4XCRAoCI5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'MS13L0ED0Mo1o5zn' \
    --namespace $AB_NAMESPACE \
    --storeId 'gMqKZPVcadtmhud6' \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '2PJ0FQZxB48CTrx6' \
    --itemId 'm8iQebT3dADRuxrj' \
    --namespace $AB_NAMESPACE \
    --storeId 'lotnnUDfvg3CeUJH' \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'cJcbIcxbJgGgRe9A' \
    --itemId 'boZK3Hmy8X8cUayc' \
    --namespace $AB_NAMESPACE \
    --storeId '6EAGpP0RH213u11F' \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Vjw8U5vpF5P32oYx' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'rOaeOmS3UTeVBF08' \
    --populateBundle 'false' \
    --region 'BolXHqTf9uAXjqVY' \
    --storeId 'vXDFqHJExrBn2Dol' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'bq52tydsVnGlgog7' \
    --namespace $AB_NAMESPACE \
    --storeId 'HRCMQiuhoqYfEEvn' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "isLessThan", "name": "kG4W8qApadeoVnkQ", "predicateType": "EntitlementPredicate", "value": "Ry4G8cNrwaE4i5M0", "values": ["jfCbs7iDLHFIk8cI", "UN3d9ljzOqm15O4u", "9izDaiUXBrbSUy8y"]}, {"anyOf": 73, "comparison": "isNot", "name": "BMJqLCypMih0Tar8", "predicateType": "SeasonTierPredicate", "value": "CqJ0InDpPnOgIAuL", "values": ["l626CsCRtDrW76ey", "7NzXmObReDI0kDWZ", "Ij8yOnIkAloOF8Q4"]}, {"anyOf": 61, "comparison": "isLessThan", "name": "d3c33tt0txPTU58U", "predicateType": "EntitlementPredicate", "value": "tU6VF2CkVR74T3YN", "values": ["8DnB3kmutdZGnuNE", "FJskOlG5zQ1JYCNn", "5zia20g3P8VrvtUc"]}]}, {"operator": "or", "predicates": [{"anyOf": 98, "comparison": "includes", "name": "egv2oNzOw7X6ntJq", "predicateType": "EntitlementPredicate", "value": "QnOAsGDVzhgfvjpe", "values": ["dBGVFp2FUOmyTtVZ", "f0Vq0Rx8TUULwPxM", "EVjeb5Hqjo3ZbMCK"]}, {"anyOf": 93, "comparison": "isGreaterThanOrEqual", "name": "UKTQDZlhiBe4VzVs", "predicateType": "SeasonTierPredicate", "value": "B3DFZ7iFh7C46Aud", "values": ["vbBLK8yqp4WJI8u0", "ItMaqGcGNAxi9lTe", "TQWvSzEjdf8I1Pd3"]}, {"anyOf": 97, "comparison": "isGreaterThanOrEqual", "name": "KsrN4KPmsVa4QZtm", "predicateType": "SeasonTierPredicate", "value": "qrCBuq4YP1ArWh2Q", "values": ["gw4YeTNo7V7hmupH", "M0eZwHrkTLhS1iMM", "WX4KYwzcYdmmOCCv"]}]}, {"operator": "and", "predicates": [{"anyOf": 69, "comparison": "isLessThanOrEqual", "name": "O7JjPemu0nGFsv5O", "predicateType": "SeasonTierPredicate", "value": "y8cKFmXRi2TFvRvo", "values": ["IScgKSa2uknRYIwL", "cFVPyuuvL2HtEn0D", "g60WMWDXJ8cCwWlu"]}, {"anyOf": 22, "comparison": "isGreaterThan", "name": "sbxi43B8YQ63ND2q", "predicateType": "SeasonPassPredicate", "value": "qr5hK04fxDZ8rnP5", "values": ["GvO7B49RjctrZUDS", "fmgTsWSqNqxYQsnc", "vdAw4tQHGDuHAsA6"]}, {"anyOf": 19, "comparison": "is", "name": "h1SbuDDbWuixaZuz", "predicateType": "SeasonTierPredicate", "value": "gxg9p4EJF5bOp7sK", "values": ["Bo1UwkMMqKLFYJ5p", "kyTK3RLkdvkXS2tz", "jF31xQCXn81WSR66"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'OoMlQrRjDpwMr6nR' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ihfIm88ZkPQh6vHI"}' \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'xRI6w9gWHc7ZQIvW' \
    --offset '61' \
    --tag 'WSuEqYPwK7uEgrpi' \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0VTbhURiC59AfKIt", "name": "YaIUkR21X3BR2AR5", "status": "ACTIVE", "tags": ["wYryVNWTY925WQh1", "mfs1U9cUmPTFlja7", "rnCL9TFkkFzLBwIY"]}' \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'HHerHhNtLaUcvp79' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'UqpJyPB0peHXVNZu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dgHXqw7SUOmLofJy", "name": "j9O7uuV7JbF0bP2p", "status": "INACTIVE", "tags": ["ub93sl6YFUuQL0HW", "y3cCL6L2GeetpwPg", "alTYm6f9opIErFss"]}' \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'YyMwUFOMXwsTRTRh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'HyFR1PweSowJ9Dob' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '3' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'yCKmKTVVUSLvsD96' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '8CtUsG72q6bviHTR' \
    --limit '51' \
    --offset '71' \
    --orderNos '["PcBLekFreWOhYAuB", "GxakHrJh9SneSHSf", "yUYoh84gFCpyeRpz"]' \
    --sortBy 'yIgQqlnSL5j5WnYG' \
    --startTime 'GkRqzfy9rSfTgbnb' \
    --status 'REFUND_FAILED' \
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
    --orderNo 'YdN1plxnWB4qKxOB' \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0kzZxLiEOJSckCJu' \
    --body '{"description": "PH1ySj9eG7h2e4t3"}' \
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
    --body '{"dryRun": false, "notifyUrl": "K5QOx8VLD9TAoLLH", "privateKey": "6imBNbw0bDTekiw2"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'VneI9Cx5Hudj8MZ0' \
    --externalId 'GWWzj8OMaxV0cAtb' \
    --limit '62' \
    --notificationSource 'WALLET' \
    --notificationType '9JiE8ndh8tHrLm9W' \
    --offset '99' \
    --paymentOrderNo '0hrmNPK74hu8lJQq' \
    --startDate 'e12MECAIn7MdHYXs' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'hntyQMShpqqTGfoq' \
    --limit '13' \
    --offset '54' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "mrvuLl2MgDhPk1qd", "currencyNamespace": "eMpH8fRHljVGC889", "customParameters": {"aj2BXxmJVwIdqefu": {}, "4bOX9dsVtLpBnFB7": {}, "mqLXnQ8P4i9XnRlI": {}}, "description": "UVzdndKj6OSiqXsy", "extOrderNo": "nM96kG9rrjtItORT", "extUserId": "Z8DbDj6PgXdvQci3", "itemType": "INGAMEITEM", "language": "kIQ-ZZEW", "metadata": {"DBxHW8Fhia13qntS": "EybEllJANEdWk8zW", "l1jNVOhIedfif7hb": "XsbGC1CcE2QQviTO", "hCZ9ngPcz7SxBSLr": "6zTdCcr4m4iDJjQy"}, "notifyUrl": "ozhJlZMAmWNzbyiL", "omitNotification": true, "platform": "ixNdO6TmkqkTtUrb", "price": 21, "recurringPaymentOrderNo": "wChyJBAKrb6BmHQs", "region": "QEw4m80D27x2n6HE", "returnUrl": "AmDuLTB3sAhkWCwF", "sandbox": false, "sku": "rvgGbz7iIKzy5IZI", "subscriptionId": "7eelB6xNAh9focPF", "targetNamespace": "RSZ0GNYoRD6tOlc2", "targetUserId": "tmbUinxif0jxZK7Q", "title": "hclWR8fi44TLEgXu"}' \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Sc462BcWsLJuugqQ' \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'EDwuc50nd1M23Jos' \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gMi0bSMnRlebS0CL' \
    --body '{"extTxId": "XjYhKpsKZr9A2tJC", "paymentMethod": "mRWtFRQBj27TWIBu", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5gWforqh1ivgYkne' \
    --body '{"description": "9GDQQUGupvF9qbgF"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rxACmeCX5ny9uEPg' \
    --body '{"amount": 66, "currencyCode": "NlBOlcjR9J5sctDd", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 31, "vat": 86}' \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5NtrI5HTCBczmsGY' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Epic", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'MMeA3wduKqlEENhp' \
    --limit '49' \
    --offset '58' \
    --source 'DLC' \
    --startTime 'I0fE2tZarBcpkROt' \
    --status 'SUCCESS' \
    --transactionId '9l7WizwutOR08Ga3' \
    --userId 'l02H3zT0KqwfraMV' \
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
    --body '{"appConfig": {"appName": "z86H64vIrps2SYjp"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "r82f2hqlqDQLjaLZ"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "yWjKqt4sYb4cpC38", "eventTopic": "1toRjWohFiqlJ81B", "maxAwarded": 57, "maxAwardedPerUser": 20, "namespaceExpression": "q8Gdn2NYJUK0j6Cm", "rewardCode": "TdRx4YzZtCqKizjA", "rewardConditions": [{"condition": "9wYeZ3IDoc1E7zam", "conditionName": "NgG4A5ilO58lPStC", "eventName": "Z5NIL48n6kYjiKiI", "rewardItems": [{"duration": 99, "endDate": "1976-03-11T00:00:00Z", "itemId": "qCOA7PiY2guKSNHN", "quantity": 57}, {"duration": 91, "endDate": "1999-05-14T00:00:00Z", "itemId": "G4odwu3ylmp9wf7y", "quantity": 57}, {"duration": 36, "endDate": "1986-05-23T00:00:00Z", "itemId": "BNKPyyM3dJU0ow9x", "quantity": 42}]}, {"condition": "nxUpbEBvPTMuhe6K", "conditionName": "SKotBC8zwssmmADj", "eventName": "ByR2akwkB5fiREYR", "rewardItems": [{"duration": 76, "endDate": "1991-07-31T00:00:00Z", "itemId": "qv2IzfUvtkAlZump", "quantity": 15}, {"duration": 21, "endDate": "1994-04-29T00:00:00Z", "itemId": "RHK8vtAQayCVKWMT", "quantity": 51}, {"duration": 91, "endDate": "1982-08-06T00:00:00Z", "itemId": "T0XsFqVMv96Bk6pZ", "quantity": 46}]}, {"condition": "bMk8C2Vu3SmU974P", "conditionName": "hcvGMHU50lwm3XDF", "eventName": "jKsuHjMZvFnlXWfW", "rewardItems": [{"duration": 15, "endDate": "1977-12-06T00:00:00Z", "itemId": "iarM32tTuJxWn4uP", "quantity": 89}, {"duration": 18, "endDate": "1972-10-20T00:00:00Z", "itemId": "0OviUxiHugyPQ3fa", "quantity": 44}, {"duration": 72, "endDate": "1984-08-20T00:00:00Z", "itemId": "wtRLbElRK8G14J9o", "quantity": 24}]}], "userIdExpression": "wC6Xkrx4JTMziQwn"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'o36gitYD1YfBFNPk' \
    --limit '29' \
    --offset '99' \
    --sortBy '["namespace", "rewardCode:desc", "rewardCode"]' \
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
    --rewardId 'pmtbfiaZDgfXPPka' \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'SOTLzdXRVChP51vI' \
    --body '{"description": "Wrn26P8siVakSGMl", "eventTopic": "6P0I9luNfooGCc21", "maxAwarded": 30, "maxAwardedPerUser": 41, "namespaceExpression": "Ib5HpZg7CMPFjwgf", "rewardCode": "DGSRvqKm9muB72d6", "rewardConditions": [{"condition": "KSLw1UTBUzxftd6s", "conditionName": "fpXlEbFepNQHZxzQ", "eventName": "oTcuGPfXtNaIbZ7u", "rewardItems": [{"duration": 64, "endDate": "1998-07-27T00:00:00Z", "itemId": "1pLcDPqOh5gFD63t", "quantity": 11}, {"duration": 68, "endDate": "1974-01-12T00:00:00Z", "itemId": "xgcOmlru3flic3Mg", "quantity": 52}, {"duration": 84, "endDate": "1983-03-09T00:00:00Z", "itemId": "0DoiJ3sXedNNb2fP", "quantity": 23}]}, {"condition": "BDAyseu2AKDZdO6Z", "conditionName": "fzTCTal0fTARD5Ye", "eventName": "2PhUr7fBOxq7z12b", "rewardItems": [{"duration": 43, "endDate": "1980-07-06T00:00:00Z", "itemId": "UuSMXcVgKRZ7zj8w", "quantity": 73}, {"duration": 4, "endDate": "1974-09-20T00:00:00Z", "itemId": "PhMk3kvjeNGmoRLe", "quantity": 43}, {"duration": 72, "endDate": "1991-03-09T00:00:00Z", "itemId": "jytpFkKi6iaXIf0j", "quantity": 29}]}, {"condition": "8NdGEwmmxhEOwogo", "conditionName": "pesSkjawQMccsLv7", "eventName": "tIWL8m5iKCV3X6In", "rewardItems": [{"duration": 35, "endDate": "1997-01-08T00:00:00Z", "itemId": "INreq284lGM575PP", "quantity": 31}, {"duration": 75, "endDate": "1997-09-09T00:00:00Z", "itemId": "cJAdKS6SInOjKwE4", "quantity": 8}, {"duration": 84, "endDate": "1983-06-28T00:00:00Z", "itemId": "a8tacjKqhbF5sXUb", "quantity": 62}]}], "userIdExpression": "t9U2RqFgZ9354ulm"}' \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'LDHkStShUgaq7c0R' \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'yCRylzQZoyG0iP6k' \
    --body '{"payload": {"3QYxq87tg5XyFr79": {}, "oE1PJKy4eO57hajA": {}, "z4rv46kkcFSMFrea": {}}}' \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'bab3u1McVCRyhnMW' \
    --body '{"conditionName": "N2kF5fWghdN1FBTC", "userId": "Z9rJSbbj0TeS1vPd"}' \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'IRsB9FlJbieRWo2A' \
    --limit '84' \
    --offset '79' \
    --start 'F8FGaSNy3YZREuyA' \
    --storeId 'CMxGS4CQi2fo2q0c' \
    --viewId 'BsHaXdU202mHNqWI' \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'I1tfnwLmP7ba1HLi' \
    --body '{"active": false, "displayOrder": 38, "endDate": "1976-12-19T00:00:00Z", "ext": {"UfxQvAYG5OmRKoUn": {}, "A2foHR4fSx6oeDVg": {}, "Ma5ymo8QlJsjhgYc": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 80, "itemCount": 28, "rule": "SEQUENCE"}, "items": [{"id": "IDJy5DTZnD4M2AGc", "sku": "vDzTlhxBgekhjHuM"}, {"id": "ohl5XLKrLntzdpSH", "sku": "cgd6oE0YAdvGPpJY"}, {"id": "yU8x6HQXFaoiOAhk", "sku": "Ie1MUuZOwJTXcpIo"}], "localizations": {"6pKb64Jbv7avnimm": {"description": "Lj1oIX4qoEVa7Hyt", "localExt": {"3tie4RP9AeMd2zIw": {}, "9fkLAjM2ZgUmVPZv": {}, "XJ5evYWe8gc8uRKi": {}}, "longDescription": "DKTyY70KPTh68Ht3", "title": "Tf1wAhouDm1bVr4t"}, "U0WOcsOsZA4lEniW": {"description": "3jGNmS4S3u6hGMTZ", "localExt": {"7VQqFGWQKPQ9BlMY": {}, "V2gRxcApuPtOwj5a": {}, "45W063HM0RMtEkNU": {}}, "longDescription": "z9nNtg0imL9uvxPc", "title": "SpGmi0YXTzqQSSps"}, "Cnfnm5oTicekBjNJ": {"description": "XU6ecaciWIwWX2hq", "localExt": {"wTsIA3rNB8EbxfTc": {}, "I9r6QcQA8YulUazr": {}, "PHHcN2BHVYqxcMPW": {}}, "longDescription": "wZx750TOdYWsGPim", "title": "AtbIV8vbPH5686WK"}}, "name": "v4xKEIJ6vXgW9jKs", "rotationType": "CUSTOM", "startDate": "1973-01-15T00:00:00Z", "viewId": "TAQdrShS9KhnRvdh"}' \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'yPBG0Go0Y0FqNJ1r' \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'dTVe47MMC07w9Jju' \
    --storeId 'ndB2xepQRelUGlw3' \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VELTjXRWXoNOZla6' \
    --storeId '8e5m4tzowEuSg5u1' \
    --body '{"active": false, "displayOrder": 74, "endDate": "1980-12-29T00:00:00Z", "ext": {"pfPDzmiCr6PXdOWK": {}, "q7bQ2RpQG6XpnPgZ": {}, "NvNCR7Zhpd5tyNFn": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 44, "itemCount": 4, "rule": "SEQUENCE"}, "items": [{"id": "6FZXBtFbaTawlkMT", "sku": "95c6XKtt0lRMfVDQ"}, {"id": "PG7MdQ8KMTnuatnL", "sku": "UUNJHTpsDE5vh8hu"}, {"id": "qru2KnNzEBhpSgVG", "sku": "AZFfzvqEtJMh63fG"}], "localizations": {"EjGOC69uVfM5vX8k": {"description": "1Mj46UPMqVYqwLY9", "localExt": {"PabEDJAiXwB0P9oj": {}, "36QjldIHDY8ssoRQ": {}, "yOvE7qMfCwucBQsd": {}}, "longDescription": "72UtsqQCUsghVWAf", "title": "4IzHescYVLa5ms3T"}, "wpdKCOsId86pgI1m": {"description": "CMSZ7DWDjataG3sG", "localExt": {"eIqANA0dTBlQlf9w": {}, "cJEgB61QhuQM02gO": {}, "5TUc72HvJCwHcYTx": {}}, "longDescription": "GD4Tf60Px0PNyXsU", "title": "uPFa2dweZ6BWYcEO"}, "lRjlCt3BePrCiIKV": {"description": "VqLEZ9rz6hXEPjeY", "localExt": {"Q9qnI4j3lw6C0Qdi": {}, "bskXo1pT4WVy5cLz": {}, "uXrBq78jzxTKeQga": {}}, "longDescription": "XQCFe7y3hYHXtagg", "title": "ggUpol4LqvTpSBvz"}}, "name": "MylxMhisDoLLet0z", "rotationType": "FIXED_PERIOD", "startDate": "1993-06-27T00:00:00Z", "viewId": "Hfy3bRXNiJNVfVMw"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'mrtJefD1Ry09DECI' \
    --storeId 'iFQzEET5GcLEx5B6' \
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
    --body '{"defaultLanguage": "k17ppIGwcrFnJrIf", "defaultRegion": "KLOWfTLlXrZDLqtM", "description": "o3gMnwEknpRcUnTp", "supportedLanguages": ["wgDE2JnaRytVwhRI", "WVlOYIBTIBZEhHne", "Q9ROBO2g0CHZZzuu"], "supportedRegions": ["6bzj3bACqBCIhddn", "kvpSz9JSBCfqPu4m", "YpWqx7oyIcEmJBsc"], "title": "eOx7gVr5sA0NDoxk"}' \
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
    --storeId 'ZvzM4u842QRCvRyg' \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'bpIlYqft9EyMcooJ' \
    --body '{"defaultLanguage": "I6ImY2NsGLqEdF9K", "defaultRegion": "4tzASaVsOAtxDzkr", "description": "qxyLLX1qHgSC0CCG", "supportedLanguages": ["FFg5R3j9acidcE0Z", "DJndgLKWtcXebQNI", "2zcKTldFs1K3LFMV"], "supportedRegions": ["NkeaqMuqBkwzG5Yv", "mZZNmrEwWkC26EyW", "IKfbaLENuv6f4Oqi"], "title": "TOVgb1AW6HxcQNBG"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'x8h9BG7F9UrXgzfJ' \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ORorkhhxpMbLvCwS' \
    --action 'UPDATE' \
    --itemSku 'kdD9I2xLBaP8dkpp' \
    --itemType 'OPTIONBOX' \
    --limit '82' \
    --offset '20' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "createdAt", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'xefFIDBSq5wtAZrP' \
    --updatedAtStart 'Qg7rjfqn7gWWHRHB' \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Phx4UqZWW1dKRxKp' \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'Gp0zbVOWDubIH7Ij' \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'nqXQ5fK5uNOqzbxR' \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'jcxP16FoA5Rt8ZJe' \
    --action 'CREATE' \
    --itemSku '1FExf5lSZLauACeS' \
    --itemType 'CODE' \
    --type 'STORE' \
    --updatedAtEnd 'c3N95WPZbnTfIdnh' \
    --updatedAtStart 'zxJyX0WKLyYKr2QO' \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'jA1yMUuJPeXIeJTW' \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '8DCoDafVcVYQjnQa' \
    --namespace $AB_NAMESPACE \
    --storeId 'VDDj0RWNS2b8h0bq' \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'nbWhRawdF7h4HUnk' \
    --namespace $AB_NAMESPACE \
    --storeId 'Etoqyr3T9u3JTtJK' \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'oRkMywce89gRigAI' \
    --targetStoreId 'AzmwuM23x5ixxuAQ' \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '4zUT3khx7F8i5ZnY' \
    --limit '69' \
    --offset '78' \
    --sku 'X4WYjLGJzJ1XxBnl' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'CzFtY5FQ8L2c0PUX' \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lsSbJoqGSwGDMPIs' \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'bV8YyFht7LzPmxmd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'khcoZXm3b9OTrG6k' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "C50VTY6SQnzfT8Fd"}' \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'p5aUVz5J5AOvdSLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '6kY8R6CpWo24AWuh' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 2, "orderNo": "AWRZzZKuOOMo5FMl"}' \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NaSZZqH8aJlcSicp' \
    --body '{"achievements": [{"id": "rDOZoIfm6uCMfgAp", "value": 87}, {"id": "3TvTskOqAYgh7koS", "value": 67}, {"id": "hSF26biwQMinsXcI", "value": 15}], "steamUserId": "tuJPoiTbd1gOYINp"}' \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'U1nzQwCu0rtNxnDz' \
    --xboxUserId '29Uj7mFXdQZqnK7e' \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'O86dDHq300xTUACv' \
    --body '{"achievements": [{"id": "48MaZPXk6773qefo", "percentComplete": 57}, {"id": "JuATRh8qEJSo7xQF", "percentComplete": 55}, {"id": "LKvOAsfCBqJTJi4K", "percentComplete": 81}], "serviceConfigId": "BLDNv3CX5Uan7Qv0", "titleId": "dfzZjmDhqb5NIC9X", "xboxUserId": "Clwgjjo1GqkP5Amy"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'yN17Tm0SOVmrxQNZ' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'sb72FXhI2YkcKqIx' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'fzuv8mD0nhvHr4x2' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Iyod50EOZKFIsi6h' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dUpMjYA5efE9cOhz' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'bquHBkVxteT4ffcG' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'gvX18HckYpSNQaiI' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rwgYiqMrmukrdwPo' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'a9S1eO1jtpn9Dt2X' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '37ENKgYLsuJwXrv1' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '8qb6fyTYhU1KahYh' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'erGIdmjmoJ4lk9ZT' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'Kqu4m6BpNnfn0BZl' \
    --features '["u93Jt6vY3VPFSaOE", "5BKD60weVZ4SZx0N", "mpoUaoddWStWTsS0"]' \
    --itemId '["ltmthkjPK96q6UUR", "hDrdVfUO3r3pDxvS", "s6s9KvWeKp6lcOoL"]' \
    --limit '67' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'RrPwaiKlQ1l3v3N9' \
    --body '[{"endDate": "1983-03-26T00:00:00Z", "grantedCode": "1HZzqAGw80KGdhXq", "itemId": "EZJok2ix9MHgS2vP", "itemNamespace": "R63TX3neAmiGrTAj", "language": "RBO_At", "quantity": 23, "region": "u4YPFzM2YsfdUGEx", "source": "IAP", "startDate": "1991-09-18T00:00:00Z", "storeId": "cADKG4ZMMaOW7AW9"}, {"endDate": "1978-01-20T00:00:00Z", "grantedCode": "DtBTCkjviaMLVn3l", "itemId": "0k0Ri8SJkNPFpp5g", "itemNamespace": "enDl4hfn78kDsWne", "language": "Wc-ZxCz_jA", "quantity": 80, "region": "MX0kvWo5wWwErQmn", "source": "ACHIEVEMENT", "startDate": "1973-05-15T00:00:00Z", "storeId": "mpxiHqvkw7OsrVfW"}, {"endDate": "1977-06-21T00:00:00Z", "grantedCode": "HHIIkf1v53vyTn7U", "itemId": "10ZAyuMelGpxWDlQ", "itemNamespace": "sIDLzQi2NUWeHEqK", "language": "eT_gaFc", "quantity": 54, "region": "Y9tNcFID5rEJJNnz", "source": "OTHER", "startDate": "1981-10-14T00:00:00Z", "storeId": "oDfRO7UMM4vNlfgf"}]' \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '0MadQ41O3c3ts3GD' \
    --activeOnly 'false' \
    --appId 'fePtv2znRJPypMvz' \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ZSFqfWkUdUG7sMax' \
    --activeOnly 'false' \
    --limit '18' \
    --offset '4' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'oBrxK3echkvVY4Bg' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'JYUVZlvMBtmD89rl' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4PH3T2r0w68szPRc' \
    --ids '["inEMv7YUCYdYOGAa", "wAEUVTFFFBf5MI5A", "Elio7WGZoScToSlr"]' \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'UvsmGwt6VzZ8tEAI' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'Hi2rPet6NDnxvEk3' \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'p8fx6IZkk61jLm15' \
    --appIds '["SGkbzzneZfNa5iqy", "9i9WtZC22slXj1MC", "Mp7TAAb2jMbw1IMD"]' \
    --itemIds '["I4P1cBddHZo0fH8m", "ovWlEUFAHIZNc5Rf", "AaowWKFkOdI4xu8B"]' \
    --skus '["HWOcmDUQHLecTjhP", "bqvt4xd9KvErXXjb", "x7dq5zigPVbS08fm"]' \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'chLC1k5H7Nuprkoi' \
    --itemIds '["anpj5TlJpupN9n1d", "DVmjNkzPLrDMPanY", "8gZrP7aFl93nv9AB"]' \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4oJaGwWkoS9Vg9sb' \
    --appId 'be2uNJYNKwzhqB5I' \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'E69iHKwt2dLwr9TD' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '5ssbbcEypivnRpcU' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Z2R9UDUUdCERkQLv' \
    --ids '["nDwziOte3imYKDnx", "6fdbn0wJwyGDQ2G5", "mwJ6FoEcR1flqkuJ"]' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EICDqMZrT6Kit8kv' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'VaeXjiLwhNWuvoGd' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ICWAFwR9y4gI5UAs' \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vGSVgju4DlBWa6Az' \
    --entitlementIds '2Fwtpll9zH7hOtFf' \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Pu37vSNIt0Vvyp7s' \
    --namespace $AB_NAMESPACE \
    --userId '9ZGtQxF7muYzIIpS' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 't6EQmtG8bGvngD3f' \
    --namespace $AB_NAMESPACE \
    --userId '36BgIBH5a02Rol0J' \
    --body '{"endDate": "1999-11-17T00:00:00Z", "nullFieldList": ["royaJphrOu41O2lF", "YRSmfclVGaKG6FOA", "qH77qYDx9ojTLH2i"], "startDate": "1981-03-12T00:00:00Z", "status": "REVOKED", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'dkNn8gcomABwobT8' \
    --namespace $AB_NAMESPACE \
    --userId 'Dvz4oV3u9RmfK2wY' \
    --body '{"options": ["sra135ddPuMFoZay", "KggJfhNUEzUbELK3", "oLuxBo9yAZtlTvbR"], "requestId": "9pEQtDq7G1yc3U4P", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'CnmRF1K48Z3GixOy' \
    --namespace $AB_NAMESPACE \
    --userId 'ZnDXLfWLvbF2nqaj' \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'iVTDlVlIFmAqPc8Q' \
    --namespace $AB_NAMESPACE \
    --userId 'apwWBVHJxy5HzBiz' \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '8p0NDmuweXkqbRxI' \
    --namespace $AB_NAMESPACE \
    --userId '7kLZ3H5VBZYxDdsD' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'GSw0RTq06vh0FSZy' \
    --namespace $AB_NAMESPACE \
    --userId 'vTr88TIzlb04hBVn' \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'qpwPRMOTcJ4JG5ap' \
    --namespace $AB_NAMESPACE \
    --userId '8gJvvDYbiY6lYLXf' \
    --body '{"reason": "opQIoCBFGxPoAB3i", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'FNqgsHMEkP9OjxVe' \
    --namespace $AB_NAMESPACE \
    --userId 'lj6mJhVOvDNF25Zo' \
    --body '{"requestId": "Czq3Y63xmYlyD2Ac", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'zo41zKO8Q8rtCcx0' \
    --body '{"duration": 4, "endDate": "1980-09-07T00:00:00Z", "itemId": "o6n2EQtRSxI2aTXV", "itemSku": "LFIjsgETiqtj7asQ", "language": "QnOtk2CDMHv9ERKM", "metadata": {"tq9tymDMrZIIpxJx": {}, "s7mw1uPqZo3w54HW": {}, "n8HDBfs8catRVV0X": {}}, "order": {"currency": {"currencyCode": "WSuSPAK94qWxQNuY", "currencySymbol": "H99eDnYPgeE9mSxx", "currencyType": "REAL", "decimals": 81, "namespace": "HB6KQYZiSJTBO9fl"}, "ext": {"tvbCqgCrqv47nNEP": {}, "x7NohBYiKLEkhA9y": {}, "4knfNa52Ofzm8jpp": {}}, "free": false}, "orderNo": "AJfgrDZaKGHKdAMB", "origin": "Epic", "quantity": 42, "region": "DrYmqc3GXlxpqjAD", "source": "REDEEM_CODE", "startDate": "1998-11-07T00:00:00Z", "storeId": "P3zypEgWNrk2WA4X"}' \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'E9iUwlY0SNdKvgM5' \
    --body '{"code": "VilX8SyE6P8rfF0P", "language": "BR-DDgY", "region": "MJqEOtQv0CT4XUQW"}' \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'XSf1DeDBeoRTTfUz' \
    --body '{"metadata": {"zyxnmyqyT18O1y1R": {}, "0eG8Fkihfjrks1y3": {}, "U9s8sOj8FvxU8ZKQ": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "ZpRvN0Zr85a2UeUi", "namespace": "Oz8Hr2JuYU97sJWO"}, "item": {"itemId": "J4zwn2tvOhYFxWhN", "itemSku": "0VC9XyaVQN6S829l", "itemType": "6Gv90KuAbk7G4Fy3"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "iak762gB1wG6btw8", "namespace": "n3BCaC3bNUDTw9mn"}, "item": {"itemId": "nNzfs2wRCoIVGPHy", "itemSku": "jjTG0fVRtKntI23d", "itemType": "r2EM7ST4QMlWrkt0"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "6YhImMcZqmNGGRDa", "namespace": "HDpEFGERse4sY94D"}, "item": {"itemId": "siSomXPdnDMbQuQp", "itemSku": "p4AV39cUlc7VoAQK", "itemType": "k8mpDi2Uj5836CKp"}, "quantity": 43, "type": "CURRENCY"}], "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qV3hYY0rQOoJ04Cl' \
    --endTime 'qo5Lont02LmVyaRQ' \
    --limit '29' \
    --offset '96' \
    --productId 'veFTkAUBuNj4gzNj' \
    --startTime 'l9RwtlHUOqRmk3Dm' \
    --status 'FULFILLED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9dQOBeWkjMPEYzP0' \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'oMJLVrEgI7JuBzTf' \
    --endTime 'DRGz73lOVgVIcIhe' \
    --limit '86' \
    --offset '52' \
    --startTime '5ef6MjGRnkvE2AUl' \
    --status 'SUCCESS' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'fHSs0RnQZmDMQjk4' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "brbN_HL", "productId": "lEHZjQsp1fQ0NmsD", "region": "r3sOF8LOKX0gFUoF", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KQ0LPinHgPxxTc1i' \
    --itemId 'FdCZY52snAnjnfYA' \
    --limit '22' \
    --offset '66' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fqEonTjd8FO72goi' \
    --body '{"currencyCode": "zO3pHd6VmYiYysry", "currencyNamespace": "anOZnrvk9BxLVXHS", "discountedPrice": 67, "ext": {"bahJubIWotNIpdAD": {}, "DQvSIoRxbrzUxUjK": {}, "79fXbYUKtL4t2Ria": {}}, "itemId": "ZIrBlabCq2R3rSqO", "language": "sQcX4etXHOh76TL6", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 18, "quantity": 13, "region": "VU9vBEwZwMbTWXrk", "returnUrl": "Tx6hH18MB2CpsUK4", "sandbox": false, "sectionId": "TI2aDx9TrRonC3Pe"}' \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'cIDLGhvuzPeiKksa' \
    --itemId '5hrpM5Ul7yR17uTj' \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'JR9xNLqZH4JQPOKp' \
    --userId 'jaeq1CprUjJXCfim' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'KFeMQb89vR2fhOdz' \
    --userId 'qLb3xucSHaqinY9s' \
    --body '{"status": "CLOSED", "statusReason": "C257sQY2ZffYytA3"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IHCTTN5Jqpis6XqI' \
    --userId 'iJNa3PlE6etv58ia' \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'rImY2S2jv3R929uu' \
    --userId 'Ms3AkB9aMpMDU04J' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'wD0vvElNroOlgJDu' \
    --userId 'BLtB5N15OytcH9NM' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'inCYy03Ch8GydaDb' \
    --userId 'FLWHb0ddVHHWLK6o' \
    --body '{"additionalData": {"cardSummary": "9fZ0KjxKOqeystjQ"}, "authorisedTime": "1979-06-14T00:00:00Z", "chargebackReversedTime": "1999-09-11T00:00:00Z", "chargebackTime": "1992-10-07T00:00:00Z", "chargedTime": "1983-12-27T00:00:00Z", "createdTime": "1994-12-08T00:00:00Z", "currency": {"currencyCode": "E2fpwgMeZcc2RPh6", "currencySymbol": "8C3IhOLBTyOWN3lG", "currencyType": "REAL", "decimals": 77, "namespace": "CBicrh3qtu846UYC"}, "customParameters": {"wDZscwmEcct8GLHP": {}, "pUSxH2kNsGrgKeay": {}, "YyXgsxJ1VHahRIPy": {}}, "extOrderNo": "D3FMdI5vdE95gLfM", "extTxId": "wj3D0pVzt39VTCxv", "extUserId": "yLmwi5OhmCgoLbN0", "issuedAt": "1973-12-05T00:00:00Z", "metadata": {"5U7s00H8uP5OR6SV": "nW2qDUDoC41tihDA", "xtJMgWLOEpnDESFL": "VDAAMFzj0Mn3xvG6", "Rq21gn7163boDlDp": "oNxTRgBHyOnV5CqI"}, "namespace": "kEElhtcxHHQHglAn", "nonceStr": "TNSSPcnPFVvGEQzs", "paymentMethod": "A8hKYYxjhnDd4Gei", "paymentMethodFee": 41, "paymentOrderNo": "bDH5GB9neTymgELR", "paymentProvider": "STRIPE", "paymentProviderFee": 72, "paymentStationUrl": "9mEp9yAEMOeCRHxS", "price": 55, "refundedTime": "1995-10-04T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "HALdhk8CiATNtoHJ", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "MJkQP7DXVYCSmj4j", "subscriptionId": "QP5brX8rSdc9NJ7J", "subtotalPrice": 12, "targetNamespace": "MZ3TXdeWzQGSnp6X", "targetUserId": "N9jI7YwWyahwaptd", "tax": 31, "totalPrice": 26, "totalTax": 84, "txEndTime": "1973-10-29T00:00:00Z", "type": "HeydPj6JXmvaZu0W", "userId": "xGrf3qYZMdPSPPOC", "vat": 87}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Upcnw5myV9wCA4in' \
    --userId '3WbAEfGgGUmSHjPr' \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CuIjLuyZjcWLAm1w' \
    --body '{"currencyCode": "2qkrJ9rqSv6m6TAr", "currencyNamespace": "gmKiskDI8T8uqnKJ", "customParameters": {"uPr0uT4rujf62iFO": {}, "FCBPDL4oFVGfyYjv": {}, "SSDe2OSTyXDL2DCb": {}}, "description": "gi0RP2JpugFxbngn", "extOrderNo": "HPL6ADJ5bTN7DyzP", "extUserId": "D2noD9C3ls7lks1B", "itemType": "COINS", "language": "fV-hQ", "metadata": {"sZBio9bAlsYnBau8": "hyOFY29tefcYv39e", "KWeJletgDUJvKYwh": "57GI07BZl0xHJlvP", "9TIQ4M6laWV08gRg": "bBEbxN8WvXQ7tPxw"}, "notifyUrl": "Kw8SSli4jxzWQ4EJ", "omitNotification": false, "platform": "sJAwbHA9cRpQzIBh", "price": 41, "recurringPaymentOrderNo": "YjcfkXA3NVb6AnjK", "region": "OoBgr6nL1pqvvM9s", "returnUrl": "P5hMkbXMng9AdyN3", "sandbox": false, "sku": "BwignaEfgAJyw9ry", "subscriptionId": "7XQ3UsQIqt3OYVQ3", "title": "IXdsoxoXPwTkwAnc"}' \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wgBMzHrwtsVD7G90' \
    --userId '6mXRqpieYWPMlIDm' \
    --body '{"description": "29qqpSv7OPTkh8mM"}' \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'CVN6UrnZO43wgci2' \
    --body '{"code": "naBN4vAslCYJBSe3", "orderNo": "1yqtFWMNcJ0AcZeD"}' \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'soLANZRx0tGm7SlA' \
    --body '{"meta": {"7bR56B0Tv6nFdU3W": {}, "UIdjCVj3A5G7J73o": {}, "kAHXYhKb0wQJad0R": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "AOReVRTx8yP8OWjT", "namespace": "6hb4tzsh1SYRItb9"}, "entitlement": {"entitlementId": "lzTROqpyZZMiDPca"}, "item": {"itemIdentity": "Hc7SaBUqy70CHj53", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 1, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "zyrC7PKu1G8DmUC4", "namespace": "IfsYmxAFOrpZEUZP"}, "entitlement": {"entitlementId": "GbKkH3FPdChrmgTE"}, "item": {"itemIdentity": "c8gVD7bwnDST0bTL", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 17, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "M994fBtbiHZV6JAK", "namespace": "Us82pb70gIFvUgo9"}, "entitlement": {"entitlementId": "pGLyn4eWtiXwC2Vu"}, "item": {"itemIdentity": "F1cI0FneeGw09cMo", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 57, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "fM4YNnLtAhWLVUn8"}' \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'Noy3vf2TUnFNlzFY' \
    --body '{"gameSessionId": "WVrkZN11XUcAf7kO", "payload": {"O07T4BOJnaX5PTGe": {}, "7UtSjmBqCUIFaOAu": {}, "3hsnpzDUmzlhlCJR": {}}, "scid": "QPmu8nLpKMuqaudg", "sessionTemplateName": "xNtfYQxtHa2GxKrs"}' \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Y1G0yv5dozMiXTiV' \
    --chargeStatus 'NEVER' \
    --itemId 'ooWH5lOZTF7TtE4x' \
    --limit '97' \
    --offset '33' \
    --sku 'WO9oRYZaKiwrlvSn' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'bt3xiPsBox7TZpP2' \
    --excludeSystem 'false' \
    --limit '74' \
    --offset '49' \
    --subscriptionId 'fxvFZWaI0HxaVKIi' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BLa8QGtDd0eHr3XQ' \
    --body '{"grantDays": 94, "itemId": "SSwaxjCJuYoQgQ6f", "language": "qV53T1TwQIJeQPKC", "reason": "QniKTvOs4rrCYBU3", "region": "GGik4yrxYw0A98We", "source": "qSZGFzuEkqbJNrVt"}' \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uLAG9lornKe4EM9Z' \
    --itemId 'bd3MTTdtfWZczWtE' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0kHNRsGPGVfR75ra' \
    --userId 'KXysKdnJHPLCX3ie' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cP5pfvFmdbxdhq7q' \
    --userId '3reerO5eKV7caw9G' \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0boCLM0MQwny6ODx' \
    --userId 'QgaQJOebAZiHKnlY' \
    --force 'false' \
    --body '{"immediate": true, "reason": "tcIEMc1vNZZ7fvBI"}' \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xuv2wqhvYWwWRqX0' \
    --userId 'guuKR5geYo0JAiA9' \
    --body '{"grantDays": 52, "reason": "LQzjDoD5N75I9deu"}' \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xDlvJUo95AHDfDOW' \
    --userId 'b6OEVMU9uLgaf6Hh' \
    --excludeFree 'true' \
    --limit '37' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lLsGy2MLqkQJCXJV' \
    --userId 'MHWbpH6Rh58XI7aq' \
    --body '{"additionalData": {"cardSummary": "LhzCUI7MpPQejXYC"}, "authorisedTime": "1982-01-17T00:00:00Z", "chargebackReversedTime": "1999-10-17T00:00:00Z", "chargebackTime": "1985-09-15T00:00:00Z", "chargedTime": "1991-03-17T00:00:00Z", "createdTime": "1985-06-22T00:00:00Z", "currency": {"currencyCode": "UhcwvIVHbKY3MCXC", "currencySymbol": "I3wEsrQSSYWGiHa3", "currencyType": "REAL", "decimals": 71, "namespace": "u5JKRcIqfhQtbdZF"}, "customParameters": {"Piyu9NdNmIvpIhES": {}, "gBl4OEYrc7YnS01F": {}, "kG8OocPLPHtJblDT": {}}, "extOrderNo": "6AzuzYc0LWaXqWKY", "extTxId": "JvRAMCi7RUxNEim4", "extUserId": "D9rC1O8Cl20DfkHZ", "issuedAt": "1974-12-19T00:00:00Z", "metadata": {"e8AOzLohtrBCKGID": "4fLDVJdUMzN625as", "13CqEvc5FAVWiGrD": "1oA9O0xfrrMUPdHl", "BlQ74cU6Lqh4Q9Ah": "IZuJJsbsS8u9w9hk"}, "namespace": "FYrr8I9Se1yuRLud", "nonceStr": "5yhmZgVAfzDly6fc", "paymentMethod": "szgDm9xZJwJRtzQ8", "paymentMethodFee": 90, "paymentOrderNo": "cnpU05hob2oy6bcY", "paymentProvider": "CHECKOUT", "paymentProviderFee": 16, "paymentStationUrl": "Clbzcloc4eRAmCMe", "price": 72, "refundedTime": "1977-11-20T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "bMtDIEa8LcqpXMDK", "status": "AUTHORISED", "statusReason": "5SBWKCsZTftlQm1K", "subscriptionId": "I3DH8n3HsLE4iHD3", "subtotalPrice": 23, "targetNamespace": "0e3FwNQJce5LXnso", "targetUserId": "9b6rIiM99AuuxR6S", "tax": 53, "totalPrice": 61, "totalTax": 55, "txEndTime": "1990-03-13T00:00:00Z", "type": "sfj8h83YZQIgdNsE", "userId": "MtcyXsvEFYiB6Ssf", "vat": 72}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '3BXw2y4wtLchc9GK' \
    --namespace $AB_NAMESPACE \
    --userId 'Ori5BgPfUZStb8U1' \
    --body '{"count": 27, "orderNo": "Jtgj8O2TFvsrpqHk"}' \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'I4288dxA96hDzjtT' \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Pg4PgZlzH0uDlxNq' \
    --namespace $AB_NAMESPACE \
    --userId '0R7EszGxQwy7AJgE' \
    --body '{"allowOverdraft": false, "amount": 58, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"dPximEpBxKBbTork": {}, "SL20LrFzT2z7n466": {}, "2kuGOC49PIHVBDkS": {}}, "reason": "FmAeqpLqnUr7Th5b"}' \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'KvutQKfKYUght45l' \
    --namespace $AB_NAMESPACE \
    --userId 'J4JoUxoXd7gA115k' \
    --limit '4' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'QJUhmcGtOaIoCRoj' \
    --namespace $AB_NAMESPACE \
    --userId '3MXzuDgofFLYZLiL' \
    --body '{"amount": 42, "expireAt": "1988-02-18T00:00:00Z", "metadata": {"LRhAsQHdNRcLPL4N": {}, "kaFatL183qF5dJEA": {}, "G265Jn222bmZMTNg": {}}, "origin": "Other", "reason": "GvIZfhc4Avrexmix", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Rl3iKp8MFMsloWdz' \
    --namespace $AB_NAMESPACE \
    --userId 'cvZIjmpJxP77XyWt' \
    --body '{"amount": 29, "metadata": {"OW00FLtuBGWW98An": {}, "khz6BO5tc4THChRt": {}, "2ez6BZ8oeSPoLj9B": {}}, "walletPlatform": "Xbox"}' \
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
    --storeId '3yq7l0g4wZLQYdE7' \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'IPVboVF07ZIhQ4f5' \
    --body '{"displayOrder": 14, "localizations": {"RTh9CfEAuc3JHuYL": {"description": "YHG6OyzqaVMOeUvt", "localExt": {"bGz2EkWjhp3xoZOh": {}, "mkwdZlSv52AtADmh": {}, "JtuHsnJBWia9vNG7": {}}, "longDescription": "5vL6LJPHEqdtNMRY", "title": "C4PX5GzWHJxmYgv4"}, "z2GQ6RJ13FJ5fkbS": {"description": "tprguSJDuDEwYXED", "localExt": {"nDqfXqoHcQHjtO4T": {}, "mGqHZl9KFkiDrVn8": {}, "e5yRMnltSmK2yw9v": {}}, "longDescription": "TFB92M7D3T0BEOH0", "title": "8juEwauh6noYHqTz"}, "KUAzLbvYO8AMpLQs": {"description": "ZxxdM6Fr01OjZlVY", "localExt": {"xihQMTwGLC2UJL0v": {}, "MplTIClZusnOi4QZ": {}, "6KawY0IBVGuQCw5D": {}}, "longDescription": "stmvRaiXVxPugfrH", "title": "JTfexhBb9g7zLlOO"}}, "name": "45GXuyTKQleNZ4yC"}' \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'VZuGVwB6dPDffAtp' \
    --storeId 'nGAF8pO83nAxtxIu' \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'HwtAnaVdd0ndyiBb' \
    --storeId 'hB4p65CC4PpyNiOb' \
    --body '{"displayOrder": 84, "localizations": {"pFXoCwxbYlXMWi9F": {"description": "K0HICjT1vN6mK2qz", "localExt": {"NJIAFdu7bJCPno6c": {}, "UOnY92vh2BnjwssI": {}, "POehwBKKvPVRyMtZ": {}}, "longDescription": "LtRZUNWdKF1NzOgw", "title": "r1iFjViPBQQW6Ouy"}, "BB0es0lfkkgQGGQk": {"description": "bXCznQx2LuSF1MZG", "localExt": {"DFjQy9o4hJpfFwJ1": {}, "YziMhAw110qEQfKT": {}, "PN9zP6RTYlNXK87E": {}}, "longDescription": "GJXjvPNOSjolVX07", "title": "eMKWm9wHrsm8qBeE"}, "Je6tDdvZyuITfkYM": {"description": "3DMifGtLQd1m2PZK", "localExt": {"FflFmNce4LVDCzwy": {}, "JPa7kkyaVty6btrG": {}, "BpfpB9OyASADn6bi": {}}, "longDescription": "iKTzFKLTzeqhc9TZ", "title": "BNckc9OETcW4IoLp"}}, "name": "K5Sgj0RjLcnPySqh"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'idAzWuIItW8xZLQw' \
    --storeId 'awffd9oGm7fR5oUr' \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 21, "expireAt": "1998-12-26T00:00:00Z", "metadata": {"r4eDf4NhNG8FlJng": {}, "HwrIAjM8PBcqtQVN": {}, "cyJ0rdRsWNsryz4q": {}}, "origin": "Epic", "reason": "bemwOLfqTedEn8xJ", "source": "REFUND"}, "currencyCode": "iwK316PERYUgbGUj", "userIds": ["XXYqgHKeYcRm8wMS", "4B6aMHQhpJVZSqCK", "g2MX3uaXPvHTm9iz"]}, {"creditRequest": {"amount": 21, "expireAt": "1971-01-22T00:00:00Z", "metadata": {"gtw75UfV3QK0Te61": {}, "aOKrl6nGWrsmzW8C": {}, "l7al30abe6ccs2BH": {}}, "origin": "GooglePlay", "reason": "2MOv9fRHxRR8RtC7", "source": "SELL_BACK"}, "currencyCode": "vQDHop9qtKOKdo70", "userIds": ["GfF4PsZo8z9KLuhe", "93yBoQoPYxNvGF2r", "AAmuRKBy0CzC7W0s"]}, {"creditRequest": {"amount": 15, "expireAt": "1973-08-01T00:00:00Z", "metadata": {"A9yOwk82tSkVdaX2": {}, "dGe6w6UqfW92XnM6": {}, "fQ7ZMLdBQilGIPFG": {}}, "origin": "System", "reason": "pMRGEA8QySJfmEkX", "source": "REWARD"}, "currencyCode": "UMaPhF1rU802r0HZ", "userIds": ["VEtP7GuQuIuLJyhi", "krRR9UWNUbc1YyPV", "bRe5mchHy6hk3kU8"]}]' \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "W4bF4r40107C00TU", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"ujNDIC1pzLJwmBFN": {}, "HJUmur5oxoNig1ol": {}, "NViIsPZG2aB83QBa": {}}, "reason": "IsJuYVBiJchrriZT"}, "userIds": ["D2VAASp7FmFAUbrr", "xLYyJISSi0TUh6VV", "E9DY7gr7OtCo3T5E"]}, {"currencyCode": "gVtyXvyORJ7yHTpy", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"tcpMw2tM4hbmhqZF": {}, "HN70FsP6hlTMuFgs": {}, "For3uoFjypOI8Qus": {}}, "reason": "mH5XgJVHmrkNYVaL"}, "userIds": ["AfGEgfdAW6YKvzh1", "CxNNfjhZTlHs3qGl", "jznFIs61HjF32dZf"]}, {"currencyCode": "1YYuW42fWnEszDSU", "request": {"allowOverdraft": false, "amount": 14, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"mzjCPNdpUbqo0d5K": {}, "vWgCGXasXeFXTFgH": {}, "qMA8MZrpHqxkfEjo": {}}, "reason": "0VLnng7tv0rZHynQ"}, "userIds": ["XUZDEfRlfTfQKg2d", "FGv8rJkMx0xJPTld", "j9r9ciiSo5nbEjq3"]}]' \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'OiuvcaOKxmL9OVZ3' \
    --end 'Pf9I3HQRdBVqxRHF' \
    --start 'yn5ebsGITgcJEbfu' \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["EhVlyMp5dtpqVeIo", "zHXOQrnW1eybs14h", "6vfEI2xYm2bhCkhr"], "apiKey": "aHsmOd354XRKTXaG", "authoriseAsCapture": false, "blockedPaymentMethods": ["YiqGS7kxNoca5o7a", "EoxVGsGYeshjqwvn", "QJ3MNRvSf9UIwOG5"], "clientKey": "CKBpXkM2aAZgk8wl", "dropInSettings": "exrbTqKp5f0FsbCv", "liveEndpointUrlPrefix": "kY6ybQqtWvhR4din", "merchantAccount": "FF3GDODhpJPScR11", "notificationHmacKey": "OqtYArps42mqrf9k", "notificationPassword": "OJI6Iik7D1DuldOE", "notificationUsername": "qNMFWQoTMZf5mTrW", "returnUrl": "1kLsr7kslCUDBuNG", "settings": "juugCDQY4N2wJt36"}' \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "RM15I4ST5W7blQG4", "privateKey": "Gq2Wej1YmgplY9RN", "publicKey": "jrkCtGgHXV3iDfrz", "returnUrl": "xSdvUFq2t5xocHEt"}' \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "PQJUFTpm5Cup7M7Y", "secretKey": "ADXQB1uOWdpu6zzD"}' \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Y7cDhrhI1UHqGwfe' \
    --region 'YEWBCJeO7TusAFwR' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "MDCsReg7BwDhDXMi", "clientSecret": "WNJkD56DBBagLDfg", "returnUrl": "sNmcEZ2zGbqX6Ajk", "webHookId": "0rLI48ZvXKMcyFwr"}' \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["UGHPTmDgzE4z8O7V", "R5TSZJnpfYB70zPV", "eqhHGTyldmZvFXpi"], "publishableKey": "3FlrFC2f0bZ17ba5", "secretKey": "Nry8OyVUKUpAMSRr", "webhookSecret": "o9ELfsxMMm6Ls6ee"}' \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "bj39WFFt8HfP12sW", "key": "4KAZEAUuavc1U5Xd", "mchid": "VcpsMaWQwaIzRP61", "returnUrl": "BIABAL1oFvF9Dlrq"}' \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Bsr2FUAc34dP5Fcl", "flowCompletionUrl": "VCxRlouDLKz8Bmqq", "merchantId": 21, "projectId": 10, "projectSecretKey": "sQSZkOP9ZbARVLMD"}' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'LobjL6pBN02p7tdv' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'JBt3ofjb1oz0as8w' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["zxfnZAtRSvHxr7nE", "uqOYHYKXrhR9ovDy", "G5YFLCEV0fkVdbeq"], "apiKey": "naK3VP0s8VCiwMwZ", "authoriseAsCapture": false, "blockedPaymentMethods": ["tKeNc7P8pytfK9SR", "OUnWfcw1AqFy8Dh9", "OE15XdouloHXVkKq"], "clientKey": "zP1gI6AV64WYZNau", "dropInSettings": "FKAK0fNCbMMy4qhe", "liveEndpointUrlPrefix": "UR3kfKeoEPjUXeBv", "merchantAccount": "vPFZIWltncFr6OsV", "notificationHmacKey": "GsdEy3nmeVNHdQcy", "notificationPassword": "IyoJHG13QXU72d32", "notificationUsername": "uFI4X118hU5E75hV", "returnUrl": "29tjblPAAerRBtgQ", "settings": "BJO5Zcp4UHMlI88j"}' \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'rV6GNd5YTzWB0nt6' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Zwtn4hDB5l0y0OiZ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "8xQWn5xVd4H0tBsI", "privateKey": "62JRo4QwbBx8ZLdW", "publicKey": "hG2qaG9PtG81vl60", "returnUrl": "XpoNWhjsGBW7Llvj"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'J4DURmo0Pom5GdCa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '8PO4aSa7wT4UhZqx' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "b3RJJoM76zGcuAUQ", "secretKey": "oQTKw7ky3f7lPMxD"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'BzFJ91lQ56stWewQ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'r1QFpYAy6B8nvyAG' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "8BsLei2cJ6s780PO", "clientSecret": "lzid62gJmfIAXqGY", "returnUrl": "9ZNn0CnYy7UFV7LU", "webHookId": "5THzivRjesEiYy4O"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'RvBvxkkGVrbclctb' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'qnXWzc8qe278yKiI' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["Yux6Lr6cfeqb4D4A", "SdMTq4kK8gQZMEM6", "sbx9B4fbKBj6HHEs"], "publishableKey": "4kV4eHojbu08tRLb", "secretKey": "5GfmeQncMgN0E04T", "webhookSecret": "YiTsYYjYMp2iToxz"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'XXiSqftVpaXi0i3s' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ISCpCxT3a041e8gW' \
    --validate 'true' \
    --body '{"appId": "JE3QO1lzUMNzzc0L", "key": "z9OcWRPoAvm3emVz", "mchid": "NUKhIVbRfBLZsCig", "returnUrl": "yCCGxyjrOvJ4dIi4"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'PmCEgMKhugTdz1mc' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'dclZudL9wT2Pdis8' \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ZtSzHpG5nuQDWmcA' \
    --validate 'true' \
    --body '{"apiKey": "zr5XLNVPGsxHRkjY", "flowCompletionUrl": "Pmv6e95GsKuPRzYT", "merchantId": 45, "projectId": 68, "projectSecretKey": "Pkt1w1Tu2iCuNX94"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ovxLS8MqKwlfwYtr' \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'c7XETDq5EazMPUBB' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '41' \
    --namespace '6YE1S0Tbn3oysxLd' \
    --offset '73' \
    --region 'gOkD8UPPffw3XPSb' \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "m1skIABejGomRKvB", "region": "nW0e3FulY3jKYuWQ", "sandboxTaxJarApiToken": "JgSJPcyqDVmMHlaE", "specials": ["STRIPE", "CHECKOUT", "WALLET"], "taxJarApiToken": "Hto6KKpdJw5w6XQK", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '7dYyJmvG7keMKfTZ' \
    --region 'Mg270siFXzJzoUhG' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'cLpnla6zwDkkBrqw' \
    --body '{"aggregate": "XSOLLA", "namespace": "bC3O6BJFLpowzn87", "region": "dFvcapJEOnzMfAuk", "sandboxTaxJarApiToken": "oZhiNv9xLc96fmXT", "specials": ["STRIPE", "WXPAY", "ALIPAY"], "taxJarApiToken": "EmSjosBjxPX6eVcB", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'JSLLu4rPzqGWE1Ov' \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DsBpsSvS04uhqIQB", "taxJarApiToken": "EBemNU2cHrcAbFPI", "taxJarEnabled": true, "taxJarProductCodesMapping": {"msG81zbhZ3LIowli": "beyRbtTeRhUkhri4", "t9uDq4TlnDzSbrFE": "0EJdhuPL1bfb29LX", "11zP3N1MC9Eb8iWh": "Bp46LRjtrJ1ttKMo"}}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'pbaMgepHbBT3MBjq' \
    --end 'eJdpfdOPjB4oxPEK' \
    --start '9OD0Ob0DQEv8ERck' \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'jvQetjclkh0eStHW' \
    --storeId 'dDolYp7g5DlHCNTh' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'OvDQ4gy4oYPvDNMf' \
    --storeId 'gzRKCY18D5wCShKu' \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'qvXRnOU38f8DzJ26' \
    --namespace $AB_NAMESPACE \
    --language 'mf5gKPOEKqWdMeuF' \
    --storeId '7D7eUOtXcd3tCSh7' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'mWnG5kiGyqT6yqoD' \
    --namespace $AB_NAMESPACE \
    --language '7XVkNdtvJEVs9s7t' \
    --storeId 'N3Nq4mzs1SUF4vkS' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'SAoOJO5kVWkxShbo' \
    --namespace $AB_NAMESPACE \
    --language 'TDwMXaotYwVvT8PA' \
    --storeId 'ir5ViRcI2G0vM8D3' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetDescendantCategories' test.out

#- 333 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 333 'PublicListCurrencies' test.out

#- 334 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'Zx6XLCmNDTPmt3YD' \
    --region '1yynDkDHgOStWpMe' \
    --storeId 'I8FJvU5z71hIVCTy' \
    --appId 'jJrBKtHQTlDSyq9o' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'ZgCcGobmAsNcnsZc' \
    --categoryPath 'jDGFQatRKZWYPVOw' \
    --features '1pfHgciO5GqjWXJs' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'PB6WzLah3JM9hjT3' \
    --limit '22' \
    --offset '79' \
    --region 'cXcHDwOkBFyI1aOX' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "name"]' \
    --storeId 'rrr5rUEWyiqQIlHd' \
    --tags 'c1934fjlC4ra8dSt' \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'HqliaurxB5RmdYcy' \
    --region 'KEgZ1LupFomHnJUw' \
    --storeId 'BQHkNpea1xwm2qLL' \
    --sku 'aLruLczE3ryz3f44' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'JsvluHSUY0PeKdgn' \
    --region 'qsoU4IB6KxlEoeSo' \
    --storeId '0v0c2EJWxv5sluDu' \
    --itemIds 'elCadw91dPQFxVY2' \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["wI38DWIbEuWNuW69", "r3Adoh7nXVNZjJ5M", "dFcwlvOdZP4D8mGf"]}' \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'APP' \
    --limit '70' \
    --offset '100' \
    --region 'BrkgBC2n3hggrokf' \
    --storeId '5xgyw7NsqV7dDJfI' \
    --keyword 'akuJGVFcBb6shEFK' \
    --language 'tdUfZrwXEV97KkVG' \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'vMijrbOOdiJsgNKc' \
    --namespace $AB_NAMESPACE \
    --language 'r1lrRAF52Fl6MQW0' \
    --region 'lfMDF8qPfmfk6kDP' \
    --storeId 'vHBNjCDdDvPXIkZP' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '1Xfj2sJuoOT4RojB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '2FRIqkA0ISWP2e90' \
    --namespace $AB_NAMESPACE \
    --language 'iEekgYE0UtquJHtS' \
    --populateBundle 'true' \
    --region 'oKvOR1Q9ZgQ9h7f9' \
    --storeId 'kiO4Yz0DUcE8KPfY' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "XiJ6oQUWuGOQXcEy", "paymentProvider": "ALIPAY", "returnUrl": "n0V6JVY4CY0uOxjm", "ui": "gSP3waLU222POI9t", "zipCode": "FIwbwlFSMvhR3ACg"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6qYVCYMN3iU9TV7v' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FqsBGrkLbGPoapZI' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XxnEXrR6Vp3hGmZ5' \
    --paymentProvider 'ADYEN' \
    --zipCode 'jcG8unhRYRHOcLvN' \
    --body '{"token": "A0rMvgHDSuYCv699"}' \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Wvs9i2pjz69cTqNB' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region '4t4BzMnXF57qGclM' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'NOmGf6OEZe6rDhvW' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'JYgQwr5cktrvK8Ac' \
    --foreinginvoice 'KkbSh8PJdes7BQsG' \
    --invoiceId 'NKcHRL5Q0O9A3YEM' \
    --payload 'UUJuGDR4TMZg53Bb' \
    --redirectResult 'iaHivil1dkcNog0Z' \
    --resultCode '6yMNnSiJbEz9Da2R' \
    --sessionId 'va06MZH22IhWooFk' \
    --status 'CZo9fqmiEE8CIpUe' \
    --token '5sLZkF45bm45q6UA' \
    --type 'Kv3Vjv9YU6aCAS37' \
    --userId 'mC9oFOpaJAgniiNG' \
    --orderNo '08oFd3LtSfNwSbqi' \
    --paymentOrderNo 'ZQZ3mPV53FXjMVsC' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'neNsbQ33jNsGKkMV' \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'zEafynSQVVrWPJrL' \
    --paymentOrderNo '4XTROyy9TOrXj2Ch' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'XxMUdv0saGhaRVJc' \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'PRcVNcpiCJsQB2rh' \
    --limit '76' \
    --offset '86' \
    --sortBy '["rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'UykMxOk6kHc8pA4W' \
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
    --appIds '["Aq7CJfHpkffeP46S", "OacPsBb8lWj94Zsi", "pkhRmsDgwb7Fmp2T"]' \
    --itemIds '["gP5cr5aZ2aIjrmiW", "JcD8jKkzWQuXDbvv", "b0JUkK7iGH8M3KZ9"]' \
    --skus '["6mYqOQ9pT7WbMtTC", "LAsmi4sfHzPr2ulW", "lri6vTJijXpFoQPv"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '3h7heKzGWaS41yTK' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'nvWcu9XLkq2mVDv8' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku '1yhdqgnfW7ciEVXV' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["xyfHrJAjLyoPhFCV", "SvCfOlibYEwBVUkI", "dcVtdF3VL6kV2UpP"]' \
    --itemIds '["I5gInoRSgSkAGiAU", "5twCL1SLTO2ucje4", "TUfBwdAYEeH5xhq3"]' \
    --skus '["vocmUxtf2uxXToOZ", "LwLPtREeI8tbgGLa", "BzyitK2D4oXfIQYn"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "T0Zcr9HzKN2s82EP", "language": "Nje_atfy", "region": "eUxMuGdGiNmdtQ4l"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Am0UProok6FMbEVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'BCQrgoZ1aaDTfW3b' \
    --body '{"epicGamesJwtToken": "YoIHWt50cExFlmrd"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'hYnUCJN0NyM5O3re' \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l1ksZ7nxkWeOzsyN' \
    --body '{"serviceLabel": 49}' \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '5uTuPODv6tm2A8a0' \
    --body '{"serviceLabels": [34, 35, 87]}' \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'NaingoRAfTW3vr7Q' \
    --body '{"appId": "x1ciWvTeXntIbAnH", "steamId": "9rS2KFONLtk7776K"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fVBZKxJyfxFfOplq' \
    --body '{"xstsToken": "2sBMkz4vDvnPuf4j"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ePGWAwmez9sHfofv' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'nexKhd39VDvFqumD' \
    --features '["YcsBluvVXhJ7wZkc", "jZC825O4xZlJfLRm", "xIVDwtiwzin81H6J"]' \
    --itemId '["mhjWplBApdyZozJ9", "0YhZsO1FGjIyMfCG", "QSmfszGtv5B5KRbj"]' \
    --limit '55' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '9CGI5tckmH0Bc3VA' \
    --appId 'hgHy5Xv9IbIouq2O' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'G9oDDNILZLA6GBKH' \
    --limit '2' \
    --offset '5' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HbLiV4Xkh9WRGiCv' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '1MGjgKFVOPh8hZKc' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'zfIj7SaBiq3qb0Bs' \
    --entitlementClazz 'APP' \
    --sku 'vmOs7ToxiPO5p4uA' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 't92t4Etnvpfwslq3' \
    --appIds '["YweGV7cc9hK7pRkN", "ss0jj9kX0k8E7VAG", "YbbO9OAnbGD8wHyR"]' \
    --itemIds '["BoGWZ7phU5MLsIPx", "vgF475GV1G79AhWD", "zpzPqIlnZYy3ijsV"]' \
    --skus '["dpsk1g4d8jKki38Z", "OPplwze36PD6poCX", "MSIG5gpjuBivI1NC"]' \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Mg3Yn5LsrWaW0ZGc' \
    --appId 'GUDW9mPc812Iuthh' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'k2s9lw1oLCkgtpYC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'kcAMAroNN6JmFzWB' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'YPmVlwVmtvKIZrPW' \
    --ids '["8wqNZ2U2MmnRT7o2", "2tzfGnz6TgBr04B6", "mbwXl3UqQiTE0iTz"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JEO7TfNygr0zuMeo' \
    --entitlementClazz 'MEDIA' \
    --sku 'D4m0RuTWHxiitKHn' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '1BCGL5mF3pm4mSG7' \
    --namespace $AB_NAMESPACE \
    --userId 'PEYKdPrI08jnSF3z' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'S4HYsN9qOcB4FyC9' \
    --namespace $AB_NAMESPACE \
    --userId 'URWzGFI0HEKK5vVL' \
    --body '{"options": ["dhm9bU1naNo6rbAb", "EJdAAw0e2I1ltk1n", "kZIfL2LBffbsDF6V"], "requestId": "4I0cP4OAa0JoMQSk", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'lF6RhZH7LLQuvPzt' \
    --namespace $AB_NAMESPACE \
    --userId 'CUXUwFlVKtyKRjHu' \
    --body '{"requestId": "XqcMMLeLBaccf6M8", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'jCsSxYyx28FdZ9kM' \
    --body '{"code": "4dYk6PnxbUQ9cv6d", "language": "dPHE-246", "region": "MseJSqHHslZlfdFC"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'eIL1KKTq1OO5A6Bo' \
    --body '{"excludeOldTransactions": false, "language": "ojyk_378", "productId": "nH5WkXIyLTl8pvvd", "receiptData": "Jr0MS7FCjMKygVFW", "region": "xyHl5ZwkY9mlW1zU", "transactionId": "pF2eHAVoSqEeoURW"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xYgHqTkENmtmpfpy' \
    --body '{"epicGamesJwtToken": "DhkS95UcWF2ra7Kk"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lPnagHkvbAlVzUa4' \
    --body '{"autoAck": false, "language": "UVcg-br", "orderId": "BaDYySWDCMuU1P6B", "packageName": "aq0sWlxGRXSLDITz", "productId": "b8i2k5whe3bMl0pH", "purchaseTime": 10, "purchaseToken": "Ms5BPojRC7ZPZm4L", "region": "8NTyTIhMMhynDMBR"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gC8xZDbnVdcFiJV2' \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'zxdvVYilk7OPWLeD' \
    --body '{"currencyCode": "TAENDAI1OKgTJXib", "price": 0.2401521124424285, "productId": "U4XtdqgJlmXD0zXH", "serviceLabel": 16}' \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'qOtBhP0wO3wdtPrl' \
    --body '{"currencyCode": "xPC2XEjgtdhcDLNo", "price": 0.37832761994667796, "productId": "Kal2BCMpOvxve4Uq", "serviceLabels": [40, 85, 93]}' \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'OHGGeKue6fdRGX6h' \
    --body '{"appId": "KK3noa7NuQKvTGDD", "currencyCode": "uYi0KcdGPuiPHLh9", "language": "MSa", "price": 0.6120963695640854, "productId": "Tgv2OKbVaSQBI5pJ", "region": "61CufWSfhtJBzNiB", "steamId": "wmdw9DDcvJHNeiJJ"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q9z3i7STYzPiMXbs' \
    --body '{"gameId": "oEPD1MhM7STfaPSy", "language": "TbCa-CN", "region": "aXqASA8oYlid5MHv"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'JvPWfZBkGqVAYouC' \
    --body '{"currencyCode": "ZAfqZPDZ0CmOXr9c", "price": 0.798578203014495, "productId": "cbhpb05TAPOmAV6D", "xstsToken": "K6NaAZ3vThobjaol"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wCLGtsp8FW3dq6pB' \
    --itemId 'B8nuwPKpOdfEylyB' \
    --limit '56' \
    --offset '80' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wH5MyD934dS6H3sI' \
    --body '{"currencyCode": "PS3x4EwAYAuyOwpg", "discountedPrice": 19, "ext": {"yBeISkZCDzRu375K": {}, "LuSnRnAA5XFNrPHp": {}, "L04dq4yaQbXq8VVA": {}}, "itemId": "yUvHFIfmIDjCutSe", "language": "VI_JpWT-ml", "price": 66, "quantity": 53, "region": "sTDD3wai7Ls3dXLY", "returnUrl": "TsSjmN5eckT95e7d", "sectionId": "pCMIhYghO9s5uBWE"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4Dy4HoTeyK7kB4sr' \
    --userId 'O5XXafYNAJelyNIV' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PUDUFrhnp0QqxYYo' \
    --userId '0QOR6luZKY3A8L4k' \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'ViLxWGElKkuzOZVt' \
    --userId '6ZtVcWm5v9L5xQuo' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ucgYffsCYH06tKeS' \
    --userId 'CEgMnJaUl9wQO3m2' \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'pVhyshocpWaKGaD1' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '8rGtLUJlqOZRy9uc' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'wgYCGENTNf101NbB' \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'vvCbg8PpEwDk8Eus' \
    --language 'HpiMqknXL6MAJ3Vy' \
    --region 'sW4ftCwx9Zio6mMO' \
    --storeId 'jqH0YRpIG2QYo8cD' \
    --viewId '6fDw9n8gDpC1f86q' \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'xIGtFjqGTcAAuU66' \
    --chargeStatus 'SETUP' \
    --itemId '1No7Vx385yVKr5uf' \
    --limit '33' \
    --offset '64' \
    --sku 'YBK6TDdnpKvDQkxs' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'f2CEBwXbtw6kqXpE' \
    --body '{"currencyCode": "9VSYNSHjMiphPChM", "itemId": "E7eBpVagFcztMhP2", "language": "tJM_BKFT", "region": "DBd0cCWOxy34Vm0G", "returnUrl": "nn2QrdvWmQLyTzL5", "source": "RY1lKzYPtOO4XYer"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NHFLli1JO2fxCbII' \
    --itemId 'yjUrlLz9WLxAc3dH' \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '07QqIq7oQZ89kVVm' \
    --userId 'm6EwgCQ2QXqgoAzr' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qdUuzVRoolIA3W04' \
    --userId 'sIVFg2fvASPulwhp' \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xey74MSzR85D3v0x' \
    --userId 'dmJZpF4hhY6LLZKd' \
    --body '{"immediate": false, "reason": "rUrtzCcQgi2U7fNM"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TozQTEL2RL7G6LSH' \
    --userId 'GWpqon2tu4VLwIIw' \
    --excludeFree 'false' \
    --limit '100' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'mw2bLCPwSv0KBxPs' \
    --language 'lyzh85U5Pk10B5O7' \
    --storeId 'UkwZv78OSabu6N3Q' \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'h0qEegqmQO4mTc7p' \
    --namespace $AB_NAMESPACE \
    --userId 'smvWeuSJj6DoOS3o' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'KM68dBcIUbipBhTI' \
    --namespace $AB_NAMESPACE \
    --userId 'xI0vrc0ZQej3AQH1' \
    --limit '70' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'W54yEjhEvQlWTEy1' \
    --baseAppId 'j6I2ICawKP83608R' \
    --categoryPath '0GIDoFIKJmZr0rll' \
    --features 'N55xXlFvzJ9KJtiQ' \
    --includeSubCategoryItem 'true' \
    --itemName 'NjvPszRwv6lier8S' \
    --itemStatus 'INACTIVE' \
    --itemType 'SEASON' \
    --limit '92' \
    --offset '21' \
    --region 'yqKMHmjmUvOMDPE9' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:desc", "displayOrder:asc", "updatedAt"]' \
    --storeId 'kQLCCIwsTBjh8ZDG' \
    --tags 'UfC4juP4Ho05Pm2d' \
    --targetNamespace 'MfRGq4TEbCt7Nf2S' \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'PM4tSOkdigl3ISfk' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7XaZ25CbneWrMbBl' \
    --body '{"itemIds": ["LN5Uue4k2ufh1Q2c", "fkCXdRtJyTIcmdUj", "9w1EzMjMmpL1t0PJ"]}' \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE