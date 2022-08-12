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
echo "1..347"

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
    --body '{"context": {"item": {"appId": "rdq0JtYr", "appType": "DLC", "baseAppId": "lpmaStjJ", "boothName": "QnQLNdkQ", "boundItemIds": ["dZnqe7DU", "OZpAgRM8", "SNo4S42N"], "categoryPath": "9q5ZNlzr", "clazz": "qCV5zAfT", "createdAt": "1983-08-23T00:00:00Z", "description": "KQLBHmDK", "displayOrder": 2, "entitlementType": "DURABLE", "ext": {"KxS06qmQ": {}, "FXQzvQhH": {}, "dWk5Zael": {}}, "features": ["AK0rL31W", "w71nmo6q", "ybGnF1iz"], "fresh": false, "images": [{"as": "93waLMY1", "caption": "gQaLcEzU", "height": 21, "imageUrl": "mhVDYklh", "smallImageUrl": "bZA6qxp4", "width": 100}, {"as": "bild4a04", "caption": "oMSMLYaI", "height": 93, "imageUrl": "URozXWmx", "smallImageUrl": "NxSzvO1Y", "width": 70}, {"as": "34FVd0Dv", "caption": "l2aM24ZJ", "height": 76, "imageUrl": "JEzQfO6p", "smallImageUrl": "9WWLwxRY", "width": 18}], "itemId": "8bxZNrgW", "itemIds": ["qs5dfogU", "lhmxltqu", "3AuWdrIr"], "itemQty": {"wKJZXzxy": 44, "RNITiwJt": 72, "grsGgGrA": 27}, "itemType": "SUBSCRIPTION", "language": "dgkxGHej", "listable": false, "localExt": {"97zueqIs": {}, "2xY0RysB": {}, "CN9Vc76W": {}}, "longDescription": "yGPV6udT", "maxCount": 0, "maxCountPerUser": 89, "name": "YjMGzRAo", "namespace": "ZZuYC9VQ", "optionBoxConfig": {"boxItems": [{"count": 51, "itemId": "hnaQjey0", "itemSku": "BuPXLSQf"}, {"count": 35, "itemId": "fBcDH6FZ", "itemSku": "T6VitvpL"}, {"count": 57, "itemId": "JVOTICZN", "itemSku": "ZHWmUI7m"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 3, "comparison": "isLessThan", "name": "4du2fkgF", "predicateType": "EntitlementPredicate", "value": "sUl7hSsm", "values": ["NF9IEdL3", "jw8wNDAJ", "QSfE8VPN"]}, {"anyOf": 48, "comparison": "isLessThanOrEqual", "name": "E3a8fBWK", "predicateType": "EntitlementPredicate", "value": "5CN22Xf4", "values": ["zkRoy217", "GRAkZZQ2", "FX84OxAg"]}, {"anyOf": 41, "comparison": "isNot", "name": "SaI9Bf1X", "predicateType": "SeasonPassPredicate", "value": "f997v6gb", "values": ["Na8wuIHu", "JqnxPRsP", "x4ItEPdR"]}]}, {"operator": "or", "predicates": [{"anyOf": 38, "comparison": "isLessThanOrEqual", "name": "lyEb6oXP", "predicateType": "SeasonPassPredicate", "value": "oYP8LfUb", "values": ["6ui1jGk6", "krQsSo6x", "5ZG0YbIv"]}, {"anyOf": 89, "comparison": "isGreaterThan", "name": "Ge3Bwb3e", "predicateType": "EntitlementPredicate", "value": "CGRRAITd", "values": ["Ndc2E9ZO", "0101L6Un", "jCZdKI1v"]}, {"anyOf": 98, "comparison": "includes", "name": "y3ZEMuE7", "predicateType": "EntitlementPredicate", "value": "jaPMMDuT", "values": ["gL6Pte0W", "HodtxMcc", "Syr8HVuK"]}]}, {"operator": "or", "predicates": [{"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "Q40acp30", "predicateType": "EntitlementPredicate", "value": "xk6SSqzt", "values": ["0TLclYMU", "1jtPB5jt", "7iI2VTBd"]}, {"anyOf": 69, "comparison": "isNot", "name": "UHy4ILuR", "predicateType": "EntitlementPredicate", "value": "VezQK5CX", "values": ["6oexko9g", "6bwqbGzu", "IfddgGQm"]}, {"anyOf": 48, "comparison": "includes", "name": "cQOrEJtJ", "predicateType": "SeasonPassPredicate", "value": "cF1eW7JY", "values": ["QjCorSXp", "bqOOYpH7", "AFGoV0xm"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 9, "fixedTrialCycles": 91, "graceDays": 20}, "region": "wSxQwRow", "regionData": [{"currencyCode": "XYhFPjpU", "currencyNamespace": "dESpgNCl", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1995-02-20T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1971-06-10T00:00:00Z", "discountedPrice": 30, "expireAt": "1995-10-28T00:00:00Z", "price": 37, "purchaseAt": "1971-10-19T00:00:00Z", "trialPrice": 22}, {"currencyCode": "1xE2V6ib", "currencyNamespace": "i48SwxzW", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-11-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1976-04-13T00:00:00Z", "discountedPrice": 18, "expireAt": "1980-07-15T00:00:00Z", "price": 69, "purchaseAt": "1990-10-09T00:00:00Z", "trialPrice": 22}, {"currencyCode": "yf9bgNBi", "currencyNamespace": "IfpkPckX", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1998-04-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1986-11-17T00:00:00Z", "discountedPrice": 66, "expireAt": "1974-05-14T00:00:00Z", "price": 82, "purchaseAt": "1995-07-07T00:00:00Z", "trialPrice": 38}], "seasonType": "TIER", "sku": "e2lSecbq", "stackable": false, "status": "ACTIVE", "tags": ["xzIP8h0H", "2uWHVEFf", "nFKyNiVw"], "targetCurrencyCode": "yCJTPdHN", "targetItemId": "hZHSPMBY", "targetNamespace": "7otn4GWE", "thumbnailUrl": "WQaCKBmQ", "title": "8QMC9bOR", "updatedAt": "1987-03-10T00:00:00Z", "useCount": 27}, "namespace": "oAaujLur", "order": {"currency": {"currencyCode": "w7bPoPzi", "currencySymbol": "8AzgmMsF", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "19bXqAwJ"}, "ext": {"qwmkN7ia": {}, "hnUntxEP": {}, "JEW23zlv": {}}, "free": true}, "source": "OTHER"}, "script": "nkeYXVfh", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '4jHWJl9V' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'VnuZHq1M' \
    --body '{"grantDays": "3vDVvCss"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Z7FjYI4F' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'gL3r8IrM' \
    --body '{"grantDays": "PujvkV9y"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'EERuzAXF' \
    --offset '48' \
    --tag 'CaNlNabU' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "63C0K3aB", "items": [{"extraSubscriptionDays": 48, "itemId": "XGmuF1g3", "itemName": "ekdpj7Yg", "quantity": 43}, {"extraSubscriptionDays": 82, "itemId": "969CC1lR", "itemName": "orK54f9E", "quantity": 25}, {"extraSubscriptionDays": 99, "itemId": "LUPhsyh8", "itemName": "HJdopPqR", "quantity": 64}], "maxRedeemCountPerCampaignPerUser": 28, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 100, "maxSaleCount": 92, "name": "9XXPrzJO", "redeemEnd": "1981-01-20T00:00:00Z", "redeemStart": "1972-12-05T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["tEl9jqZD", "HieYNs3X", "d0Z156k0"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'uzvbh2Ga' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '6UfRSZNU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rJZLb3iO", "items": [{"extraSubscriptionDays": 71, "itemId": "HLoQIteo", "itemName": "kvvezg4p", "quantity": 12}, {"extraSubscriptionDays": 86, "itemId": "A3QQZIjE", "itemName": "TPZG7kjI", "quantity": 11}, {"extraSubscriptionDays": 22, "itemId": "q9Nl4j0O", "itemName": "JDE3r9ch", "quantity": 99}], "maxRedeemCountPerCampaignPerUser": 0, "maxRedeemCountPerCode": 77, "maxRedeemCountPerCodePerUser": 12, "maxSaleCount": 90, "name": "w86GX8UZ", "redeemEnd": "1974-03-30T00:00:00Z", "redeemStart": "1991-03-19T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["2VXWi96v", "zQFNvTCU", "gRcnWYHn"]}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '96YkuPIM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'YmNldn8r' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'jdzfTXKS' \
    --body '{"categoryPath": "2aaaOuvh", "localizationDisplayNames": {"54udU74d": "rHz1dFe0", "fwy2G2Hx": "O8cw3n87", "aWroCLxP": "Q4kwKuvB"}}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YZA2VRsc' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '1w4JstQE' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ssc6w5hz' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'BrztEplw' \
    --namespace $AB_NAMESPACE \
    --storeId '0T3FVuvn' \
    --body '{"localizationDisplayNames": {"DAkv9tSp": "SVwYdZeF", "KYuIAF0K": "nrgMWwfS", "ulzRDpNy": "qYY2jjDU"}}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ZmyKaIeG' \
    --namespace $AB_NAMESPACE \
    --storeId 'VVX3BRra' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'iLvKWrXx' \
    --namespace $AB_NAMESPACE \
    --storeId 'GFUa9WQ1' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Do91ZoQz' \
    --namespace $AB_NAMESPACE \
    --storeId 'T05RUlrT' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'sZZaYBCb' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '94' \
    --code 'CvMDzIRc' \
    --limit '43' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'B793DHKs' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 46}' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId 'vPiiKMN1' \
    --namespace $AB_NAMESPACE \
    --batchNo '91' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '7hq4bLw2' \
    --namespace $AB_NAMESPACE \
    --batchNo '37' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'uq5meqsc' \
    --namespace $AB_NAMESPACE \
    --batchNo '18' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'MMDprXyw' \
    --namespace $AB_NAMESPACE \
    --code '8iWl4QtD' \
    --limit '18' \
    --offset '10' \
    --userId 'DDwFynbF' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'eWl9S674' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'kUk0oqSx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'XopsJMO7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Cr4toEbs", "currencySymbol": "fH4X0LKm", "currencyType": "REAL", "decimals": 48, "localizationDescriptions": {"LTIfuINq": "AbqlK2Zf", "iQBykwvD": "13GVwuCZ", "jDjFzWsz": "hDRviupb"}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'OVxwXkZw' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"LfS3nWdj": "j8JZfCgw", "secFV3VK": "tpdqexGX", "SQHYY8My": "xcPsZK9L"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'pA0nDoHs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'mq4tfV5U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '9xZv0gy2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "E7xfOeZr", "rewards": [{"currency": {"currencyCode": "n4sWhcrG", "namespace": "y5Bvui3u"}, "item": {"itemId": "kaMVsp2W", "itemSku": "HgB3iN9k", "itemType": "z9SsooVB"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "eg3signt", "namespace": "7bGfpm2q"}, "item": {"itemId": "CV4IApjm", "itemSku": "baRufKWR", "itemType": "3Vezj5rt"}, "quantity": 21, "type": "CURRENCY"}, {"currency": {"currencyCode": "bleW1lJn", "namespace": "IBOmsFuD"}, "item": {"itemId": "Cxt4xHiv", "itemSku": "CMzcrg3f", "itemType": "MiFLiGt0"}, "quantity": 87, "type": "ITEM"}]}, {"id": "0y41MBwV", "rewards": [{"currency": {"currencyCode": "jmqam7F0", "namespace": "YnIeWA2t"}, "item": {"itemId": "dZ9uHXRC", "itemSku": "9xQEteGA", "itemType": "kPyOBeKB"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "hEOP1MSU", "namespace": "xwOxqz6L"}, "item": {"itemId": "gpA4LFTU", "itemSku": "g6gwHrMl", "itemType": "G0x5cObR"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "kFoIe1gG", "namespace": "DtouN1sD"}, "item": {"itemId": "h6NzHOZp", "itemSku": "vy0LAsXt", "itemType": "4DCQL9XN"}, "quantity": 66, "type": "CURRENCY"}]}, {"id": "O4MKxmlh", "rewards": [{"currency": {"currencyCode": "A291Jy5Y", "namespace": "Py3CkUCs"}, "item": {"itemId": "wnOyiLVp", "itemSku": "pTcIKd3Q", "itemType": "rmzFuTyD"}, "quantity": 23, "type": "ITEM"}, {"currency": {"currencyCode": "SQ4XY1N7", "namespace": "THYkExbJ"}, "item": {"itemId": "WGJW0OfG", "itemSku": "y6PsDcDO", "itemType": "IWLKKiaw"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "ZjaNpa1l", "namespace": "9WBFql47"}, "item": {"itemId": "5Idcumu9", "itemSku": "BUMCWasR", "itemType": "ezHEjXWH"}, "quantity": 95, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"HRWXlTiU": "46H6rfbp", "jltOpQDw": "faIebojo", "0TUbyUli": "IQGkg17Q"}}, {"platform": "XBOX", "platformDlcIdMap": {"9oh6VdSJ": "0M93r5FN", "iL0mdmn3": "a1EC4kE8", "kiMJVNVD": "nuhG74RP"}}, {"platform": "XBOX", "platformDlcIdMap": {"Lc35D3qP": "5C2cUvzw", "VYqWEsK9": "03OCQfWL", "yjZ79qlX": "hoYxIYkY"}}]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'ECg0o7wB' \
    --itemId '["GKbvoIZG", "F4Bn0VfR", "mwcFI1Rg"]' \
    --limit '78' \
    --offset '84' \
    --userId '7zFRR5nv' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'SfIZBRWg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '99' \
    --status 'SUCCESS' \
    --userId '4ErTT1BH' \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "PamRc1r5", "password": "acYsbXBh"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "NLrPj4dL"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "GpnBoUja", "serviceAccountId": "b1PeUnSZ"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "89owO74Y", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"qLzzxwF3": "xkbTvXPX", "vVqWBcmj": "oH81oh8X", "7DH2UwkG": "Cn1WNEUM"}}, {"itemIdentity": "GyTHZHnC", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"oi9blsL5": "19k7tORo", "IYRrMjSv": "Mhsw4JSL", "SJw5lRoR": "dGYiHom8"}}, {"itemIdentity": "wiNQDsaJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"npRvEXqB": "sOby1M8H", "1xPcRA1h": "G0XIB1Fc", "AhJPIqxL": "Tp9AvX9g"}}]}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "xL5dYQZG"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "FFZSRmRj", "publisherAuthenticationKey": "E5agS7Y3"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "E1HHzsju", "clientSecret": "z3Wm4x7T", "organizationId": "5LHo32JE"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "FBVUh0Nr"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'jExNXyP8' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'rCa2rp7K' \
    --body '{"categoryPath": "2OEvRh19", "targetItemId": "sxGdMW8H", "targetNamespace": "LZpH0AeI"}' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '21AQ8PVk' \
    --body '{"appId": "OaxGRDcs", "appType": "GAME", "baseAppId": "q8fubZpO", "boothName": "8NlHb7kp", "categoryPath": "92Me4RdJ", "clazz": "Jma0uqZo", "displayOrder": 6, "entitlementType": "CONSUMABLE", "ext": {"WWzengzp": {}, "NHgAyLJv": {}, "w69I5Ah6": {}}, "features": ["ToVe3Db7", "lwQMdGiq", "KgFZzJFF"], "images": [{"as": "7syvWtR0", "caption": "Md3TpEvW", "height": 71, "imageUrl": "QjnWekU4", "smallImageUrl": "dGb2Srgm", "width": 53}, {"as": "FlT1Vpcg", "caption": "mLq8MjNs", "height": 98, "imageUrl": "IxI2SNHd", "smallImageUrl": "bU3Co3oL", "width": 39}, {"as": "9fYhKeIZ", "caption": "FbTMUuB2", "height": 52, "imageUrl": "sglpWNUu", "smallImageUrl": "oT1qcnzW", "width": 58}], "itemIds": ["TsZKjclE", "QSajSbjx", "0BXt5FBY"], "itemQty": {"241bW6O3": 98, "YxPxWkqr": 97, "DKCUENFC": 70}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"ylUD36ia": {"description": "JRTdEghu", "localExt": {"QXAXwD06": {}, "oNeNJugz": {}, "3H5SrmH7": {}}, "longDescription": "uSl8M4Dp", "title": "DggpoAJq"}, "2N9hBd20": {"description": "cUftNsc3", "localExt": {"2RhDmtYd": {}, "cY4mC8Bt": {}, "HYvoyVtX": {}}, "longDescription": "ePeCgrN9", "title": "t3DUQwcZ"}, "g0ptqID5": {"description": "V7lxIuuC", "localExt": {"f0kFBP8g": {}, "HwbunR50": {}, "m2462tQ4": {}}, "longDescription": "4q3ViGvL", "title": "cCKgorAG"}}, "maxCount": 7, "maxCountPerUser": 43, "name": "Rmz49g5M", "optionBoxConfig": {"boxItems": [{"count": 74, "itemId": "O8Judk5G", "itemSku": "DXPdCWJn"}, {"count": 12, "itemId": "9Sjtpdqb", "itemSku": "zisZ6cU9"}, {"count": 23, "itemId": "7zCpep6A", "itemSku": "rkHJgFsQ"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 14, "fixedTrialCycles": 53, "graceDays": 77}, "regionData": {"8Bp0R3gV": [{"currencyCode": "g9s0f5fO", "currencyNamespace": "BAJGWI2v", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-05-09T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1988-10-26T00:00:00Z", "discountedPrice": 16, "expireAt": "1973-03-18T00:00:00Z", "price": 10, "purchaseAt": "1973-01-19T00:00:00Z", "trialPrice": 32}, {"currencyCode": "nFfoyL4x", "currencyNamespace": "qVpCxJwP", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1984-09-07T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-08-01T00:00:00Z", "discountedPrice": 84, "expireAt": "1986-07-17T00:00:00Z", "price": 32, "purchaseAt": "1977-12-14T00:00:00Z", "trialPrice": 47}, {"currencyCode": "TBQtgQ1o", "currencyNamespace": "nGdcNxHR", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1973-10-04T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1999-09-29T00:00:00Z", "discountedPrice": 17, "expireAt": "1992-08-22T00:00:00Z", "price": 65, "purchaseAt": "1996-10-30T00:00:00Z", "trialPrice": 9}], "hR3NQhdk": [{"currencyCode": "MuK1zL1o", "currencyNamespace": "LCyKiNWW", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1994-05-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1999-08-06T00:00:00Z", "discountedPrice": 37, "expireAt": "1982-03-11T00:00:00Z", "price": 38, "purchaseAt": "1999-01-13T00:00:00Z", "trialPrice": 68}, {"currencyCode": "k0NaBgmg", "currencyNamespace": "TulEhpQ9", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-05-03T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1984-04-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1975-06-20T00:00:00Z", "price": 45, "purchaseAt": "1980-03-11T00:00:00Z", "trialPrice": 94}, {"currencyCode": "vq7NOjkQ", "currencyNamespace": "qqsyGNuv", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1992-04-04T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1983-08-07T00:00:00Z", "discountedPrice": 21, "expireAt": "1977-12-24T00:00:00Z", "price": 15, "purchaseAt": "1999-07-04T00:00:00Z", "trialPrice": 79}], "Lu03xy3D": [{"currencyCode": "NsX3NBlo", "currencyNamespace": "goZrO8a5", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1992-04-02T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1994-03-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1971-06-18T00:00:00Z", "price": 65, "purchaseAt": "1994-09-20T00:00:00Z", "trialPrice": 96}, {"currencyCode": "JiyaCfKK", "currencyNamespace": "ttYkG7tG", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1998-02-09T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1996-09-19T00:00:00Z", "discountedPrice": 9, "expireAt": "1996-01-12T00:00:00Z", "price": 94, "purchaseAt": "1990-06-23T00:00:00Z", "trialPrice": 10}, {"currencyCode": "55PlxN5Z", "currencyNamespace": "J1wjKTgD", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1977-06-06T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1992-09-08T00:00:00Z", "discountedPrice": 16, "expireAt": "1980-05-12T00:00:00Z", "price": 9, "purchaseAt": "1978-11-02T00:00:00Z", "trialPrice": 46}]}, "seasonType": "TIER", "sku": "ELCbp6CR", "stackable": false, "status": "INACTIVE", "tags": ["Tl1aDSor", "NlsjnYBT", "roQvTbky"], "targetCurrencyCode": "s7YR34S8", "targetNamespace": "jy7e6sDJ", "thumbnailUrl": "iAN5HI3n", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'LG1bfjBy' \
    --appId 'vLRbXoSQ' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'u3eAExHy' \
    --baseAppId 'kTzfuEtQ' \
    --categoryPath 'k7b2imJb' \
    --features 'ZXZ6O1he' \
    --itemType 'BUNDLE' \
    --limit '83' \
    --offset '95' \
    --region 'J54kLlGF' \
    --sortBy '["createdAt:desc", "displayOrder:asc", "updatedAt"]' \
    --storeId 'ftyc4UZN' \
    --tags 'ATPNbhGi' \
    --targetNamespace 'DoRsRj3e' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["AJSzKRXX", "QaOzSwTf", "pIpcov09"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mdJmeiLp' \
    --sku 'xzjjyNQC' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'EnxA5XD8' \
    --populateBundle 'false' \
    --region 'ohVvVQD1' \
    --storeId 'IkqVt17K' \
    --sku 'Jv1FrRb8' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '325uu4Kh' \
    --sku '0RVKg1zC' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["iuMUpadg", "452Hfwl6", "U25dWqAX"]' \
    --storeId 'e099c5Su' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'oXOozeOp' \
    --region '20AI5XHr' \
    --storeId 'GBFlOQx6' \
    --itemIds 'zNx22aLq' \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetAvailablePredicateTypes' test.out

#- 85 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId '76MoS3Em' \
    --body '{"itemIds": ["zJpHiHTF", "pTtRcaRI", "8rAkqwbU"]}' \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'BUNDLE' \
    --limit '8' \
    --offset '67' \
    --storeId '5XGveYBB' \
    --keyword 'YuswQjGG' \
    --language 'QZ5Vwa5Y' \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '77' \
    --offset '91' \
    --sortBy '["updatedAt", "createdAt"]' \
    --storeId 'tNegjVKP' \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '2Xb0Nc53' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '9aqv6A6h' \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'BXC1ZeLR' \
    --namespace $AB_NAMESPACE \
    --storeId 'wLbRuJiC' \
    --body '{"appId": "YkKEuOa2", "appType": "DLC", "baseAppId": "5L9st3xF", "boothName": "XCSooOGf", "categoryPath": "wKlgyIXh", "clazz": "LIsaAVNs", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"VDNUwiRE": {}, "inbLW4PG": {}, "0uMfalAN": {}}, "features": ["g6kweqd2", "qt4kQm0o", "OjV1j1WN"], "images": [{"as": "DVKiTdqA", "caption": "vsxQ76my", "height": 51, "imageUrl": "EvwLhNEA", "smallImageUrl": "D6WLdAro", "width": 61}, {"as": "fEPH1C1s", "caption": "jaHwlnec", "height": 34, "imageUrl": "101EqqmB", "smallImageUrl": "cTQMYb6N", "width": 54}, {"as": "6PztxVNa", "caption": "p4IA9nZ0", "height": 67, "imageUrl": "JZk0ECEv", "smallImageUrl": "21Whkrxt", "width": 26}], "itemIds": ["I80pyWHo", "kHWJkpiG", "T7hm8iLG"], "itemQty": {"bpmJEyrv": 15, "uIfLRVWf": 33, "HnteisEL": 65}, "itemType": "MEDIA", "listable": false, "localizations": {"oiJMeNTH": {"description": "sT1dS0W0", "localExt": {"nAVa53Qo": {}, "hSe0oAN3": {}, "gqG0erFu": {}}, "longDescription": "NO0kSGy7", "title": "Oghss5eo"}, "C9RJg9hA": {"description": "vM4X4t46", "localExt": {"T2diaofN": {}, "P2dFBgC3": {}, "rDiZs0A4": {}}, "longDescription": "Tfaqq3Vn", "title": "2bgymE5v"}, "9ydOIme4": {"description": "r865GVpq", "localExt": {"UXmjk2SN": {}, "6d7KLoNl": {}, "gfmrEwEn": {}}, "longDescription": "IXm1nacK", "title": "isQcwW2M"}}, "maxCount": 23, "maxCountPerUser": 5, "name": "CChgIl6Y", "optionBoxConfig": {"boxItems": [{"count": 88, "itemId": "a3EutcG1", "itemSku": "DparKI2P"}, {"count": 32, "itemId": "TJHTc0qk", "itemSku": "S6LCOfom"}, {"count": 6, "itemId": "1VaBh14I", "itemSku": "cOINlhlT"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 24, "fixedTrialCycles": 71, "graceDays": 92}, "regionData": {"sYNOcj8S": [{"currencyCode": "Fs0a7tsi", "currencyNamespace": "Nfabyzhc", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1974-12-08T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1975-11-29T00:00:00Z", "discountedPrice": 9, "expireAt": "1984-11-09T00:00:00Z", "price": 63, "purchaseAt": "1971-04-01T00:00:00Z", "trialPrice": 67}, {"currencyCode": "k031P4oY", "currencyNamespace": "jySLidIG", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1983-03-08T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1982-10-27T00:00:00Z", "discountedPrice": 92, "expireAt": "1988-08-28T00:00:00Z", "price": 11, "purchaseAt": "1990-04-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "QtVTVnmI", "currencyNamespace": "Gm0mfnNj", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1996-06-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-01-13T00:00:00Z", "discountedPrice": 7, "expireAt": "1981-01-23T00:00:00Z", "price": 78, "purchaseAt": "1994-12-19T00:00:00Z", "trialPrice": 31}], "h9e5tINd": [{"currencyCode": "7tgUAs5A", "currencyNamespace": "tvORayOO", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1998-10-28T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1982-12-05T00:00:00Z", "discountedPrice": 28, "expireAt": "1979-09-20T00:00:00Z", "price": 72, "purchaseAt": "1997-08-14T00:00:00Z", "trialPrice": 90}, {"currencyCode": "yqJ5sqfW", "currencyNamespace": "JWPETLdE", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1994-08-29T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1973-08-11T00:00:00Z", "discountedPrice": 32, "expireAt": "1977-11-11T00:00:00Z", "price": 79, "purchaseAt": "1984-08-27T00:00:00Z", "trialPrice": 31}, {"currencyCode": "MCJkRrzR", "currencyNamespace": "uv7KOzqW", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1980-12-29T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1973-12-12T00:00:00Z", "discountedPrice": 93, "expireAt": "1991-01-22T00:00:00Z", "price": 64, "purchaseAt": "1986-01-04T00:00:00Z", "trialPrice": 7}], "CXaBtwnM": [{"currencyCode": "JeP0cTX7", "currencyNamespace": "bmfofHvl", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1984-12-07T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1982-04-09T00:00:00Z", "discountedPrice": 89, "expireAt": "1987-07-07T00:00:00Z", "price": 57, "purchaseAt": "1971-02-23T00:00:00Z", "trialPrice": 15}, {"currencyCode": "65d0gpKL", "currencyNamespace": "mNUmygCm", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1991-01-31T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1982-05-24T00:00:00Z", "discountedPrice": 58, "expireAt": "1991-01-15T00:00:00Z", "price": 91, "purchaseAt": "1992-06-11T00:00:00Z", "trialPrice": 75}, {"currencyCode": "tE02iHrv", "currencyNamespace": "cOBGMAMT", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1973-08-10T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1991-12-21T00:00:00Z", "discountedPrice": 43, "expireAt": "1976-01-03T00:00:00Z", "price": 16, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 65}]}, "seasonType": "PASS", "sku": "ZGOsH5t9", "stackable": true, "status": "ACTIVE", "tags": ["GWLidb7x", "SbFQjNdk", "2AgQ4hcn"], "targetCurrencyCode": "WA1AI5HK", "targetNamespace": "pHnOsKE7", "thumbnailUrl": "fs6XdKLc", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'XUs4Ah2m' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'xfL4rGxG' \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Rj8ldZp7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 28, "orderNo": "zyLmBpuv"}' \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'ivzzBvzt' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DAzs7spZ' \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'm82sgy3e' \
    --namespace $AB_NAMESPACE \
    --storeId 'yTtok2vH' \
    --body '{"carousel": [{"alt": "Eq4mwTdg", "previewUrl": "K1FziJMx", "thumbnailUrl": "kP8ABBnC", "type": "video", "url": "OoRqiEYp", "videoSource": "vimeo"}, {"alt": "RMNlLYyK", "previewUrl": "FwJDdkPs", "thumbnailUrl": "nuWkeOzT", "type": "image", "url": "3MFPPcTG", "videoSource": "vimeo"}, {"alt": "EZoJB2mm", "previewUrl": "vsn3R9bE", "thumbnailUrl": "l8ur3jGs", "type": "video", "url": "ZGmup1ia", "videoSource": "generic"}], "developer": "tHRoWhnt", "forumUrl": "xVlNuRf4", "genres": ["RPG", "RPG", "MassivelyMultiplayer"], "localizations": {"ex1grbTc": {"announcement": "wVf6Ng87", "slogan": "zg8K03B6"}, "jBY17P4i": {"announcement": "upU737hK", "slogan": "GxMeXbky"}, "zsPYM4kN": {"announcement": "qa5wF9ak", "slogan": "Zap2Vz51"}}, "platformRequirements": {"BKc9w6pm": [{"additionals": "m8Jc9iKN", "directXVersion": "NcalSp4T", "diskSpace": "Z5T0kF7G", "graphics": "VSZWZq4x", "label": "f6IRGZeU", "osVersion": "PO18eUhH", "processor": "PKLe7nrU", "ram": "ZTqAei5L", "soundCard": "WnFOg3zg"}, {"additionals": "xhiAJxMX", "directXVersion": "MqfKxVEt", "diskSpace": "4GduHvw1", "graphics": "z5BBwddH", "label": "DJrfIvNh", "osVersion": "dungdfj9", "processor": "JNzebCqU", "ram": "Yjf2yjvR", "soundCard": "9CIjv880"}, {"additionals": "qILFrsyi", "directXVersion": "67yixFP0", "diskSpace": "9sDPpq9T", "graphics": "aXdlZFUp", "label": "xFf1wpmF", "osVersion": "oDLBogYs", "processor": "HjNGXY11", "ram": "x5yw4fuu", "soundCard": "hqaY5IsU"}], "Bx0nwYnH": [{"additionals": "6AszpU1n", "directXVersion": "BlmFMxfj", "diskSpace": "viU2jP6K", "graphics": "HKhEE4uU", "label": "MwVekI6x", "osVersion": "KnNYl6Eb", "processor": "q2yKXNrx", "ram": "opViIYtR", "soundCard": "X0RBBCiy"}, {"additionals": "gvxqoLoG", "directXVersion": "Wz4N2mIx", "diskSpace": "jHC5Rmay", "graphics": "5lP2Slpj", "label": "Zzfhd2vm", "osVersion": "I3MSoe44", "processor": "1rhvJH85", "ram": "8QnbUdjM", "soundCard": "epK8zpaa"}, {"additionals": "jWAuZNGy", "directXVersion": "u1cmfI1o", "diskSpace": "c0U7EdYs", "graphics": "cWFM6U6u", "label": "Tfm2hJQ8", "osVersion": "T6QN5BVZ", "processor": "vyjTFwbW", "ram": "nNyuLdHo", "soundCard": "RXyQvmOz"}], "wToo8hx0": [{"additionals": "xn8pWjmR", "directXVersion": "5lzNdTQU", "diskSpace": "h9RE0uF0", "graphics": "qjVghRtz", "label": "lt9FwwHX", "osVersion": "0sqyALUQ", "processor": "3Eb9zyE2", "ram": "oNikepOk", "soundCard": "GiBFyDgH"}, {"additionals": "6Y2Dexd0", "directXVersion": "LhlBf06V", "diskSpace": "PLRpWrNa", "graphics": "gVtRfh43", "label": "Nlyv3dwG", "osVersion": "bs7GL1Db", "processor": "hwixtnuG", "ram": "bvjZjW8u", "soundCard": "UdAap1m0"}, {"additionals": "61K3L4vo", "directXVersion": "lhKbY9P3", "diskSpace": "QO7yAHmD", "graphics": "9CLC4bVn", "label": "N2RAMhYL", "osVersion": "LuywwUSq", "processor": "29PwNslz", "ram": "7nbED14j", "soundCard": "aImGxNw2"}]}, "platforms": ["MacOS", "IOS", "MacOS"], "players": ["LocalCoop", "Multi", "CrossPlatformMulti"], "primaryGenre": "Simulation", "publisher": "9F7ipwkA", "releaseDate": "1984-10-31T00:00:00Z", "websiteUrl": "fLUa7jgg"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'S5d7mVsW' \
    --namespace $AB_NAMESPACE \
    --storeId 'c5Oex9UW' \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'RA3L7tZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'eMuo9MjT' \
    --namespace $AB_NAMESPACE \
    --storeId 'c8iFIH32' \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'N9Ne4o5q' \
    --itemId 'scMK8SNE' \
    --namespace $AB_NAMESPACE \
    --storeId 'V6ORIKYS' \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'omyqUquD' \
    --itemId 'qCDxRJrN' \
    --namespace $AB_NAMESPACE \
    --storeId 'PGUgtQff' \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'VTtlOhhL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'UaNicMLE' \
    --populateBundle 'true' \
    --region '1t7YpZj7' \
    --storeId 'ZEhFBegR' \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'BgujmPWP' \
    --namespace $AB_NAMESPACE \
    --storeId 'LrN9PzoJ' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 55, "comparison": "excludes", "name": "A0Dirnnt", "predicateType": "SeasonTierPredicate", "value": "npocvggc", "values": ["GfJXoYrh", "tFyQtsvJ", "z3WTkBI7"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "GLvMnaiD", "predicateType": "SeasonTierPredicate", "value": "sOIhL1XZ", "values": ["lMgDN9Pb", "sDCx3sSs", "zdzTk0w1"]}, {"anyOf": 93, "comparison": "isGreaterThan", "name": "2DcqKS2o", "predicateType": "SeasonPassPredicate", "value": "DZdOc2CF", "values": ["8VWUnyNB", "41rzEkkm", "u4AdEeSN"]}]}, {"operator": "and", "predicates": [{"anyOf": 21, "comparison": "isLessThanOrEqual", "name": "tVtu8TeH", "predicateType": "SeasonPassPredicate", "value": "Y2FMVIJl", "values": ["kg9H75Nj", "e4QB1mkn", "GkOnPCpG"]}, {"anyOf": 12, "comparison": "isNot", "name": "VsNQbs4H", "predicateType": "SeasonTierPredicate", "value": "EWbH04Tx", "values": ["H1mTa1Qm", "G3K3TPHU", "Qkuor7q3"]}, {"anyOf": 24, "comparison": "includes", "name": "RqhwbSxp", "predicateType": "SeasonPassPredicate", "value": "YOiW5jn0", "values": ["PUtDaJgY", "S4QTsIIh", "yDT76QyO"]}]}, {"operator": "or", "predicates": [{"anyOf": 86, "comparison": "isLessThanOrEqual", "name": "0Hm7Hjik", "predicateType": "SeasonPassPredicate", "value": "NkvsVJdR", "values": ["9ZAiGYJH", "TjWiBiap", "fxTQT8qE"]}, {"anyOf": 38, "comparison": "isGreaterThanOrEqual", "name": "Vj3FOacZ", "predicateType": "SeasonPassPredicate", "value": "2tgkXpMP", "values": ["wA9GoKQZ", "iUV2IVW8", "l15VzYpU"]}, {"anyOf": 57, "comparison": "excludes", "name": "yma13YoI", "predicateType": "SeasonTierPredicate", "value": "NHcTelEI", "values": ["egWW01rU", "SwDQsJz7", "Xr4IcbUS"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'bspnYtjW' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "OaKWCvq0"}' \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name 'QLCWMD5e' \
    --offset '4' \
    --tag 'vpdhxeNd' \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iouhKY8o", "name": "edtss1DR", "status": "INACTIVE", "tags": ["kLCXYLAB", "qgXoUlbH", "a9FrLXr5"]}' \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'Hfwnmbcz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'O3Bk9qhN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FUu79lWO", "name": "lc8OttRW", "status": "ACTIVE", "tags": ["lB2wAKq5", "uC8wvSwP", "25vKK9fL"]}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '48CjKObs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'tQ70ynCX' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '78' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'jClcGzW9' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'ozzrY5Qh' \
    --limit '68' \
    --offset '95' \
    --orderNos '["1Ej4yyxT", "Eu0qWYQo", "So6l6VnM"]' \
    --sortBy '45gTD1Fo' \
    --startTime 'gLHBQOj9' \
    --status 'REFUNDED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 109 'QueryOrders' test.out

#- 110 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetOrderStatistics' test.out

#- 111 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XZKTFCGt' \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YhiaolDA' \
    --body '{"description": "R3AVttHW"}' \
    > test.out 2>&1
eval_tap $? 112 'RefundOrder' test.out

#- 113 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetPaymentCallbackConfig' test.out

#- 114 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "bl6PJosd", "privateKey": "gljBYy3Z"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '7ffVcTDf' \
    --externalId '2DiDo5sL' \
    --limit '88' \
    --notificationSource 'PAYPAL' \
    --notificationType '5ITKsO6O' \
    --offset '57' \
    --paymentOrderNo 'Xfvj3PhN' \
    --startDate 'Epn7vGoF' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '6eTFxehU' \
    --limit '47' \
    --offset '67' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "AkJSNBqI", "currencyNamespace": "9rD1I3HD", "customParameters": {"Z1WZyaeV": {}, "h7Dw9Ckx": {}, "8SXvwz7P": {}}, "description": "7PzX4fX0", "extOrderNo": "GFSrn1cH", "extUserId": "9Z0i9ZoE", "itemType": "CODE", "language": "aUGS_DA", "metadata": {"uliGTlI9": "jPXyKJVO", "S9cR3pon": "Md3CMsnN", "x5GHTeFy": "6ncTf0HM"}, "notifyUrl": "Cgk157uk", "omitNotification": true, "platform": "hI8KLRn2", "price": 94, "recurringPaymentOrderNo": "jHkZ8rnU", "region": "Bs2BdGCi", "returnUrl": "wcWMxl5Y", "sandbox": true, "sku": "iuhW1Gk8", "subscriptionId": "f1s4qDc4", "targetNamespace": "9vc9Zk0A", "targetUserId": "2qZvWsU3", "title": "Ho4zmkFR"}' \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Rpk5T5oQ' \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rZw69H9a' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9Vib2b1o' \
    --body '{"extTxId": "S7uigdIv", "paymentMethod": "Won23L4J", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eHDCJ3TL' \
    --body '{"description": "KKRztII3"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FL5fljbO' \
    --body '{"amount": 39, "currencyCode": "8IbpIgPE", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 68, "vat": 36}' \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'irvuPhDY' \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Epic", "Stadia", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "O2esxdVa", "eventTopic": "NTHdmIqM", "maxAwarded": 25, "maxAwardedPerUser": 11, "namespaceExpression": "FiIORNcU", "rewardCode": "dhWp66t9", "rewardConditions": [{"condition": "GR5HNTJA", "conditionName": "t1vXy4DN", "eventName": "wxcT839g", "rewardItems": [{"duration": 37, "itemId": "TaEbsa3g", "quantity": 17}, {"duration": 30, "itemId": "aUhjGpuF", "quantity": 78}, {"duration": 51, "itemId": "EkfkYVlU", "quantity": 25}]}, {"condition": "0wCzTUhb", "conditionName": "9VVKjFx7", "eventName": "Cu74ySAx", "rewardItems": [{"duration": 32, "itemId": "QRShS4wx", "quantity": 52}, {"duration": 72, "itemId": "436WRls5", "quantity": 47}, {"duration": 37, "itemId": "6NIukykn", "quantity": 29}]}, {"condition": "dlofmkpP", "conditionName": "095OQ9Fw", "eventName": "aasTd4bb", "rewardItems": [{"duration": 83, "itemId": "hrpRZYFV", "quantity": 8}, {"duration": 24, "itemId": "q5dd3B7k", "quantity": 47}, {"duration": 57, "itemId": "aUH5XFkf", "quantity": 39}]}], "userIdExpression": "CSkBUhwy"}' \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'A2K10JyE' \
    --limit '85' \
    --offset '3' \
    --sortBy '["namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 128 'QueryRewards' test.out

#- 129 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'ExportRewards' test.out

#- 130 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 130 'ImportRewards' test.out

#- 131 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'PTPYLZjm' \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'lGo1cyFQ' \
    --body '{"description": "DrdAcAUd", "eventTopic": "4o4r7jnt", "maxAwarded": 95, "maxAwardedPerUser": 66, "namespaceExpression": "a9e0dExd", "rewardCode": "wh9lH2ft", "rewardConditions": [{"condition": "KUrJR3le", "conditionName": "q1nW71po", "eventName": "omKPwGK5", "rewardItems": [{"duration": 3, "itemId": "liImLhxo", "quantity": 16}, {"duration": 51, "itemId": "yLjIZVBb", "quantity": 97}, {"duration": 63, "itemId": "Jw0yRFql", "quantity": 40}]}, {"condition": "XDy7XpUV", "conditionName": "h5AEF7Sc", "eventName": "z03uk7Bm", "rewardItems": [{"duration": 40, "itemId": "uGWYO2hY", "quantity": 61}, {"duration": 2, "itemId": "wPIeiqty", "quantity": 67}, {"duration": 30, "itemId": "pmdv5Q8x", "quantity": 21}]}, {"condition": "UwR5VmuN", "conditionName": "96Ya4qqt", "eventName": "pS0aJkD8", "rewardItems": [{"duration": 14, "itemId": "7FNBv7iH", "quantity": 69}, {"duration": 6, "itemId": "f37leihv", "quantity": 21}, {"duration": 55, "itemId": "5yTa924T", "quantity": 14}]}], "userIdExpression": "8tG1xW8h"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'k3Srgv9v' \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'jhcbfBpe' \
    --body '{"payload": {"eS2WF98E": {}, "qBX8gdPR": {}, "6dSp4qmX": {}}}' \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'R8BRIusC' \
    --body '{"conditionName": "hDqy8t11", "userId": "8PDc8yHa"}' \
    > test.out 2>&1
eval_tap $? 135 'DeleteRewardConditionRecord' test.out

#- 136 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'ListStores' test.out

#- 137 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "ppgyMmJ5", "defaultRegion": "kpfddgQn", "description": "BjIDqYoI", "supportedLanguages": ["SijvMetY", "ZeshJuSw", "WYSh2sAH"], "supportedRegions": ["AJAfFCGn", "PKr72qR8", "UK5itTXr"], "title": "LPPMWpgm"}' \
    > test.out 2>&1
eval_tap $? 137 'CreateStore' test.out

#- 138 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YXQqUYXY' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'ImportStore' test.out

#- 139 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'GetPublishedStore' test.out

#- 140 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'DeletePublishedStore' test.out

#- 141 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'GetPublishedStoreBackup' test.out

#- 142 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'RollbackPublishedStore' test.out

#- 143 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FrhzeVSN' \
    > test.out 2>&1
eval_tap $? 143 'GetStore' test.out

#- 144 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TLp7DUUO' \
    --body '{"defaultLanguage": "pWTudnqQ", "defaultRegion": "GWLqeUS1", "description": "2lS0lLSW", "supportedLanguages": ["i1x9eEc8", "iaJMBCCw", "NLkuP3Dp"], "supportedRegions": ["FVQ99WF9", "xodks0ZM", "YYcBhX1C"], "title": "TQZrOpog"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateStore' test.out

#- 145 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FJewfhyk' \
    > test.out 2>&1
eval_tap $? 145 'DeleteStore' test.out

#- 146 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ySVAgDDn' \
    --action 'UPDATE' \
    --itemSku 'vwHQTXYX' \
    --itemType 'OPTIONBOX' \
    --limit '53' \
    --offset '6' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'Knmx4Y2l' \
    --updatedAtStart 'OkVZu1Kz' \
    > test.out 2>&1
eval_tap $? 146 'QueryChanges' test.out

#- 147 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Fxb7zYz3' \
    > test.out 2>&1
eval_tap $? 147 'PublishAll' test.out

#- 148 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '8TMq7cKg' \
    > test.out 2>&1
eval_tap $? 148 'PublishSelected' test.out

#- 149 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'GCGNkrkW' \
    > test.out 2>&1
eval_tap $? 149 'SelectAllRecords' test.out

#- 150 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'ptWXQTIp' \
    --action 'CREATE' \
    --itemSku '0tsCVI4I' \
    --itemType 'INGAMEITEM' \
    --type 'ITEM' \
    --updatedAtEnd 'pQgsd8wP' \
    --updatedAtStart 'kX7cQbU1' \
    > test.out 2>&1
eval_tap $? 150 'GetStatistic' test.out

#- 151 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Y8jZSRKB' \
    > test.out 2>&1
eval_tap $? 151 'UnselectAllRecords' test.out

#- 152 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'KbY6Gkd2' \
    --namespace $AB_NAMESPACE \
    --storeId 'VZSAUbpx' \
    > test.out 2>&1
eval_tap $? 152 'SelectRecord' test.out

#- 153 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'BGubRymh' \
    --namespace $AB_NAMESPACE \
    --storeId 'XRSxcGIM' \
    > test.out 2>&1
eval_tap $? 153 'UnselectRecord' test.out

#- 154 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'gwflQ9Nl' \
    --targetStoreId 'J2ulN59m' \
    > test.out 2>&1
eval_tap $? 154 'CloneStore' test.out

#- 155 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId 'yDp1j1dF' \
    > test.out 2>&1
eval_tap $? 155 'ExportStore' test.out

#- 156 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'FzJiHGU0' \
    --limit '39' \
    --offset '67' \
    --sku '1AdmlcuY' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'xdSKJ1x8' \
    > test.out 2>&1
eval_tap $? 156 'QuerySubscriptions' test.out

#- 157 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'oJpudSOc' \
    > test.out 2>&1
eval_tap $? 157 'RecurringChargeSubscription' test.out

#- 158 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'N34ruAAT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetTicketDynamic' test.out

#- 159 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'hko1FRT0' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "uI6X63we"}' \
    > test.out 2>&1
eval_tap $? 159 'DecreaseTicketSale' test.out

#- 160 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'kIzZiNJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetTicketBoothID' test.out

#- 161 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'EOHavy8t' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "PIZnyQhH"}' \
    > test.out 2>&1
eval_tap $? 161 'IncreaseTicketSale' test.out

#- 162 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'oMKs6wNt' \
    --body '{"achievements": [{"id": "7onKN4KH", "value": 2}, {"id": "5qUXtPlD", "value": 18}, {"id": "XRHp5oeL", "value": 86}], "steamUserId": "YHLAtAoS"}' \
    > test.out 2>&1
eval_tap $? 162 'UnlockSteamUserAchievement' test.out

#- 163 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '7IbRPN45' \
    --xboxUserId '7ygJl9at' \
    > test.out 2>&1
eval_tap $? 163 'GetXblUserAchievements' test.out

#- 164 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nsdAUeCd' \
    --body '{"achievements": [{"id": "8bOZmy5m", "percentComplete": 34}, {"id": "3rnjlKPU", "percentComplete": 65}, {"id": "1mvmbmDT", "percentComplete": 26}], "serviceConfigId": "RDG5dnUR", "titleId": "hCprUh5u", "xboxUserId": "eLrX3Sr8"}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateXblUserAchievement' test.out

#- 165 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'uWyGc4Ui' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeCampaign' test.out

#- 166 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'bAKrONNW' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeEntitlement' test.out

#- 167 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ZWGlHlwU' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeFulfillment' test.out

#- 168 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'mczou3Qc' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeIntegration' test.out

#- 169 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'PnfPWndL' \
    > test.out 2>&1
eval_tap $? 169 'AnonymizeOrder' test.out

#- 170 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'camA4tHz' \
    > test.out 2>&1
eval_tap $? 170 'AnonymizePayment' test.out

#- 171 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Y6XKhNzy' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeSubscription' test.out

#- 172 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'CSCukJ1S' \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeWallet' test.out

#- 173 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ExqaRyWg' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'DFPewyx2' \
    --features '["hwaiqvfG", "LMwmOB1k", "zybpnWa3"]' \
    --itemId '["8jI5jDnK", "JLOfRWi5", "zxF48a54"]' \
    --limit '96' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 173 'QueryUserEntitlements' test.out

#- 174 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2ZSXlnXq' \
    --body '[{"endDate": "1987-02-18T00:00:00Z", "grantedCode": "RAKG3WVs", "itemId": "B5dMqlOm", "itemNamespace": "GV7WkDw9", "language": "nPv", "quantity": 92, "region": "OWaWOTpT", "source": "GIFT", "startDate": "1976-04-09T00:00:00Z", "storeId": "MDeFuXgI"}, {"endDate": "1982-08-07T00:00:00Z", "grantedCode": "ae8rot5b", "itemId": "QqNwZNua", "itemNamespace": "Y70d1Al8", "language": "dji-611", "quantity": 82, "region": "LAKfUAXI", "source": "PURCHASE", "startDate": "1972-05-13T00:00:00Z", "storeId": "GBslcW4l"}, {"endDate": "1997-01-23T00:00:00Z", "grantedCode": "cvaS9Wbn", "itemId": "LQ8WLQXZ", "itemNamespace": "ihhjCltd", "language": "gm_vaCX", "quantity": 31, "region": "Xe2JaRSI", "source": "GIFT", "startDate": "1987-04-25T00:00:00Z", "storeId": "AuEUDl9V"}]' \
    > test.out 2>&1
eval_tap $? 174 'GrantUserEntitlement' test.out

#- 175 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dj8sYvlv' \
    --activeOnly 'false' \
    --appId 'S9oXBUjW' \
    > test.out 2>&1
eval_tap $? 175 'GetUserAppEntitlementByAppId' test.out

#- 176 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ujVyGBxR' \
    --activeOnly 'true' \
    --limit '78' \
    --offset '25' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 176 'QueryUserEntitlementsByAppType' test.out

#- 177 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '73ZwaX9c' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'tOWnaDy6' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementByItemId' test.out

#- 178 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yJZZLAT2' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --sku 'jFtqsbH8' \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementBySku' test.out

#- 179 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZzxJOJE4' \
    --appIds '["vIqVyANM", "qgpNb1ZV", "O9DbVygV"]' \
    --itemIds '["K1pvbTIR", "pH4fviL6", "dux2IinB"]' \
    --skus '["6i8ZULOE", "BW19NplR", "qSN4393g"]' \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlement' test.out

#- 180 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'YUHJCdeU' \
    --itemIds '["e0ZActaZ", "KIgOmFmw", "42d0302T"]' \
    > test.out 2>&1
eval_tap $? 180 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 181 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '96bQyvRr' \
    --appId 'v3u5Ysrj' \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 182 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'iDXjzJbc' \
    --entitlementClazz 'CODE' \
    --itemId 'GH0vK51x' \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemId' test.out

#- 183 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'CJSSOTV9' \
    --ids '["bTgWeg2U", "ntSsvMid", "J1G3Y1MM"]' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipByItemIds' test.out

#- 184 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xgpkT9FB' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'cIZyrXqz' \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementOwnershipBySku' test.out

#- 185 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Hd4L5uRP' \
    --entitlementIds 'tFdiz0Yp' \
    > test.out 2>&1
eval_tap $? 185 'RevokeUserEntitlements' test.out

#- 186 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'EpXR3jML' \
    --namespace $AB_NAMESPACE \
    --userId 'ppZWfRf6' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlement' test.out

#- 187 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '2Lzi4IR7' \
    --namespace $AB_NAMESPACE \
    --userId 'CNYJwsGf' \
    --body '{"endDate": "1981-05-22T00:00:00Z", "nullFieldList": ["HXsnWcHw", "l2ntXqpp", "iZ5uoM9A"], "startDate": "1989-06-11T00:00:00Z", "status": "INACTIVE", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateUserEntitlement' test.out

#- 188 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'OjmnEB1M' \
    --namespace $AB_NAMESPACE \
    --userId 'Hqvj4N5s' \
    --body '{"options": ["vWF7tZij", "cvg8DzzA", "OyKL4Y8o"], "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 188 'ConsumeUserEntitlement' test.out

#- 189 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'LuOYNVr6' \
    --namespace $AB_NAMESPACE \
    --userId 'yJKfMwY4' \
    > test.out 2>&1
eval_tap $? 189 'DisableUserEntitlement' test.out

#- 190 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '2oR2iy5C' \
    --namespace $AB_NAMESPACE \
    --userId 'LoIP5pJ4' \
    > test.out 2>&1
eval_tap $? 190 'EnableUserEntitlement' test.out

#- 191 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'ke0NXCGM' \
    --namespace $AB_NAMESPACE \
    --userId 'bZFa8Zft' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementHistories' test.out

#- 192 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'G5qlHO8k' \
    --namespace $AB_NAMESPACE \
    --userId 'zYUDW0vM' \
    > test.out 2>&1
eval_tap $? 192 'RevokeUserEntitlement' test.out

#- 193 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'C0312GsK' \
    --body '{"duration": 47, "endDate": "1987-08-07T00:00:00Z", "itemId": "PrBfohfh", "itemSku": "gpYM02Eq", "language": "2fvZ5Ewb", "order": {"currency": {"currencyCode": "hQxCOfFg", "currencySymbol": "Co8nB4fy", "currencyType": "REAL", "decimals": 5, "namespace": "48Gb8WEe"}, "ext": {"TZwXR9HX": {}, "iqqoD4o3": {}, "m15kzUIw": {}}, "free": true}, "orderNo": "oSUXdOyA", "origin": "IOS", "quantity": 38, "region": "MphWO7EB", "source": "REDEEM_CODE", "startDate": "1999-06-02T00:00:00Z", "storeId": "V0rtXA4O"}' \
    > test.out 2>&1
eval_tap $? 193 'FulfillItem' test.out

#- 194 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'dX7cT6DY' \
    --body '{"code": "tPggM8xZ", "language": "VFCm-IIBr-Zg", "region": "Zg1WQYZX"}' \
    > test.out 2>&1
eval_tap $? 194 'RedeemCode' test.out

#- 195 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'gf3oyAAZ' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "MtF7bI8I", "namespace": "rylNQmj2"}, "item": {"itemId": "KOdPFIIp", "itemSku": "VKr3gzNN", "itemType": "h26ID3zY"}, "quantity": 65, "type": "ITEM"}, {"currency": {"currencyCode": "BS6ahqKX", "namespace": "UZ0nRiXI"}, "item": {"itemId": "qjqtWYHp", "itemSku": "9VzoD790", "itemType": "ELLh9uVH"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "BH1xagaK", "namespace": "vsXg18ND"}, "item": {"itemId": "We38KXN5", "itemSku": "BcF2mCuc", "itemType": "TbIvkpFv"}, "quantity": 91, "type": "ITEM"}], "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 195 'FulfillRewards' test.out

#- 196 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ihoA0AZk' \
    --endTime 'ptTrZ4iD' \
    --limit '73' \
    --offset '87' \
    --productId 'wglzdZ2L' \
    --startTime 'IhSiKVQi' \
    --status 'VERIFIED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 196 'QueryUserIAPOrders' test.out

#- 197 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '6r5ogLQT' \
    > test.out 2>&1
eval_tap $? 197 'QueryAllUserIAPOrders' test.out

#- 198 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tWkIYwkr' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "mW", "productId": "DcUEQScp", "region": "VvIbobjU", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 198 'MockFulfillIAPItem' test.out

#- 199 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wqgGcx96' \
    --itemId 'qQaz13tf' \
    --limit '19' \
    --offset '81' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserOrders' test.out

#- 200 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'bln5oH9o' \
    --body '{"currencyCode": "ZlVPamTd", "currencyNamespace": "xHKT3O8W", "discountedPrice": 7, "ext": {"KJ4sGwBT": {}, "caLbywiZ": {}, "WWBFxHft": {}}, "itemId": "jkXRFmHo", "language": "XuBiv8hO", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 11, "quantity": 59, "region": "nW6xF5ky", "returnUrl": "ljZB2ZQE", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 200 'AdminCreateUserOrder' test.out

#- 201 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'W0F7qq7n' \
    --itemId '5jPt80Ck' \
    > test.out 2>&1
eval_tap $? 201 'CountOfPurchasedItem' test.out

#- 202 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tiQmc1OF' \
    --userId '5U0mGpZ5' \
    > test.out 2>&1
eval_tap $? 202 'GetUserOrder' test.out

#- 203 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'hVaaooCR' \
    --userId 'fhxrdEeq' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "JbSYi2Y8"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateUserOrderStatus' test.out

#- 204 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qIQy6sIG' \
    --userId '2gPAvh2o' \
    > test.out 2>&1
eval_tap $? 204 'FulfillUserOrder' test.out

#- 205 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'TAdG2BjA' \
    --userId 'tWjgY7ys' \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderGrant' test.out

#- 206 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'mpQru9Ck' \
    --userId 'L65k33qt' \
    > test.out 2>&1
eval_tap $? 206 'GetUserOrderHistories' test.out

#- 207 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'I6gCTVzW' \
    --userId 'KtaC6ISN' \
    --body '{"additionalData": {"cardSummary": "Vy6XW6QX"}, "authorisedTime": "1985-08-05T00:00:00Z", "chargebackReversedTime": "1990-05-22T00:00:00Z", "chargebackTime": "1977-06-18T00:00:00Z", "chargedTime": "1993-07-15T00:00:00Z", "createdTime": "1998-01-18T00:00:00Z", "currency": {"currencyCode": "AMwsn7cR", "currencySymbol": "1LHhkVhh", "currencyType": "VIRTUAL", "decimals": 32, "namespace": "qX1QZMPJ"}, "customParameters": {"YvxfQ2NO": {}, "t5o70PV6": {}, "dvLaUxx4": {}}, "extOrderNo": "s3QCWtru", "extTxId": "lY5uYA7T", "extUserId": "iQSC97Ec", "issuedAt": "1972-10-24T00:00:00Z", "metadata": {"oxmuQWfz": "vvy7DbpZ", "gn14h3YA": "AyG1EQ9O", "9DtmViE3": "yRD4Fvp3"}, "namespace": "exR4mWzT", "nonceStr": "DLGOiLwP", "paymentMethod": "0D0ZoZVb", "paymentMethodFee": 93, "paymentOrderNo": "4bPflrtG", "paymentProvider": "WALLET", "paymentProviderFee": 15, "paymentStationUrl": "TIDkVixz", "price": 30, "refundedTime": "1999-04-07T00:00:00Z", "salesTax": 2, "sandbox": false, "sku": "VGrIMkvU", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "j8h1PLSJ", "subscriptionId": "VNnLmaqO", "subtotalPrice": 0, "targetNamespace": "OBwnjGLC", "targetUserId": "GNxfLSVo", "tax": 95, "totalPrice": 49, "totalTax": 85, "txEndTime": "1982-06-25T00:00:00Z", "type": "mMa0K5xt", "userId": "LeCfHaf5", "vat": 57}' \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserOrderNotification' test.out

#- 208 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'aBtje9DK' \
    --userId 't46zwhgz' \
    > test.out 2>&1
eval_tap $? 208 'DownloadUserOrderReceipt' test.out

#- 209 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vsFvqayN' \
    --body '{"currencyCode": "rct8vHoF", "currencyNamespace": "0knpSyey", "customParameters": {"d6Z1MJ5b": {}, "xkjU66JS": {}, "PHN7fgln": {}}, "description": "JFjHif6T", "extOrderNo": "7uggwxbL", "extUserId": "thIwfyHz", "itemType": "APP", "language": "hoc-As", "metadata": {"fuOfAXQR": "NvgugIS8", "6bbnFbmk": "vUJ6xQiB", "jpa6x6zP": "j77ySQOV"}, "notifyUrl": "BE7fZhp0", "omitNotification": false, "platform": "55wXblBM", "price": 64, "recurringPaymentOrderNo": "tutTdREk", "region": "YAbp4kux", "returnUrl": "0g3lbAp6", "sandbox": false, "sku": "HD5DB2LY", "subscriptionId": "S8bZVZ1P", "title": "4WaNTa1X"}' \
    > test.out 2>&1
eval_tap $? 209 'CreateUserPaymentOrder' test.out

#- 210 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BC4lSEET' \
    --userId 'HDVUQUhn' \
    --body '{"description": "csJHTzwr"}' \
    > test.out 2>&1
eval_tap $? 210 'RefundUserPaymentOrder' test.out

#- 211 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'YzjDa7Ts' \
    --body '{"code": "MbBsbemZ", "orderNo": "bB8O6C2s"}' \
    > test.out 2>&1
eval_tap $? 211 'ApplyUserRedemption' test.out

#- 212 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'RgXNswMx' \
    --chargeStatus 'SETUP' \
    --itemId 'CVfMfWSV' \
    --limit '77' \
    --offset '95' \
    --sku 'UYI05cG4' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 212 'QueryUserSubscriptions' test.out

#- 213 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '0OUIDtrC' \
    --excludeSystem 'true' \
    --limit '13' \
    --offset '43' \
    --subscriptionId 'bdFbDZoy' \
    > test.out 2>&1
eval_tap $? 213 'GetUserSubscriptionActivities' test.out

#- 214 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '9x0PSLHa' \
    --body '{"grantDays": 74, "itemId": "g9eZUSbU", "language": "RNLWm2wC", "reason": "zVaVUVTY", "region": "XBRxuecj", "source": "SUo5CD0Z"}' \
    > test.out 2>&1
eval_tap $? 214 'PlatformSubscribeSubscription' test.out

#- 215 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IWUkDN5E' \
    --itemId 'uHOfYOBe' \
    > test.out 2>&1
eval_tap $? 215 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 216 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kqcyhdTt' \
    --userId 'IxS7imG6' \
    > test.out 2>&1
eval_tap $? 216 'GetUserSubscription' test.out

#- 217 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sfP2Rtir' \
    --userId 'beq7MXnE' \
    > test.out 2>&1
eval_tap $? 217 'DeleteUserSubscription' test.out

#- 218 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0Cw16J3R' \
    --userId 'ggnsSNAW' \
    --force 'true' \
    --body '{"immediate": true, "reason": "osC2tZh4"}' \
    > test.out 2>&1
eval_tap $? 218 'CancelSubscription' test.out

#- 219 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Tyikx4r7' \
    --userId 'zvumgZ87' \
    --body '{"grantDays": 43, "reason": "SP2mrDp0"}' \
    > test.out 2>&1
eval_tap $? 219 'GrantDaysToSubscription' test.out

#- 220 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vPZEm6IR' \
    --userId 'crvOX8gz' \
    --excludeFree 'false' \
    --limit '6' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 220 'GetUserSubscriptionBillingHistories' test.out

#- 221 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8m3eTic4' \
    --userId 'FjhOgk0G' \
    --body '{"additionalData": {"cardSummary": "jdCo78fX"}, "authorisedTime": "1993-11-09T00:00:00Z", "chargebackReversedTime": "1987-03-15T00:00:00Z", "chargebackTime": "1976-06-02T00:00:00Z", "chargedTime": "1981-03-26T00:00:00Z", "createdTime": "1989-02-14T00:00:00Z", "currency": {"currencyCode": "RCp60Scv", "currencySymbol": "Zw5baU3J", "currencyType": "REAL", "decimals": 3, "namespace": "L9Ywn5rZ"}, "customParameters": {"lNzVMjel": {}, "800CmRO8": {}, "tPUaKui0": {}}, "extOrderNo": "dRXw9RNn", "extTxId": "tEmL72GX", "extUserId": "2AkKjAvz", "issuedAt": "1978-01-31T00:00:00Z", "metadata": {"6zo8Pr2D": "qgOGk50B", "gFm3mb1p": "WWd0qT6r", "uF5CkRjf": "At1FaOtF"}, "namespace": "I8AZiPtg", "nonceStr": "YH21gADk", "paymentMethod": "Oax8W8n8", "paymentMethodFee": 98, "paymentOrderNo": "vOf83PuL", "paymentProvider": "CHECKOUT", "paymentProviderFee": 32, "paymentStationUrl": "H2TKFht7", "price": 63, "refundedTime": "1989-06-15T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "HiSQFV54", "status": "REQUEST_FOR_INFORMATION", "statusReason": "ISbapXdL", "subscriptionId": "Mz3voGfi", "subtotalPrice": 12, "targetNamespace": "eiveC7gy", "targetUserId": "Oom1tBtp", "tax": 83, "totalPrice": 80, "totalTax": 69, "txEndTime": "1976-06-20T00:00:00Z", "type": "y8OBRmzx", "userId": "VL8cv1w7", "vat": 54}' \
    > test.out 2>&1
eval_tap $? 221 'ProcessUserSubscriptionNotification' test.out

#- 222 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'CQ2XXGCM' \
    --namespace $AB_NAMESPACE \
    --userId 'IxkDsZsI' \
    --body '{"count": 24, "orderNo": "LSAFMMwH"}' \
    > test.out 2>&1
eval_tap $? 222 'AcquireUserTicket' test.out

#- 223 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'iHEdHXfU' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserCurrencyWallets' test.out

#- 224 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '7gUH8n2q' \
    --namespace $AB_NAMESPACE \
    --userId 'Cf8z01ro' \
    --limit '12' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 224 'ListUserCurrencyTransactions' test.out

#- 225 CheckWallet
eval_tap 0 225 'CheckWallet # SKIP deprecated' test.out

#- 226 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'NQjx3ux5' \
    --namespace $AB_NAMESPACE \
    --userId 'XiFpxcXE' \
    --body '{"amount": 76, "expireAt": "1992-09-30T00:00:00Z", "origin": "Other", "reason": "dnqbtoI3", "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 226 'CreditUserWallet' test.out

#- 227 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'mV07Nqr4' \
    --namespace $AB_NAMESPACE \
    --userId 'bMsKnMw1' \
    --body '{"amount": 29, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 227 'PayWithUserWallet' test.out

#- 228 GetUserWallet
eval_tap 0 228 'GetUserWallet # SKIP deprecated' test.out

#- 229 DebitUserWallet
eval_tap 0 229 'DebitUserWallet # SKIP deprecated' test.out

#- 230 DisableUserWallet
eval_tap 0 230 'DisableUserWallet # SKIP deprecated' test.out

#- 231 EnableUserWallet
eval_tap 0 231 'EnableUserWallet # SKIP deprecated' test.out

#- 232 ListUserWalletTransactions
eval_tap 0 232 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 233 QueryWallets
eval_tap 0 233 'QueryWallets # SKIP deprecated' test.out

#- 234 GetWallet
eval_tap 0 234 'GetWallet # SKIP deprecated' test.out

#- 235 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'wAFYKOsO' \
    --end 'XDDGvZlJ' \
    --start '7KtO0Qsv' \
    > test.out 2>&1
eval_tap $? 235 'SyncOrders' test.out

#- 236 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["Y4Zc5l21", "xoEToXhO", "5w8zGKBs"], "apiKey": "soXFse4b", "authoriseAsCapture": false, "blockedPaymentMethods": ["ZKWVbYLY", "QWu8EsZn", "p9nK5UbU"], "clientKey": "FdoggxpJ", "dropInSettings": "jZ0YKAxv", "liveEndpointUrlPrefix": "xqR6ou8X", "merchantAccount": "OseyAu7p", "notificationHmacKey": "vOlsXjsA", "notificationPassword": "NsvcKkfJ", "notificationUsername": "BCGWUyZJ", "returnUrl": "uB03Qa7b", "settings": "1bUc4x59"}' \
    > test.out 2>&1
eval_tap $? 236 'TestAdyenConfig' test.out

#- 237 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "Fbj4lULM", "privateKey": "sJ4OVE8S", "publicKey": "2N2cNDWB", "returnUrl": "lfLCshqP"}' \
    > test.out 2>&1
eval_tap $? 237 'TestAliPayConfig' test.out

#- 238 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "ZNk6rpJf", "secretKey": "N2YLlocq"}' \
    > test.out 2>&1
eval_tap $? 238 'TestCheckoutConfig' test.out

#- 239 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '2gQLkx4q' \
    --region 'YfukzezL' \
    > test.out 2>&1
eval_tap $? 239 'DebugMatchedPaymentMerchantConfig' test.out

#- 240 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "eg6s1A9y", "clientSecret": "Hk0QM5ju", "returnUrl": "g9XDUNH9", "webHookId": "yufE2tof"}' \
    > test.out 2>&1
eval_tap $? 240 'TestPayPalConfig' test.out

#- 241 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["dMOb8xR8", "iCF7wYd6", "lEQwBOxe"], "publishableKey": "KZ3oHZJY", "secretKey": "GxeHscBi", "webhookSecret": "zYrgE9W4"}' \
    > test.out 2>&1
eval_tap $? 241 'TestStripeConfig' test.out

#- 242 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "TwLseTR0", "key": "nNqrF4p6", "mchid": "xHYgw5zZ", "returnUrl": "BMH8wfXB"}' \
    > test.out 2>&1
eval_tap $? 242 'TestWxPayConfig' test.out

#- 243 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "TeJa5718", "flowCompletionUrl": "QPvLniPR", "merchantId": 4, "projectId": 99, "projectSecretKey": "mCUsNHaJ"}' \
    > test.out 2>&1
eval_tap $? 243 'TestXsollaConfig' test.out

#- 244 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'xh3r2vSO' \
    > test.out 2>&1
eval_tap $? 244 'GetPaymentMerchantConfig' test.out

#- 245 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'j9qsgtR5' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["OjZDJT1O", "PqPUGlx6", "P5VRGvNB"], "apiKey": "I9yN3dfR", "authoriseAsCapture": false, "blockedPaymentMethods": ["wPqaN10r", "tOsrBcUb", "z3p3Wv70"], "clientKey": "SWS8rCmZ", "dropInSettings": "G087ocpN", "liveEndpointUrlPrefix": "4vsx8cp5", "merchantAccount": "qWHtOreJ", "notificationHmacKey": "3sEUXeU1", "notificationPassword": "7yxCn7Dx", "notificationUsername": "TqKmi1Ce", "returnUrl": "juKobWe9", "settings": "IKD77DGh"}' \
    > test.out 2>&1
eval_tap $? 245 'UpdateAdyenConfig' test.out

#- 246 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'YCkfxWhg' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfigById' test.out

#- 247 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'otQK2Nh8' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "0WxbmofH", "privateKey": "A3jycpAr", "publicKey": "CMvqngPj", "returnUrl": "XySSGBxM"}' \
    > test.out 2>&1
eval_tap $? 247 'UpdateAliPayConfig' test.out

#- 248 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '67oUaqRA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 248 'TestAliPayConfigById' test.out

#- 249 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'tM5G6qBP' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "LQw5n3Ng", "secretKey": "U3HjMbPe"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateCheckoutConfig' test.out

#- 250 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'slkng7jB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfigById' test.out

#- 251 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ZUUJqZaO' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "XgcbE0rH", "clientSecret": "WKPea5Vp", "returnUrl": "2LbRibrb", "webHookId": "NNbXNEmG"}' \
    > test.out 2>&1
eval_tap $? 251 'UpdatePayPalConfig' test.out

#- 252 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'xAQaKXtM' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfigById' test.out

#- 253 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '4R8CTBic' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["sJTWaoPW", "9WiUjhgb", "He1lCgol"], "publishableKey": "5mrJGKLW", "secretKey": "GkmxPla8", "webhookSecret": "5FVc3JcP"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateStripeConfig' test.out

#- 254 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'UnsyqDAv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 254 'TestStripeConfigById' test.out

#- 255 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'OaGi0xdN' \
    --validate 'true' \
    --body '{"appId": "TyVm8OrM", "key": "tExPsHR6", "mchid": "oblSf7zq", "returnUrl": "2D2BRlds"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfig' test.out

#- 256 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'bJnvN9iE' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 256 'UpdateWxPayConfigCert' test.out

#- 257 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '7msJqpTd' \
    > test.out 2>&1
eval_tap $? 257 'TestWxPayConfigById' test.out

#- 258 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'qTMkgLD1' \
    --validate 'false' \
    --body '{"apiKey": "v1cPxkXw", "flowCompletionUrl": "Nuqm2ZhT", "merchantId": 39, "projectId": 9, "projectSecretKey": "lAQHN16V"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateXsollaConfig' test.out

#- 259 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'FZrjK3Fz' \
    > test.out 2>&1
eval_tap $? 259 'TestXsollaConfigById' test.out

#- 260 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'tJUsut5E' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 260 'UpdateXsollaUIConfig' test.out

#- 261 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '27' \
    --namespace 'HTx1cLsB' \
    --offset '0' \
    --region 'FvVomK14' \
    > test.out 2>&1
eval_tap $? 261 'QueryPaymentProviderConfig' test.out

#- 262 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "dt3NP1TX", "region": "pJiRrYTZ", "sandboxTaxJarApiToken": "9mGAAQK2", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "bzsQUOVa", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 262 'CreatePaymentProviderConfig' test.out

#- 263 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 263 'GetAggregatePaymentProviders' test.out

#- 264 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'wXDmwdpF' \
    --region '2HQ76zrY' \
    > test.out 2>&1
eval_tap $? 264 'DebugMatchedPaymentProviderConfig' test.out

#- 265 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 265 'GetSpecialPaymentProviders' test.out

#- 266 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'sXxkKKWk' \
    --body '{"aggregate": "ADYEN", "namespace": "Gz8DvTYS", "region": "6nbpqSf9", "sandboxTaxJarApiToken": "eMJnKgcA", "specials": ["STRIPE", "PAYPAL", "STRIPE"], "taxJarApiToken": "fvp0BLi1", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 266 'UpdatePaymentProviderConfig' test.out

#- 267 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'pRDBy0kf' \
    > test.out 2>&1
eval_tap $? 267 'DeletePaymentProviderConfig' test.out

#- 268 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentTaxConfig' test.out

#- 269 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "aX4Wzrxn", "taxJarApiToken": "KY1jl3MS", "taxJarEnabled": true, "taxJarProductCodesMapping": {"mWtoDXbl": "F4GNqXxO", "GcI8dvzz": "QWxnQb7Y", "GaQBBfbz": "ETTNFUW7"}}' \
    > test.out 2>&1
eval_tap $? 269 'UpdatePaymentTaxConfig' test.out

#- 270 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'C7P5KfO6' \
    --end 'vEJlut02' \
    --start 'dsYHolEJ' \
    > test.out 2>&1
eval_tap $? 270 'SyncPaymentOrders' test.out

#- 271 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'hGw37BMi' \
    --storeId 'dLJLqbpV' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRootCategories' test.out

#- 272 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '1r9PUR8v' \
    --storeId 'fvR74ChG' \
    > test.out 2>&1
eval_tap $? 272 'DownloadCategories' test.out

#- 273 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '3x68Uo8A' \
    --namespace $AB_NAMESPACE \
    --language '0bVaYISO' \
    --storeId 'ezHom32O' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCategory' test.out

#- 274 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'U5mMqYrv' \
    --namespace $AB_NAMESPACE \
    --language '4gXQ3GYb' \
    --storeId 'PW3hCy60' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetChildCategories' test.out

#- 275 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'JE2DM58O' \
    --namespace $AB_NAMESPACE \
    --language 'KguaNa32' \
    --storeId 't5Jte5GO' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetDescendantCategories' test.out

#- 276 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 276 'PublicListCurrencies' test.out

#- 277 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'T9Uj9NOG' \
    --region 'CjBNwSgh' \
    --storeId 'jM3Q31Gu' \
    --appId 'JKkpQygV' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemByAppId' test.out

#- 278 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'tjXtE9mK' \
    --categoryPath '2hpCkjmK' \
    --features 'p0XomE7e' \
    --itemType 'COINS' \
    --language 'tJY7ON7V' \
    --limit '70' \
    --offset '48' \
    --region 'BmERKA63' \
    --sortBy '["createdAt:desc", "displayOrder:desc", "displayOrder:asc"]' \
    --storeId 'qydTNMyn' \
    --tags '6PKKiH6B' \
    > test.out 2>&1
eval_tap $? 278 'PublicQueryItems' test.out

#- 279 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'tgzcKa33' \
    --region '8kyn7Wj7' \
    --storeId 'oBmiNAff' \
    --sku 'FI0Iaf3W' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItemBySku' test.out

#- 280 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'BQUSiWTd' \
    --region 'wLkpCNkq' \
    --storeId 'TPX7Klkc' \
    --itemIds 'r6lMChlG' \
    > test.out 2>&1
eval_tap $? 280 'PublicBulkGetItems' test.out

#- 281 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["DT7DqlGw", "Yl3cPgbR", "gKISNd7c"]}' \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateItemPurchaseCondition' test.out

#- 282 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'OPTIONBOX' \
    --limit '9' \
    --offset '42' \
    --region '5SZPIwqP' \
    --storeId 'RuAua03l' \
    --keyword 'KqeNGJnz' \
    --language 'GgtFZ8jX' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchItems' test.out

#- 283 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ZWyNSZKY' \
    --namespace $AB_NAMESPACE \
    --language '7ivQsmaB' \
    --region 'RJsEXQez' \
    --storeId 'xgjE4yw9' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetApp' test.out

#- 284 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'mJcKe78C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItemDynamicData' test.out

#- 285 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ezC4ttKo' \
    --namespace $AB_NAMESPACE \
    --language 'rSXmLfDU' \
    --populateBundle 'false' \
    --region 'COpnIIpq' \
    --storeId 'wAMvYvKU' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItem' test.out

#- 286 GetPaymentCustomization
eval_tap 0 286 'GetPaymentCustomization # SKIP deprecated' test.out

#- 287 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "zaCpuRkn", "paymentProvider": "PAYPAL", "returnUrl": "P3kqzTLF", "ui": "UBobY63M", "zipCode": "Wf4NcBHc"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentUrl' test.out

#- 288 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LKT17rhQ' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPaymentMethods' test.out

#- 289 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '98kn53kH' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUnpaidPaymentOrder' test.out

#- 290 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pJywcKMA' \
    --paymentProvider 'WALLET' \
    --zipCode 'XFuaTXbb' \
    --body '{"token": "flq7WXnF"}' \
    > test.out 2>&1
eval_tap $? 290 'Pay' test.out

#- 291 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4zxzm3MO' \
    > test.out 2>&1
eval_tap $? 291 'PublicCheckPaymentOrderPaidStatus' test.out

#- 292 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'PAYPAL' \
    --region 'iAaSgvzE' \
    > test.out 2>&1
eval_tap $? 292 'GetPaymentPublicConfig' test.out

#- 293 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'sHMu8YMv' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetQRCode' test.out

#- 294 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '1nvGMhlj' \
    --foreinginvoice 'kLmFrgDg' \
    --invoiceId 'WhVKdhcv' \
    --payload 'BFr7bhYo' \
    --redirectResult '3i3Ffdq8' \
    --resultCode '8D01VQOX' \
    --sessionId 'kEZKl2H8' \
    --status 'ulhfurS3' \
    --token 'oNf97b0n' \
    --type '8edkcfoG' \
    --userId 'bfHQluBD' \
    --orderNo 'xhDF7FYX' \
    --paymentOrderNo '1kR3inib' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl '4aQk9GRj' \
    > test.out 2>&1
eval_tap $? 294 'PublicNormalizePaymentReturnUrl' test.out

#- 295 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'DRdHcpCo' \
    --paymentOrderNo 'iLlzltPC' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 295 'GetPaymentTaxValue' test.out

#- 296 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'SoQ7RkmS' \
    > test.out 2>&1
eval_tap $? 296 'GetRewardByCode' test.out

#- 297 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'KrvX9qkI' \
    --limit '42' \
    --offset '31' \
    --sortBy '["namespace", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 297 'QueryRewards1' test.out

#- 298 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'PX3HFyCg' \
    > test.out 2>&1
eval_tap $? 298 'GetReward1' test.out

#- 299 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'PublicListStores' test.out

#- 300 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["B4PDGtcp", "bmHlGaN5", "wQiAad6c"]' \
    --itemIds '["eIJ3Cz2I", "3SsjoWXZ", "JWM82wHX"]' \
    --skus '["gFUywV76", "BxaD7cCd", "CQZaJgW3"]' \
    > test.out 2>&1
eval_tap $? 300 'PublicExistsAnyMyActiveEntitlement' test.out

#- 301 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'xpxXXc34' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 302 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'K3eLsb5Y' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 303 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'HHQDKgnt' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 304 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["2pNmSqtU", "CG5ltFKx", "NV4Oz3id"]' \
    --itemIds '["PE8KkzjF", "tE1BurZ9", "J60BinLg"]' \
    --skus '["i1N0qIw8", "bNap25ys", "FFcM9ljT"]' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetEntitlementOwnershipToken' test.out

#- 305 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'hOH2VDsZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'PublicGetMyWallet' test.out

#- 306 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oSeoU9Jk' \
    --body '{"epicGamesJwtToken": "WKZLdp8m"}' \
    > test.out 2>&1
eval_tap $? 306 'SyncEpicGameDLC' test.out

#- 307 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MMzyodZW' \
    --body '{"serviceLabel": 90}' \
    > test.out 2>&1
eval_tap $? 307 'PublicSyncPsnDlcInventory' test.out

#- 308 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'VphWaE5u' \
    --body '{"appId": "DlL007nX", "steamId": "7UNw8rFi"}' \
    > test.out 2>&1
eval_tap $? 308 'SyncSteamDLC' test.out

#- 309 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'K4cGAD6X' \
    --body '{"xstsToken": "7y3bg8Yc"}' \
    > test.out 2>&1
eval_tap $? 309 'SyncXboxDLC' test.out

#- 310 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8HqEA0YW' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'My2BJXVR' \
    --features '["urqtvOIf", "NcWujeBN", "wn67pUXN"]' \
    --itemId '["pOiSvwQ1", "Yp5cKWHC", "SEC6EqnP"]' \
    --limit '8' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 310 'PublicQueryUserEntitlements' test.out

#- 311 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5eAonZ1U' \
    --appId 'rPS2iFzK' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserAppEntitlementByAppId' test.out

#- 312 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'rLsVq0HO' \
    --limit '7' \
    --offset '95' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 312 'PublicQueryUserEntitlementsByAppType' test.out

#- 313 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '58XXocZc' \
    --entitlementClazz 'MEDIA' \
    --itemId 'L6MkPJpu' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementByItemId' test.out

#- 314 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'BZ8fsXJv' \
    --entitlementClazz 'MEDIA' \
    --sku '8ufQAUef' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserEntitlementBySku' test.out

#- 315 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'L6Bq3Hyn' \
    --appIds '["hxn58m7Y", "M6uvH1wi", "4ZnvnqLC"]' \
    --itemIds '["viYz4iPU", "7rf8mYUj", "1Ot6ZLQj"]' \
    --skus '["1qJf4cId", "91NuVI9b", "Rug26EtB"]' \
    > test.out 2>&1
eval_tap $? 315 'PublicExistsAnyUserActiveEntitlement' test.out

#- 316 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1RH87GK7' \
    --appId 'lIqLVfHU' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'DQrStMmv' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'vg5CGOtJ' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 318 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'qEEoGnee' \
    --ids '["vTgKRnEa", "oraXtORd", "LoF76UIr"]' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 319 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 't5CDlQWa' \
    --entitlementClazz 'APP' \
    --sku '5h7STkdi' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 320 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'fuVXIfWc' \
    --namespace $AB_NAMESPACE \
    --userId 'e7BOzXJ9' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlement' test.out

#- 321 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'bVt0jTuo' \
    --namespace $AB_NAMESPACE \
    --userId 'r35Hwgdz' \
    --body '{"options": ["7feVvsGE", "8M3WobA2", "SwVbxwQG"], "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 321 'PublicConsumeUserEntitlement' test.out

#- 322 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Cia1SRC6' \
    --body '{"code": "5ALoRAtX", "language": "QLw-MVvY_903", "region": "3aQIFnAk"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicRedeemCode' test.out

#- 323 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZSsSvLjD' \
    --body '{"excludeOldTransactions": true, "language": "wRQ", "productId": "YMo9kc9j", "receiptData": "boDCKuy4", "region": "PCuY4Egl", "transactionId": "2392ZuKG"}' \
    > test.out 2>&1
eval_tap $? 323 'PublicFulfillAppleIAPItem' test.out

#- 324 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '6XeKjrSi' \
    --body '{"epicGamesJwtToken": "xNzivkML"}' \
    > test.out 2>&1
eval_tap $? 324 'SyncEpicGamesInventory' test.out

#- 325 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'yX2kjZLQ' \
    --body '{"autoAck": false, "language": "Ffb-ZrYJ", "orderId": "bAWMf3za", "packageName": "yrxewjfs", "productId": "i2dEzBGB", "purchaseTime": 8, "purchaseToken": "ECZYm8V4", "region": "DpJhXdLr"}' \
    > test.out 2>&1
eval_tap $? 325 'PublicFulfillGoogleIAPItem' test.out

#- 326 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'wTwQuFwX' \
    --body '{"currencyCode": "hTumv8Op", "price": 0.6218846223230693, "productId": "5IcNPK5V", "serviceLabel": 2}' \
    > test.out 2>&1
eval_tap $? 326 'PublicReconcilePlayStationStore' test.out

#- 327 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ueFNRhtz' \
    --body '{"appId": "6ppQsbLY", "language": "bFvX-dsfd", "region": "8fobKivQ", "stadiaPlayerId": "8U50JfwU"}' \
    > test.out 2>&1
eval_tap $? 327 'SyncStadiaEntitlement' test.out

#- 328 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'T6napM69' \
    --body '{"appId": "J1tGIeDv", "currencyCode": "WhciHYNC", "language": "oyx_058", "price": 0.6062448041725161, "productId": "deHbOTKv", "region": "BX6C98d9", "steamId": "UQYx91kF"}' \
    > test.out 2>&1
eval_tap $? 328 'SyncSteamInventory' test.out

#- 329 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YtDSjeYX' \
    --body '{"gameId": "Aq58TAGV", "language": "sjMY", "region": "y8Hv5GWn"}' \
    > test.out 2>&1
eval_tap $? 329 'SyncTwitchDropsEntitlement' test.out

#- 330 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NjwIPn34' \
    --body '{"currencyCode": "HNiCOE4b", "price": 0.8812165958703574, "productId": "iQvgCfjI", "xstsToken": "aPvhZPy0"}' \
    > test.out 2>&1
eval_tap $? 330 'SyncXboxInventory' test.out

#- 331 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nIgmjhyG' \
    --itemId 'FrO16Wab' \
    --limit '37' \
    --offset '88' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 331 'PublicQueryUserOrders' test.out

#- 332 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UEbNWV4m' \
    --body '{"currencyCode": "HrK8he4n", "discountedPrice": 87, "ext": {"hCiOzjGs": {}, "W7gynGPH": {}, "B4CBDykV": {}}, "itemId": "Tgr42JxI", "language": "coir-368", "price": 52, "quantity": 64, "region": "Ry9sgzLK", "returnUrl": "OLFRWaXE"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserOrder' test.out

#- 333 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'roD5N9cH' \
    --userId 'Dkg9muas' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserOrder' test.out

#- 334 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HYBdEkyy' \
    --userId 'qLIWu6M3' \
    > test.out 2>&1
eval_tap $? 334 'PublicCancelUserOrder' test.out

#- 335 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'lWZM2ycI' \
    --userId 'xVaGpLSs' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserOrderHistories' test.out

#- 336 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'y2q8v2Wy' \
    --userId '3Ilk38v2' \
    > test.out 2>&1
eval_tap $? 336 'PublicDownloadUserOrderReceipt' test.out

#- 337 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'pVsH9bQA' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetPaymentAccounts' test.out

#- 338 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '7oHomGea' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'C79Sszo6' \
    > test.out 2>&1
eval_tap $? 338 'PublicDeletePaymentAccount' test.out

#- 339 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ljWHvxy7' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'vnmfF9gO' \
    --limit '7' \
    --offset '23' \
    --sku 'wUpwxrK1' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserSubscriptions' test.out

#- 340 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'b776SXBd' \
    --body '{"currencyCode": "k2vgxwti", "itemId": "BFM2HYOu", "language": "uU", "region": "ie1b2ibp", "returnUrl": "VifM7xax", "source": "E47y4Jis"}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSubscribeSubscription' test.out

#- 341 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zJMtx0Lz' \
    --itemId 't9FtjVub' \
    > test.out 2>&1
eval_tap $? 341 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 342 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Bpfdy2pF' \
    --userId 'gFgZ5AUO' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserSubscription' test.out

#- 343 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fB3lXbZW' \
    --userId '57NSqQ5q' \
    > test.out 2>&1
eval_tap $? 343 'PublicChangeSubscriptionBillingAccount' test.out

#- 344 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NfPsCmz2' \
    --userId 'xdbjO641' \
    --body '{"immediate": true, "reason": "d87i71lk"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelSubscription' test.out

#- 345 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vgakQpkL' \
    --userId 'dG81L0th' \
    --excludeFree 'true' \
    --limit '55' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserSubscriptionBillingHistories' test.out

#- 346 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'I671Ckad' \
    --namespace $AB_NAMESPACE \
    --userId 'DScl8vFf' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetWallet' test.out

#- 347 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'OnTg6Doc' \
    --namespace $AB_NAMESPACE \
    --userId 'dLxVKpxT' \
    --limit '42' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 347 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE