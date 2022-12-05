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
echo "1..364"

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
    --body '{"context": {"item": {"appId": "VKEsjhyo", "appType": "SOFTWARE", "baseAppId": "HxyVj3cU", "boothName": "7fAFutrg", "boundItemIds": ["EgQlUONf", "dVNVh60O", "m7AAiyxW"], "categoryPath": "kMiJkizj", "clazz": "2sak3Tsn", "createdAt": "1993-03-25T00:00:00Z", "description": "ChzDayA5", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"KG50sDWR": {}, "LkXEefPj": {}, "QDNWhxUN": {}}, "features": ["AYJSdLHP", "rYbuVBIW", "kKiGcIN8"], "fresh": false, "images": [{"as": "1RHUgVJE", "caption": "KFdOVjfW", "height": 52, "imageUrl": "h52fJrR3", "smallImageUrl": "ThTBBZzg", "width": 65}, {"as": "6p78PsAC", "caption": "1mjDg7BH", "height": 64, "imageUrl": "rwGJeVvB", "smallImageUrl": "i6oCSrXm", "width": 8}, {"as": "XCy0FT3R", "caption": "A06Lzt4V", "height": 42, "imageUrl": "Zhr2O0j9", "smallImageUrl": "XdO9mtJ7", "width": 53}], "itemId": "iiEs02Hc", "itemIds": ["yTty7TjE", "qhwKoodN", "wlgtF4OK"], "itemQty": {"pW25GSma": 17, "X8GH9BFX": 14, "pZ5DqyPS": 59}, "itemType": "SEASON", "language": "BtOzl015", "listable": true, "localExt": {"P4WKp4LP": {}, "59Jy21FP": {}, "FGdBz76Y": {}}, "longDescription": "Mcn8YACQ", "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 53, "itemId": "17Ow9qXf", "itemSku": "mqwz23Z0", "itemType": "ZPDAmTZJ"}, {"count": 62, "itemId": "fUCFGaMZ", "itemSku": "iYweyAct", "itemType": "yf7brOi6"}, {"count": 16, "itemId": "2SgrYElD", "itemSku": "TWs11pqR", "itemType": "svQhwTDF"}], "name": "n9gKNFay", "odds": 0.7345767754143088, "type": "REWARD_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 66, "itemId": "ha5pvF8l", "itemSku": "Gjv6V9zR", "itemType": "tafllOxw"}, {"count": 31, "itemId": "z1Ug86i9", "itemSku": "uapMOQ7E", "itemType": "k3eGy6mD"}, {"count": 56, "itemId": "KA4iJJFO", "itemSku": "90A43sqM", "itemType": "CXJtWwtq"}], "name": "BomcX3Sz", "odds": 0.028045181328663182, "type": "REWARD", "weight": 23}, {"lootBoxItems": [{"count": 33, "itemId": "5KiyOXEn", "itemSku": "WizJxPWP", "itemType": "j6fTviFh"}, {"count": 0, "itemId": "3XIZKZc6", "itemSku": "Tngr7466", "itemType": "7YTeFg9S"}, {"count": 33, "itemId": "9M9YGXHr", "itemSku": "z74KLVz6", "itemType": "kfnYW6JV"}], "name": "2OfUJsp4", "odds": 0.4727842914185899, "type": "REWARD_GROUP", "weight": 27}]}, "maxCount": 7, "maxCountPerUser": 49, "name": "6rRsLLAd", "namespace": "siyw4uOq", "optionBoxConfig": {"boxItems": [{"count": 82, "itemId": "2Hgc9mSp", "itemSku": "DhETc5dT", "itemType": "Gs90KXOP"}, {"count": 67, "itemId": "p9h6qaA5", "itemSku": "cSkppuLl", "itemType": "mr9qwruL"}, {"count": 45, "itemId": "JXG5ofBR", "itemSku": "2e0EVIn0", "itemType": "DtKlsWZS"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 94, "comparison": "isNot", "name": "LcAVqpfD", "predicateType": "SeasonPassPredicate", "value": "5qw0sGVV", "values": ["KqgdA0mm", "lnfBygi5", "8xRKlYtR"]}, {"anyOf": 3, "comparison": "isGreaterThanOrEqual", "name": "bpSBfgbz", "predicateType": "SeasonTierPredicate", "value": "fwkBoojo", "values": ["P35h4ska", "XiOFLfzY", "S1cwO4AE"]}, {"anyOf": 42, "comparison": "is", "name": "FFl7OO3y", "predicateType": "SeasonTierPredicate", "value": "B8r7eaD9", "values": ["u5W9MdIj", "Hkm58tGX", "xLmGv2Ns"]}]}, {"operator": "and", "predicates": [{"anyOf": 52, "comparison": "isGreaterThanOrEqual", "name": "1fjJCSCI", "predicateType": "EntitlementPredicate", "value": "EGGakuWT", "values": ["lOANB93r", "m4JYopsU", "gG6sKrIQ"]}, {"anyOf": 48, "comparison": "includes", "name": "Van8X8hI", "predicateType": "EntitlementPredicate", "value": "wUyGo9H3", "values": ["5GCE8gXk", "xMlzpmq3", "U2BEfKSK"]}, {"anyOf": 49, "comparison": "isGreaterThanOrEqual", "name": "8fmKeYV5", "predicateType": "EntitlementPredicate", "value": "Sb3amEHu", "values": ["i9eyaM7u", "OqUgSD2G", "2HujfhEd"]}]}, {"operator": "and", "predicates": [{"anyOf": 85, "comparison": "isLessThan", "name": "zUaEUXq7", "predicateType": "SeasonPassPredicate", "value": "D171llON", "values": ["zfAE526j", "odX72QIe", "yt8ZykpA"]}, {"anyOf": 26, "comparison": "isLessThan", "name": "nHGB718m", "predicateType": "EntitlementPredicate", "value": "CCB5cPKI", "values": ["mVSI4QGg", "SSpxbC6b", "4Gs75Xy9"]}, {"anyOf": 85, "comparison": "isNot", "name": "2f7byF1s", "predicateType": "SeasonTierPredicate", "value": "KQajW2RV", "values": ["TsEdEd1W", "SyBDWiyJ", "FGlsUibh"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 11, "fixedTrialCycles": 9, "graceDays": 41}, "region": "aBkzXLpQ", "regionData": [{"currencyCode": "dJSTIN9x", "currencyNamespace": "yxpkKjkh", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1993-07-09T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1993-07-07T00:00:00Z", "discountedPrice": 96, "expireAt": "1985-11-24T00:00:00Z", "price": 93, "purchaseAt": "1989-05-02T00:00:00Z", "trialPrice": 5}, {"currencyCode": "SP5FYmvf", "currencyNamespace": "HIdLSJLX", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1973-02-06T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1987-08-11T00:00:00Z", "discountedPrice": 28, "expireAt": "1982-09-26T00:00:00Z", "price": 42, "purchaseAt": "1972-07-02T00:00:00Z", "trialPrice": 100}, {"currencyCode": "pkr83uFv", "currencyNamespace": "6pDnqcrU", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1990-05-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1999-06-05T00:00:00Z", "discountedPrice": 45, "expireAt": "1977-04-12T00:00:00Z", "price": 94, "purchaseAt": "1996-04-14T00:00:00Z", "trialPrice": 77}], "seasonType": "TIER", "sku": "FY2eUZ2n", "stackable": true, "status": "INACTIVE", "tags": ["tPeBEnLi", "TYGLh2Gz", "kf41zdzD"], "targetCurrencyCode": "bAoaC3pb", "targetItemId": "Ht71n0tM", "targetNamespace": "vV7tzrKa", "thumbnailUrl": "NzDXZKaW", "title": "SaqD2fjI", "updatedAt": "1989-06-11T00:00:00Z", "useCount": 49}, "namespace": "1Pevp2kF", "order": {"currency": {"currencyCode": "H1uQJOuY", "currencySymbol": "g5ZjdmzD", "currencyType": "REAL", "decimals": 82, "namespace": "EPqBFzmZ"}, "ext": {"ChQuqITy": {}, "NOcnDMXP": {}, "FAKEmzXg": {}}, "free": true}, "source": "GIFT"}, "script": "tgczl9Uf", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'eh7bqkbe' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'hgQdwVLH' \
    --body '{"grantDays": "uwDn9cCr"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 't2dEizYj' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ZTEOpq0t' \
    --body '{"grantDays": "nHRi41gy"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "iwEXfgHH", "dryRun": true, "fulfillmentUrl": "pIwKzDvs", "itemType": "INGAMEITEM", "purchaseConditionUrl": "8iFPRHkN"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'dlKYxMQJ' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'VRb9VKFx' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '2bh7GgBW' \
    --body '{"clazz": "pYS81P6Z", "dryRun": true, "fulfillmentUrl": "SAWHPPMD", "purchaseConditionUrl": "DZKyaz1O"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'l5OwFPYT' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name '9jCArx0G' \
    --offset '4' \
    --tag 'kgpCRm4R' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KITSeQ9r", "items": [{"extraSubscriptionDays": 59, "itemId": "dS5puV6x", "itemName": "8EbDucGA", "quantity": 70}, {"extraSubscriptionDays": 7, "itemId": "b6fbyTOe", "itemName": "10EaxmOS", "quantity": 71}, {"extraSubscriptionDays": 33, "itemId": "loOt2MXW", "itemName": "IFv5CLYz", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 22, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 96, "name": "flrApoio", "redeemEnd": "1974-05-14T00:00:00Z", "redeemStart": "1977-01-03T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["AJBgqIeC", "dC9fpux4", "YMnbp8gC"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'cxQW3xvc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'M1d6EZsp' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "o14YnSaV", "items": [{"extraSubscriptionDays": 36, "itemId": "JlG1GYyt", "itemName": "7ue8j3jO", "quantity": 90}, {"extraSubscriptionDays": 89, "itemId": "o5YI3vVL", "itemName": "PVBVnpYa", "quantity": 38}, {"extraSubscriptionDays": 86, "itemId": "JWlITye8", "itemName": "pjLoHHLv", "quantity": 59}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 88, "maxRedeemCountPerCodePerUser": 64, "maxSaleCount": 49, "name": "G9v0lnaC", "redeemEnd": "1983-12-01T00:00:00Z", "redeemStart": "1991-12-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["VLekVwTn", "9mW1k69e", "g017ibVB"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ScSAGNId' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId '69EZnMmk' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'uWIeTvZS' \
    --body '{"categoryPath": "nALMwZK8", "localizationDisplayNames": {"SMOlCyef": "tEeetVBc", "cKtaH2lB": "8xBXKAcK", "3tvgaROZ": "076QQFqX"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'rkZ4jTeF' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'vmjo3BND' \
    --namespace $AB_NAMESPACE \
    --storeId 'fYYDlIM8' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'JnGQ9vzY' \
    --namespace $AB_NAMESPACE \
    --storeId 'SDZlxT8Z' \
    --body '{"localizationDisplayNames": {"lGFUg2yx": "43g7D1Az", "RDxHiADf": "Zlqc3gnz", "ehwfYDQw": "3YBjcZ7L"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'pva7Jhm2' \
    --namespace $AB_NAMESPACE \
    --storeId 'FpbEu4ym' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'VVP8eOr7' \
    --namespace $AB_NAMESPACE \
    --storeId '4JPjRGrO' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Ge4G77QB' \
    --namespace $AB_NAMESPACE \
    --storeId 'dU4p4aq0' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'dnZ82ijq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '18' \
    --code 'j2wPOj49' \
    --limit '37' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'pEfXqkZM' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 66}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'bHaKsisI' \
    --namespace $AB_NAMESPACE \
    --batchNo '31' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'vae2F0tn' \
    --namespace $AB_NAMESPACE \
    --batchNo '68' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'oyavz5Cm' \
    --namespace $AB_NAMESPACE \
    --batchNo '33' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'bwyz3Vbm' \
    --namespace $AB_NAMESPACE \
    --code 'cIkayfYy' \
    --limit '78' \
    --offset '63' \
    --userId 'Mken1qQb' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'MjTsxGMc' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'fJi8ser6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'tckIjv7o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "4CRMUCyH", "currencySymbol": "FThIe1TE", "currencyType": "VIRTUAL", "decimals": 68, "localizationDescriptions": {"iutuegus": "a2olWSP2", "jiao1lws": "xDTcRHiG", "DztIWaG3": "otMGBFKW"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '44KHZMvo' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"J9XPzsCs": "JDs4XmYL", "ibdtRCi7": "ZUxn5yVf", "RsFKiVXv": "c9Ez0DWq"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '4BnPGNL9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'IKqsAYDc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'UHHBDHSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetCurrencySummary' test.out

#- 42 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetDLCItemConfig' test.out

#- 43 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "ifD0ieoh", "rewards": [{"currency": {"currencyCode": "7ksXKH4X", "namespace": "39mCb1Uo"}, "item": {"itemId": "8T1h6rSV", "itemSku": "ZPXhnUhV", "itemType": "6KiUOqsm"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "Fbv3UA1p", "namespace": "e8btgY9D"}, "item": {"itemId": "W2TfGGmx", "itemSku": "A8zSRL3u", "itemType": "5j5yEdpS"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "0xVTec4l", "namespace": "7zC1ioyf"}, "item": {"itemId": "ldudzVz7", "itemSku": "pcfbUsr5", "itemType": "oLE8rYPr"}, "quantity": 1, "type": "ITEM"}]}, {"id": "eB0uC5me", "rewards": [{"currency": {"currencyCode": "DOfz7sDO", "namespace": "YkBhYrW8"}, "item": {"itemId": "Rg9jQbs8", "itemSku": "R1j8tz7F", "itemType": "IBQYRFez"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "DXS0ruOV", "namespace": "jnIMNp1Y"}, "item": {"itemId": "TW1wR2k4", "itemSku": "cDOnl0LA", "itemType": "Q6UC2lcq"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "HjMvuGZd", "namespace": "BTcVPPkN"}, "item": {"itemId": "j8dxydkz", "itemSku": "le9Acbaq", "itemType": "jiX5vZLM"}, "quantity": 20, "type": "CURRENCY"}]}, {"id": "lrpQieLE", "rewards": [{"currency": {"currencyCode": "sgfeMW0O", "namespace": "72SwKxz1"}, "item": {"itemId": "dhVsAjbc", "itemSku": "na5EqBui", "itemType": "b2PFuFCs"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "T2ODhzxv", "namespace": "GyJAadw8"}, "item": {"itemId": "C5dmRxFB", "itemSku": "q49YoJvf", "itemType": "OIh88KhW"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "tTlMPwz5", "namespace": "PtxlhBw7"}, "item": {"itemId": "5RLUkUL3", "itemSku": "WoBMNznu", "itemType": "Y38pHBu5"}, "quantity": 43, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateDLCItemConfig' test.out

#- 44 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteDLCItemConfig' test.out

#- 45 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetPlatformDLCConfig' test.out

#- 46 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"lgUZPCjt": "fcBOoYlt", "gYWsZusZ": "tpyrkDkD", "ifrxkKzp": "VuCNTKs2"}}, {"platform": "XBOX", "platformDlcIdMap": {"WR6D1Uh0": "d77LwKSe", "vFfJgfGW": "PYUtQFMM", "NMC9JlzY": "AoKUcTWz"}}, {"platform": "PSN", "platformDlcIdMap": {"TE8cK7nQ": "dvksiDzE", "wIveaQbA": "R52he0Hf", "NzaHVlZ9": "yCWDG7X5"}}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdatePlatformDLCConfig' test.out

#- 47 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeletePlatformDLCConfig' test.out

#- 48 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'KX4dzyMh' \
    --itemId '["RX7H65P9", "PEJ2hAHZ", "vXyAqoUQ"]' \
    --limit '86' \
    --offset '20' \
    --userId 'GBks0yn9' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'cImOaQIv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '47' \
    --status 'SUCCESS' \
    --userId 'aFaIRioI' \
    > test.out 2>&1
eval_tap $? 50 'QueryFulfillmentHistories' test.out

#- 51 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetAppleIAPConfig' test.out

#- 52 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "8EYAReqc", "password": "WEWE2HyG"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateAppleIAPConfig' test.out

#- 53 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'DeleteAppleIAPConfig' test.out

#- 54 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetEpicGamesIAPConfig' test.out

#- 55 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "5kIcKABk"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateEpicGamesIAPConfig' test.out

#- 56 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteEpicGamesIAPConfig' test.out

#- 57 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetGoogleIAPConfig' test.out

#- 58 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "Lnl0laJC", "serviceAccountId": "YQQYBtwb"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGoogleIAPConfig' test.out

#- 59 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteGoogleIAPConfig' test.out

#- 60 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGoogleP12File' test.out

#- 61 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetIAPItemConfig' test.out

#- 62 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "DWxrMD1i", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"WyPTst3y": "KpSs2K3D", "A1MS8DBi": "1TZ9KaXK", "OkJLT3oB": "HSjufzTK"}}, {"itemIdentity": "4rGdZ159", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"hNbqZVj3": "5hDulaCV", "tPu8yNc3": "ohlhmFEF", "BqSkpqjB": "alGQaUeV"}}, {"itemIdentity": "W9LGs6HT", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"LniLGs2u": "SPwrDg2Y", "MjcLSG6V": "0u6CJdNy", "rAw8ZPX2": "jhksG0Lr"}}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateIAPItemConfig' test.out

#- 63 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteIAPItemConfig' test.out

#- 64 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetPlayStationIAPConfig' test.out

#- 65 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "VDw2seiL"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdatePlaystationIAPConfig' test.out

#- 66 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeletePlaystationIAPConfig' test.out

#- 67 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStadiaIAPConfig' test.out

#- 68 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteStadiaIAPConfig' test.out

#- 69 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 69 'UpdateStadiaJsonConfigFile' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "QmL8TuDn", "publisherAuthenticationKey": "l4cgl4Fi"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateSteamIAPConfig' test.out

#- 72 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteSteamIAPConfig' test.out

#- 73 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetTwitchIAPConfig' test.out

#- 74 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "txMExNbb", "clientSecret": "2lbGDOgC", "organizationId": "91sC0pUr"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateTwitchIAPConfig' test.out

#- 75 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteTwitchIAPConfig' test.out

#- 76 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetXblIAPConfig' test.out

#- 77 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "xfrOuxhs"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateXblIAPConfig' test.out

#- 78 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteXblAPConfig' test.out

#- 79 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'DN4bH3GF' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'lW6zuZj0' \
    --itemId 'wEYrWkMZ' \
    --itemType 'CODE' \
    --endTime 'd4KBFAZ4' \
    --startTime 'uUsuzPh5' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '2Cpd9DfA' \
    --itemId 'rvqis941' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'PWPKpNLD' \
    --startTime 'PPsdGD8x' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'vW8Y7UWe' \
    --body '{"categoryPath": "cifh1xPn", "targetItemId": "zXouRuQK", "targetNamespace": "hTbwrreC"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qRlJrlB8' \
    --body '{"appId": "dYkx4zNR", "appType": "SOFTWARE", "baseAppId": "UzlXJGaH", "boothName": "J8LOKFn7", "categoryPath": "HIn0SdXp", "clazz": "vDFIZv2k", "displayOrder": 62, "entitlementType": "CONSUMABLE", "ext": {"8m6KGLP3": {}, "HmanJCgg": {}, "tT84Npm8": {}}, "features": ["p5dwLUF9", "8oD65G24", "gUAcXnzp"], "images": [{"as": "L0NzeW1m", "caption": "YXyKqbJy", "height": 52, "imageUrl": "60Euxq96", "smallImageUrl": "GlR1qUxj", "width": 62}, {"as": "jpCzeZM4", "caption": "rTEP1dR0", "height": 55, "imageUrl": "KuTxKGmg", "smallImageUrl": "VbD12OxX", "width": 38}, {"as": "OHPqMk5P", "caption": "9uazZ7Dj", "height": 7, "imageUrl": "KB6iYPv4", "smallImageUrl": "RWMBEsVR", "width": 44}], "itemIds": ["hmGpcwDq", "hEs10jZu", "m2zXT9dO"], "itemQty": {"OZRb6ZX0": 7, "QUqcmtvK": 11, "HRL4cqzc": 3}, "itemType": "CODE", "listable": true, "localizations": {"UHQnEF7m": {"description": "IF4YTZTf", "localExt": {"BdadAPgT": {}, "Tbo5Ys6t": {}, "J8NPPjZf": {}}, "longDescription": "TOSWeNCS", "title": "AU6qrvZP"}, "jtRuejNp": {"description": "xKvIKYiK", "localExt": {"CtHxyjh5": {}, "9A1S3CZB": {}, "mlwAKHAf": {}}, "longDescription": "50WNdy66", "title": "OKdgU4H2"}, "zYBGcZVU": {"description": "GLUcJeGo", "localExt": {"7YbdWq4y": {}, "DiS93V0y": {}, "KolrP1RC": {}}, "longDescription": "P7zTW8nJ", "title": "mpLssu70"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 60, "itemId": "zwrPR3te", "itemSku": "BQ8dilxK", "itemType": "wgk62nVI"}, {"count": 95, "itemId": "a0zFQQt1", "itemSku": "Y6MjS9ve", "itemType": "p72zWgCw"}, {"count": 43, "itemId": "SHQ10sgC", "itemSku": "j2RSGfzZ", "itemType": "qEuohlO1"}], "name": "a5q7qOWr", "odds": 0.8182384387374796, "type": "REWARD_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 94, "itemId": "hc8rk2TK", "itemSku": "94Mnm4DZ", "itemType": "XRPKRutP"}, {"count": 51, "itemId": "8xS4wfSz", "itemSku": "ADmlhYTW", "itemType": "oRaI5TfE"}, {"count": 53, "itemId": "X9ejPc7H", "itemSku": "25ru6EFQ", "itemType": "UzxiJI1P"}], "name": "IpHBNf53", "odds": 0.4829017502584697, "type": "PROBABILITY_GROUP", "weight": 63}, {"lootBoxItems": [{"count": 78, "itemId": "3SoH14hd", "itemSku": "1hV0Zu7I", "itemType": "XBXpaePU"}, {"count": 35, "itemId": "bi2aH937", "itemSku": "KANWJx81", "itemType": "6XgePhya"}, {"count": 42, "itemId": "iaGQw5iF", "itemSku": "SRpJOuVJ", "itemType": "lqgFeAEm"}], "name": "bolmxJMp", "odds": 0.5093463560606378, "type": "REWARD_GROUP", "weight": 54}]}, "maxCount": 82, "maxCountPerUser": 57, "name": "qhPiXdgB", "optionBoxConfig": {"boxItems": [{"count": 64, "itemId": "5FYOtclf", "itemSku": "PXeT98pP", "itemType": "PNt9ozmY"}, {"count": 95, "itemId": "AhU7EC31", "itemSku": "YtCzbsoa", "itemType": "YfAmVEhw"}, {"count": 7, "itemId": "w8gmYa9l", "itemSku": "xPsBQp9h", "itemType": "zEsWIopC"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 37, "fixedTrialCycles": 58, "graceDays": 48}, "regionData": {"hWYkzens": [{"currencyCode": "dx4VDgd8", "currencyNamespace": "ItK4riwz", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1991-10-16T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1974-10-27T00:00:00Z", "discountedPrice": 94, "expireAt": "1974-02-28T00:00:00Z", "price": 44, "purchaseAt": "1998-03-26T00:00:00Z", "trialPrice": 33}, {"currencyCode": "pFk2u8SX", "currencyNamespace": "JbCc9JT3", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1998-10-27T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1982-07-01T00:00:00Z", "discountedPrice": 61, "expireAt": "1989-06-04T00:00:00Z", "price": 52, "purchaseAt": "1975-04-04T00:00:00Z", "trialPrice": 24}, {"currencyCode": "2eGF4mvg", "currencyNamespace": "AJVXR0tl", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1995-03-03T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1991-10-07T00:00:00Z", "discountedPrice": 84, "expireAt": "1988-03-12T00:00:00Z", "price": 40, "purchaseAt": "1989-04-21T00:00:00Z", "trialPrice": 65}], "xWSCqpBC": [{"currencyCode": "BBeMrYUS", "currencyNamespace": "oaupJYUN", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1994-02-21T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1984-08-30T00:00:00Z", "discountedPrice": 37, "expireAt": "1991-07-28T00:00:00Z", "price": 100, "purchaseAt": "1986-08-15T00:00:00Z", "trialPrice": 87}, {"currencyCode": "gRPrdtl8", "currencyNamespace": "C2HjsSzu", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1974-06-26T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1991-05-03T00:00:00Z", "discountedPrice": 61, "expireAt": "1994-11-23T00:00:00Z", "price": 100, "purchaseAt": "1979-06-02T00:00:00Z", "trialPrice": 75}, {"currencyCode": "08gN3gaA", "currencyNamespace": "Tdcecf5R", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1975-10-05T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1996-09-25T00:00:00Z", "discountedPrice": 92, "expireAt": "1986-11-29T00:00:00Z", "price": 50, "purchaseAt": "1999-02-15T00:00:00Z", "trialPrice": 8}], "wS9rZVZy": [{"currencyCode": "NVITmD5o", "currencyNamespace": "7ZcPKogN", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1980-06-23T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1999-08-16T00:00:00Z", "discountedPrice": 48, "expireAt": "1972-03-05T00:00:00Z", "price": 29, "purchaseAt": "1977-02-20T00:00:00Z", "trialPrice": 14}, {"currencyCode": "4j5uSze2", "currencyNamespace": "ebTShEwS", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1996-07-29T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1974-01-06T00:00:00Z", "discountedPrice": 0, "expireAt": "1989-01-13T00:00:00Z", "price": 46, "purchaseAt": "1999-05-12T00:00:00Z", "trialPrice": 56}, {"currencyCode": "RBI7g3y4", "currencyNamespace": "qgJAjCBm", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1988-09-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1975-04-14T00:00:00Z", "discountedPrice": 14, "expireAt": "1975-02-06T00:00:00Z", "price": 87, "purchaseAt": "1986-06-22T00:00:00Z", "trialPrice": 14}]}, "seasonType": "TIER", "sku": "2YUFeaN9", "stackable": true, "status": "INACTIVE", "tags": ["RbE5lJlx", "t7rkTZkE", "bhZLCEEX"], "targetCurrencyCode": "DNOSl1th", "targetNamespace": "OwEimhIi", "thumbnailUrl": "1JG7Of1H", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '4BPAomaq' \
    --appId 'SRyNq3Wb' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 't0Nz7lyT' \
    --baseAppId 'nof3cQmH' \
    --categoryPath 'pO9fXqNn' \
    --features 'r7jjyW9p' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --limit '98' \
    --offset '53' \
    --region '91sy9BJD' \
    --sortBy '["name:asc", "updatedAt"]' \
    --storeId 'BTbbM9tL' \
    --tags 'Hv7vfRFx' \
    --targetNamespace 'n9nvCRVU' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["8eUNAcOw", "RaW1Re22", "FL1KdoEt"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DvzzkBtA' \
    --sku 'xMXBtGhT' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'jYkE9OeF' \
    --populateBundle 'true' \
    --region 'WkZxvuvd' \
    --storeId 'gpj4qnnf' \
    --sku 'TJBF1ndv' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'SOwtic53' \
    --sku 'wcqEhM7L' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["gMDA9WW6", "Y5GDqdqX", "mJHrOgbC"]' \
    --storeId 'ng64ry3G' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dJONxRFM' \
    --region 'yLi50KKv' \
    --storeId 'xD1Zc70A' \
    --itemIds 'LHGFI3r5' \
    > test.out 2>&1
eval_tap $? 91 'BulkGetLocaleItems' test.out

#- 92 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetAvailablePredicateTypes' test.out

#- 93 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'nZZ2SOY7' \
    --body '{"itemIds": ["uZQq2OeC", "1ZSTXNYX", "UTHP4Xji"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '90' \
    --offset '36' \
    --sortBy 'BEtsjjsk' \
    --storeId '7g5UMUSD' \
    --keyword 'n1nD8sxb' \
    --language 'qm1llYoz' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '78' \
    --offset '49' \
    --sortBy '["displayOrder:desc", "displayOrder", "name"]' \
    --storeId '7eq0e8CT' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'm5KdLyHU' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'MFz8xocu' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'bUuXZV4a' \
    --namespace $AB_NAMESPACE \
    --storeId 'OP9VKiSa' \
    --body '{"appId": "FCivHsQj", "appType": "SOFTWARE", "baseAppId": "To898dc7", "boothName": "u0IrP13T", "categoryPath": "FNJ0sVsA", "clazz": "YYwVzrfo", "displayOrder": 8, "entitlementType": "CONSUMABLE", "ext": {"F8RccdZP": {}, "vlsJvfUK": {}, "DXsjFqoP": {}}, "features": ["1Y6UzUyp", "R2pQ7XQ5", "IJMaU6Ic"], "images": [{"as": "aozKIpGL", "caption": "GTL4V7Xb", "height": 80, "imageUrl": "23z12hTN", "smallImageUrl": "1kRtqKXg", "width": 26}, {"as": "xfdHZfTG", "caption": "l7ZAwe0S", "height": 13, "imageUrl": "zeenmPeQ", "smallImageUrl": "DDZzEtWu", "width": 22}, {"as": "Uq3hfD74", "caption": "wt3rfo26", "height": 58, "imageUrl": "FmaBH1qx", "smallImageUrl": "YlgAN8uD", "width": 57}], "itemIds": ["XIAY0XFl", "66sCSb0Q", "YhRmNqof"], "itemQty": {"iwT6mdF6": 61, "txcviJC8": 23, "Ar3ANUbQ": 69}, "itemType": "EXTENSION", "listable": false, "localizations": {"BhBa6yxV": {"description": "FHDEt2Uf", "localExt": {"67RkPHOi": {}, "sRbIXbgI": {}, "aJwHmFvP": {}}, "longDescription": "qBtC0Vvx", "title": "tFsrWI1g"}, "Rq1fhYFa": {"description": "FkjY54bD", "localExt": {"cvDBCWaT": {}, "KZxX6b4t": {}, "xiiKqxL8": {}}, "longDescription": "vBcFWXVB", "title": "umJ0LVWN"}, "HwjQAA65": {"description": "tnhSxd1o", "localExt": {"LbI9pd5E": {}, "Gno2dC0g": {}, "eWVAH2BU": {}}, "longDescription": "EyYoBDcc", "title": "ssfNfnFd"}}, "lootBoxConfig": {"rewardCount": 62, "rewards": [{"lootBoxItems": [{"count": 37, "itemId": "Oni907De", "itemSku": "EJ0Bzs2V", "itemType": "y8ayn5co"}, {"count": 77, "itemId": "mxa0EV1a", "itemSku": "PtgRsmLN", "itemType": "eR5VGkjj"}, {"count": 25, "itemId": "jsqjELwe", "itemSku": "xYJE9lJd", "itemType": "tx7ha2xH"}], "name": "AJ4EL5oV", "odds": 0.07458066912776995, "type": "REWARD", "weight": 81}, {"lootBoxItems": [{"count": 21, "itemId": "nkhqUwWd", "itemSku": "9wgrj91q", "itemType": "S0D2fTZu"}, {"count": 99, "itemId": "al4HLNya", "itemSku": "gOEsuzrK", "itemType": "9NRAshP7"}, {"count": 86, "itemId": "lVIUtWC5", "itemSku": "AJvjMJqr", "itemType": "aO5ANVtI"}], "name": "XxmwG5Cu", "odds": 0.5095701397944794, "type": "PROBABILITY_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 60, "itemId": "UG3kLzz8", "itemSku": "JWixf4KN", "itemType": "FtHZEBFU"}, {"count": 1, "itemId": "1RXJW8ej", "itemSku": "eatInzFi", "itemType": "ZXsdU7Gp"}, {"count": 0, "itemId": "MljT6GeS", "itemSku": "YUtjPexp", "itemType": "9bD48gLp"}], "name": "UWTgZ0SR", "odds": 0.5940522799402926, "type": "PROBABILITY_GROUP", "weight": 98}]}, "maxCount": 45, "maxCountPerUser": 47, "name": "e513d1eB", "optionBoxConfig": {"boxItems": [{"count": 64, "itemId": "TEXqlgCe", "itemSku": "zl9PASm7", "itemType": "RjcIBXaD"}, {"count": 75, "itemId": "21DwuPt5", "itemSku": "4rlVYbiA", "itemType": "olw6i5oc"}, {"count": 30, "itemId": "Brnv6nQz", "itemSku": "JX2otJDL", "itemType": "xWfLo88h"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 30, "fixedTrialCycles": 11, "graceDays": 61}, "regionData": {"YPDNuNMi": [{"currencyCode": "66TAOzve", "currencyNamespace": "eIPOe96C", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1974-11-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1980-05-29T00:00:00Z", "discountedPrice": 41, "expireAt": "1981-01-31T00:00:00Z", "price": 84, "purchaseAt": "1990-08-14T00:00:00Z", "trialPrice": 54}, {"currencyCode": "2ofZBkGp", "currencyNamespace": "xBHb3Tkf", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1989-09-04T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1979-04-06T00:00:00Z", "discountedPrice": 46, "expireAt": "1999-11-06T00:00:00Z", "price": 45, "purchaseAt": "1975-09-24T00:00:00Z", "trialPrice": 2}, {"currencyCode": "GFMfuwNr", "currencyNamespace": "KJ2zetpI", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1976-02-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1992-04-01T00:00:00Z", "discountedPrice": 48, "expireAt": "1972-08-02T00:00:00Z", "price": 92, "purchaseAt": "1983-12-25T00:00:00Z", "trialPrice": 29}], "SnsOizXc": [{"currencyCode": "h2OUstuv", "currencyNamespace": "nGsLRi58", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1977-03-31T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1988-02-23T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-03-16T00:00:00Z", "price": 100, "purchaseAt": "1978-12-21T00:00:00Z", "trialPrice": 61}, {"currencyCode": "jsDlBvcF", "currencyNamespace": "CGCVuUDX", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1994-05-16T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1992-04-29T00:00:00Z", "discountedPrice": 59, "expireAt": "1994-07-23T00:00:00Z", "price": 24, "purchaseAt": "1984-09-04T00:00:00Z", "trialPrice": 87}, {"currencyCode": "hBPRe7O5", "currencyNamespace": "zQV7e3Ge", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1993-04-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1979-04-12T00:00:00Z", "discountedPrice": 83, "expireAt": "1978-10-22T00:00:00Z", "price": 14, "purchaseAt": "1978-09-02T00:00:00Z", "trialPrice": 17}], "KYPv7xH8": [{"currencyCode": "saXf0hYT", "currencyNamespace": "Hg8Utvat", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1996-10-23T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1993-06-13T00:00:00Z", "discountedPrice": 61, "expireAt": "1981-08-19T00:00:00Z", "price": 46, "purchaseAt": "1972-06-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "OufzSWq1", "currencyNamespace": "4iVVTKCj", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1976-01-01T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1994-12-26T00:00:00Z", "discountedPrice": 34, "expireAt": "1991-06-26T00:00:00Z", "price": 9, "purchaseAt": "1983-09-30T00:00:00Z", "trialPrice": 87}, {"currencyCode": "3PLMlWPG", "currencyNamespace": "dAh3hrn2", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1992-07-14T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-02-28T00:00:00Z", "discountedPrice": 57, "expireAt": "1999-07-24T00:00:00Z", "price": 83, "purchaseAt": "1985-03-16T00:00:00Z", "trialPrice": 36}]}, "seasonType": "TIER", "sku": "RTCurFxi", "stackable": true, "status": "INACTIVE", "tags": ["D9h1Tt3Y", "bH4VGo1l", "gSiFcjDh"], "targetCurrencyCode": "q2XEyCQs", "targetNamespace": "UxV39DcU", "thumbnailUrl": "zcDhPkXb", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'XrBqKhC8' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'sftVOHvD' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '6OKTE0I1' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 73, "orderNo": "59MNbbRP"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'eEWNvnGK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'K7p4sPa5' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '2fm3pmCg' \
    --namespace $AB_NAMESPACE \
    --storeId 'OLYUrhsU' \
    --body '{"carousel": [{"alt": "UszKrYgh", "previewUrl": "JL5ljiBV", "thumbnailUrl": "yxsw4PhU", "type": "image", "url": "mNMVgDng", "videoSource": "generic"}, {"alt": "IbVXaLpR", "previewUrl": "JlvhLxtv", "thumbnailUrl": "gJMT3YCQ", "type": "image", "url": "4YREyyDr", "videoSource": "youtube"}, {"alt": "hNzD3I2f", "previewUrl": "3dMOBMu5", "thumbnailUrl": "EGYGeg0p", "type": "image", "url": "uHgCtNF0", "videoSource": "generic"}], "developer": "JCNbfAK5", "forumUrl": "AZ5qC3mS", "genres": ["FreeToPlay", "Simulation", "Sports"], "localizations": {"cWylb0VL": {"announcement": "qiRBx1Vu", "slogan": "VdxaHrJH"}, "lNDtJHYL": {"announcement": "Xa4OXoT0", "slogan": "jpdZhykp"}, "nm8p1hrc": {"announcement": "j85Fi85g", "slogan": "f1YzDZvw"}}, "platformRequirements": {"OEDU0I1Q": [{"additionals": "aRvvwzpe", "directXVersion": "i502ISbC", "diskSpace": "kGHn7miv", "graphics": "e96t8NYM", "label": "asb828ZF", "osVersion": "QC0097Ry", "processor": "TbgGeti7", "ram": "alVwoDpn", "soundCard": "PbZSYLIT"}, {"additionals": "kG3MGNjs", "directXVersion": "pc6coJL6", "diskSpace": "X45xkINA", "graphics": "hL9GCB6D", "label": "k7T5bFVS", "osVersion": "RTrUMGST", "processor": "LJDoA9Nd", "ram": "TzlMIc9S", "soundCard": "dL12YEuT"}, {"additionals": "40hYE6YS", "directXVersion": "8WS5MyH6", "diskSpace": "Gqyuex9y", "graphics": "L96JJr2i", "label": "upxbDHZH", "osVersion": "R4JDVgJt", "processor": "7iZ19JvZ", "ram": "j1wUNEPD", "soundCard": "nUvM44OM"}], "jaxLIQBn": [{"additionals": "64StIbOd", "directXVersion": "4kejypZN", "diskSpace": "i49vnKc7", "graphics": "xUuakoS3", "label": "n36yiqEH", "osVersion": "Wb7dARg7", "processor": "d0ILDSN2", "ram": "fNlQNk48", "soundCard": "Jy0WvDMq"}, {"additionals": "nf93wU9n", "directXVersion": "i9wkuIJb", "diskSpace": "cpsmHCb3", "graphics": "jowtSg3b", "label": "Djajydfv", "osVersion": "CcGSDxbW", "processor": "PFLZVMMw", "ram": "ZG0fHj1v", "soundCard": "th4qJ9CW"}, {"additionals": "k4UOhHKS", "directXVersion": "IqeqajYt", "diskSpace": "VfsEFNh7", "graphics": "AErHB8xl", "label": "n9kHVgOY", "osVersion": "Ik5FMN73", "processor": "JumdjKpn", "ram": "vTfQmmEv", "soundCard": "UccNfGal"}], "yQPaGb3r": [{"additionals": "lGnNcmAX", "directXVersion": "7UuMJkr9", "diskSpace": "6HZdWoIM", "graphics": "yO0zzweL", "label": "xcANeLhJ", "osVersion": "OkB0cGbm", "processor": "x8kpnQKS", "ram": "tcJnztcL", "soundCard": "Cy0z1Wc0"}, {"additionals": "Pgo2l320", "directXVersion": "n9Hn1QlD", "diskSpace": "RGrUZr60", "graphics": "fUIgqxps", "label": "7FiLb1MG", "osVersion": "rpAm6Uz3", "processor": "ZTTzhMaU", "ram": "wSoSCeRY", "soundCard": "26EBo3IS"}, {"additionals": "dxjwi78V", "directXVersion": "G7gcLs7r", "diskSpace": "Vx3rVfZo", "graphics": "v5eW0v4o", "label": "XMo06LN6", "osVersion": "taFeVE0v", "processor": "kOjgTqFH", "ram": "z2F257aA", "soundCard": "7zc3CChC"}]}, "platforms": ["Linux", "MacOS", "Windows"], "players": ["MMO", "MMO", "CrossPlatformMulti"], "primaryGenre": "Action", "publisher": "UcvAGl5M", "releaseDate": "1971-09-01T00:00:00Z", "websiteUrl": "pC3aRESu"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'XNqYncwn' \
    --namespace $AB_NAMESPACE \
    --storeId 'L9XOfE5I' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'bgWwspCY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'llIvmTNC' \
    --namespace $AB_NAMESPACE \
    --storeId 'MkhLG1UX' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'jkd200ru' \
    --itemId 'UkkrYxoF' \
    --namespace $AB_NAMESPACE \
    --storeId 'T9KW5oZp' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '7XOXDbhd' \
    --itemId '53gIEg6n' \
    --namespace $AB_NAMESPACE \
    --storeId 'T1bHRm5P' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Ev7v632v' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'FMWA9Fzp' \
    --populateBundle 'true' \
    --region 'lp1AWgP1' \
    --storeId '7EbxqSJo' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'T47TvlPC' \
    --namespace $AB_NAMESPACE \
    --storeId 'bsEDrI6A' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isGreaterThanOrEqual", "name": "y7BBZo1Y", "predicateType": "EntitlementPredicate", "value": "tUvkNMu9", "values": ["j0FB6KsM", "qeT1dtBL", "ME0u9Rq0"]}, {"anyOf": 8, "comparison": "isGreaterThan", "name": "UxOPKRcw", "predicateType": "SeasonPassPredicate", "value": "b4FF0umY", "values": ["du6Gyl6L", "00tEs5u9", "hdWRETwP"]}, {"anyOf": 60, "comparison": "isNot", "name": "xSRrDFQs", "predicateType": "EntitlementPredicate", "value": "KVkhWVuF", "values": ["dzX685oZ", "GrIQ2D1C", "8TibvxrX"]}]}, {"operator": "or", "predicates": [{"anyOf": 98, "comparison": "excludes", "name": "IWNn3HcS", "predicateType": "SeasonTierPredicate", "value": "FLN6dTFX", "values": ["hJhjAOJZ", "A0kWPTnx", "V6AfH6Vc"]}, {"anyOf": 97, "comparison": "isLessThan", "name": "YT2Ws7Xf", "predicateType": "SeasonPassPredicate", "value": "oh8DcRka", "values": ["ZdViOBcQ", "AB75YcZf", "3548YXBi"]}, {"anyOf": 78, "comparison": "isLessThanOrEqual", "name": "55s25Crb", "predicateType": "SeasonPassPredicate", "value": "nQNqUbkC", "values": ["LCqkgvG8", "p0Il1qvU", "ZaOPBaiF"]}]}, {"operator": "or", "predicates": [{"anyOf": 88, "comparison": "isLessThan", "name": "pcyYT4mX", "predicateType": "SeasonPassPredicate", "value": "9iCmScB2", "values": ["9GPRPh9t", "iFQiZcA4", "liNZUc5M"]}, {"anyOf": 50, "comparison": "isGreaterThan", "name": "lWygsqJf", "predicateType": "EntitlementPredicate", "value": "GjjlDJBY", "values": ["LBPsmS2n", "IkUTDC3Q", "IcGO5PML"]}, {"anyOf": 20, "comparison": "isGreaterThan", "name": "rhc9kKIr", "predicateType": "EntitlementPredicate", "value": "7GkK1U1v", "values": ["Cxi7Ixmz", "yE4DGgvl", "8YszA68R"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ZFfF35Li' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "emH4gKut"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'lyBhhk2G' \
    --offset '26' \
    --tag 'IAgGs3OI' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ahqKEisF", "name": "VZ5Wkovd", "status": "ACTIVE", "tags": ["dWdHLV0H", "0n2euwV9", "2Lww3Jr9"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'wIF7cSFB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'WWbQ0yfX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "U6hIVP7y", "name": "lkCnZEM6", "status": "INACTIVE", "tags": ["3ccUvNMw", "5KdzJNQs", "D2ul8Wu4"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'tQSucgbB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '1BLZO1oS' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '26' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'KUbjdGHs' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'clMmAGqY' \
    --limit '7' \
    --offset '24' \
    --orderNos '["vlhbm9PX", "p3ogtNKT", "YoYqmfGp"]' \
    --sortBy 'AiEoAqwV' \
    --startTime 'bGVkW0r3' \
    --status 'FULFILLED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 118 'QueryOrders' test.out

#- 119 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetOrderStatistics' test.out

#- 120 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'z4B2eXTj' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ideUMgY5' \
    --body '{"description": "kqKcOLgv"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundOrder' test.out

#- 122 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetPaymentCallbackConfig' test.out

#- 123 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "3CIJTiNR", "privateKey": "VMCPXjrW"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'RRVatA66' \
    --externalId 'as4Kt6Wb' \
    --limit '21' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'oiJoTIPB' \
    --offset '50' \
    --paymentOrderNo 't9JblcbM' \
    --startDate 'dsaNRrik' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'i5Jfig9c' \
    --limit '84' \
    --offset '13' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BWiYagg9", "currencyNamespace": "RaYNYbi8", "customParameters": {"fScQky9l": {}, "P4acIk0Y": {}, "3GOE0the": {}}, "description": "3L2tNCg1", "extOrderNo": "TNno6TtW", "extUserId": "wOuOXjSO", "itemType": "OPTIONBOX", "language": "ht_EQQP", "metadata": {"0NPTDIJw": "Dc1HYbBb", "hORn10Q1": "TTzG3OeQ", "Ig9jIsdZ": "qtIMGwOz"}, "notifyUrl": "q0ZD2ZsF", "omitNotification": false, "platform": "vQBRlnDm", "price": 33, "recurringPaymentOrderNo": "zHPcuAU0", "region": "TpaSH6fP", "returnUrl": "QRH9Dj9f", "sandbox": true, "sku": "Ya0Xg9CL", "subscriptionId": "mufXcGBu", "targetNamespace": "IIoHERK3", "targetUserId": "tltbJF6Z", "title": "BVXpKNjH"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '4H9fQUoM' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Q6OAbjbp' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 't4SZMoI5' \
    --body '{"extTxId": "p38wx3rF", "paymentMethod": "FfiBmp5a", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yQfkSe3S' \
    --body '{"description": "1nGBYLZH"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KqjqryHJ' \
    --body '{"amount": 76, "currencyCode": "weOKkk1w", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 21, "vat": 84}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GIok93KJ' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Xbox", "Stadia", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "E4t4ubCY", "eventTopic": "BOWkWY0J", "maxAwarded": 91, "maxAwardedPerUser": 35, "namespaceExpression": "dxu1ULrV", "rewardCode": "fytMSY09", "rewardConditions": [{"condition": "HJj1Z2ti", "conditionName": "HvvexRe5", "eventName": "CGS3Myhp", "rewardItems": [{"duration": 22, "itemId": "YLrA57Bi", "quantity": 77}, {"duration": 26, "itemId": "afyeaxtP", "quantity": 43}, {"duration": 1, "itemId": "C9otD0HY", "quantity": 64}]}, {"condition": "M9g6dmZk", "conditionName": "LR4KwKWP", "eventName": "Z0KVmtBi", "rewardItems": [{"duration": 86, "itemId": "Pm4goepU", "quantity": 11}, {"duration": 9, "itemId": "HbaeYSEA", "quantity": 88}, {"duration": 9, "itemId": "JxopIRfj", "quantity": 69}]}, {"condition": "G41FKkKY", "conditionName": "jYn4VQog", "eventName": "xAzGjhI3", "rewardItems": [{"duration": 69, "itemId": "mT1gthFx", "quantity": 63}, {"duration": 63, "itemId": "VeMOP28b", "quantity": 25}, {"duration": 4, "itemId": "B1l2U15a", "quantity": 19}]}], "userIdExpression": "iUJJ6CY1"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'VzKtgDOI' \
    --limit '22' \
    --offset '61' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 137 'QueryRewards' test.out

#- 138 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'ExportRewards' test.out

#- 139 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'vGex4pn7' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'abHxo1Cv' \
    --body '{"description": "0Jwtu229", "eventTopic": "MmsgTk9A", "maxAwarded": 29, "maxAwardedPerUser": 26, "namespaceExpression": "hAQfWxib", "rewardCode": "mYXhuOhR", "rewardConditions": [{"condition": "PL5oZOWL", "conditionName": "vjvWrmrl", "eventName": "TWD3BXpp", "rewardItems": [{"duration": 55, "itemId": "3qBe4u5D", "quantity": 13}, {"duration": 61, "itemId": "Il37oMTe", "quantity": 12}, {"duration": 100, "itemId": "QUDHIxML", "quantity": 54}]}, {"condition": "iNnm8FLD", "conditionName": "sIMaPgxX", "eventName": "30b6O1jU", "rewardItems": [{"duration": 22, "itemId": "TxmZuaVE", "quantity": 56}, {"duration": 44, "itemId": "PSr6H37L", "quantity": 46}, {"duration": 9, "itemId": "P0F9jPU0", "quantity": 60}]}, {"condition": "MrzX1tpU", "conditionName": "DnlYoXYs", "eventName": "w0FNxTKP", "rewardItems": [{"duration": 4, "itemId": "pWPt5jXr", "quantity": 93}, {"duration": 26, "itemId": "tmwFE85Z", "quantity": 23}, {"duration": 64, "itemId": "A89gcIRn", "quantity": 22}]}], "userIdExpression": "JIDm3HB7"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'qq2Kd1Bt' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'unibHUxT' \
    --body '{"payload": {"0ikpMgmC": {}, "mCFolDr3": {}, "8ruzi6U3": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '5dIgRAt8' \
    --body '{"conditionName": "ElmRMYpi", "userId": "ebcjmeRI"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteRewardConditionRecord' test.out

#- 145 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'ListStores' test.out

#- 146 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "XtEeX8td", "defaultRegion": "XBqdzO6i", "description": "WDqwNOOd", "supportedLanguages": ["VRFhsvhm", "I08CSoq6", "u6OZBPNQ"], "supportedRegions": ["1avbGg32", "4PnGSalu", "RxNVXSQx"], "title": "Hun0PkHn"}' \
    > test.out 2>&1
eval_tap $? 146 'CreateStore' test.out

#- 147 ImportStore
eval_tap 0 147 'ImportStore # SKIP deprecated' test.out

#- 148 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetPublishedStore' test.out

#- 149 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'DeletePublishedStore' test.out

#- 150 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 150 'GetPublishedStoreBackup' test.out

#- 151 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'RollbackPublishedStore' test.out

#- 152 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LdKnqG76' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'QVcITboP' \
    --body '{"defaultLanguage": "KAButU0d", "defaultRegion": "v6rOMG2a", "description": "l0xynvJi", "supportedLanguages": ["Ci0uXjSQ", "uUeSfqG0", "zxfk43N7"], "supportedRegions": ["DHn4sGiZ", "Lf2OXBgB", "tjxx8QYW"], "title": "i4V5MfXu"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '8KEUyWCE' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'Gctp1ltn' \
    --action 'CREATE' \
    --itemSku 'RBtMZb1W' \
    --itemType 'SEASON' \
    --limit '80' \
    --offset '52' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'pKq5Lc3O' \
    --updatedAtStart 'PDe9LDFi' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'rq1iYsFn' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'gfmnI5p4' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'nvcgSIBm' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'f47ZYodo' \
    --action 'CREATE' \
    --itemSku 'Yr3BkZLx' \
    --itemType 'SEASON' \
    --type 'CATEGORY' \
    --updatedAtEnd 'I8W6uNEI' \
    --updatedAtStart 'ji6gxb9c' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '1uNTO7jV' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eOXPI2oI' \
    --namespace $AB_NAMESPACE \
    --storeId 'sgQy4ToF' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Ar8TvyHm' \
    --namespace $AB_NAMESPACE \
    --storeId 'Dyz7SGdu' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'WR8M53tL' \
    --targetStoreId 'ypNY193K' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'jSAboWsU' \
    --limit '47' \
    --offset '5' \
    --sku 'RqWUsA5f' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'et7uNaIy' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ppOXocll' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'booTH740' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'jY2A9R6A' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "05KhwDqd"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'VWJ2gWAM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'OOsSKfCm' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99, "orderNo": "ZE5JW2kz"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'K4oooUnl' \
    --body '{"achievements": [{"id": "J59osOKU", "value": 35}, {"id": "WMaebDSl", "value": 95}, {"id": "L4OihbyE", "value": 76}], "steamUserId": "bWffBfxc"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'JtR9jbiC' \
    --xboxUserId 'BgYhjtOG' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RmokEj0r' \
    --body '{"achievements": [{"id": "zKQpR45E", "percentComplete": 82}, {"id": "I600SVIZ", "percentComplete": 13}, {"id": "Plr7MF1d", "percentComplete": 1}], "serviceConfigId": "i3VbpL8q", "titleId": "m0U5lDdK", "xboxUserId": "5qOILfq0"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Rm2flr1e' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '8QNm9IgM' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'dLvxEhjD' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'xrSS9MZW' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '4Av6Q26l' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'waDyWqdT' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '08HhHUXz' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'YcIc8ig8' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'L0fSWfrE' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 182 'GetUserDLC' test.out

#- 183 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NAsCo3Pv' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'q9GLEQ6L' \
    --features '["juHoKEHl", "ZtwqBDCg", "UY29aLsf"]' \
    --itemId '["DpKuXDI9", "2VagjnO6", "mJnsiuCR"]' \
    --limit '54' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 183 'QueryUserEntitlements' test.out

#- 184 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'C5lIs1Ds' \
    --body '[{"endDate": "1991-09-29T00:00:00Z", "grantedCode": "2x6Fu0qM", "itemId": "WIO1Tw8m", "itemNamespace": "ycnwsRXO", "language": "cuYb", "quantity": 26, "region": "JMk0dC2u", "source": "ACHIEVEMENT", "startDate": "1983-04-07T00:00:00Z", "storeId": "IQIynrRI"}, {"endDate": "1979-09-01T00:00:00Z", "grantedCode": "jTOYjPx9", "itemId": "EKiFTmiE", "itemNamespace": "6KeokOCI", "language": "bgDR_974", "quantity": 24, "region": "rNrSNVTA", "source": "IAP", "startDate": "1978-01-29T00:00:00Z", "storeId": "lnXuQygS"}, {"endDate": "1977-02-22T00:00:00Z", "grantedCode": "FId378cU", "itemId": "6EidnuZR", "itemNamespace": "OC4M9tY9", "language": "frRa-Xayl-755", "quantity": 6, "region": "7et65pYK", "source": "PURCHASE", "startDate": "1973-04-24T00:00:00Z", "storeId": "3IjIesP1"}]' \
    > test.out 2>&1
eval_tap $? 184 'GrantUserEntitlement' test.out

#- 185 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'hYwTu400' \
    --activeOnly 'true' \
    --appId 'hjGlijU0' \
    > test.out 2>&1
eval_tap $? 185 'GetUserAppEntitlementByAppId' test.out

#- 186 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'QBZU2J9V' \
    --activeOnly 'false' \
    --limit '26' \
    --offset '51' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 186 'QueryUserEntitlementsByAppType' test.out

#- 187 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ehNtdbPB' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --itemId 'TnkbXPCT' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementByItemId' test.out

#- 188 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lxQE4xcH' \
    --ids '["foad3SbM", "ooPAs3zZ", "LJJ8b3UI"]' \
    > test.out 2>&1
eval_tap $? 188 'GetUserActiveEntitlementsByItemIds' test.out

#- 189 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '8ZorEyOl' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --sku 'aeekkd9E' \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementBySku' test.out

#- 190 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2dgqflsa' \
    --appIds '["5lWziMyO", "JD7eR823", "Kb8WvDqA"]' \
    --itemIds '["A07WlzdC", "nDpFFZ3k", "q0AlUUJo"]' \
    --skus '["mZo3tu3N", "pj6mDzNV", "4X5xJ7FL"]' \
    > test.out 2>&1
eval_tap $? 190 'ExistsAnyUserActiveEntitlement' test.out

#- 191 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5BjOjcX4' \
    --itemIds '["DK1VA9db", "jWib95lD", "Y51KoLlu"]' \
    > test.out 2>&1
eval_tap $? 191 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 192 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JGjeI8RE' \
    --appId 'WogCPqfX' \
    > test.out 2>&1
eval_tap $? 192 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 193 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'xhgIgsUK' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'gnXGTZb2' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipByItemId' test.out

#- 194 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'njFKHJs0' \
    --ids '["lttCTgEI", "k7oWVGIy", "59FZLY8B"]' \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlementOwnershipByItemIds' test.out

#- 195 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'atcwfDSw' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '3Dmgzaag' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlementOwnershipBySku' test.out

#- 196 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eRQu4e6G' \
    --entitlementIds '79mlpwuQ' \
    > test.out 2>&1
eval_tap $? 196 'RevokeUserEntitlements' test.out

#- 197 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '6s1MIKMB' \
    --namespace $AB_NAMESPACE \
    --userId 'BksPL7nm' \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlement' test.out

#- 198 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '9JD43iOL' \
    --namespace $AB_NAMESPACE \
    --userId 'xoN87JJq' \
    --body '{"endDate": "1980-09-28T00:00:00Z", "nullFieldList": ["AU2dhPrT", "luLA4tDF", "UD40dnTA"], "startDate": "1994-05-06T00:00:00Z", "status": "ACTIVE", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserEntitlement' test.out

#- 199 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'oBA1BInl' \
    --namespace $AB_NAMESPACE \
    --userId '8my7Nkrt' \
    --body '{"options": ["rnJTDbOj", "W7lCBvMH", "Ha0tIzEf"], "requestId": "7QBRoK2Q", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 199 'ConsumeUserEntitlement' test.out

#- 200 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'RCVqGglR' \
    --namespace $AB_NAMESPACE \
    --userId 'AOqxtxXQ' \
    > test.out 2>&1
eval_tap $? 200 'DisableUserEntitlement' test.out

#- 201 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'PHdbD2dM' \
    --namespace $AB_NAMESPACE \
    --userId 'o6HIyK9i' \
    > test.out 2>&1
eval_tap $? 201 'EnableUserEntitlement' test.out

#- 202 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'eaxximFd' \
    --namespace $AB_NAMESPACE \
    --userId 'vvkPlBin' \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementHistories' test.out

#- 203 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'JadPPfKj' \
    --namespace $AB_NAMESPACE \
    --userId 'Z0MYLhvT' \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserEntitlement' test.out

#- 204 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '84OxPATv' \
    --body '{"duration": 100, "endDate": "1973-01-11T00:00:00Z", "itemId": "SfgXOqIG", "itemSku": "41yqGnwC", "language": "L6Hhqv2K", "order": {"currency": {"currencyCode": "gY7Adlmk", "currencySymbol": "uGUmT1vm", "currencyType": "REAL", "decimals": 18, "namespace": "CrLaOCz9"}, "ext": {"zwzqxfTT": {}, "Mrjxihdn": {}, "kqI8c3N6": {}}, "free": true}, "orderNo": "P2ft0AQZ", "origin": "Nintendo", "quantity": 54, "region": "qJFIJVKh", "source": "PURCHASE", "startDate": "1972-10-14T00:00:00Z", "storeId": "s8ZfDNF2"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillItem' test.out

#- 205 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'nTSa9adt' \
    --body '{"code": "HNj3pnvx", "language": "jweQ-355", "region": "v8AGU8gH"}' \
    > test.out 2>&1
eval_tap $? 205 'RedeemCode' test.out

#- 206 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '30vPpTxn' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "QIC2cabO", "namespace": "eZvRbnJD"}, "item": {"itemId": "AH2fMlG9", "itemSku": "ntvBVtEs", "itemType": "COwxPJUj"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "vj0yQYOQ", "namespace": "oFmb4t25"}, "item": {"itemId": "xGf1VA43", "itemSku": "vZT55YzN", "itemType": "QAKk1Ynr"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "m3yOwYWY", "namespace": "FuywLFm6"}, "item": {"itemId": "fuZY5IYM", "itemSku": "bbnZlHn6", "itemType": "aEkhTHYx"}, "quantity": 61, "type": "CURRENCY"}], "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 206 'FulfillRewards' test.out

#- 207 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'CCCk5aCl' \
    --endTime 'b8Ub7BwP' \
    --limit '27' \
    --offset '85' \
    --productId 'd1SddNRi' \
    --startTime 'zChmT4Y5' \
    --status 'FULFILLED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPOrders' test.out

#- 208 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'evhzpU4v' \
    > test.out 2>&1
eval_tap $? 208 'QueryAllUserIAPOrders' test.out

#- 209 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'iIPe0jL1' \
    --endTime 'H8S3aaXO' \
    --limit '36' \
    --offset '90' \
    --startTime 'LP8MbFa2' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserIAPConsumeHistory' test.out

#- 210 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Uzbvdi8t' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "iDcD-LX", "productId": "McMtVAUy", "region": "aMtTZrDN", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 210 'MockFulfillIAPItem' test.out

#- 211 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xVTcnWdz' \
    --itemId '0d7T0nDc' \
    --limit '10' \
    --offset '98' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 211 'QueryUserOrders' test.out

#- 212 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'txdTOfqU' \
    --body '{"currencyCode": "IXXIdU0r", "currencyNamespace": "SplX8Rtv", "discountedPrice": 8, "ext": {"pl2cXwzq": {}, "92wXmWx3": {}, "Bua3JCyY": {}}, "itemId": "Z2aH9Aga", "language": "BiDnL9RI", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 37, "quantity": 1, "region": "zmT5zlek", "returnUrl": "TgZu9K1p", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateUserOrder' test.out

#- 213 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'FDiHwoDj' \
    --itemId 'jmWC23W9' \
    > test.out 2>&1
eval_tap $? 213 'CountOfPurchasedItem' test.out

#- 214 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8jqBEK2p' \
    --userId 'v5r6CufN' \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrder' test.out

#- 215 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'gscjoKHI' \
    --userId 'WDAdhGX5' \
    --body '{"status": "REFUNDED", "statusReason": "iWgDLfqL"}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserOrderStatus' test.out

#- 216 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dHWaRBsi' \
    --userId '0yLJSDPJ' \
    > test.out 2>&1
eval_tap $? 216 'FulfillUserOrder' test.out

#- 217 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'FxRFSz5s' \
    --userId 'YzAzR6We' \
    > test.out 2>&1
eval_tap $? 217 'GetUserOrderGrant' test.out

#- 218 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'ufAlSdyu' \
    --userId 'tavpZ0r9' \
    > test.out 2>&1
eval_tap $? 218 'GetUserOrderHistories' test.out

#- 219 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'ix9Sh3qc' \
    --userId 'ale8PFbm' \
    --body '{"additionalData": {"cardSummary": "4RLk0T2m"}, "authorisedTime": "1998-10-13T00:00:00Z", "chargebackReversedTime": "1995-11-10T00:00:00Z", "chargebackTime": "1981-04-01T00:00:00Z", "chargedTime": "1995-02-19T00:00:00Z", "createdTime": "1974-03-25T00:00:00Z", "currency": {"currencyCode": "euHJB9l0", "currencySymbol": "v0bthT5O", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "l7GQfYq7"}, "customParameters": {"KxDh685t": {}, "7iT1yjCm": {}, "m7l44fsz": {}}, "extOrderNo": "u8neyTrA", "extTxId": "f7MHvDFs", "extUserId": "vtajFtPa", "issuedAt": "1998-12-12T00:00:00Z", "metadata": {"XBxVyU7r": "7LsHRuHa", "QytqBnjQ": "OvX2rxgO", "nDRUCCs4": "DMBdPmSP"}, "namespace": "vYDjcKt4", "nonceStr": "HLfBLLmv", "paymentMethod": "ZoNo3qWw", "paymentMethodFee": 38, "paymentOrderNo": "8d11wAhM", "paymentProvider": "ALIPAY", "paymentProviderFee": 31, "paymentStationUrl": "sHlllFxv", "price": 1, "refundedTime": "1995-06-14T00:00:00Z", "salesTax": 86, "sandbox": true, "sku": "kXap1psB", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "IkD6kxdj", "subscriptionId": "GIS6ib4R", "subtotalPrice": 70, "targetNamespace": "wuJ3yje3", "targetUserId": "dMbDcllC", "tax": 7, "totalPrice": 5, "totalTax": 90, "txEndTime": "1973-09-04T00:00:00Z", "type": "VB5JnFSi", "userId": "Ys3tRepy", "vat": 75}' \
    > test.out 2>&1
eval_tap $? 219 'ProcessUserOrderNotification' test.out

#- 220 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'doQBlrqa' \
    --userId 'cDqsWI2Y' \
    > test.out 2>&1
eval_tap $? 220 'DownloadUserOrderReceipt' test.out

#- 221 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '7axwjsBC' \
    --body '{"currencyCode": "RiUKMF2n", "currencyNamespace": "nyb3saoJ", "customParameters": {"hMb1DqgX": {}, "SmCO6gKG": {}, "2nMLM6a2": {}}, "description": "OgbGezBk", "extOrderNo": "XT1uDAcK", "extUserId": "8eVGRc4C", "itemType": "INGAMEITEM", "language": "DPI_Xq", "metadata": {"PA567i69": "MxM2L19n", "5D7daGna": "HxfpVjxG", "syiHjLEH": "OSik4TLz"}, "notifyUrl": "TbzCeBfm", "omitNotification": false, "platform": "yVbInpa9", "price": 57, "recurringPaymentOrderNo": "90XmLB4x", "region": "lMuEnU9G", "returnUrl": "yxlWhXUd", "sandbox": true, "sku": "kYCnRoZ9", "subscriptionId": "u5NYO8IX", "title": "mqncO04S"}' \
    > test.out 2>&1
eval_tap $? 221 'CreateUserPaymentOrder' test.out

#- 222 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XOVabTIf' \
    --userId 'uOKJQPLy' \
    --body '{"description": "srPv0xVo"}' \
    > test.out 2>&1
eval_tap $? 222 'RefundUserPaymentOrder' test.out

#- 223 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '9oyWlfaP' \
    --body '{"code": "ERmVo0CN", "orderNo": "VFDfao9r"}' \
    > test.out 2>&1
eval_tap $? 223 'ApplyUserRedemption' test.out

#- 224 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'G1XAvjOu' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'IVsNXjB3' \
    --limit '36' \
    --offset '16' \
    --sku 'pHKrP0UQ' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserSubscriptions' test.out

#- 225 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '77Ru6CTF' \
    --excludeSystem 'true' \
    --limit '97' \
    --offset '52' \
    --subscriptionId 'NFA98qSe' \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscriptionActivities' test.out

#- 226 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'sn5T5GK2' \
    --body '{"grantDays": 25, "itemId": "pBWkdlPK", "language": "XX7IvRdy", "reason": "HIoVbmMo", "region": "dTj1TNft", "source": "k3s6S5vZ"}' \
    > test.out 2>&1
eval_tap $? 226 'PlatformSubscribeSubscription' test.out

#- 227 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '18SREBdN' \
    --itemId 'ashlJAPJ' \
    > test.out 2>&1
eval_tap $? 227 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 228 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'J51RlX9F' \
    --userId 'hH9fzPeU' \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscription' test.out

#- 229 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QRt2oUz5' \
    --userId 'tPo4itv3' \
    > test.out 2>&1
eval_tap $? 229 'DeleteUserSubscription' test.out

#- 230 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pzZQsM2x' \
    --userId '88vAHlta' \
    --force 'true' \
    --body '{"immediate": false, "reason": "Atoou91q"}' \
    > test.out 2>&1
eval_tap $? 230 'CancelSubscription' test.out

#- 231 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i5iKGzIM' \
    --userId 'Y1jQRTAn' \
    --body '{"grantDays": 42, "reason": "YRqk6ltd"}' \
    > test.out 2>&1
eval_tap $? 231 'GrantDaysToSubscription' test.out

#- 232 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yWdS8NS3' \
    --userId 'Bf6Bxn3U' \
    --excludeFree 'true' \
    --limit '62' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 232 'GetUserSubscriptionBillingHistories' test.out

#- 233 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7DPJKvPZ' \
    --userId 'lQCVvvR3' \
    --body '{"additionalData": {"cardSummary": "fgAEPRrB"}, "authorisedTime": "1998-05-22T00:00:00Z", "chargebackReversedTime": "1983-07-22T00:00:00Z", "chargebackTime": "1991-10-16T00:00:00Z", "chargedTime": "1997-07-13T00:00:00Z", "createdTime": "1975-04-24T00:00:00Z", "currency": {"currencyCode": "1MM16Tsu", "currencySymbol": "hvLrxJzr", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "vtQAlC1B"}, "customParameters": {"zZBOn3VZ": {}, "x8TlYvW1": {}, "2hrVfF2c": {}}, "extOrderNo": "9Vntrw6d", "extTxId": "eGAVgKnn", "extUserId": "07dQ3cM8", "issuedAt": "1984-05-21T00:00:00Z", "metadata": {"euv6UbZV": "cdWyWPkM", "zEC9da47": "FYReuj3g", "eYOvvCw9": "QR2z9N3q"}, "namespace": "CuBlRLKZ", "nonceStr": "KV7LV9Rf", "paymentMethod": "qaNZz6y6", "paymentMethodFee": 4, "paymentOrderNo": "UrDim7gB", "paymentProvider": "XSOLLA", "paymentProviderFee": 37, "paymentStationUrl": "tuYqEUqM", "price": 35, "refundedTime": "1982-10-11T00:00:00Z", "salesTax": 29, "sandbox": false, "sku": "92V1bmuC", "status": "INIT", "statusReason": "TOaOOENm", "subscriptionId": "UNSa6Yfo", "subtotalPrice": 6, "targetNamespace": "DuiNjsRd", "targetUserId": "OPa0yVw0", "tax": 46, "totalPrice": 22, "totalTax": 90, "txEndTime": "1994-05-09T00:00:00Z", "type": "DPtpZalq", "userId": "DS1R6qS3", "vat": 19}' \
    > test.out 2>&1
eval_tap $? 233 'ProcessUserSubscriptionNotification' test.out

#- 234 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'siWQXD8J' \
    --namespace $AB_NAMESPACE \
    --userId 'vdG0Kf9S' \
    --body '{"count": 61, "orderNo": "tSiaiOSQ"}' \
    > test.out 2>&1
eval_tap $? 234 'AcquireUserTicket' test.out

#- 235 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Cl2hNPqj' \
    > test.out 2>&1
eval_tap $? 235 'QueryUserCurrencyWallets' test.out

#- 236 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'UhH9y085' \
    --namespace $AB_NAMESPACE \
    --userId 'LJTlOeLh' \
    --limit '16' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 236 'ListUserCurrencyTransactions' test.out

#- 237 CheckWallet
eval_tap 0 237 'CheckWallet # SKIP deprecated' test.out

#- 238 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'tAWUbwpQ' \
    --namespace $AB_NAMESPACE \
    --userId 'WIMiqttV' \
    --body '{"amount": 13, "expireAt": "1985-06-30T00:00:00Z", "origin": "GooglePlay", "reason": "H3v27Hjr", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 238 'CreditUserWallet' test.out

#- 239 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'uCy8PQdg' \
    --namespace $AB_NAMESPACE \
    --userId 'Sck2rWsP' \
    --body '{"amount": 3, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 239 'PayWithUserWallet' test.out

#- 240 GetUserWallet
eval_tap 0 240 'GetUserWallet # SKIP deprecated' test.out

#- 241 DebitUserWallet
eval_tap 0 241 'DebitUserWallet # SKIP deprecated' test.out

#- 242 DisableUserWallet
eval_tap 0 242 'DisableUserWallet # SKIP deprecated' test.out

#- 243 EnableUserWallet
eval_tap 0 243 'EnableUserWallet # SKIP deprecated' test.out

#- 244 ListUserWalletTransactions
eval_tap 0 244 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 245 QueryWallets
eval_tap 0 245 'QueryWallets # SKIP deprecated' test.out

#- 246 GetWallet
eval_tap 0 246 'GetWallet # SKIP deprecated' test.out

#- 247 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'lGwLOttv' \
    --end 'nZOGd8BE' \
    --start '2YtWyDRr' \
    > test.out 2>&1
eval_tap $? 247 'SyncOrders' test.out

#- 248 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["ax2YeYkz", "BXV65Thx", "cvHGmmJA"], "apiKey": "yxyfBEcO", "authoriseAsCapture": true, "blockedPaymentMethods": ["zhW33llK", "lylZLuRG", "y7r5VEhP"], "clientKey": "9zUgwxkY", "dropInSettings": "meNhaVmv", "liveEndpointUrlPrefix": "kXWxqiF6", "merchantAccount": "MZbl8X1m", "notificationHmacKey": "SAcyaJ2O", "notificationPassword": "V0b40h1R", "notificationUsername": "aDn71kWn", "returnUrl": "rLAEOROu", "settings": "7SDnR6YI"}' \
    > test.out 2>&1
eval_tap $? 248 'TestAdyenConfig' test.out

#- 249 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "VhOJwzh5", "privateKey": "VOzOb7XD", "publicKey": "qo14Gs31", "returnUrl": "YP8EiwWW"}' \
    > test.out 2>&1
eval_tap $? 249 'TestAliPayConfig' test.out

#- 250 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "43p0HWlm", "secretKey": "nynUMQM3"}' \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfig' test.out

#- 251 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'UrunDVjU' \
    --region 'KlQmEwjS' \
    > test.out 2>&1
eval_tap $? 251 'DebugMatchedPaymentMerchantConfig' test.out

#- 252 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "hl0woSap", "clientSecret": "45g4STjQ", "returnUrl": "OKataagR", "webHookId": "XOE2w0p2"}' \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfig' test.out

#- 253 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["hgHa1SKj", "PgqpnuvH", "yHnEc4Mb"], "publishableKey": "Blb9rYSQ", "secretKey": "YalmbKld", "webhookSecret": "gdGMuy2A"}' \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfig' test.out

#- 254 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "8bpEJrda", "key": "6y9rxNlY", "mchid": "1EnSZaon", "returnUrl": "ZECoHS2G"}' \
    > test.out 2>&1
eval_tap $? 254 'TestWxPayConfig' test.out

#- 255 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "OkiqYx28", "flowCompletionUrl": "zJFErAde", "merchantId": 60, "projectId": 41, "projectSecretKey": "PQhApBvh"}' \
    > test.out 2>&1
eval_tap $? 255 'TestXsollaConfig' test.out

#- 256 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'oDp5hUr9' \
    > test.out 2>&1
eval_tap $? 256 'GetPaymentMerchantConfig' test.out

#- 257 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'WV1rhM8J' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["qLfglfmh", "6sezF9Qx", "rmPG78kG"], "apiKey": "RUEFuLkn", "authoriseAsCapture": false, "blockedPaymentMethods": ["ZuMeBDMO", "Ddkv2Nf7", "dTeSG9gt"], "clientKey": "JpAPFAU0", "dropInSettings": "5y2D3hwz", "liveEndpointUrlPrefix": "D0fmMET8", "merchantAccount": "f5fkKoUU", "notificationHmacKey": "k9xPSKIi", "notificationPassword": "9i0SZEHz", "notificationUsername": "JAZzmVSg", "returnUrl": "9Q8gJGIk", "settings": "44nObPoj"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAdyenConfig' test.out

#- 258 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'qJR6rmbj' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 258 'TestAdyenConfigById' test.out

#- 259 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '7i3XzhRU' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "FbOWGPmE", "privateKey": "jGpcbynU", "publicKey": "Q7hbaiTG", "returnUrl": "XEGYf7Nk"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateAliPayConfig' test.out

#- 260 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'b2L19FJ2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestAliPayConfigById' test.out

#- 261 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'vRkeegLv' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "IkefCtE0", "secretKey": "vk2fSbNz"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateCheckoutConfig' test.out

#- 262 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'e9dehA7H' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestCheckoutConfigById' test.out

#- 263 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'RUTDW2Uq' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "F9Vl6lAL", "clientSecret": "LsGCbvp6", "returnUrl": "YHrd5xgQ", "webHookId": "sfWhngob"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdatePayPalConfig' test.out

#- 264 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'tKV9M2Cg' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 264 'TestPayPalConfigById' test.out

#- 265 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'YZgNqsa0' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["lyBd1TIG", "bRxnUrWX", "X9Q0hAJz"], "publishableKey": "uxqvZ82H", "secretKey": "80d6hF0M", "webhookSecret": "beWNiel4"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateStripeConfig' test.out

#- 266 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'g8FFIRgc' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 266 'TestStripeConfigById' test.out

#- 267 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'WpTrbiJf' \
    --validate 'true' \
    --body '{"appId": "IuHnxg8Z", "key": "U9L1x5co", "mchid": "T5GiyVPR", "returnUrl": "ZerrmFB0"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateWxPayConfig' test.out

#- 268 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'yDh56m94' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 268 'UpdateWxPayConfigCert' test.out

#- 269 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IKQ3Nqt2' \
    > test.out 2>&1
eval_tap $? 269 'TestWxPayConfigById' test.out

#- 270 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '0hVghqDV' \
    --validate 'false' \
    --body '{"apiKey": "5WTD1kai", "flowCompletionUrl": "h9WVkP3i", "merchantId": 44, "projectId": 6, "projectSecretKey": "AgCU9Zlm"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaConfig' test.out

#- 271 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Zjs9ysXi' \
    > test.out 2>&1
eval_tap $? 271 'TestXsollaConfigById' test.out

#- 272 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'tzVazU4P' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 272 'UpdateXsollaUIConfig' test.out

#- 273 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '87' \
    --namespace 'aA2WstMC' \
    --offset '72' \
    --region 'bXT0SDDU' \
    > test.out 2>&1
eval_tap $? 273 'QueryPaymentProviderConfig' test.out

#- 274 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "9IQ0eK8h", "region": "u7oiVOIr", "sandboxTaxJarApiToken": "XF19eJow", "specials": ["PAYPAL", "WALLET", "WALLET"], "taxJarApiToken": "3wlbpk09", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 274 'CreatePaymentProviderConfig' test.out

#- 275 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetAggregatePaymentProviders' test.out

#- 276 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'VML3RnVI' \
    --region 'LYIMmq8l' \
    > test.out 2>&1
eval_tap $? 276 'DebugMatchedPaymentProviderConfig' test.out

#- 277 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 277 'GetSpecialPaymentProviders' test.out

#- 278 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'wyXfhNGp' \
    --body '{"aggregate": "XSOLLA", "namespace": "VyStKx8w", "region": "06ABRj4S", "sandboxTaxJarApiToken": "e3CLhqZH", "specials": ["STRIPE", "XSOLLA", "WALLET"], "taxJarApiToken": "zPUzDxFm", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentProviderConfig' test.out

#- 279 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'mOTe91lf' \
    > test.out 2>&1
eval_tap $? 279 'DeletePaymentProviderConfig' test.out

#- 280 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxConfig' test.out

#- 281 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "bgp1lGmA", "taxJarApiToken": "NlAhDieG", "taxJarEnabled": true, "taxJarProductCodesMapping": {"BUZEnMFb": "fZNK9iBi", "JUds9zXJ": "m3M2g04h", "MaPwJz75": "FitCpfw4"}}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePaymentTaxConfig' test.out

#- 282 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'kz9zTPXp' \
    --end 'e2wloMRz' \
    --start 'i8rkcoN0' \
    > test.out 2>&1
eval_tap $? 282 'SyncPaymentOrders' test.out

#- 283 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'AKzVWrfJ' \
    --storeId 'O0FdqTBh' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRootCategories' test.out

#- 284 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'hZj6Tprq' \
    --storeId '5zfsc7Ku' \
    > test.out 2>&1
eval_tap $? 284 'DownloadCategories' test.out

#- 285 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'XKgZG7dU' \
    --namespace $AB_NAMESPACE \
    --language 'Sj5jz7JD' \
    --storeId 'GKUFfRcb' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetCategory' test.out

#- 286 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'FYA5cnYT' \
    --namespace $AB_NAMESPACE \
    --language 'oaWU3aD3' \
    --storeId 'vpP7z6mQ' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetChildCategories' test.out

#- 287 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '2j5qJe4M' \
    --namespace $AB_NAMESPACE \
    --language 'RdywYzAU' \
    --storeId '9DgLbKbA' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetDescendantCategories' test.out

#- 288 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 288 'PublicListCurrencies' test.out

#- 289 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'nWq5VtES' \
    --region 'UKI42gPM' \
    --storeId 'JgjwrJ8C' \
    --appId 'fzANYryi' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemByAppId' test.out

#- 290 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'QLGvMvnt' \
    --categoryPath 'CzRyN51N' \
    --features 'hnpCG3wx' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language 'bKwXNPIz' \
    --limit '55' \
    --offset '18' \
    --region 'OVSHP1of' \
    --sortBy '["name:asc", "createdAt", "updatedAt:desc"]' \
    --storeId 'xuK3HR3u' \
    --tags 'kHWNKv9A' \
    > test.out 2>&1
eval_tap $? 290 'PublicQueryItems' test.out

#- 291 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'cqHSpHIv' \
    --region 'vpHxz03o' \
    --storeId 'YrF4dFtH' \
    --sku 'aPcgapyZ' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItemBySku' test.out

#- 292 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'KROC2KOr' \
    --region 'zQRBjHke' \
    --storeId 'a9mP7BmT' \
    --itemIds 'dq3YNr9k' \
    > test.out 2>&1
eval_tap $? 292 'PublicBulkGetItems' test.out

#- 293 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["OMbybNOI", "6c8agVKO", "o65I0WXb"]}' \
    > test.out 2>&1
eval_tap $? 293 'PublicValidateItemPurchaseCondition' test.out

#- 294 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'APP' \
    --limit '80' \
    --offset '89' \
    --region 'iqeJ967x' \
    --storeId 'VOIveXIq' \
    --keyword 'ia24SSqG' \
    --language 'q8jBaY7g' \
    > test.out 2>&1
eval_tap $? 294 'PublicSearchItems' test.out

#- 295 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'UALRBnmR' \
    --namespace $AB_NAMESPACE \
    --language 'd9CiFPrM' \
    --region 'qBbbLAYz' \
    --storeId 'O3JonXj4' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetApp' test.out

#- 296 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'irlpjwUn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 296 'PublicGetItemDynamicData' test.out

#- 297 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'a500qgwZ' \
    --namespace $AB_NAMESPACE \
    --language 'u3L3mOkV' \
    --populateBundle 'false' \
    --region 'vRNut5DR' \
    --storeId 'FwoUc0jX' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetItem' test.out

#- 298 GetPaymentCustomization
eval_tap 0 298 'GetPaymentCustomization # SKIP deprecated' test.out

#- 299 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "x7DYasU4", "paymentProvider": "ADYEN", "returnUrl": "QQLjBVYe", "ui": "p6uKk5NT", "zipCode": "MtqN4vQd"}' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetPaymentUrl' test.out

#- 300 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bHVC79gT' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetPaymentMethods' test.out

#- 301 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PlWSEYkH' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUnpaidPaymentOrder' test.out

#- 302 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qumZjTw4' \
    --paymentProvider 'WXPAY' \
    --zipCode 'qANVxU55' \
    --body '{"token": "tb8xJLa7"}' \
    > test.out 2>&1
eval_tap $? 302 'Pay' test.out

#- 303 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zzr6M3QY' \
    > test.out 2>&1
eval_tap $? 303 'PublicCheckPaymentOrderPaidStatus' test.out

#- 304 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'omQY4kth' \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentPublicConfig' test.out

#- 305 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'sI0m6lPZ' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetQRCode' test.out

#- 306 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'rTjTIz8v' \
    --foreinginvoice 'napIUcnk' \
    --invoiceId 'lKOoZ63R' \
    --payload 'h0oJhtXI' \
    --redirectResult 'JYJDIV7K' \
    --resultCode 'u1fJYYg8' \
    --sessionId 'brAvGt30' \
    --status 'HZeN7hvL' \
    --token '0CnBOKtc' \
    --type 'R0XDlftG' \
    --userId '9MrZSiwV' \
    --orderNo 'xXRgjQ3M' \
    --paymentOrderNo 'bfRraaE8' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'Tdcc7iun' \
    > test.out 2>&1
eval_tap $? 306 'PublicNormalizePaymentReturnUrl' test.out

#- 307 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'nPyP7NYM' \
    --paymentOrderNo 'krTBRYNW' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 307 'GetPaymentTaxValue' test.out

#- 308 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'y3HbGCvs' \
    > test.out 2>&1
eval_tap $? 308 'GetRewardByCode' test.out

#- 309 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'dd9snn9R' \
    --limit '99' \
    --offset '72' \
    --sortBy '["rewardCode", "rewardCode:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 309 'QueryRewards1' test.out

#- 310 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Mbv543Zm' \
    > test.out 2>&1
eval_tap $? 310 'GetReward1' test.out

#- 311 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicListStores' test.out

#- 312 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["Hx9rMrpr", "HfDSPc21", "OABKomeV"]' \
    --itemIds '["ec15zkZB", "4tCwq0vc", "MvXjv8qP"]' \
    --skus '["NrHwco7d", "BBX2uKA3", "LNByKtZs"]' \
    > test.out 2>&1
eval_tap $? 312 'PublicExistsAnyMyActiveEntitlement' test.out

#- 313 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'xObvkeHY' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 314 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'gSfq6eai' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 315 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Crq5dpwK' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 316 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["QQ1Ahcsp", "kEeZStlw", "nZIvo8zX"]' \
    --itemIds '["o6NRq497", "a6K02mRu", "gTteWO92"]' \
    --skus '["ZBmIuiDJ", "3YDnG3R5", "rQwG4Rma"]' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetEntitlementOwnershipToken' test.out

#- 317 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'GID9M1EM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'PublicGetMyWallet' test.out

#- 318 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uz0okAGY' \
    --body '{"epicGamesJwtToken": "SuIokI0N"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncEpicGameDLC' test.out

#- 319 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GbILgSlb' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 319 'PublicSyncPsnDlcInventory' test.out

#- 320 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'xQEYxiI2' \
    --body '{"serviceLabels": [80, 98, 53]}' \
    > test.out 2>&1
eval_tap $? 320 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 321 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'VE9di1xX' \
    --body '{"appId": "45rW12Yt", "steamId": "4KWPqp6G"}' \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamDLC' test.out

#- 322 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fZmWanQy' \
    --body '{"xstsToken": "UMb3STA4"}' \
    > test.out 2>&1
eval_tap $? 322 'SyncXboxDLC' test.out

#- 323 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'rgfTbIPD' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '2nj5AU7I' \
    --features '["rSR03wzG", "j1GozG8w", "eZAUKdka"]' \
    --itemId '["Hssso3QG", "nagv2Lej", "X7S5QgNr"]' \
    --limit '53' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlements' test.out

#- 324 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '3WAuMpFN' \
    --appId 'Bx45s2vs' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementByAppId' test.out

#- 325 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1poe0hJn' \
    --limit '88' \
    --offset '40' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 325 'PublicQueryUserEntitlementsByAppType' test.out

#- 326 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MSDr6AYC' \
    --entitlementClazz 'MEDIA' \
    --itemId 'Wyxywy5I' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementByItemId' test.out

#- 327 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kTObcZ90' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '15rxHBa1' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementBySku' test.out

#- 328 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ADO9eyh0' \
    --appIds '["Sm03hiTP", "Hp6nHtKJ", "dvrR46la"]' \
    --itemIds '["JIjdAoHX", "3uhi9Y2G", "B3ViY3h2"]' \
    --skus '["XcXh1B5P", "DoZygbML", "OwYlWp06"]' \
    > test.out 2>&1
eval_tap $? 328 'PublicExistsAnyUserActiveEntitlement' test.out

#- 329 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6u7M4AFq' \
    --appId 'XwoU7YIU' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 330 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GWla6DTU' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'lBL87f9r' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 331 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'DvRAG7mt' \
    --ids '["1Sj9q8Qb", "2iZ7paPv", "IoVEY0S7"]' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 332 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ymREQ4PQ' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '3aRS6zUa' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 333 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'kbzSdiSl' \
    --namespace $AB_NAMESPACE \
    --userId '4ga8KDxI' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserEntitlement' test.out

#- 334 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'AQExQp42' \
    --namespace $AB_NAMESPACE \
    --userId 'wo4UNzQR' \
    --body '{"options": ["tNPbUJGB", "7apNVM0Z", "TodYTNQe"], "requestId": "nK9R7wb9", "useCount": 75}' \
    > test.out 2>&1
eval_tap $? 334 'PublicConsumeUserEntitlement' test.out

#- 335 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '7BhEdFjJ' \
    --body '{"code": "4iow2FlM", "language": "qPYm_ugmV_653", "region": "imDt07tW"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicRedeemCode' test.out

#- 336 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vk3eawuA' \
    --body '{"excludeOldTransactions": true, "language": "qbxI", "productId": "O8ZdvpjM", "receiptData": "R4TD8hI4", "region": "xNdhhLE1", "transactionId": "kuiVaIo7"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillAppleIAPItem' test.out

#- 337 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gPJ5xK6w' \
    --body '{"epicGamesJwtToken": "mNKWncBS"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncEpicGamesInventory' test.out

#- 338 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'YSdbkDKO' \
    --body '{"autoAck": false, "language": "nfH-qitd", "orderId": "dbaR7ZrD", "packageName": "U3q7XHaj", "productId": "ye6IWzkp", "purchaseTime": 15, "purchaseToken": "V9Df23La", "region": "FVJDf7WN"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicFulfillGoogleIAPItem' test.out

#- 339 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '5GBIOxQZ' \
    --body '{"currencyCode": "AYVuUjUf", "price": 0.24869134617457067, "productId": "CXgBsX8t", "serviceLabel": 17}' \
    > test.out 2>&1
eval_tap $? 339 'PublicReconcilePlayStationStore' test.out

#- 340 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'C2wB19ro' \
    --body '{"currencyCode": "H3YBWPji", "price": 0.7043762838319729, "productId": "2qWAUV1Y", "serviceLabels": [63, 39, 87]}' \
    > test.out 2>&1
eval_tap $? 340 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 341 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'FXJtgRqT' \
    --body '{"appId": "Z777r7Z4", "language": "LUvD_CWqQ_478", "region": "nYNmdaed", "stadiaPlayerId": "gSf3jptQ"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncStadiaEntitlement' test.out

#- 342 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Nn5mmOMM' \
    --body '{"appId": "WtlXXTQ8", "currencyCode": "LCe87SAA", "language": "LYBM-wq", "price": 0.7112174276280218, "productId": "mODSTIzp", "region": "fndqevod", "steamId": "FslU5mCj"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncSteamInventory' test.out

#- 343 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'eMxyBJkr' \
    --body '{"gameId": "3x8BM5x0", "language": "io-AKYZ_644", "region": "uGHX6ubG"}' \
    > test.out 2>&1
eval_tap $? 343 'SyncTwitchDropsEntitlement' test.out

#- 344 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZeC0QlHO' \
    --body '{"currencyCode": "k9FupHBa", "price": 0.7003174129316656, "productId": "PaZpBmBB", "xstsToken": "xYOQZByV"}' \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxInventory' test.out

#- 345 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UG6vGaO9' \
    --itemId 'uwerdaaw' \
    --limit '77' \
    --offset '32' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserOrders' test.out

#- 346 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CwXRFo2M' \
    --body '{"currencyCode": "8vHM4L6c", "discountedPrice": 100, "ext": {"RvhkFuNg": {}, "OeXv8Ibf": {}, "Q4Wz2n5Q": {}}, "itemId": "hpXPXr42", "language": "wpI_JBKY", "price": 3, "quantity": 9, "region": "wdzHJwV4", "returnUrl": "Dh3ar9tq"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserOrder' test.out

#- 347 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lM5IigCb' \
    --userId 'Xg12Lwwp' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrder' test.out

#- 348 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OR6SUy4D' \
    --userId '4ltpAr5O' \
    > test.out 2>&1
eval_tap $? 348 'PublicCancelUserOrder' test.out

#- 349 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'mpC0Xkq1' \
    --userId 'iLVyN6AU' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserOrderHistories' test.out

#- 350 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'fv0VYpxz' \
    --userId '3ecVdirS' \
    > test.out 2>&1
eval_tap $? 350 'PublicDownloadUserOrderReceipt' test.out

#- 351 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'ZOgaHnB2' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentAccounts' test.out

#- 352 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'hpX84B1u' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'i4q85EhU' \
    > test.out 2>&1
eval_tap $? 352 'PublicDeletePaymentAccount' test.out

#- 353 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'WR25fvwT' \
    --chargeStatus 'NEVER' \
    --itemId 'zyMxz7au' \
    --limit '92' \
    --offset '28' \
    --sku '4oxt8i7X' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserSubscriptions' test.out

#- 354 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Mdn7xngv' \
    --body '{"currencyCode": "CvvQoEiq", "itemId": "SduXPGgT", "language": "SXW", "region": "pKxpSz0t", "returnUrl": "iQmdTEwP", "source": "VjFOU8zK"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicSubscribeSubscription' test.out

#- 355 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Xc5Dr2Fl' \
    --itemId 'AxGS6w8r' \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 356 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NSSQ3hyK' \
    --userId 'BtqpGRaA' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserSubscription' test.out

#- 357 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'D5f7OcW5' \
    --userId 'HxQfQTKB' \
    > test.out 2>&1
eval_tap $? 357 'PublicChangeSubscriptionBillingAccount' test.out

#- 358 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Nvk7S5JL' \
    --userId 'rf0T26gk' \
    --body '{"immediate": false, "reason": "mieFLJ3C"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicCancelSubscription' test.out

#- 359 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'v4YGWMbW' \
    --userId 'Fd0pDXlV' \
    --excludeFree 'false' \
    --limit '20' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserSubscriptionBillingHistories' test.out

#- 360 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'zjV6wnej' \
    --namespace $AB_NAMESPACE \
    --userId 'C3qO8W1O' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetWallet' test.out

#- 361 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ucBZ8txj' \
    --namespace $AB_NAMESPACE \
    --userId '3Mr4y8hQ' \
    --limit '81' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 361 'PublicListUserWalletTransactions' test.out

#- 362 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'Bxbsee7S' \
    --baseAppId 'FZU4QIVn' \
    --categoryPath 'NFadomTu' \
    --features '0Plnw4m2' \
    --includeSubCategoryItem 'true' \
    --itemName 'SNEED09q' \
    --itemStatus 'INACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '7' \
    --offset '71' \
    --region '7EInlhCh' \
    --sortBy '["createdAt:asc", "displayOrder", "displayOrder:asc"]' \
    --storeId 'ageq0oN0' \
    --tags 'tb99FRWE' \
    --targetNamespace 'nosii45E' \
    > test.out 2>&1
eval_tap $? 362 'QueryItems1' test.out

#- 363 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'TqJUB9YI' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'ImportStore1' test.out

#- 364 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DdmYgnyq' \
    --body '{"itemIds": ["va6SIo3O", "iziR0AZi", "fqapLtbE"]}' \
    > test.out 2>&1
eval_tap $? 364 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE