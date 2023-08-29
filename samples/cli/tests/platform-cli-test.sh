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
echo "1..420"

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
    --body '{"context": {"item": {"appId": "rLJQPAYMAmXyPdUM", "appType": "DLC", "baseAppId": "CdM4eb2TJbUGx11q", "boothName": "LPon1AdwOF7MGS8A", "boundItemIds": ["IIWJiGEUAsyoCZfm", "E6YYXRN5PR3F7Xx9", "YQ5vpIzK1g2p4ez6"], "categoryPath": "gGkOTqA9JWajINgE", "clazz": "rHgkUa7xtPk6st8O", "createdAt": "1973-05-02T00:00:00Z", "description": "Wa9QHXb8YrarCr8y", "displayOrder": 42, "entitlementType": "CONSUMABLE", "ext": {"nqReFT5CsQHwUgYb": {}, "6Ic8IqnE9L2kMdmV": {}, "nzNA5LWuTq3jlVkh": {}}, "features": ["5duBB8mcD5ZAFQZa", "vnIWoBCOOnFAd9v1", "0ZuQPZ6GicmgW1aZ"], "fresh": false, "images": [{"as": "T9HfBYGJicyE0BQx", "caption": "AnGb6fjKwE1p7AEv", "height": 86, "imageUrl": "34TiCwH9PzilElsi", "smallImageUrl": "drrbFO7DudO5VD4d", "width": 74}, {"as": "IiCAHceUHIA3ffmJ", "caption": "yVv5hBjvlN1SKOhj", "height": 62, "imageUrl": "sfV1afdu8wIRNubl", "smallImageUrl": "P6ir9olGZarZAeEO", "width": 1}, {"as": "zEt8PbFRtsORNngB", "caption": "VQ5iHNvsVevp3YZD", "height": 98, "imageUrl": "EpfUznTLNiDKuVsq", "smallImageUrl": "lb6iU5e19TolbFO3", "width": 59}], "itemId": "JPQCi4RopVn0Cpn0", "itemIds": ["vKqTwACK8qTWUIj4", "UboDqPDTnfi8y4cG", "55R97tXFON4Rkwqy"], "itemQty": {"n89ummNphOrYYjOv": 34, "x4rZRTFnYWlrwtad": 62, "qCaNtPG28UmHkCcx": 43}, "itemType": "OPTIONBOX", "language": "1PlL1FNcnqCQpvoq", "listable": false, "localExt": {"cUpW0qyEV6UJYHgm": {}, "K8gnJNWczBeZaPPF": {}, "B9cGkkeKrBagmJ3q": {}}, "longDescription": "CM1lAgsAPF0UkSiv", "lootBoxConfig": {"rewardCount": 29, "rewards": [{"lootBoxItems": [{"count": 55, "duration": 82, "endDate": "1991-07-13T00:00:00Z", "itemId": "DReHwx2YkZ76b3zk", "itemSku": "zMQ0SicpMEgVpJEi", "itemType": "usCuQMbAN5T7YQU6"}, {"count": 67, "duration": 64, "endDate": "1974-08-15T00:00:00Z", "itemId": "d2NNHhIOolRcpCkb", "itemSku": "HpHq5aOZZ1EAfmRo", "itemType": "RyQl8TgtcspQjTHi"}, {"count": 88, "duration": 84, "endDate": "1986-11-04T00:00:00Z", "itemId": "KdBA4j5MKFUlBIRz", "itemSku": "WrZpOGKDobesnALF", "itemType": "4LPAgS859py7l7oG"}], "name": "ZTK9zAeimWPPmZ5x", "odds": 0.7890926513185849, "type": "REWARD", "weight": 97}, {"lootBoxItems": [{"count": 0, "duration": 62, "endDate": "1999-11-19T00:00:00Z", "itemId": "uiPvzQnuTsasGaRA", "itemSku": "5Q94pabS5zPpNpgS", "itemType": "MuKsIgFSJUYly0jN"}, {"count": 89, "duration": 47, "endDate": "1995-05-26T00:00:00Z", "itemId": "5qRbXB3ORjRAm1K2", "itemSku": "tuOARPgXStSALiVT", "itemType": "TiDICSjclzKVuO5C"}, {"count": 46, "duration": 81, "endDate": "1974-10-30T00:00:00Z", "itemId": "5U7jODRNt6pAiv4d", "itemSku": "6dohHK8H3aJZ6KVg", "itemType": "JxO9R9UjeiLfYotU"}], "name": "xj1JFodNkC8Q4KiJ", "odds": 0.773346356471955, "type": "REWARD_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 46, "duration": 51, "endDate": "1984-08-07T00:00:00Z", "itemId": "la9GzrUrz6GUY99i", "itemSku": "Ef8cLN70oUwtn2dN", "itemType": "aMVwrmMmmCUhOJ4H"}, {"count": 73, "duration": 61, "endDate": "1975-05-14T00:00:00Z", "itemId": "oazyY8F8kzOI2QBl", "itemSku": "QndQeOqSh3yi8jLd", "itemType": "qqkhqMWLkf5ua7o4"}, {"count": 10, "duration": 85, "endDate": "1991-01-20T00:00:00Z", "itemId": "8EEFA4LzypbVO3ft", "itemSku": "hBzGAyZx1d65HO4X", "itemType": "J610wfNySeW1Q3oT"}], "name": "YdY9YZP04sbwPxKE", "odds": 0.5866739220403504, "type": "REWARD", "weight": 56}], "rollFunction": "DEFAULT"}, "maxCount": 43, "maxCountPerUser": 50, "name": "F4uQQpdA9ONMjY04", "namespace": "5IktXbITIbKri98b", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 92, "endDate": "1981-03-30T00:00:00Z", "itemId": "TUdaRYaLdYP5tDDL", "itemSku": "Jku5vOfqws3IYeHg", "itemType": "VaSAOiWWVGMXAZPt"}, {"count": 31, "duration": 50, "endDate": "1974-10-09T00:00:00Z", "itemId": "sdjC5hdmdorL0eTg", "itemSku": "MCq7VJztAcnjYX6H", "itemType": "C86UxluV4Dwyp4Jc"}, {"count": 4, "duration": 72, "endDate": "1971-08-01T00:00:00Z", "itemId": "xKRZvSyM7wHYXfgv", "itemSku": "cxKrDraFKpC7kfBv", "itemType": "515sDLRyVj2SzI9t"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 83, "comparison": "includes", "name": "o6UgAXiClCz5q6rW", "predicateType": "EntitlementPredicate", "value": "ZuYhAYroZZRb34hw", "values": ["HxCa7jZLgiYIls90", "BG1qxqqCY0RsKTl8", "5GT4ZULCQzQOnCbH"]}, {"anyOf": 29, "comparison": "excludes", "name": "lKtdoM50A61UV70q", "predicateType": "EntitlementPredicate", "value": "qFRuiLgs2Lq8eYV2", "values": ["QulXLJrgbET54N8f", "FoW9ijDnSMZ4OFaO", "bZ6sx0K3HbGceMMY"]}, {"anyOf": 17, "comparison": "isNot", "name": "Bxr38OPiR8V7xNFT", "predicateType": "SeasonTierPredicate", "value": "2DphJISXEk2JbEbE", "values": ["w1OscSf8TfeuoJMf", "gxWSHoiFaQA4DaXL", "jBr1reNcrhVDvGzN"]}]}, {"operator": "and", "predicates": [{"anyOf": 28, "comparison": "excludes", "name": "OVmLJ66zerR96aKK", "predicateType": "SeasonPassPredicate", "value": "hfx7buPyrfDJCyFj", "values": ["Z3Bx4MwumVx3njdT", "k1ZDaqxsqB0RygHR", "B4XjQci7MGCRFi1D"]}, {"anyOf": 86, "comparison": "includes", "name": "RuoiTwkNADL0fjYs", "predicateType": "SeasonTierPredicate", "value": "EHGyLJABAq9ouZmA", "values": ["0bK329lhs7qTeCZM", "TBbi1KCSulRD7KU2", "PaSk03JHQaLBiYg1"]}, {"anyOf": 27, "comparison": "isGreaterThan", "name": "a3gCZV4l7WFJ4sN8", "predicateType": "EntitlementPredicate", "value": "BneYsBuFXBRI0cNW", "values": ["fIvizLyutTz64Iu7", "NqQTN4dmR1ARazpH", "7tEioikz9CzCIagy"]}]}, {"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "xCcv0Dkikdvmyigp", "predicateType": "EntitlementPredicate", "value": "7julLPL2IEOidoAI", "values": ["bm3i1d6VvRxgVvGz", "QHfbTO93RHfM5O1X", "CoFHiAzXnamanGVW"]}, {"anyOf": 0, "comparison": "is", "name": "Iw1ARIbiTYciyL0V", "predicateType": "SeasonTierPredicate", "value": "u5xBA3PjpDjGCE5C", "values": ["Y7Sf25HKGjaGEULG", "FD5vr4BcGh8Qlk6w", "VusOwMHx0a3BaLW8"]}, {"anyOf": 10, "comparison": "isLessThan", "name": "PzO5PQhsivuFc0My", "predicateType": "SeasonPassPredicate", "value": "czhzbPiqPmCKf20P", "values": ["DqikPlIYEa5ay4pe", "6bsa2LXrLEUwH4yT", "hJskjBMq6gxv6v0z"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 10, "fixedTrialCycles": 74, "graceDays": 3}, "region": "AcPWbSW4vaFEP4KJ", "regionData": [{"currencyCode": "O3xCPEgfWJnRDQX6", "currencyNamespace": "X24CFYeV8NoZLARF", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1988-05-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-02-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1985-08-11T00:00:00Z", "price": 0, "purchaseAt": "1983-12-12T00:00:00Z", "trialPrice": 85}, {"currencyCode": "IdEdz904UMKboycP", "currencyNamespace": "GrHYjB47jLSDsxZW", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1983-04-14T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1994-08-23T00:00:00Z", "discountedPrice": 33, "expireAt": "1997-12-18T00:00:00Z", "price": 78, "purchaseAt": "1996-02-17T00:00:00Z", "trialPrice": 88}, {"currencyCode": "TBtpRcdYRwS8kTvg", "currencyNamespace": "D0u1KZoLgybPNL2k", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1997-03-04T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1973-07-23T00:00:00Z", "discountedPrice": 25, "expireAt": "1982-08-22T00:00:00Z", "price": 28, "purchaseAt": "1996-11-09T00:00:00Z", "trialPrice": 78}], "saleConfig": {"currencyCode": "CSSFG4W3FD6NekvX", "price": 7}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "yNJ1Fnrshh4wPk7V", "stackable": false, "status": "ACTIVE", "tags": ["Dxk2X4I7ejujrkHQ", "7CShSoYYKfBnbmRi", "vMgm8XFxlh25ZmYI"], "targetCurrencyCode": "ssCgvt5kf4UV1x0m", "targetItemId": "HpCUtiJgtsXz2vJ4", "targetNamespace": "OvzRmi16o2yZzRLy", "thumbnailUrl": "SPc7GjggbFHzu5o5", "title": "zH7Op0sgcwez34RQ", "updatedAt": "1991-11-29T00:00:00Z", "useCount": 39}, "namespace": "Zbx3tAkiwO1YBrsV", "order": {"currency": {"currencyCode": "FdYV2SJ0pFGEsXml", "currencySymbol": "VHMdjfxkVPCbM2Zt", "currencyType": "VIRTUAL", "decimals": 43, "namespace": "wG4eg2LwxlIBpn7f"}, "ext": {"hyJW6uHrtkuDIOqn": {}, "7gOEklNsoG26yPHr": {}, "QCDIZU1eDLSxy8vm": {}}, "free": false}, "source": "PAYMENT"}, "script": "ofn1xE8lH5KTbrtH", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'gkWkT0QXwUZ7vZZ4' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'e0CJRb0rCPLuTilc' \
    --body '{"grantDays": "ffIrqzLSYW47RrNp"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'SWUoHvbcAhXU7cky' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'h1rnTvhbqTVcVFB0' \
    --body '{"grantDays": "IGUdwvgsDcCUpMOi"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "8VYHYiepuY5czGEv", "dryRun": true, "fulfillmentUrl": "NGqfa8SUFN3W6r71", "itemType": "EXTENSION", "purchaseConditionUrl": "gwBA92vhOhtmHKlH"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '9r6ne3jrQ7tsU0wz' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'c2dsiolYDNEgjIyU' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'o7Sf6TEqAB95EwHw' \
    --body '{"clazz": "WDqubbmwac1vBvvk", "dryRun": false, "fulfillmentUrl": "QA9ulq2jGKoCCYTN", "purchaseConditionUrl": "DPY1YuDTt8wufoCJ"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'ZEbP98Ut6qgUWCKe' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --name 'Gm8Zp3S5EpySW2KG' \
    --offset '8' \
    --tag '8hdgFLMp1EBSy5l7' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "07c43Bk4jESEcvyK", "items": [{"extraSubscriptionDays": 79, "itemId": "a8CLMqEmKPTAsmxx", "itemName": "nBJ8g0r6jASv5ESZ", "quantity": 1}, {"extraSubscriptionDays": 68, "itemId": "8M7Lc3cm8q6s9k8j", "itemName": "veLldmu18KZ0jEEt", "quantity": 29}, {"extraSubscriptionDays": 60, "itemId": "51x0jZDjZnCE0ngW", "itemName": "rr6ktXmROik78ta0", "quantity": 51}], "maxRedeemCountPerCampaignPerUser": 5, "maxRedeemCountPerCode": 85, "maxRedeemCountPerCodePerUser": 5, "maxSaleCount": 12, "name": "6WjeCiNvGFp36aln", "redeemEnd": "1982-08-27T00:00:00Z", "redeemStart": "1971-11-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["zK72tvMeJ35TVoX6", "Om3gwCjdm9rps3LA", "MdtQfPvxlpdjolch"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'nbQmw2VExEdPXbyT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'nWCzldseL8urlW4T' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zrzAPQ3G8JPjJwQb", "items": [{"extraSubscriptionDays": 91, "itemId": "gCHKaoqigWGAxrUr", "itemName": "qeAnmWExTUKwVNAn", "quantity": 25}, {"extraSubscriptionDays": 11, "itemId": "oEDQ7SYCDjVfBNTX", "itemName": "epfBCoR3WHnvuMLF", "quantity": 21}, {"extraSubscriptionDays": 40, "itemId": "kRMatonScgj2MZXh", "itemName": "SisjXZDdmjw6nVA6", "quantity": 27}], "maxRedeemCountPerCampaignPerUser": 77, "maxRedeemCountPerCode": 90, "maxRedeemCountPerCodePerUser": 89, "maxSaleCount": 100, "name": "E36WqhUobc1bKtP5", "redeemEnd": "1980-10-06T00:00:00Z", "redeemStart": "1989-10-04T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["GjqRlW7bUdHNGbA0", "9BWp0cUGVjsvcq21", "y25bSy2RVHOAEWV2"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '7OQmwwFcpe5sDneQ' \
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
    --body '{"appConfig": {"appName": "eLkSVJdNVlOaQCgN"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Pl7roF6sfx2Z3V8U"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "ga0cQdDGHXlrWMqO"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "tTXta3761kHPPjMd"}, "extendType": "CUSTOM"}' \
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
    --storeId 'jfn17brqZn3wvw8S' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'mn6XQ3tCThemj56s' \
    --body '{"categoryPath": "Dnlca3pbodsLqz2L", "localizationDisplayNames": {"P61w8gW1Hy0pih2o": "SpAb9sTBZi6lcTBC", "MyLGUqaCZxggWA9C": "8aWmL9Wz7lCGt6sA", "5cFBbJ9OFotIky15": "Ny1UV3o2KwLU1P8s"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'F82AsW1TK7pPkhVb' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'WXkeHz3eRuLe2IAx' \
    --namespace $AB_NAMESPACE \
    --storeId 'sgBr6yVG1k0vtiOy' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'EpfNUN9re1DVJ89O' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z85uiRTghr5oPvRc' \
    --body '{"localizationDisplayNames": {"JNJrEqtDy8GSSPjd": "ZMkpq9q8TrjFPqBd", "kMUqIXzWBW829kc0": "xSBUhCQZPiy5hnI9", "voDhMLMSMzDhlRKI": "Xl3LzWLbrW3hhlof"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'OJc8o9N2csMVWwf3' \
    --namespace $AB_NAMESPACE \
    --storeId '72bSm1KPqc0I1Hf0' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '4FCCl8AGiAQWPgF3' \
    --namespace $AB_NAMESPACE \
    --storeId 'e7ZNDASPCPvS8xqB' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Vst7yQXQktXHeRWy' \
    --namespace $AB_NAMESPACE \
    --storeId 'fTIhmKDrOLhJSee4' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Kz7LLUitFROR4IpV' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '52' \
    --code '4hIgUo388ruEVtw4' \
    --limit '72' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '5BoW8dEiQX7cWY5f' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 79}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'fLsY3SJzu9J520XN' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'EXEqL0PdxSDkG6L8' \
    --namespace $AB_NAMESPACE \
    --batchNo '76' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Y76vwq1yp9jtBKcM' \
    --namespace $AB_NAMESPACE \
    --batchNo '94' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'gasQrShGXoM0XaSs' \
    --namespace $AB_NAMESPACE \
    --code 'rYpy7XxSKbonwJVF' \
    --limit '57' \
    --offset '70' \
    --userId '9NmPORwXV6N95kzq' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'f0NB0tVEKeqGfggW' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'LyhwA14o0l73uECt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'zfavwWzOyOkCLQey' \
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
    --body '{"currencyCode": "JoYJeOKXjbCcAbwX", "currencySymbol": "wrKech7N4tXHnb6h", "currencyType": "VIRTUAL", "decimals": 79, "localizationDescriptions": {"bvUYDuPOG1qaUoNR": "3aZ9nU9tfx7q1Vxr", "v2FNSAXgka6PQC0C": "4GE9tYY44keswk4I", "qHYav0EmamZink68": "r1VR6hkdLD9dKCnV"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'xdXBjeqt4CCS7XZl' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"LS2D734Oefv7YkBF": "Wek6JKH3KjjSVCLq", "BVKwrj9c0DdwEWc2": "HR9eimvRGU5a50cS", "F287lBL472TpoM6l": "vpgSKm6narkR93NF"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'hbAjvqqTMJMCRkMJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ZJgEA934IXSN5uf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'M62OSkwassgnAD5n' \
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
    --body '{"data": [{"id": "ibhEAhNo2RAHk9Sz", "rewards": [{"currency": {"currencyCode": "8pfRPPV2Ve3h8GZi", "namespace": "ocyj8EF9rsMM2L5h"}, "item": {"itemId": "9kcs9AUWMNFJB7T9", "itemSku": "si6mYdjwPwv30fxc", "itemType": "5VzRV88CVQUQgO9v"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "zLKXn3SsovgUvt3e", "namespace": "liSpNFfLaEQ0NsAg"}, "item": {"itemId": "EGBYCnhr8q8XyrOs", "itemSku": "oDhKANxbpMzRcSP9", "itemType": "s0eN1XnqPw7xCvlK"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "8CPQxdEzBf95nXsK", "namespace": "HSI18cgfgENQ6y41"}, "item": {"itemId": "809utoa4CFQfky6e", "itemSku": "ldrZ42lYgaOWgZIT", "itemType": "lAHJPJEvGyc7lcsk"}, "quantity": 53, "type": "CURRENCY"}]}, {"id": "STt69YsS63bA9KiG", "rewards": [{"currency": {"currencyCode": "qigP3vTfkyRXnprV", "namespace": "Z84XbMaQHZgCtcK9"}, "item": {"itemId": "AyKzFFr4YdgYdbLy", "itemSku": "0KnOoz1ft2QekYEk", "itemType": "a0yn9uhd5UTdLNDL"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "xF0qHqdaFUwyfdWb", "namespace": "rEVh6U4M3buEJ87C"}, "item": {"itemId": "1UTGZ8zmWxRESOfR", "itemSku": "klysldrjpxXbzAqI", "itemType": "hB55LSAdEeg8KWJq"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"currencyCode": "9zVOXkzZ4Wk0SfzW", "namespace": "kXXm9oS6Ui8O77Dv"}, "item": {"itemId": "rPN7rFyMvH37gOci", "itemSku": "NRlRzKcY5QBbHiBG", "itemType": "Ep3kLLjX19u2u7io"}, "quantity": 76, "type": "CURRENCY"}]}, {"id": "tSLO1tFyFKJUjGg5", "rewards": [{"currency": {"currencyCode": "mD119B57tjL15Xkp", "namespace": "KAXTvdsuc7unRf4p"}, "item": {"itemId": "umX85YOtEZPqrXzq", "itemSku": "LK9Kk5r23DrefGa6", "itemType": "LKqbfkRemLlgROGd"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "qIyYv41s7jpeU60N", "namespace": "xaO082b6TTAH6SZy"}, "item": {"itemId": "VWgIBOW0xiR18diR", "itemSku": "2nv1rvg7oHNNy0Cr", "itemType": "cg0ACTOFnA8wP7R9"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "qci6xhdRLct3Za7c", "namespace": "qgEltbX5ShAdTCYH"}, "item": {"itemId": "zr6gpXMjMcDOfoFN", "itemSku": "sQmjuEomIUYPSsOJ", "itemType": "2db1w50aRQ5HNGzj"}, "quantity": 7, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"axze1LGmAdvg858x": "baDqhWasA01iNT9C", "eD6rkl4pGVJKlAaT": "P29hixbIDnqR9CSX", "ZTYRHDbHj6lCZDfW": "w51eKtbsgkvW5Brh"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"DcYN2hYnLNqMlLSb": "0eVpL1vrMTJNghrZ", "le38nWdFvb1uJPBP": "ICknrNstjTtSoxYb", "yLqKAthiP2udsaOr": "86v0Np2YdolfWKxW"}}, {"platform": "STEAM", "platformDlcIdMap": {"uAm8ShqbxPThXPEo": "YCMHjXnl2PSMUDLH", "9aUdBUjWV8WpuimI": "Raabx6F0PWlDSAg8", "GULGbeQ2dVwPFClo": "jTslyoX2OuDM737M"}}]}' \
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
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'cpJiR9DYKfsDrDhA' \
    --itemId '["IlMGSsoNkiVi4RSu", "hcnP6qC2w7wJAiL4", "7p1sEgfmH5tBLYNs"]' \
    --limit '76' \
    --offset '49' \
    --userId 'lrxtLhimW7VuV3Zg' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["o7BDdVWvH3TUzUbd", "TdoLyJ6qyCS29PF3", "ZaNxCkwcl6qIb3Ug"]' \
    --limit '4' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1992-05-30T00:00:00Z", "grantedCode": "Hzg3qKVyArnLw6qT", "itemId": "uOA5hawsfMUTAdAJ", "itemNamespace": "tEqm6KVe6FGYGoCA", "language": "gjEA_FufC", "quantity": 50, "region": "khZsJ5G8AJIUZz5I", "source": "PURCHASE", "startDate": "1977-06-30T00:00:00Z", "storeId": "cZbFiLE5nWmX7gAD"}, {"endDate": "1985-08-04T00:00:00Z", "grantedCode": "TGsd8amA7J4Is13N", "itemId": "c4TI6dff60YUSKTC", "itemNamespace": "N69wxawG1oE9CU3p", "language": "bY_761", "quantity": 73, "region": "JUCEHmc4lEvN5tlr", "source": "PROMOTION", "startDate": "1978-10-15T00:00:00Z", "storeId": "Vb1dZkDp70ThGQpG"}, {"endDate": "1982-06-19T00:00:00Z", "grantedCode": "4qqos6kTWk43SBg3", "itemId": "slXDWrs3DtZCnO3N", "itemNamespace": "Zv5b7D8zzHnLt4xg", "language": "SQs-yTuj", "quantity": 96, "region": "TgRm0s1QB40DQiHV", "source": "GIFT", "startDate": "1997-08-06T00:00:00Z", "storeId": "qkejrjQjMYLfYAQ6"}], "userIds": ["FZxv908GATaricxE", "cd6WMqq3tFM06Ouy", "PKhjfdBIkzbabxtg"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["AT9sSo2EtwJ0khdx", "vnaJQWkqdQLcQKjR", "pGYeS9Pnus2XMJxT"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'TYksanYIufM3bb9H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '48' \
    --status 'SUCCESS' \
    --userId 'DfJ6i6X1L6mAUre2' \
    > test.out 2>&1
eval_tap $? 65 'QueryFulfillmentHistories' test.out

#- 66 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'zjVztvso8aFrwp8g' \
    --eventType 'REFUND' \
    --externalOrderId 'C6FJxu6HqhLbgC7s' \
    --limit '29' \
    --offset '62' \
    --startTime 'NwaZSWSPUFPabK9Y' \
    --status 'IGNORED' \
    --userId 'XP7kjEH1Xwvhtrum' \
    > test.out 2>&1
eval_tap $? 66 'QueryIAPClawbackHistory' test.out

#- 67 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "ys7hLJZNjDK86tIx", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 67, "clientTransactionId": "bs6lq7sL9OTIpAtr"}, {"amountConsumed": 5, "clientTransactionId": "r6BcumgIoA8z22fT"}, {"amountConsumed": 60, "clientTransactionId": "9v5X6tU7u1hIRAMz"}], "entitlementId": "NpodJuKHzZjdcqBI", "usageCount": 42}, {"clientTransaction": [{"amountConsumed": 89, "clientTransactionId": "EvhPsUZkEZTdqdjT"}, {"amountConsumed": 22, "clientTransactionId": "Cy5GGZXmD6TxM7kE"}, {"amountConsumed": 91, "clientTransactionId": "XPYOXRedPyHaCBKm"}], "entitlementId": "iyiGUj1DM74JFMHN", "usageCount": 74}, {"clientTransaction": [{"amountConsumed": 7, "clientTransactionId": "tlxyxOw4tVrfK6Wn"}, {"amountConsumed": 2, "clientTransactionId": "iVMpn0xByJpIj5o1"}, {"amountConsumed": 10, "clientTransactionId": "a0MIxV5UeUzDu8iN"}], "entitlementId": "hz5Ois1gVCZdpf4k", "usageCount": 7}], "purpose": "v017ygMCAB1bjFa8"}, "originalTitleName": "crVZHzo2raP4mtlG", "paymentProductSKU": "bOZIStL1auYUrPDy", "purchaseDate": "Y6B1yfGr9toenTfC", "sourceOrderItemId": "SG7m1a0aKoR1IHr1", "titleName": "RExlp9HV1RDdPtBb"}, "eventDomain": "URLHGjphp0xPKdQG", "eventSource": "SKIuJy3wrEGg9l9X", "eventType": "TQVOxotLM6O7ig27", "eventVersion": 25, "id": "i8kPgeRsBL9MmPxa", "timestamp": "v9SkMm5h0ei9pMy1"}' \
    > test.out 2>&1
eval_tap $? 67 'MockPlayStationStreamEvent' test.out

#- 68 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetAppleIAPConfig' test.out

#- 69 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "JP8NcezOSHtF45IM", "password": "B2HAfiXSH0wmhIlE"}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateAppleIAPConfig' test.out

#- 70 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteAppleIAPConfig' test.out

#- 71 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEpicGamesIAPConfig' test.out

#- 72 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "I8WpqOs7JEDBCARY"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateEpicGamesIAPConfig' test.out

#- 73 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteEpicGamesIAPConfig' test.out

#- 74 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGoogleIAPConfig' test.out

#- 75 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "rUMQLwNKbTYGAB9p", "serviceAccountId": "foAt91qolhKNgMS7"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateGoogleIAPConfig' test.out

#- 76 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGoogleIAPConfig' test.out

#- 77 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 77 'UpdateGoogleP12File' test.out

#- 78 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetIAPItemConfig' test.out

#- 79 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "YUQMn8wyhCYwAkIa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Xxy1KOLFfvadcnDr": "EZO1ixdH4gnZRQMg", "AOIDPFQCHjUoPfVc": "88EMN23rz7tyeU5A", "gEe34teeLRAnpBiq": "4gzDUNkNci4aPKsQ"}}, {"itemIdentity": "Q4HlHFCGz5HM0TtR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"RmkqwTDs54iypxS6": "y7iaAtIAnTK84N6y", "Qqwxdd8OfA5B35nJ": "SVj57Q2ZYwhXmOSk", "mRDaAmdQRx5rzjPB": "fvKfOVYDEUCkYile"}}, {"itemIdentity": "WVYpRRLf0J9mwkaB", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"u6stHacjciyliRDL": "xyLsntYApwheIla5", "dwZaYdQGKbv4zENH": "98iiPZY3lfn8OHqh", "wsgvE9iqgfeCjDyb": "tWcz28ugIe2AyW3e"}}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateIAPItemConfig' test.out

#- 80 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'DeleteIAPItemConfig' test.out

#- 81 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetOculusIAPConfig' test.out

#- 82 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "T2aG66HiE0kfSucU", "appSecret": "hgFfsHjHCqcAKbpt"}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateOculusIAPConfig' test.out

#- 83 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteOculusIAPConfig' test.out

#- 84 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetPlayStationIAPConfig' test.out

#- 85 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "AxKV0MEO619mKY1E", "backOfficeServerClientSecret": "ojuvy2GGsnyZAtRy", "enableStreamJob": true, "environment": "YNKz93mj1WU0YW1n", "streamName": "DPMDJGOjT3zPxjrI", "streamPartnerName": "5YTOzNTKbFvUhE2c"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdatePlaystationIAPConfig' test.out

#- 86 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeletePlaystationIAPConfig' test.out

#- 87 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'ValidateExistedPlaystationIAPConfig' test.out

#- 88 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "0rVvwJECuqQmVZWj", "backOfficeServerClientSecret": "XhGAagTV3RXVNG7Q", "enableStreamJob": true, "environment": "bJCNAVcFUQ5tF96m", "streamName": "yryi8xiBnfs8mCeb", "streamPartnerName": "z0tYX8OBB2Guj5pA"}' \
    > test.out 2>&1
eval_tap $? 88 'ValidatePlaystationIAPConfig' test.out

#- 89 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'GetSteamIAPConfig' test.out

#- 90 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "LJMkIbVig9fWn5z6", "publisherAuthenticationKey": "CLZ3BZocUe5NEQVs"}' \
    > test.out 2>&1
eval_tap $? 90 'UpdateSteamIAPConfig' test.out

#- 91 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'DeleteSteamIAPConfig' test.out

#- 92 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetTwitchIAPConfig' test.out

#- 93 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "rpWTn2ftBWsW6eop", "clientSecret": "9Q8ThW8stusS0imy", "organizationId": "gKDbNQM3dEP6aPOQ"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateTwitchIAPConfig' test.out

#- 94 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'DeleteTwitchIAPConfig' test.out

#- 95 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetXblIAPConfig' test.out

#- 96 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "ttBSBOoW7GkW2cnm"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateXblIAPConfig' test.out

#- 97 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteXblAPConfig' test.out

#- 98 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'xRZ2geEOtcH2Dt5P' \
    > test.out 2>&1
eval_tap $? 98 'UpdateXblBPCertFile' test.out

#- 99 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'o1Pyx0Hsa0hQZHw8' \
    --itemId 'QzcrpSflSF5ZnYsf' \
    --itemType 'SEASON' \
    --endTime 'lpS3HW2sJNyXGxI6' \
    --startTime 'shOtd4awxKWPu9YQ' \
    > test.out 2>&1
eval_tap $? 99 'DownloadInvoiceDetails' test.out

#- 100 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '7PslEyko5QhlGNLL' \
    --itemId '57QTkUDcwwdLlflE' \
    --itemType 'APP' \
    --endTime 'Yr6eCdLX4K95QCsz' \
    --startTime 'odorfVszri64u5PR' \
    > test.out 2>&1
eval_tap $? 100 'GenerateInvoiceSummary' test.out

#- 101 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'SwVZnMzl5gmRCJgu' \
    --body '{"categoryPath": "9k7MXB07nhnKMtvG", "targetItemId": "7chaU3ZcQXMIhi3L", "targetNamespace": "LJ6fPaxfZ5SdrLqS"}' \
    > test.out 2>&1
eval_tap $? 101 'SyncInGameItem' test.out

#- 102 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '1YKXMwkAnqWQ2uMx' \
    --body '{"appId": "ceU5i25kn87IV5Cm", "appType": "DLC", "baseAppId": "dPnFBldPbnEjUAN4", "boothName": "stOWqsPMaNK8aVnC", "categoryPath": "wcMV8nBdHChf4aOA", "clazz": "ETfyQIGMdxLlQPtR", "displayOrder": 18, "entitlementType": "DURABLE", "ext": {"yRZdAdbs50Gj62bJ": {}, "h95eJad847yg6O6U": {}, "LSNB9QAFUHAAIfiA": {}}, "features": ["3ZE0jKPBNi9n3iQi", "nl1d6LDwwko3UAE3", "o502wj3byTzxTP4X"], "images": [{"as": "BujczQb4TrvJghrt", "caption": "7r3OkMr4kvErtEsP", "height": 20, "imageUrl": "xfoEd0GvOb484c77", "smallImageUrl": "D4rCCqXJJRzzmfks", "width": 11}, {"as": "IRR8mv4SntD3WmPU", "caption": "l7ftmoC1zG5RC7eE", "height": 12, "imageUrl": "giFZlgWhm7QIbxUq", "smallImageUrl": "Zo2YKSjavRImtahK", "width": 76}, {"as": "8AIuYU21oy7bFnQ3", "caption": "vXPQUQpSaEBBbd5V", "height": 1, "imageUrl": "bodcuVgBwW5vrg4q", "smallImageUrl": "9bkCmS5x0sndUVFh", "width": 11}], "itemIds": ["CqWCP3vQnSfG7nUR", "u4KR9iDbmciWlvXD", "0Zkr5X5ChNGerrw1"], "itemQty": {"nttTvLfZSwQ3GRpo": 39, "ZhpU1hE3I3hDivBk": 37, "ATNmP5nDzv0Adirq": 10}, "itemType": "CODE", "listable": true, "localizations": {"FOTC4kQIeojolL12": {"description": "C1QPydvK9RR0hClx", "localExt": {"GraH64UnzepnU9rZ": {}, "OZGeajfvMIc5gZ7U": {}, "ZUoK5HsYBurGXxGv": {}}, "longDescription": "IK4qU12XFyvx0Ls2", "title": "Rq8fdR2mt04Zls54"}, "tg9PnmXnQVOfHo5s": {"description": "d3H9rceFkNHUJTIg", "localExt": {"mlJcoqCJM8lJgom6": {}, "oeZGrbkbOgnLGBB4": {}, "cgVCGGlpZdUHPiO7": {}}, "longDescription": "LnDIvjB67oXxTfnc", "title": "TJrEAToqFzfLDHF2"}, "lJ7eb33KVYABbnge": {"description": "DyKQB20ulVNfZtsy", "localExt": {"iNJ7UAUrMXjEtwD9": {}, "o2W6nsQSdPWvizHy": {}, "7HQXBpM8ko3dznvI": {}}, "longDescription": "gsQHXGaahivjd9Vh", "title": "d2O0IWVG9bQGBZnT"}}, "lootBoxConfig": {"rewardCount": 65, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 83, "endDate": "1975-03-17T00:00:00Z", "itemId": "Xrm6dOsAgMx7ylUr", "itemSku": "Rh2RZEOeV9cZGD81", "itemType": "xHwVoEP0EeAs6Q7o"}, {"count": 77, "duration": 30, "endDate": "1996-10-20T00:00:00Z", "itemId": "S6yGHnTmwe0QiYOM", "itemSku": "wTIOY9RQTdMxW9VX", "itemType": "5HGBlQpD83Cg72gw"}, {"count": 26, "duration": 26, "endDate": "1991-10-14T00:00:00Z", "itemId": "2N63ohhZmrxSIsxD", "itemSku": "1UgCWKDCzT4Wkjs9", "itemType": "5jxhFohnDOw9Xhj7"}], "name": "ov0yKXchBmyFn4uQ", "odds": 0.37571955938882584, "type": "REWARD", "weight": 40}, {"lootBoxItems": [{"count": 74, "duration": 92, "endDate": "1994-05-29T00:00:00Z", "itemId": "o7sFfqxuEtDvipbK", "itemSku": "2EGex85efeEnHzdf", "itemType": "pKt51WktNyWUTA60"}, {"count": 43, "duration": 91, "endDate": "1996-06-11T00:00:00Z", "itemId": "rZmhaX199eAl0vf3", "itemSku": "2nFjyDY2KkHBaQQq", "itemType": "KrDmbXVBLLdmk1oI"}, {"count": 46, "duration": 83, "endDate": "1985-06-15T00:00:00Z", "itemId": "B3ijYaUf6ABVhq1r", "itemSku": "WvThvQhFhA1ZCksZ", "itemType": "O0Ia7UcLuEe3I1sK"}], "name": "Ai6CSOLUioircVea", "odds": 0.1460153267271408, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 61, "duration": 76, "endDate": "1975-04-02T00:00:00Z", "itemId": "Is3kEI6CEnlH52MV", "itemSku": "5rCaUOCiawWrDOmd", "itemType": "lpaqwTS2Aw4XDGX3"}, {"count": 9, "duration": 78, "endDate": "1998-11-13T00:00:00Z", "itemId": "bDab4yo76XQeuWzu", "itemSku": "RxW4ZzDUoP31y5i8", "itemType": "c9tUWJu6pkujrPLR"}, {"count": 48, "duration": 34, "endDate": "1996-04-09T00:00:00Z", "itemId": "zJS7A0HX5tp3qspH", "itemSku": "RAhWQaTZwKnnJN5a", "itemType": "Ny4uErU3sPjqSvDG"}], "name": "ufrKkstb5JFIhcWz", "odds": 0.9241624251905756, "type": "REWARD_GROUP", "weight": 54}], "rollFunction": "DEFAULT"}, "maxCount": 69, "maxCountPerUser": 39, "name": "z5dBHUi9z5k1Wm8a", "optionBoxConfig": {"boxItems": [{"count": 50, "duration": 93, "endDate": "1985-06-18T00:00:00Z", "itemId": "Maqk3TNaUHui0deB", "itemSku": "u3rjEhODmpkEOZnv", "itemType": "o6GrlbD6YXZskDYD"}, {"count": 80, "duration": 17, "endDate": "1972-01-13T00:00:00Z", "itemId": "VWR2iaoJTSoMe6xj", "itemSku": "8bRr75bBPmz5QCHa", "itemType": "ouFVTPtYsNJh4PJA"}, {"count": 56, "duration": 65, "endDate": "1993-12-25T00:00:00Z", "itemId": "GG2C9tMgRVm9QikY", "itemSku": "IV3Awd33yZHQRsj2", "itemType": "gvyEEeLQFyul6l0O"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 23, "fixedTrialCycles": 19, "graceDays": 2}, "regionData": {"xOQi6Zk1DTn4Dlw6": [{"currencyCode": "rwJcJF22n3Ph9t74", "currencyNamespace": "j0mmdNLQMfQIuVgq", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1973-04-11T00:00:00Z", "expireAt": "1992-12-30T00:00:00Z", "price": 19, "purchaseAt": "1977-06-30T00:00:00Z", "trialPrice": 59}, {"currencyCode": "DoB3S97j8J3lrOKs", "currencyNamespace": "w9aHvjgFCX0N11zU", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1977-03-16T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1998-07-20T00:00:00Z", "expireAt": "1972-05-02T00:00:00Z", "price": 36, "purchaseAt": "1977-01-24T00:00:00Z", "trialPrice": 15}, {"currencyCode": "w0Z6Kp4C3l9hFh1U", "currencyNamespace": "lNLMd9NoTiOTw1sn", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1983-10-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1981-06-25T00:00:00Z", "expireAt": "1971-02-09T00:00:00Z", "price": 42, "purchaseAt": "1997-03-29T00:00:00Z", "trialPrice": 55}], "H610Zg3RgGW6gy0K": [{"currencyCode": "sO0NTzq86tB6dbOR", "currencyNamespace": "jRDUqT1A1RfgVhEl", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1990-10-09T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1971-11-08T00:00:00Z", "expireAt": "1995-05-19T00:00:00Z", "price": 54, "purchaseAt": "1976-09-29T00:00:00Z", "trialPrice": 79}, {"currencyCode": "6Z24RnZeqsmIEevj", "currencyNamespace": "1S4Ntd2G0v7ZZMyw", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1984-12-18T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1978-03-16T00:00:00Z", "expireAt": "1976-04-11T00:00:00Z", "price": 85, "purchaseAt": "1987-03-01T00:00:00Z", "trialPrice": 59}, {"currencyCode": "VVq0rISxOQ770Oqt", "currencyNamespace": "uRTbSofPQ7jWOQGc", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1992-08-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1989-08-13T00:00:00Z", "expireAt": "1978-10-02T00:00:00Z", "price": 80, "purchaseAt": "1986-08-09T00:00:00Z", "trialPrice": 45}], "VaxAv5ijd3LlcDCk": [{"currencyCode": "yFrQ3HQTpR9BrIWo", "currencyNamespace": "S9RjFuzAwJAPaA9x", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1997-08-24T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1996-04-14T00:00:00Z", "expireAt": "1976-09-11T00:00:00Z", "price": 69, "purchaseAt": "1971-09-19T00:00:00Z", "trialPrice": 15}, {"currencyCode": "beKZBHNNPVstay1s", "currencyNamespace": "YODOUovUjmmo90L2", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1980-01-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1993-07-15T00:00:00Z", "expireAt": "1997-06-05T00:00:00Z", "price": 13, "purchaseAt": "1981-10-05T00:00:00Z", "trialPrice": 96}, {"currencyCode": "AKON5u0dOwHto2b4", "currencyNamespace": "yCK1eWQsLpy7p14c", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1990-12-23T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1979-03-24T00:00:00Z", "expireAt": "1986-05-21T00:00:00Z", "price": 84, "purchaseAt": "1976-07-13T00:00:00Z", "trialPrice": 41}]}, "saleConfig": {"currencyCode": "qFMTDKbixCi5rkn0", "price": 92}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "DtpSPRqIpFk4y2Yr", "stackable": false, "status": "ACTIVE", "tags": ["EtHq2wnj1vp8uiZp", "ekUjH1WK54TV0ywj", "W54ZdNAqwcwxuXA0"], "targetCurrencyCode": "FMkuGm20HW5iG6N7", "targetNamespace": "NJqpGIyfv4h9CCks", "thumbnailUrl": "EEuqcxlytRZ6zVmK", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 102 'CreateItem' test.out

#- 103 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'pQEdud9ynlS9hvKB' \
    --appId 'x9oQUmF35alrRNHo' \
    > test.out 2>&1
eval_tap $? 103 'GetItemByAppId' test.out

#- 104 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '3OeG7SbVBv4l3bYg' \
    --baseAppId 'qJEvkc3Jm7CmOGdZ' \
    --categoryPath 'F6H4mfPQMjpaoypB' \
    --features '0LmTlSb7Ryy9E3vU' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '0' \
    --offset '26' \
    --region 'um4KUorS1rsCitnS' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "createdAt:asc"]' \
    --storeId 'kkDd2JqyfVWTvaOt' \
    --tags 'MIG2bEQbcvgN1mdc' \
    --targetNamespace 'FtBepL9Oc6yOnOXw' \
    > test.out 2>&1
eval_tap $? 104 'QueryItems' test.out

#- 105 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["ZDGIJWzDinwDuVsI", "e5j91OIMPOAvRezI", "8RuFNvnoZVc7q7En"]' \
    > test.out 2>&1
eval_tap $? 105 'ListBasicItemsByFeatures' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Rnm1qJnV4xJYYlbc' \
    --sku 'NYehj31vNnWEpgU7' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '7jF5aAoUJZz437JV' \
    --populateBundle 'true' \
    --region 'eRmLAalv4WZl1inD' \
    --storeId 'dXEFpcWhG7jsMRmh' \
    --sku '4uPzS1TRMvFLoOgJ' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'pL2v37zatsJheH7H' \
    --sku 'gDqnlX2KxqeOAV5j' \
    > test.out 2>&1
eval_tap $? 108 'GetItemIdBySku' test.out

#- 109 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["p5q9r5QM4K5pC8rF", "QbgK636PCfLL6ARc", "yYpxaxp3Wd0eOK3W"]' \
    --storeId 'UW1dK7JeQQWFCcwc' \
    > test.out 2>&1
eval_tap $? 109 'GetBulkItemIdBySkus' test.out

#- 110 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '3HUznPBsnbfgORyV' \
    --region 'dgoA9IoRpw7Uy4ET' \
    --storeId 'V6fIwAwxAQ7r6AzC' \
    --itemIds 'BtykPBeNMAtXyiPH' \
    > test.out 2>&1
eval_tap $? 110 'BulkGetLocaleItems' test.out

#- 111 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 111 'GetAvailablePredicateTypes' test.out

#- 112 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'kpgWAmNhnB1nvsvf' \
    --body '{"itemIds": ["qZF6alNJxNBUypNc", "l1kfNhgjB4sJwp3s", "wq8hgfAJ9I9rjjQ4"]}' \
    > test.out 2>&1
eval_tap $? 112 'ValidateItemPurchaseCondition' test.out

#- 113 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'KLDnWY5PsZX2KXqH' \
    --body '{"changes": [{"itemIdentities": ["vUwihc8itqntOtDA", "p4jLCwVHXhkWQQEQ", "8DX0eOVCFarnlrt3"], "itemIdentityType": "ITEM_ID", "regionData": {"WtybY299F2veE4MK": [{"currencyCode": "5AzqYHj4S5aZWDnH", "currencyNamespace": "wfDe3pnJxps6DTgn", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1993-06-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1978-08-26T00:00:00Z", "discountedPrice": 43, "expireAt": "1988-11-13T00:00:00Z", "price": 88, "purchaseAt": "1989-06-15T00:00:00Z", "trialPrice": 12}, {"currencyCode": "3o5z8VDqMbZpMBmg", "currencyNamespace": "KSWVg0hWUUdLXFBl", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1975-11-25T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1999-07-22T00:00:00Z", "discountedPrice": 13, "expireAt": "1971-06-06T00:00:00Z", "price": 7, "purchaseAt": "1985-09-11T00:00:00Z", "trialPrice": 26}, {"currencyCode": "5X88zSHS4GEq0bVt", "currencyNamespace": "gstclmyB7oEXS435", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1984-10-10T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1988-06-16T00:00:00Z", "discountedPrice": 37, "expireAt": "1983-08-31T00:00:00Z", "price": 33, "purchaseAt": "1977-01-17T00:00:00Z", "trialPrice": 64}], "pizUqoJ2ATVu7EEE": [{"currencyCode": "FOccXYihU7XmAQfv", "currencyNamespace": "agoUMocfG27Ymu23", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1987-04-15T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1971-01-12T00:00:00Z", "discountedPrice": 100, "expireAt": "1977-09-15T00:00:00Z", "price": 57, "purchaseAt": "1974-02-19T00:00:00Z", "trialPrice": 24}, {"currencyCode": "F5h5srovM9uepNnK", "currencyNamespace": "gcvm9XZOcrKiRseu", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1981-03-17T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1983-03-24T00:00:00Z", "discountedPrice": 23, "expireAt": "1976-11-15T00:00:00Z", "price": 15, "purchaseAt": "1974-06-05T00:00:00Z", "trialPrice": 0}, {"currencyCode": "JVCCDgp0YL7kLluy", "currencyNamespace": "7wXADgFdtOZgEkcM", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1983-05-10T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1971-09-16T00:00:00Z", "discountedPrice": 70, "expireAt": "1979-08-14T00:00:00Z", "price": 73, "purchaseAt": "1973-11-11T00:00:00Z", "trialPrice": 91}], "NTZm7JSk6nFeu7py": [{"currencyCode": "nFV6j1KDmAJrdK3U", "currencyNamespace": "oqMSut7siuiviotV", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1991-12-30T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1993-09-29T00:00:00Z", "discountedPrice": 56, "expireAt": "1981-10-31T00:00:00Z", "price": 70, "purchaseAt": "1979-03-02T00:00:00Z", "trialPrice": 17}, {"currencyCode": "Qgx6JRI2QEzfCuRo", "currencyNamespace": "54BCvFcEqvtXuEdV", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1978-02-25T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1981-12-21T00:00:00Z", "discountedPrice": 64, "expireAt": "1979-03-17T00:00:00Z", "price": 58, "purchaseAt": "1994-10-01T00:00:00Z", "trialPrice": 7}, {"currencyCode": "cJ9yHWJWNYQyqqwX", "currencyNamespace": "OZGbUUcqc8GE4sDl", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1982-08-27T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1982-06-15T00:00:00Z", "discountedPrice": 27, "expireAt": "1981-03-09T00:00:00Z", "price": 59, "purchaseAt": "1975-03-01T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["givaMLWGqs9KyiyH", "zi2YpdM690uCmnBe", "83if8VTBkqp9M1U1"], "itemIdentityType": "ITEM_SKU", "regionData": {"C4kfyw7YozXkoVUA": [{"currencyCode": "N9rOIY2BgZZp9Y8A", "currencyNamespace": "ong8hYC70Oz6RPeE", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1988-01-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1998-06-06T00:00:00Z", "discountedPrice": 41, "expireAt": "1971-08-22T00:00:00Z", "price": 84, "purchaseAt": "1975-06-04T00:00:00Z", "trialPrice": 74}, {"currencyCode": "SOdNxkZntRy4Slie", "currencyNamespace": "5pI2go5lE09mf9yV", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1977-05-27T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1978-03-21T00:00:00Z", "discountedPrice": 86, "expireAt": "1978-04-06T00:00:00Z", "price": 69, "purchaseAt": "1984-10-24T00:00:00Z", "trialPrice": 99}, {"currencyCode": "v1GfvF9e9JrOugHC", "currencyNamespace": "iT4T7RlbfIP9zGSJ", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1991-05-28T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1996-01-01T00:00:00Z", "discountedPrice": 17, "expireAt": "1997-07-05T00:00:00Z", "price": 19, "purchaseAt": "1982-07-06T00:00:00Z", "trialPrice": 66}], "lIrpVqj6o6MTLjC9": [{"currencyCode": "G7gThWbo9em0aX2Y", "currencyNamespace": "bufhkrZt5NEpJ1BK", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1974-11-06T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1989-11-03T00:00:00Z", "discountedPrice": 7, "expireAt": "1992-05-26T00:00:00Z", "price": 5, "purchaseAt": "1975-04-01T00:00:00Z", "trialPrice": 29}, {"currencyCode": "2J8G2GDumiZ4PnsP", "currencyNamespace": "OvKqO4bPonuoLAVz", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1991-07-22T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1978-10-26T00:00:00Z", "discountedPrice": 20, "expireAt": "1986-08-19T00:00:00Z", "price": 68, "purchaseAt": "1976-08-25T00:00:00Z", "trialPrice": 71}, {"currencyCode": "pQCBnWnKjjGl9VnL", "currencyNamespace": "euLEt9PcuNBshIpK", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1971-11-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1989-08-29T00:00:00Z", "discountedPrice": 79, "expireAt": "1981-06-14T00:00:00Z", "price": 17, "purchaseAt": "1999-09-23T00:00:00Z", "trialPrice": 66}], "5vXWgpVyZgMGTkWT": [{"currencyCode": "OwaALn9C4E2FXR8S", "currencyNamespace": "bKEdKw3i7Yn55o5U", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1986-01-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1994-07-14T00:00:00Z", "discountedPrice": 86, "expireAt": "1978-06-15T00:00:00Z", "price": 92, "purchaseAt": "1981-03-09T00:00:00Z", "trialPrice": 18}, {"currencyCode": "5Gddh75Rqj1wsVuI", "currencyNamespace": "Woows8V726HgBfrx", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-10-27T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1980-04-02T00:00:00Z", "discountedPrice": 99, "expireAt": "1975-09-24T00:00:00Z", "price": 43, "purchaseAt": "1986-10-19T00:00:00Z", "trialPrice": 55}, {"currencyCode": "8bwomkHmp9Q5pweK", "currencyNamespace": "PWwOuotCozR8fTfC", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1982-07-04T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-04-11T00:00:00Z", "discountedPrice": 91, "expireAt": "1995-10-03T00:00:00Z", "price": 38, "purchaseAt": "1989-11-15T00:00:00Z", "trialPrice": 48}]}}, {"itemIdentities": ["RZzr50KAF1HwDMeC", "hBr4FCIEVTVdkL3l", "8VHRY6Fj9VAyD912"], "itemIdentityType": "ITEM_ID", "regionData": {"r3tUPQtLc7agN4RO": [{"currencyCode": "pwW98taPwXYOaUbH", "currencyNamespace": "UNJot5CV7AsDtpgV", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-05-16T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1985-10-08T00:00:00Z", "discountedPrice": 85, "expireAt": "1976-11-24T00:00:00Z", "price": 22, "purchaseAt": "1984-07-30T00:00:00Z", "trialPrice": 81}, {"currencyCode": "f232Sz9Tc4XSrmnV", "currencyNamespace": "Ug9c0f5uFgp8vaAL", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1981-08-17T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1992-09-07T00:00:00Z", "discountedPrice": 73, "expireAt": "1985-02-10T00:00:00Z", "price": 79, "purchaseAt": "1978-09-29T00:00:00Z", "trialPrice": 29}, {"currencyCode": "T7PseWP2Jfl8zvM6", "currencyNamespace": "qjoacCkgPiBRgANX", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1984-11-15T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1993-05-09T00:00:00Z", "discountedPrice": 92, "expireAt": "1978-06-28T00:00:00Z", "price": 16, "purchaseAt": "1973-01-06T00:00:00Z", "trialPrice": 45}], "uJr553njfUTfVbqw": [{"currencyCode": "gvbg1enrCrx5IGBt", "currencyNamespace": "FcVtyfmzstCvVWZn", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1991-09-09T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1974-10-20T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-05-16T00:00:00Z", "price": 1, "purchaseAt": "1985-01-19T00:00:00Z", "trialPrice": 71}, {"currencyCode": "YT5MooR18wVk7COq", "currencyNamespace": "SMYYStJRoZHSf9EZ", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-06-08T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-02-08T00:00:00Z", "discountedPrice": 32, "expireAt": "1973-10-28T00:00:00Z", "price": 44, "purchaseAt": "1997-01-13T00:00:00Z", "trialPrice": 54}, {"currencyCode": "MrNr52wG9HtOlpQE", "currencyNamespace": "A0jw00vbwvMvhy9J", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1975-10-05T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1972-02-12T00:00:00Z", "discountedPrice": 66, "expireAt": "1994-06-25T00:00:00Z", "price": 7, "purchaseAt": "1991-05-03T00:00:00Z", "trialPrice": 42}], "cpQ1yCGQfQWunVI1": [{"currencyCode": "5q1XNQSCpUXBQX7q", "currencyNamespace": "8m2dFFpwVbv06YRO", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1971-05-05T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1985-07-28T00:00:00Z", "discountedPrice": 88, "expireAt": "1986-11-26T00:00:00Z", "price": 20, "purchaseAt": "1983-07-29T00:00:00Z", "trialPrice": 50}, {"currencyCode": "XcmyQIunLtLoBSIH", "currencyNamespace": "SGh4eEu4FA7GVRYR", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1998-10-02T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1975-04-01T00:00:00Z", "discountedPrice": 85, "expireAt": "1973-08-18T00:00:00Z", "price": 11, "purchaseAt": "1998-11-22T00:00:00Z", "trialPrice": 16}, {"currencyCode": "2I8TATfTAY4bIRQ6", "currencyNamespace": "aTNjbkHgqZWWDCQp", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1992-04-22T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1990-11-25T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-08-03T00:00:00Z", "price": 31, "purchaseAt": "1988-04-17T00:00:00Z", "trialPrice": 47}]}}]}' \
    > test.out 2>&1
eval_tap $? 113 'BulkUpdateRegionData' test.out

#- 114 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '66' \
    --offset '9' \
    --sortBy 'kAKRO8Keetvdkj16' \
    --storeId 'BH19XPjexS6GPnqr' \
    --keyword 'uusDsTgrdSpSPmuB' \
    --language 'kcp1OCsetHVbFABY' \
    > test.out 2>&1
eval_tap $? 114 'SearchItems' test.out

#- 115 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '46' \
    --offset '17' \
    --sortBy '["name:asc"]' \
    --storeId 'xquyQGJngAgzWAsw' \
    > test.out 2>&1
eval_tap $? 115 'QueryUncategorizedItems' test.out

#- 116 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '0HUUBXEVP9x96QYX' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'KNAEIHFGdDeWe9qp' \
    > test.out 2>&1
eval_tap $? 116 'GetItem' test.out

#- 117 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'cbmhBsRfou9CJyXD' \
    --namespace $AB_NAMESPACE \
    --storeId 'F2Qnk6tzaMe7SCEu' \
    --body '{"appId": "ysfwzUghw6WaIKND", "appType": "DLC", "baseAppId": "XhnE39Pru4uIhPR9", "boothName": "oY5gARIc8l4w91T4", "categoryPath": "K8iSkIug8TciZ9s6", "clazz": "QC04YzrOSIfJhoV5", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"ESB2HC22qSBKz7nX": {}, "aNidU7gXJyxk86cs": {}, "LJDDi07QYQf0rEtn": {}}, "features": ["XuyAuZ3VIRP0dkxC", "yOBZvX86x6lvj15G", "biv8ZrZcE7hu59PS"], "images": [{"as": "EuKqtNeNQm73QLGi", "caption": "QI6TXrKZiATMibA3", "height": 37, "imageUrl": "o4DHGte2NFLMjB0N", "smallImageUrl": "MG88Tazvkec0GXMx", "width": 58}, {"as": "2xndxA89ezXpU6rc", "caption": "xiuSyayVjPjVdORX", "height": 11, "imageUrl": "fa9sVNE7f9nH0Gb3", "smallImageUrl": "yF0ycYB0B5HI5pMw", "width": 63}, {"as": "dlzV7EcPEHMeY3Lz", "caption": "Zrn3AzajWn2zNVdi", "height": 10, "imageUrl": "G1MzOuBWgiXP3Xnk", "smallImageUrl": "UorhZldBQMmMJIAF", "width": 60}], "itemIds": ["CqOiufN8GjTNynLV", "tggXpNBdZsYG8m2Y", "d3J6FdsUcdkoDRBW"], "itemQty": {"l9AUclNbnFQb6U9F": 44, "o6jDgrsAmmN7L2G4": 66, "L8nt5wUiQtrn584o": 72}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"bzR9OROQaCEAMc1F": {"description": "WCI86pVCSvMXXooa", "localExt": {"HcV9FZvSk2sJF8uJ": {}, "oNukn5agIsUayk7B": {}, "f9ELAUUlY7eZAvKb": {}}, "longDescription": "446OakPIFfsA7zKy", "title": "YU3MBtFY7dJAnLKO"}, "6zaPukaYrRQVUNh4": {"description": "zFIFmZpLoFcE2ZG6", "localExt": {"xL6tDRemfL7HvlZU": {}, "FB1c9o0HqmRMlMJn": {}, "anXOXTXQb24Mhq0B": {}}, "longDescription": "zWD7Ak2ukZrCmuEo", "title": "2vbFhiuuHhLTAngL"}, "EfK60MR0CKWWLJ4z": {"description": "IL4EIUerlR7QOM0n", "localExt": {"LidxMm3oYTynwmwM": {}, "kZFFpovF3vJM6kZ3": {}, "fwxICV3qkVOnFoql": {}}, "longDescription": "QgnWo72ZIQob843i", "title": "Zi0239Pp16j7m6LH"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 33, "duration": 28, "endDate": "1972-10-08T00:00:00Z", "itemId": "DV4nOTiFgrmHkH2q", "itemSku": "biOV3nOuVC12IdLi", "itemType": "KrhSzV23M35uX2ON"}, {"count": 2, "duration": 84, "endDate": "1999-09-03T00:00:00Z", "itemId": "YE8H2ENTeV4Q4yG9", "itemSku": "iKxhgN98Mqf2pT3C", "itemType": "SUhoPqAx7jNLjYhF"}, {"count": 59, "duration": 67, "endDate": "1979-08-06T00:00:00Z", "itemId": "yrbiVZ1AzGxvygQx", "itemSku": "esiIO5ISi52KDc2D", "itemType": "iaiPVVMfzFwO07F5"}], "name": "vFDjl046tbqYqnU6", "odds": 0.734560564553893, "type": "REWARD_GROUP", "weight": 20}, {"lootBoxItems": [{"count": 82, "duration": 44, "endDate": "1982-11-10T00:00:00Z", "itemId": "3Us2y5ol9GfnONsM", "itemSku": "QLe4nyRdfgs4NBVG", "itemType": "yVbCSkPZwBqEOp7p"}, {"count": 60, "duration": 58, "endDate": "1989-07-12T00:00:00Z", "itemId": "FRmKRXG9mBXybcTl", "itemSku": "m4zAi02mJbq0Lvxl", "itemType": "ZXzDtLLjrhqw1aXy"}, {"count": 78, "duration": 17, "endDate": "1976-06-01T00:00:00Z", "itemId": "9058VqwjCUiMjlJZ", "itemSku": "YskqDLdexvBFaB2V", "itemType": "Vd3TPbDEuP5O5kNO"}], "name": "QwDcu2Sj9KDx2Lwv", "odds": 0.34283302561448215, "type": "REWARD_GROUP", "weight": 15}, {"lootBoxItems": [{"count": 61, "duration": 94, "endDate": "1980-09-08T00:00:00Z", "itemId": "j570I6iwq6d9WKTr", "itemSku": "dNSQNZx4cNY4AxT3", "itemType": "Z0s1FLyKuyDTmLMS"}, {"count": 76, "duration": 21, "endDate": "1977-11-15T00:00:00Z", "itemId": "I9rgAAcRXJvUVKsg", "itemSku": "48tzTLUMW9Kf7WnQ", "itemType": "U9RWxVsb5junOOUy"}, {"count": 36, "duration": 45, "endDate": "1981-01-15T00:00:00Z", "itemId": "tjmBC5JEXTJxKOlH", "itemSku": "dwfsIBKmGw8ayqWr", "itemType": "xRcdSpJYPPfqTMx0"}], "name": "OkydW87wudhabtFC", "odds": 0.13713522255585642, "type": "PROBABILITY_GROUP", "weight": 80}], "rollFunction": "CUSTOM"}, "maxCount": 100, "maxCountPerUser": 81, "name": "sH8kND8IK0MCBvtc", "optionBoxConfig": {"boxItems": [{"count": 75, "duration": 100, "endDate": "1993-05-15T00:00:00Z", "itemId": "eQmil79TlFUigDcw", "itemSku": "mKExItmzS40i6unC", "itemType": "UNXcMmWciYxzGqGY"}, {"count": 59, "duration": 76, "endDate": "1991-11-14T00:00:00Z", "itemId": "uAbUgjPuBrPbE285", "itemSku": "GIc3H9SyUQQD25Uq", "itemType": "gSkLMHi7wKq5hSXJ"}, {"count": 44, "duration": 49, "endDate": "1984-05-07T00:00:00Z", "itemId": "fKS6ReKgeaktSOw9", "itemSku": "4SO6SaxcyKVr34oq", "itemType": "48aFgG4Xn4J0nGNE"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 96, "fixedTrialCycles": 1, "graceDays": 75}, "regionData": {"eDV1LpHczgGCSS9D": [{"currencyCode": "P9BZSnxKcshyUHI8", "currencyNamespace": "q5A3725vXjfjkaSu", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-02-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1980-04-06T00:00:00Z", "expireAt": "1974-05-10T00:00:00Z", "price": 60, "purchaseAt": "1986-12-12T00:00:00Z", "trialPrice": 30}, {"currencyCode": "KMjuhmRTLcPs9HlA", "currencyNamespace": "scHQnFINVqDqgpWt", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1989-08-27T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-01-31T00:00:00Z", "expireAt": "1984-08-04T00:00:00Z", "price": 42, "purchaseAt": "1989-02-23T00:00:00Z", "trialPrice": 67}, {"currencyCode": "FI83KcR4dQROsxik", "currencyNamespace": "aWGiprEvXIYHrCoG", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1971-02-02T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-06-07T00:00:00Z", "expireAt": "1993-07-29T00:00:00Z", "price": 84, "purchaseAt": "1988-08-06T00:00:00Z", "trialPrice": 52}], "D7XGr0br6BoJLpox": [{"currencyCode": "R1MvMKJE7Iqam0ZQ", "currencyNamespace": "NcpCPAEOCxMXvEQ5", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1975-03-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1983-08-24T00:00:00Z", "expireAt": "1971-07-28T00:00:00Z", "price": 87, "purchaseAt": "1976-12-13T00:00:00Z", "trialPrice": 57}, {"currencyCode": "e3OVgTAIl0QVS89U", "currencyNamespace": "RjLGYV7ctwVZdqoz", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1994-11-04T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1979-06-25T00:00:00Z", "expireAt": "1986-02-21T00:00:00Z", "price": 85, "purchaseAt": "1982-03-17T00:00:00Z", "trialPrice": 96}, {"currencyCode": "oDgLNnYTMwFjTVIK", "currencyNamespace": "bxB7Qpic1XzkPJCi", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1998-03-12T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1987-03-03T00:00:00Z", "expireAt": "1991-12-14T00:00:00Z", "price": 23, "purchaseAt": "1978-01-05T00:00:00Z", "trialPrice": 54}], "AWO9AeAqo26MOa0J": [{"currencyCode": "U5z7Obu7h2ro1C2d", "currencyNamespace": "gzA90PzPzLVbRLvs", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1991-12-29T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1997-09-09T00:00:00Z", "expireAt": "1984-07-22T00:00:00Z", "price": 29, "purchaseAt": "1991-02-22T00:00:00Z", "trialPrice": 36}, {"currencyCode": "LqyakJOVu8UAsdWR", "currencyNamespace": "bS9WGDYAmvtEB9MC", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1995-07-10T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1982-12-04T00:00:00Z", "expireAt": "1976-01-16T00:00:00Z", "price": 72, "purchaseAt": "1988-12-19T00:00:00Z", "trialPrice": 2}, {"currencyCode": "IaigyzEvnInC2gX9", "currencyNamespace": "sXMHEeGxega9syZM", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1972-07-22T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-04-18T00:00:00Z", "expireAt": "1989-02-07T00:00:00Z", "price": 80, "purchaseAt": "1979-09-21T00:00:00Z", "trialPrice": 41}]}, "saleConfig": {"currencyCode": "2uf75Fm0A7GS2Lu6", "price": 16}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "iWZzcppiZ6aNGux7", "stackable": false, "status": "INACTIVE", "tags": ["OUuN8DEGSZVdZR8G", "Ypd96rmh1nS0dESI", "G7wP0USb5dy9tErg"], "targetCurrencyCode": "Kb07Kqh57b9JZFY8", "targetNamespace": "x3srwCJ70FRkJAeJ", "thumbnailUrl": "M44U4zUaO66dj09m", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateItem' test.out

#- 118 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'pP8VRcD0ILN0ooxY' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'sq2Hw05PIpyQN2VT' \
    > test.out 2>&1
eval_tap $? 118 'DeleteItem' test.out

#- 119 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'mhi512gw8EjA5eqW' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "tTSfZcYD0B7gH32Y"}' \
    > test.out 2>&1
eval_tap $? 119 'AcquireItem' test.out

#- 120 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'v3oVvtlWh7pYfFPs' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'GHCmHQIfuoMYmJFN' \
    > test.out 2>&1
eval_tap $? 120 'GetApp' test.out

#- 121 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'uedJedz69WleOrvw' \
    --namespace $AB_NAMESPACE \
    --storeId 'q0HQk96ZiL52Vh3U' \
    --body '{"carousel": [{"alt": "Rs5bf5Xbb8AIb0rX", "previewUrl": "zw04vPywZPz9dZxq", "thumbnailUrl": "E97x8St2fbDbHJKF", "type": "image", "url": "OzPcSYs48G3aXhsv", "videoSource": "generic"}, {"alt": "h8HAtOJjuVnPW07T", "previewUrl": "I5lZJfzfdMbBGYa3", "thumbnailUrl": "5K7FuaYsUVaN9Tp6", "type": "image", "url": "9eH4RyxDQVT51Cx3", "videoSource": "vimeo"}, {"alt": "SqlDekBBnke17FP5", "previewUrl": "4MPtGazQ4Pi39bzS", "thumbnailUrl": "6FZZrPQdM7v0KP5D", "type": "video", "url": "iiuf5FmMAKLqcZdp", "videoSource": "generic"}], "developer": "AlwXQVdD6jI29lvD", "forumUrl": "Egvehm9o1aDrazRL", "genres": ["Racing", "Racing", "Racing"], "localizations": {"0TDk5a8DzvPBSPf1": {"announcement": "k5EZ73ndqsJS2KHq", "slogan": "u49Vzb14S2qytwvl"}, "1n4BWoHrnizTnGVz": {"announcement": "6rcG4rcKkdGGW2mn", "slogan": "MiipbryGGPju356V"}, "kpf44Gyk0QQLcEYW": {"announcement": "dGcDr5wBoJpNb1jl", "slogan": "qGhJWJrjARjY6ubP"}}, "platformRequirements": {"bz7CrQNO0iymQOjf": [{"additionals": "3Aw7Qv5LZExe8rZB", "directXVersion": "t4sjeVNUG6bvjdQ9", "diskSpace": "2H7jp4lrmqe2ORAo", "graphics": "IG38sf5jnmgeC0bd", "label": "9aBWoMTZTNJqHa8P", "osVersion": "OyMN8wDClZ5oIuga", "processor": "H3NxYTF5shb9Naga", "ram": "vTLaYcXDrEICcEsU", "soundCard": "aGWDUUA01TPgzkCE"}, {"additionals": "jOd7PYvVb8s7MzBT", "directXVersion": "b1BlxzjrIu7oc6zr", "diskSpace": "9Aoeux7OPHQW3KdP", "graphics": "MyEh0HHNHVHL48pA", "label": "TrkKc5wPOGhRXJ2s", "osVersion": "88T3K6m72lGea4nQ", "processor": "GCKF0zJbut2J9f1z", "ram": "8vF1079xC0iupO5H", "soundCard": "d1uIZcWkzmaVGcrf"}, {"additionals": "7c3TPewztRGbBhKK", "directXVersion": "5cJdL5EMU1QSsUrt", "diskSpace": "uSG7xh9CvrCfYQHZ", "graphics": "ShbjxPha374Uu2GF", "label": "GkmqOy3BtxWHrwRY", "osVersion": "pc8ww0HAdthcFJjT", "processor": "yYLf1X2OzXKvuwZD", "ram": "CKA0pKzj57J6hr2T", "soundCard": "zcXENflIWG4RQ4K7"}], "UBxyUhdZcJNYmr9z": [{"additionals": "cq6uhl3dFY2RSNem", "directXVersion": "ii6NCCyfjLRkh9B4", "diskSpace": "aXfbhSqxIKKUhVQs", "graphics": "6Sv6rkwnip8n5Ios", "label": "ItseMbM6nAADvXMi", "osVersion": "EJmbQPMH8SEMW4Gc", "processor": "lAHMoAt9QiTMqkPO", "ram": "Wi9Ca76zkIwyAmF8", "soundCard": "dkLe8LveS21w1yTw"}, {"additionals": "7yrLq28OTPZ9kWxU", "directXVersion": "0cJJj7Q6Rt3sLTgF", "diskSpace": "m9BRSuCboQFaYvDd", "graphics": "zhlhIyQ9qAqoRwQk", "label": "9GuKzShrJbIHGweg", "osVersion": "SxZA4bK1YbQwffEv", "processor": "5cCvTEohpH2dHnDO", "ram": "qpMKnUSeQaIjkUjB", "soundCard": "ZAnmFKqWfqJwv3e3"}, {"additionals": "anNNZPElyRBXWA0J", "directXVersion": "qJOYW4LgcLDIlTHV", "diskSpace": "Q43fNUvpZ8Xx6leP", "graphics": "MAOotWcMvtXTSWIR", "label": "a9wh3vn32pTqE8q5", "osVersion": "TUN4mdvzZt0Dj4Z6", "processor": "NTB1wactfB0wlj76", "ram": "7RqSMnYt4bG6gRHW", "soundCard": "EYmBYsqvWHIDZPyC"}], "7b1eEWvMSNKvbOq7": [{"additionals": "Y7BMxGZzizvYfdQp", "directXVersion": "IjkMqDtq0ZqLkwgZ", "diskSpace": "seaybe0gxGfVxMDE", "graphics": "CSoqwQvuTzupbYeh", "label": "3sWw9bCdis35qVht", "osVersion": "qfOmHs1do69xn8kH", "processor": "dahHGi7jHSKIHioe", "ram": "jtZV4um6Bofm7TSd", "soundCard": "Z4VphZKhGrit6hch"}, {"additionals": "dgUjq7oz8xlTrfdi", "directXVersion": "A6iSDt3B9tWge3L8", "diskSpace": "EP4F9rj76QEuqOpA", "graphics": "8fQ586LxtIEuDfxP", "label": "JRBUa5Nv7XhY17dk", "osVersion": "qz0K5Rmv2x3oSYAa", "processor": "yhjTrYXQwrWkUpui", "ram": "QBf9XdfPtme5oxPg", "soundCard": "Bei8fU8NTo7wGHx9"}, {"additionals": "JP7najh8DDmDm2vK", "directXVersion": "VgXrLtXPReRVIYBg", "diskSpace": "zvAoOFo31fc1zBWh", "graphics": "xcScpeOitpeDII7u", "label": "95AD9VE9VsHxVW6m", "osVersion": "NNBuZiGkwQEWxlq4", "processor": "TX2TkWQnc26fXKXz", "ram": "z2orj8jvGW0aXHec", "soundCard": "sWGi2zemm9NcN9H7"}]}, "platforms": ["Linux", "Windows", "Android"], "players": ["CrossPlatformMulti", "MMO", "Coop"], "primaryGenre": "RPG", "publisher": "qJCvRd7DOjpJpNyr", "releaseDate": "1999-06-20T00:00:00Z", "websiteUrl": "iR2nLJqdOaUpj3oI"}' \
    > test.out 2>&1
eval_tap $? 121 'UpdateApp' test.out

#- 122 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'xmaDlFoY0try8J0w' \
    --namespace $AB_NAMESPACE \
    --storeId 'CtR6OqP8Kq5xBmAD' \
    > test.out 2>&1
eval_tap $? 122 'DisableItem' test.out

#- 123 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'KMCUZ6g6qtb1BaMQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetItemDynamicData' test.out

#- 124 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'FflOKI5F7hhnPWMc' \
    --namespace $AB_NAMESPACE \
    --storeId 'PTmWgAqPaLKQqB5Q' \
    > test.out 2>&1
eval_tap $? 124 'EnableItem' test.out

#- 125 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'elNz2HBcDCSC4R3f' \
    --itemId 'Fkl8Yn6ceaguvsqc' \
    --namespace $AB_NAMESPACE \
    --storeId 'kyVIBXSS9vJ0ec4q' \
    > test.out 2>&1
eval_tap $? 125 'FeatureItem' test.out

#- 126 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '4XALFRi4KaBvAQzO' \
    --itemId 'DVTRxMxQWcS2LVYl' \
    --namespace $AB_NAMESPACE \
    --storeId 'RdXstn8GPtgxiyKQ' \
    > test.out 2>&1
eval_tap $? 126 'DefeatureItem' test.out

#- 127 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '8hbDB5rTRJNIIuJl' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Y6C80oiIbT05yFDy' \
    --populateBundle 'false' \
    --region 'GqFGIPU0391THxtu' \
    --storeId 'qqplgZlL67lm724f' \
    > test.out 2>&1
eval_tap $? 127 'GetLocaleItem' test.out

#- 128 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '19MIzRm0LCNIppX6' \
    --namespace $AB_NAMESPACE \
    --storeId 'C2aw4pN4FLkeY48C' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 74, "comparison": "is", "name": "WW9hk8JjYDJYOfXX", "predicateType": "EntitlementPredicate", "value": "VrGJ31FBrmEoUMDL", "values": ["Bg7hwjESMOPk5pxU", "sOtxscK3RpJ4wR5O", "xZC3eEjeqZhc1YtT"]}, {"anyOf": 91, "comparison": "isLessThanOrEqual", "name": "rppuJ0PfeBkD7FZg", "predicateType": "SeasonTierPredicate", "value": "39StBi7MWLa5mlq8", "values": ["jnWWOKzHjc1qbvVH", "x26zAR9ckIYD2PxN", "IL7Yx9KuzJr2eo1v"]}, {"anyOf": 47, "comparison": "isLessThanOrEqual", "name": "E7cba3Qo9guWT7wj", "predicateType": "SeasonTierPredicate", "value": "9JXJAfSXChUfE3h9", "values": ["kYhhvLXklvfwstzG", "fiGzoYByIHfN9b1a", "WwH3eK3XOZ8J6F8b"]}]}, {"operator": "and", "predicates": [{"anyOf": 35, "comparison": "isGreaterThanOrEqual", "name": "QGcwXunyv2EOXl2L", "predicateType": "SeasonPassPredicate", "value": "Rjwnew8ociMYp0a6", "values": ["cqlilIj49GbXfVQr", "T8dFAz5Kb7Gctdhm", "ctwbkR2wr9OlPAhq"]}, {"anyOf": 24, "comparison": "includes", "name": "spBz0DKUNpdwkg9d", "predicateType": "SeasonPassPredicate", "value": "nUc7iXHpPLfe7LiB", "values": ["SUbSin7tuFiiv0BG", "FuIf8HO2wbsjusBq", "t9jEED5iMJVVuMuR"]}, {"anyOf": 54, "comparison": "isGreaterThanOrEqual", "name": "vxjcqoDmBrEponq9", "predicateType": "SeasonTierPredicate", "value": "8ZIW6H8XdYTCDCTQ", "values": ["ND7MXYvPMXSFSIdb", "WBML4xQyXHyz7Qg3", "90V6qTlTgfq9wK6Q"]}]}, {"operator": "and", "predicates": [{"anyOf": 91, "comparison": "isLessThan", "name": "xfohlVXt3SE2sjJd", "predicateType": "SeasonTierPredicate", "value": "l3N29SCMUFz7RAm6", "values": ["b1B7eEUae7mk8stP", "OgYr6IctQFFWFiAI", "enLL2PmJRHASI0V2"]}, {"anyOf": 61, "comparison": "isLessThanOrEqual", "name": "luiagUaMkCBDAPvA", "predicateType": "EntitlementPredicate", "value": "L5sEpAPFhFeVZirl", "values": ["3H1puS6vJjupNfay", "eAOZg7iBz2HbOwNB", "E42IUBOlimPa5Ocm"]}, {"anyOf": 76, "comparison": "is", "name": "G1b89m6pbKO75rUu", "predicateType": "EntitlementPredicate", "value": "7r87WvnoDZQbujWY", "values": ["TTyCcWmQCH8wo617", "0DtC2y8kTqzpZ1kY", "9hg3Z6rnK7E5CCWT"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 128 'UpdateItemPurchaseCondition' test.out

#- 129 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'HdvdtXahu5J0KAmZ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "0cvGdIWUP3nG4x1V"}' \
    > test.out 2>&1
eval_tap $? 129 'ReturnItem' test.out

#- 130 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'MAatJR8tACSay7Sq' \
    --offset '75' \
    --tag 'XRulAmF4RVOoRR2z' \
    > test.out 2>&1
eval_tap $? 130 'QueryKeyGroups' test.out

#- 131 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ELL66my74MVdqp6l", "name": "0P7tPvRB0C31oZdh", "status": "INACTIVE", "tags": ["pzmqUsm7dX8riYiH", "9RZvdUQlJCPuqTyC", "FdhOuHQ6lWTAiBMD"]}' \
    > test.out 2>&1
eval_tap $? 131 'CreateKeyGroup' test.out

#- 132 GetKeyGroupByBoothName
eval_tap 0 132 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 133 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'yJu1BqGs10I9Me9J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'GetKeyGroup' test.out

#- 134 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'ysOEoYUeimZQLnOR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NifgG9qEHA5o0rYA", "name": "78uvHqtZ9Mpt8fuO", "status": "ACTIVE", "tags": ["sE8QlCaSa28SbKjQ", "227DFWmdOpLPgmqw", "shhYyvjbw8aUfTwb"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateKeyGroup' test.out

#- 135 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Iedb0hPUxQiuFGNZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetKeyGroupDynamic' test.out

#- 136 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'cBi9SDnk3tDGFxaN' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '11' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 136 'ListKeys' test.out

#- 137 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'u2AbaABFuXaihErx' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 137 'UploadKeys' test.out

#- 138 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '753wf4U0xzhBCsdc' \
    --limit '85' \
    --offset '80' \
    --orderNos '["Si6TwygZxOD5uJ4K", "BxGI3WHDVS1uNaQl", "RoZ4RjAnumJixjxd"]' \
    --sortBy 'dfz6xi7S10S3OXfc' \
    --startTime 'Ib115ljHbIQIaVH5' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 138 'QueryOrders' test.out

#- 139 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'GetOrderStatistics' test.out

#- 140 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'uDpA6qdMDsj9yWi8' \
    > test.out 2>&1
eval_tap $? 140 'GetOrder' test.out

#- 141 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'b4n1xDHDZJYJA7if' \
    --body '{"description": "a78N4Esgqzb8IX7t"}' \
    > test.out 2>&1
eval_tap $? 141 'RefundOrder' test.out

#- 142 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetPaymentCallbackConfig' test.out

#- 143 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "nkwuFrCbnGHbXnZW", "privateKey": "TMQ9sh1wZPRYxd9W"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdatePaymentCallbackConfig' test.out

#- 144 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '1S9YanGpz4xVvsTj' \
    --externalId 'tQGBqe8NpaB8eIHI' \
    --limit '68' \
    --notificationSource 'WALLET' \
    --notificationType 'v33muTBu760CXWZ9' \
    --offset '70' \
    --paymentOrderNo '4rVqbzhIIXHTpNqf' \
    --startDate 'vMMUpXjJwXxkkbMS' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 144 'QueryPaymentNotifications' test.out

#- 145 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'PTeAug9egeIIOGTg' \
    --limit '31' \
    --offset '87' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentOrders' test.out

#- 146 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "2lh3nGKhvIKcpUS7", "currencyNamespace": "RbC8o3sKAbFIBtAu", "customParameters": {"BqT3WHRAE91sQFLq": {}, "NVFiHkFTzClHNhOd": {}, "pZSA73vrsxgfWf0K": {}}, "description": "4WxbpmfdYFRAy5zY", "extOrderNo": "0OIYAG7lS0ECNS7L", "extUserId": "tM19DtO0jFZiWoqe", "itemType": "COINS", "language": "qh-LAjR", "metadata": {"UEbvW5BuWPAaDiHp": "fIZ85Oo6twX8rojB", "cK9VVqDnM0wOOIEG": "4Gp0Y1OGpzT6BugQ", "7dVY0MdtmZiiF6lH": "TJ8XtzIAtdoK9R6E"}, "notifyUrl": "dyFo6vVmzasEFIaK", "omitNotification": true, "platform": "Z2gPCx5o1BuWOJ91", "price": 97, "recurringPaymentOrderNo": "cbdl9JRNVuQne8N8", "region": "hoWphQizMSpELLV8", "returnUrl": "Pw48mP7bKD3BtQ7U", "sandbox": false, "sku": "fxGrblmPfhW7d3Ek", "subscriptionId": "2TVgmN8Txg9A1Auv", "targetNamespace": "jA3QQZeglrxdrlw9", "targetUserId": "wNjj7BGyfCLyuMn6", "title": "23tBfDQuPGj3WQke"}' \
    > test.out 2>&1
eval_tap $? 146 'CreatePaymentOrderByDedicated' test.out

#- 147 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'JH7R5eBHA0fGeGAg' \
    > test.out 2>&1
eval_tap $? 147 'ListExtOrderNoByExtTxId' test.out

#- 148 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kUuVpYJJUvxkKlts' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrder' test.out

#- 149 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nKygPsL3NUPmj2Rr' \
    --body '{"extTxId": "Dq6FyCNTHIwepB6H", "paymentMethod": "yCckHsTdzuLVKUeE", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 149 'ChargePaymentOrder' test.out

#- 150 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9PJ0sPdzmFhjMzNF' \
    --body '{"description": "XwNiYvrK3yo6ST4l"}' \
    > test.out 2>&1
eval_tap $? 150 'RefundPaymentOrderByDedicated' test.out

#- 151 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OYFFFsYlAcUdjgw7' \
    --body '{"amount": 66, "currencyCode": "zoxvyEmrrZji0TL2", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 94, "vat": 78}' \
    > test.out 2>&1
eval_tap $? 151 'SimulatePaymentOrderNotification' test.out

#- 152 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WTxYGVrMAz3Luli7' \
    > test.out 2>&1
eval_tap $? 152 'GetPaymentOrderChargeStatus' test.out

#- 153 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 153 'GetPlatformWalletConfig' test.out

#- 154 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Oculus", "GooglePlay", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdatePlatformWalletConfig' test.out

#- 155 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 155 'ResetPlatformWalletConfig' test.out

#- 156 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetRevocationConfig' test.out

#- 157 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationConfig' test.out

#- 158 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeleteRevocationConfig' test.out

#- 159 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'Q3Jdhj9KleJevPmE' \
    --limit '81' \
    --offset '54' \
    --source 'IAP' \
    --startTime 'hI0FiOrL4j9ufhHt' \
    --status 'SUCCESS' \
    --transactionId 'fytXXn7iQO2kCQ9m' \
    --userId 'Udf07WxxMGXkfpT4' \
    > test.out 2>&1
eval_tap $? 159 'QueryRevocationHistories' test.out

#- 160 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetRevocationPluginConfig' test.out

#- 161 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "fSa8pxwV0ByklfcO"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "kZQhAWQ6RT4zJWaC"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 161 'UpdateRevocationPluginConfig' test.out

#- 162 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'DeleteRevocationPluginConfig' test.out

#- 163 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadRevocationPluginConfigCert' test.out

#- 164 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "W9zd4csSDbASj8E5", "eventTopic": "J5MPqGoDqtH1N6Wv", "maxAwarded": 18, "maxAwardedPerUser": 22, "namespaceExpression": "1wqARe0nMJUrDRZo", "rewardCode": "w4itB0I23KRpXGRI", "rewardConditions": [{"condition": "gqm1Jlu7ZU6m1LVS", "conditionName": "XYzJXZQXGK9HyaNV", "eventName": "EScnhUAvR8eyeYEK", "rewardItems": [{"duration": 15, "endDate": "1976-08-18T00:00:00Z", "itemId": "C1neeticmaUsqzl0", "quantity": 37}, {"duration": 69, "endDate": "1990-10-01T00:00:00Z", "itemId": "gNi51Ptd7c5uQX8t", "quantity": 9}, {"duration": 74, "endDate": "1978-11-19T00:00:00Z", "itemId": "RNX3XTQ1jsMY5i1q", "quantity": 50}]}, {"condition": "PG6Zt3BRr5oZEC8I", "conditionName": "4F6Sk5idWamJYJ5O", "eventName": "KQfFNMXY2X5hhkih", "rewardItems": [{"duration": 16, "endDate": "1982-12-27T00:00:00Z", "itemId": "HtheWjvL64bj2m4S", "quantity": 52}, {"duration": 77, "endDate": "1997-01-25T00:00:00Z", "itemId": "wPMUSWcuJtXjxhTz", "quantity": 72}, {"duration": 95, "endDate": "1990-09-17T00:00:00Z", "itemId": "aCsIVBl87eMfbmti", "quantity": 83}]}, {"condition": "SMInwNzzWM9505w3", "conditionName": "RSkOTC8lpC6PklGX", "eventName": "xehdt6IoyfPA9nHf", "rewardItems": [{"duration": 67, "endDate": "1987-06-22T00:00:00Z", "itemId": "SdqTUB0F1U5dxzp2", "quantity": 97}, {"duration": 80, "endDate": "1983-06-08T00:00:00Z", "itemId": "mjGa2py4cV5xh6wU", "quantity": 24}, {"duration": 52, "endDate": "1986-08-02T00:00:00Z", "itemId": "wWSMfSJsp6scF7VB", "quantity": 36}]}], "userIdExpression": "DNbUveDtXjBM5xvj"}' \
    > test.out 2>&1
eval_tap $? 164 'CreateReward' test.out

#- 165 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JczFqQpOFQgh9RKM' \
    --limit '27' \
    --offset '69' \
    --sortBy '["rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 165 'QueryRewards' test.out

#- 166 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 166 'ExportRewards' test.out

#- 167 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 167 'ImportRewards' test.out

#- 168 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'KZZwZFQ0afmPdBIV' \
    > test.out 2>&1
eval_tap $? 168 'GetReward' test.out

#- 169 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'XOIM37Ioj228ljPO' \
    --body '{"description": "x9yKetYarWee38gL", "eventTopic": "KKVgRXOwEnZmRdV4", "maxAwarded": 55, "maxAwardedPerUser": 79, "namespaceExpression": "IYHNgmTGnXaM8jKL", "rewardCode": "oZZ4WHol7w8uuqXY", "rewardConditions": [{"condition": "ZmU50wKDQFoJHRhN", "conditionName": "Bv1trQ2unkHMl82z", "eventName": "9AGhJXICvE72syAf", "rewardItems": [{"duration": 12, "endDate": "1980-05-24T00:00:00Z", "itemId": "lC4m5oq9t0h1Hu0U", "quantity": 45}, {"duration": 0, "endDate": "1993-10-21T00:00:00Z", "itemId": "sEG9ycOpalVGqV88", "quantity": 75}, {"duration": 19, "endDate": "1986-06-09T00:00:00Z", "itemId": "iv9TjRJKOUrEPL0y", "quantity": 89}]}, {"condition": "VW52jp2zaqNHV4bT", "conditionName": "c1OFZZwF2kAPQAMo", "eventName": "yH26CjV0rZx0yaji", "rewardItems": [{"duration": 19, "endDate": "1997-02-09T00:00:00Z", "itemId": "oTEZ6CG0XsDsag7G", "quantity": 26}, {"duration": 90, "endDate": "1978-04-06T00:00:00Z", "itemId": "koeagz3ZVfyxg8SQ", "quantity": 42}, {"duration": 93, "endDate": "1989-05-24T00:00:00Z", "itemId": "M0TcoAIpfrKRDVj7", "quantity": 60}]}, {"condition": "4Pl91iGmGOjJMYUS", "conditionName": "B1O89z1k8WJKc2mA", "eventName": "cLkXVYcevOEVsUKA", "rewardItems": [{"duration": 81, "endDate": "1998-08-31T00:00:00Z", "itemId": "enEN4s8BDQRMEaCq", "quantity": 85}, {"duration": 56, "endDate": "1995-10-05T00:00:00Z", "itemId": "miJIpt2a50YD1eU8", "quantity": 50}, {"duration": 64, "endDate": "1985-02-22T00:00:00Z", "itemId": "bTHijA1Ys6RTKdIQ", "quantity": 60}]}], "userIdExpression": "mQgrD7jwcaJwS4Wg"}' \
    > test.out 2>&1
eval_tap $? 169 'UpdateReward' test.out

#- 170 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'UKuDKrcny7NHUQ3c' \
    > test.out 2>&1
eval_tap $? 170 'DeleteReward' test.out

#- 171 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '0RbkC8tkr9nwe7D3' \
    --body '{"payload": {"vvXF8HwdeUwkKEXA": {}, "7yJEFmRstM6QiJ3N": {}, "EXRB56phYSFvjsi3": {}}}' \
    > test.out 2>&1
eval_tap $? 171 'CheckEventCondition' test.out

#- 172 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'dlzmV3P2ZAXK5qOg' \
    --body '{"conditionName": "tQFXLs6oAMCwraZO", "userId": "XqrAELNZ7HOXX47o"}' \
    > test.out 2>&1
eval_tap $? 172 'DeleteRewardConditionRecord' test.out

#- 173 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'jAerwSiHF1nZooWE' \
    --limit '73' \
    --offset '5' \
    --start 'mzjGV0euUiWFpSmG' \
    --storeId 'd1yzS9bzGfDNXz34' \
    --viewId 'BztAwFW5Ng0ws43t' \
    > test.out 2>&1
eval_tap $? 173 'QuerySections' test.out

#- 174 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'gBKEhWT1qKl67jHY' \
    --body '{"active": true, "displayOrder": 9, "endDate": "1986-10-01T00:00:00Z", "ext": {"r7JeYmTyqMSsc9yY": {}, "x0pRWWyCzV9wFxsC": {}, "bTc4GHSMyTExObXp": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 99, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "9F0j6FjFYDrcHeOB", "sku": "NZhculRncd3GQ8zb"}, {"id": "G2CgDiJasR2MVeLP", "sku": "MipC5zcttYBzKY7e"}, {"id": "sKJVdI3V2co53k4c", "sku": "IoFMXF8X0m45sZlC"}], "localizations": {"AntEgcLfqcJnAitU": {"description": "XeoBrLK1xZzgcJU0", "localExt": {"tO5TT338uX18tTf7": {}, "rgfipSgJgsvOctwy": {}, "HNBfMroULVup1L4I": {}}, "longDescription": "mUs0oK1pBSEv3t0L", "title": "b4wNcgAGuQleyeqf"}, "OdMJGUAC3SqnB3MR": {"description": "kL6y4ItM7vGkm5b0", "localExt": {"78ZqTlk4MvRAa9Wr": {}, "59N8S2XPsXegPUKz": {}, "ecyLx6sPOy2MdMD9": {}}, "longDescription": "5ovSCaqvYkH5likQ", "title": "WjdmjxQquDTzb5qd"}, "l5cVKk19Ax0QZkjB": {"description": "PLLTqyHhnzccz0R3", "localExt": {"07YgUtAF11ofJQDl": {}, "LPCmG9EQWVWzgT5s": {}, "fO6v2wLjsgyt5QiW": {}}, "longDescription": "Lzb5eHKXN5ydHYlr", "title": "bYOhMvSSNKHvIVlS"}}, "name": "yc7tPnpC6WpumOxw", "rotationType": "FIXED_PERIOD", "startDate": "1979-01-03T00:00:00Z", "viewId": "KAdh4fGIf6HTYTto"}' \
    > test.out 2>&1
eval_tap $? 174 'CreateSection' test.out

#- 175 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '1r9Z5lfqEoPVb5Ls' \
    > test.out 2>&1
eval_tap $? 175 'PurgeExpiredSection' test.out

#- 176 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'eBooFNHinuG3Z2xT' \
    --storeId 'rCU7Lu6YW8n44gEq' \
    > test.out 2>&1
eval_tap $? 176 'GetSection' test.out

#- 177 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'pF4ZiwkKpXXssGnU' \
    --storeId 'NGBFEg9Azn9cgPQz' \
    --body '{"active": true, "displayOrder": 25, "endDate": "1983-02-25T00:00:00Z", "ext": {"EdsBllUigfkk4JrW": {}, "35QjCvhBPhqD0UBu": {}, "2xN4YEGVj4esWHdZ": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 54, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "FP9lzWsqp4Jg86RR", "sku": "93fhwsps4W7hHzEs"}, {"id": "WNEctV4s5mUTSgAV", "sku": "7pkIUTxVy5Rck4Nx"}, {"id": "UKs8qDlPFkjFuGqU", "sku": "22N4Z53rPWXbe6yA"}], "localizations": {"EQaB7ktTH9fTM65Z": {"description": "1Hk68T3NHE3UymSa", "localExt": {"KXeZM9TDmMQonIZh": {}, "6cFeJ7DydUPfQtKX": {}, "TXoGVtsYC2vKesNT": {}}, "longDescription": "TRQLypd676n9OIHp", "title": "JPG5kptUUExqPyKV"}, "krWBVV8bDq1DpIOn": {"description": "cfJT7s1bxGI488LP", "localExt": {"aJNQOQMVzSLsdLER": {}, "WIornrvWLZG24Idz": {}, "cqwZsRj90ErGm3rL": {}}, "longDescription": "6FjBzaye4GbBu2mX", "title": "JtljcTiaFhajzZHW"}, "GHHOFYDR1SMAJEKo": {"description": "K4TaEWkU6hWFAChl", "localExt": {"LHpUYi8du6mvyJdp": {}, "ZtpfDMgG2jjIPkJi": {}, "Hdzj9SM8Wsv8UGFz": {}}, "longDescription": "edUL0zj61egmo07T", "title": "fPwN5AVNJTDi6KeO"}}, "name": "vJUV4YOMEPI8glzZ", "rotationType": "CUSTOM", "startDate": "1992-01-28T00:00:00Z", "viewId": "hQ8EX7ob62v1N3cY"}' \
    > test.out 2>&1
eval_tap $? 177 'UpdateSection' test.out

#- 178 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'f0Xp25q6BeFAmW2e' \
    --storeId 'HTHDKfUmhZMc4N60' \
    > test.out 2>&1
eval_tap $? 178 'DeleteSection' test.out

#- 179 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'ListStores' test.out

#- 180 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "kWQmX29efiHDXxU9", "defaultRegion": "GJf2OIUwdyqeBaRX", "description": "YthG6xgpeDcALn07", "supportedLanguages": ["ffCIA7QHZIRSdIVc", "NpJT1Nsc2vx8KQd1", "EhGAj95JOXCuxzRk"], "supportedRegions": ["Wjr0C06uqWbSVLlf", "gcGc7GJfoQ4UCoWE", "kvs3fOgg74dKHMHV"], "title": "SzJXrs27pKe0UgEj"}' \
    > test.out 2>&1
eval_tap $? 180 'CreateStore' test.out

#- 181 ImportStore
eval_tap 0 181 'ImportStore # SKIP deprecated' test.out

#- 182 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'GetPublishedStore' test.out

#- 183 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'DeletePublishedStore' test.out

#- 184 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'GetPublishedStoreBackup' test.out

#- 185 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 185 'RollbackPublishedStore' test.out

#- 186 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'MTQi9kcpurqpKyaW' \
    > test.out 2>&1
eval_tap $? 186 'GetStore' test.out

#- 187 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '0ijhbQpUdD2eCymS' \
    --body '{"defaultLanguage": "YK4ilf5IfLlSIOyo", "defaultRegion": "PJmeSmN4OtG9u0Yd", "description": "Fq18hBGx1mOhu8Cq", "supportedLanguages": ["miNoTwb3qjdRGVsN", "N17rFdEiIvuo0MlX", "g9ztm2KcR1gwDPjk"], "supportedRegions": ["U0RU5SS7ntXdHO85", "QdOK03qMlnMobyXq", "bB3CTGwg8VGV3YsA"], "title": "jvDzjYBzuCoQEZuB"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateStore' test.out

#- 188 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'eDCLtCjwIZ11PPj9' \
    > test.out 2>&1
eval_tap $? 188 'DeleteStore' test.out

#- 189 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ReUXuhbX2dFZqo7z' \
    --action 'DELETE' \
    --itemSku 'LNFCBQkJwJSmo9BN' \
    --itemType 'CODE' \
    --limit '13' \
    --offset '23' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'c2h0jROIEfE0GCNV' \
    --updatedAtStart '0iDYwuTl3JYDmG3w' \
    > test.out 2>&1
eval_tap $? 189 'QueryChanges' test.out

#- 190 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'MugKCcb2xZrzOrbV' \
    > test.out 2>&1
eval_tap $? 190 'PublishAll' test.out

#- 191 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '6nsQC5tEPdcWcRHq' \
    > test.out 2>&1
eval_tap $? 191 'PublishSelected' test.out

#- 192 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'j0UrBj1FM3dxynvb' \
    > test.out 2>&1
eval_tap $? 192 'SelectAllRecords' test.out

#- 193 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '9EceIhqknvadN6Yh' \
    --action 'CREATE' \
    --itemSku 's8tYxpSatSidqLGp' \
    --itemType 'BUNDLE' \
    --type 'SECTION' \
    --updatedAtEnd '5gPDLcmWhiwUmfNf' \
    --updatedAtStart 'aj93InHJJQzbi9mi' \
    > test.out 2>&1
eval_tap $? 193 'GetStatistic' test.out

#- 194 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'XEIf1AHVV4Egd6TZ' \
    > test.out 2>&1
eval_tap $? 194 'UnselectAllRecords' test.out

#- 195 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'PdH4aOSwxJ91fGIz' \
    --namespace $AB_NAMESPACE \
    --storeId '4SHFfNUSa3yQxLwh' \
    > test.out 2>&1
eval_tap $? 195 'SelectRecord' test.out

#- 196 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'K8Pmi7xdtacI6y7L' \
    --namespace $AB_NAMESPACE \
    --storeId '6KZhhksNvBnrlmVA' \
    > test.out 2>&1
eval_tap $? 196 'UnselectRecord' test.out

#- 197 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '3boCYDS440xyP16z' \
    --targetStoreId 'oGsw25i7BYR1k6Bn' \
    > test.out 2>&1
eval_tap $? 197 'CloneStore' test.out

#- 198 ExportStore
eval_tap 0 198 'ExportStore # SKIP deprecated' test.out

#- 199 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'S20fkOgm7qGUuoIw' \
    --limit '95' \
    --offset '10' \
    --sku 'uSjsOoXmQDYF3j1n' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'HHYVouIn1OZ4rXmi' \
    > test.out 2>&1
eval_tap $? 199 'QuerySubscriptions' test.out

#- 200 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pYbxMLkA6SuZioSC' \
    > test.out 2>&1
eval_tap $? 200 'RecurringChargeSubscription' test.out

#- 201 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'eyo1wpEig12vMC8c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 201 'GetTicketDynamic' test.out

#- 202 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'fB8cNv7sJJarPQrR' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6vvnSqOGFYtMcw2d"}' \
    > test.out 2>&1
eval_tap $? 202 'DecreaseTicketSale' test.out

#- 203 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'KGTgNy4IKwvbUwrb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetTicketBoothID' test.out

#- 204 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'IbhXdpCQ2daKw5ND' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 63, "orderNo": "oz0owUB4984KoSSE"}' \
    > test.out 2>&1
eval_tap $? 204 'IncreaseTicketSale' test.out

#- 205 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IafjZ4pE7f4ma9Qu' \
    --body '{"achievements": [{"id": "VduG4lmJNLzyPbIt", "value": 76}, {"id": "RIqq4eB4wvJB2b0z", "value": 98}, {"id": "u5mJXs6N5L5BdH0i", "value": 95}], "steamUserId": "PanLIjBb5WcDKr8K"}' \
    > test.out 2>&1
eval_tap $? 205 'UnlockSteamUserAchievement' test.out

#- 206 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'J6umNk9Li2XRMB4A' \
    --xboxUserId 'UM4EHmGmV4s0xnCP' \
    > test.out 2>&1
eval_tap $? 206 'GetXblUserAchievements' test.out

#- 207 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'M79bYxeGQQwPNHHj' \
    --body '{"achievements": [{"id": "YC9wBobp1pgUh5y6", "percentComplete": 91}, {"id": "6wkPhOZcZEpQiHPn", "percentComplete": 34}, {"id": "JMNfZgkkcBEeNEf0", "percentComplete": 46}], "serviceConfigId": "lmoKEjqVGFnKimPv", "titleId": "63uuqlCgfgCTOdmQ", "xboxUserId": "Ew37mezocvcj4aCR"}' \
    > test.out 2>&1
eval_tap $? 207 'UpdateXblUserAchievement' test.out

#- 208 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'URFM80Y98SU1stOf' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeCampaign' test.out

#- 209 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jNgySTH7n1bqMwma' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeEntitlement' test.out

#- 210 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ZRx4nogwCMsSdIVJ' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeFulfillment' test.out

#- 211 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'ilX4ppTOi3P7eGQN' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeIntegration' test.out

#- 212 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '6o3OOy1V9KGkfi4N' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeOrder' test.out

#- 213 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Ij9DhvLDFA9j4IS0' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizePayment' test.out

#- 214 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '0k1xNFZB4wGZnsow' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeRevocation' test.out

#- 215 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Je0YxyCeEyofTzFA' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeSubscription' test.out

#- 216 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '7KS9skXDUpxXtRFh' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeWallet' test.out

#- 217 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Omxdoh0Qh0k58AA3' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 217 'GetUserDLCByPlatform' test.out

#- 218 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'BSBoljovSgK6bt3S' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLC' test.out

#- 219 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HKhaGqzjvv044qWs' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'av2EU5jnKYQnpnPI' \
    --features '["OLGv515UU3zR9Rac", "x38ioCW9yDgF03R9", "2K5KnKEffHI16hmE"]' \
    --itemId '["HJGetdDXkJqf7fA8", "eFoiMtGmN14lmPjE", "EOObK7nw6it9b0h4"]' \
    --limit '9' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 219 'QueryUserEntitlements' test.out

#- 220 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tpj5PXDEyzjkqnNX' \
    --body '[{"endDate": "1999-02-01T00:00:00Z", "grantedCode": "M5UjN79mRyIv9Oef", "itemId": "gXuJ42V09o4Txr1y", "itemNamespace": "HG9cqLErnM0ieKYh", "language": "HtiD_xhDZ", "quantity": 21, "region": "N3KQKQyeDnsIim0i", "source": "ACHIEVEMENT", "startDate": "1993-04-28T00:00:00Z", "storeId": "gAZv74eZa8mwqOoY"}, {"endDate": "1997-12-18T00:00:00Z", "grantedCode": "sCpXMit5kEtJtJhv", "itemId": "SojwhaYwzHNr1RpV", "itemNamespace": "TlUQZEytDxtUNPT9", "language": "Nn", "quantity": 57, "region": "goRaz6W60sblpxen", "source": "IAP", "startDate": "1977-12-08T00:00:00Z", "storeId": "uNGAmOoJLXUSXWBa"}, {"endDate": "1973-12-16T00:00:00Z", "grantedCode": "hU7H4Y137TprwtBK", "itemId": "NGH8NMifuMH8Cnkg", "itemNamespace": "0ijN7R5DjYtXpS0y", "language": "OM_815", "quantity": 82, "region": "rTrMmENPKNnVKBj0", "source": "PURCHASE", "startDate": "1974-07-26T00:00:00Z", "storeId": "Z1TQ0vDCFiBISU2b"}]' \
    > test.out 2>&1
eval_tap $? 220 'GrantUserEntitlement' test.out

#- 221 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'UeBSHKa6fgElS4Jd' \
    --activeOnly 'false' \
    --appId 'wRJapjKvYxt1pYW7' \
    > test.out 2>&1
eval_tap $? 221 'GetUserAppEntitlementByAppId' test.out

#- 222 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ppzCpljKImvZdrh3' \
    --activeOnly 'false' \
    --limit '61' \
    --offset '55' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserEntitlementsByAppType' test.out

#- 223 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uMi7LLrnNUyZeSVP' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --itemId 'qk0sYqGtoexRkURQ' \
    > test.out 2>&1
eval_tap $? 223 'GetUserEntitlementByItemId' test.out

#- 224 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tUqgUY5ag6jnwvaF' \
    --ids '["ldRX2Ri8BeIlg0xI", "Crj8D4Q4FBDXp8VB", "yeqh5eisep3xHe3i"]' \
    > test.out 2>&1
eval_tap $? 224 'GetUserActiveEntitlementsByItemIds' test.out

#- 225 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '83gzAZlkKGuwOhqq' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '0NePWNQM9VVlHPC0' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementBySku' test.out

#- 226 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mfDUm6jvPyB9Gljv' \
    --appIds '["jYPh9QKPfrB8E9LB", "t8U94xqUQaP04rGM", "5bCbKucHTkSlgqDd"]' \
    --itemIds '["GRh0cg7mVzzQk1ZW", "HzWKP5oh0vjFgOCC", "e3vK54sd1xw2l4uD"]' \
    --skus '["v6G5s5WkBVjHDu0J", "qgSQHifvEsKcVk1K", "GXPBHn4XofEpb8L6"]' \
    > test.out 2>&1
eval_tap $? 226 'ExistsAnyUserActiveEntitlement' test.out

#- 227 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9Vc6CJUtgZoXlkrJ' \
    --itemIds '["QoLDEQcLjR2WfDVX", "C1fkO7d15lpjDQrV", "br6Xhuinykkcmb0A"]' \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 228 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Ju4GRUw4cOYUk9rO' \
    --appId 'IfBrt8STMipFlTJ5' \
    > test.out 2>&1
eval_tap $? 228 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 229 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GLMbNda4ZBtLcPf5' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'YAyUJ8aksudhVISc' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementOwnershipByItemId' test.out

#- 230 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'FM4rnAuAxghdvKE1' \
    --ids '["qJNBhI8Kr4CHPfzt", "GvdULJ2S8yxhzEk5", "72mAHpOYoZSmHeEu"]' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemIds' test.out

#- 231 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'k9K8LcMxSnRNEO0h' \
    --entitlementClazz 'MEDIA' \
    --sku 'V8WR4RUQkYg23a6I' \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipBySku' test.out

#- 232 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'khXy9NoO6OwljQdQ' \
    > test.out 2>&1
eval_tap $? 232 'RevokeAllEntitlements' test.out

#- 233 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FTaJrpze6TI9Olba' \
    --entitlementIds 'cURtteeiWVm87Ejx' \
    > test.out 2>&1
eval_tap $? 233 'RevokeUserEntitlements' test.out

#- 234 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'zK7wTFdgKgfkwUiN' \
    --namespace $AB_NAMESPACE \
    --userId 'kLsOPQIFB42hC7U2' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlement' test.out

#- 235 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'WB4FitD4alFvHfjl' \
    --namespace $AB_NAMESPACE \
    --userId '9uyoss3CnOC4qG0I' \
    --body '{"endDate": "1985-12-26T00:00:00Z", "nullFieldList": ["YuX0ihsATWiREu4W", "5MoMyvInuVxI5q6g", "tFKZTlI0bxcMMXix"], "startDate": "1983-12-12T00:00:00Z", "status": "CONSUMED", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 235 'UpdateUserEntitlement' test.out

#- 236 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'xtRzUo9GzrQpztIB' \
    --namespace $AB_NAMESPACE \
    --userId '8W1d9SYKanuvDWoD' \
    --body '{"options": ["hgw6GN2a9lkIaI0a", "PviRHehYGrTSmdHN", "OrRg4uonhGPICvr8"], "requestId": "xQFHmYb4OnWhPJpt", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 236 'ConsumeUserEntitlement' test.out

#- 237 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '7Obo3oeshoWIPFxB' \
    --namespace $AB_NAMESPACE \
    --userId 'HKtDIiGc0f5AubBI' \
    > test.out 2>&1
eval_tap $? 237 'DisableUserEntitlement' test.out

#- 238 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'xJsQQF4LTj4b4Ycf' \
    --namespace $AB_NAMESPACE \
    --userId 'waPBIoL1iAAnb1DH' \
    > test.out 2>&1
eval_tap $? 238 'EnableUserEntitlement' test.out

#- 239 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'lPKgnm9IxbFizM9p' \
    --namespace $AB_NAMESPACE \
    --userId '36Np2WhCkPsUorDt' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementHistories' test.out

#- 240 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 't8c6ediGjHnQAdBo' \
    --namespace $AB_NAMESPACE \
    --userId '3BsguFJGfDIKknOw' \
    > test.out 2>&1
eval_tap $? 240 'RevokeUserEntitlement' test.out

#- 241 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'kaw2tYHB1I5Dgwao' \
    --namespace $AB_NAMESPACE \
    --userId 'zTd9f5HkAZ3SgowJ' \
    --body '{"reason": "w2DuwSlJff61l9LS", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 241 'RevokeUseCount' test.out

#- 242 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'Zvnnz4cX49ocLby8' \
    --namespace $AB_NAMESPACE \
    --userId 'oaLJM31qFRDl2Wm2' \
    --body '{"requestId": "ZGk7gty1odtz153p", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 242 'SellUserEntitlement' test.out

#- 243 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'qktP2nRf9uV5csmR' \
    --body '{"duration": 57, "endDate": "1977-07-07T00:00:00Z", "itemId": "yZn3sx8UUCknfA6v", "itemSku": "XSPzSGpBuk0DS6Xb", "language": "rQR6aWVSbHbNN8dZ", "metadata": {"7qJ1yYGHCOwRlwYb": {}, "2v9m0urxXglH73kW": {}, "P0cmlZWSzLpcJ0mc": {}}, "order": {"currency": {"currencyCode": "ok4EJozul9gHsa2Z", "currencySymbol": "QcBDE31KoAFd24BD", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "09DjI2cIfhhQVw3n"}, "ext": {"FK2dxrEwIQeXybPW": {}, "diTvmBfZ02rXSxUp": {}, "pf07fESH9UQYyx6o": {}}, "free": true}, "orderNo": "1svsgl8ffFRDNfnY", "origin": "Twitch", "quantity": 95, "region": "Cjh3tqt1UOEmHFfd", "source": "REFERRAL_BONUS", "startDate": "1987-03-24T00:00:00Z", "storeId": "xfn7leiVDPjI4sVK"}' \
    > test.out 2>&1
eval_tap $? 243 'FulfillItem' test.out

#- 244 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'RlbzQ0mTKHKYlMhm' \
    --body '{"code": "JLmwYTSbnCxIGsKu", "language": "Uh-754", "region": "OZ7UXhJfELrGo5Bz"}' \
    > test.out 2>&1
eval_tap $? 244 'RedeemCode' test.out

#- 245 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'zmZjNQy416KQfuer' \
    --body '{"metadata": {"aOTZoCS7nav3cdFl": {}, "BJx2XKabTLGC10Lv": {}, "xMeAfFQdteAxTQj3": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "QhwuFWJxmur350G6", "namespace": "vGCVIhpOUJt0j0Eg"}, "item": {"itemId": "iS5usMPzFU4rpp1W", "itemSku": "8Yp3fvZzr2utkRX5", "itemType": "aNwlax9N6sEDXLPZ"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "Bm6TwMkWwWVZUBmq", "namespace": "EKLfVnZsARQUD6VI"}, "item": {"itemId": "nJcMhiaIYN92BxEp", "itemSku": "5pPw1izFkAjltKKz", "itemType": "T13QDkHLYiUMfXiW"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "fWEU9ICbfAbOZN0W", "namespace": "sfaXrfHtEMtSpiM8"}, "item": {"itemId": "naW4EJQ42LsSEX0d", "itemSku": "R1xxTBwwFPfU0auy", "itemType": "r0CVKRJOlPJ6Bq8A"}, "quantity": 97, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "O31MZkxkInr8zNKB"}' \
    > test.out 2>&1
eval_tap $? 245 'FulfillRewards' test.out

#- 246 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'lHI4MZE2D9LHgkcZ' \
    --endTime 'ttaiJBK81OhsJndi' \
    --limit '74' \
    --offset '0' \
    --productId 'rw9IRBEeTWQ68hGw' \
    --startTime '7f8pf57flYzPKYVc' \
    --status 'FULFILLED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserIAPOrders' test.out

#- 247 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ou6mZhm8I01FO9zm' \
    > test.out 2>&1
eval_tap $? 247 'QueryAllUserIAPOrders' test.out

#- 248 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'GIDKXxfAzgorP872' \
    --endTime '8vWlQr45UnjSKSTB' \
    --limit '71' \
    --offset '63' \
    --startTime '0A8B3y6nbrq8HXz0' \
    --status 'FAIL' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 248 'QueryUserIAPConsumeHistory' test.out

#- 249 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'c59MTYunqNg1mFmK' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "wGR", "productId": "oKyLFvgvarPA82zr", "region": "mYGHLk96oNzkqwQS", "transactionId": "UpMJWGWFHbzNpgev", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 249 'MockFulfillIAPItem' test.out

#- 250 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pnMDRUKyXLhU2lzi' \
    --itemId 'OQwqxAKGbsFyoONe' \
    --limit '38' \
    --offset '63' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserOrders' test.out

#- 251 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Enq4esX6WRwyjUjg' \
    --body '{"currencyCode": "NpoQ6qQ3W1BnMWQK", "currencyNamespace": "IOgbaJNR7lLFqCAL", "discountedPrice": 85, "ext": {"96wgPpADETAjyeH5": {}, "rMy0J6uhgyqYtV8L": {}, "5rcffN3tTPTVgqkx": {}}, "itemId": "iIaOJO4mLjETa9hj", "language": "fluZ6RK6w8aiaDED", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 80, "quantity": 43, "region": "oXYX59gXBlDcrRh7", "returnUrl": "u782wUUZWcs2DExG", "sandbox": true, "sectionId": "5RB9Pn0diCwBypuV"}' \
    > test.out 2>&1
eval_tap $? 251 'AdminCreateUserOrder' test.out

#- 252 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'CnJPMFXlNVnVEvkD' \
    --itemId '6sAaZK8N1g35gG4x' \
    > test.out 2>&1
eval_tap $? 252 'CountOfPurchasedItem' test.out

#- 253 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4W1tVfleUs1oXgaN' \
    --userId 'W01Ca8NK7hPqqA4F' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrder' test.out

#- 254 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Xh822IfNp4jBn7me' \
    --userId 'ZbLIoiJtzfaNgQpt' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "IoCPCXfFj8oAqpjk"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserOrderStatus' test.out

#- 255 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '70YXXfERfYeDnYVC' \
    --userId 'ulKbtCoDodDZJbtM' \
    > test.out 2>&1
eval_tap $? 255 'FulfillUserOrder' test.out

#- 256 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'WrKrL0BmkwPeUA0W' \
    --userId '9FG7bRXzISj5JeSz' \
    > test.out 2>&1
eval_tap $? 256 'GetUserOrderGrant' test.out

#- 257 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '7SX2GFPzoRL7YRgn' \
    --userId '9g2pZ75PZK88cj6c' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderHistories' test.out

#- 258 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '6pM5n5DbJgGr6GEG' \
    --userId 'p8L4dDSne2u2MiR2' \
    --body '{"additionalData": {"cardSummary": "44dxDkCS9B41CwJI"}, "authorisedTime": "1978-08-24T00:00:00Z", "chargebackReversedTime": "1993-05-02T00:00:00Z", "chargebackTime": "1997-07-15T00:00:00Z", "chargedTime": "1998-06-13T00:00:00Z", "createdTime": "1982-11-13T00:00:00Z", "currency": {"currencyCode": "SQj1yB0oWFid0EXW", "currencySymbol": "5ZMwCkkLPkCg7ejw", "currencyType": "REAL", "decimals": 67, "namespace": "si5owygBqmPY28Is"}, "customParameters": {"0RKH2ewcM2p2AxKY": {}, "gX2Oa1u9bqm07ZwZ": {}, "OaqGgzJAzAjrau8W": {}}, "extOrderNo": "MwasNUJHaK7deZpH", "extTxId": "KyQB3RndcpkmJP3M", "extUserId": "2Z1tMoJE8MdQMvMU", "issuedAt": "1972-08-01T00:00:00Z", "metadata": {"wnDTjyBr8pPTcFO8": "6EnM2ZWcVNSG7u6v", "ZxPExQfCTPZ92kvW": "fIWRmuHmBB04Z1iZ", "grSKegaaQVDY4Ski": "f9touTOGiPkhgu54"}, "namespace": "5jVcrldfgHKYTkhE", "nonceStr": "otIMndJ7vYNITyMA", "paymentMethod": "6WhKoErVR82gpEca", "paymentMethodFee": 89, "paymentOrderNo": "7FyPury8Um4CxTS8", "paymentProvider": "ALIPAY", "paymentProviderFee": 15, "paymentStationUrl": "UoUobK0rD0KTxxHD", "price": 7, "refundedTime": "1978-12-23T00:00:00Z", "salesTax": 25, "sandbox": true, "sku": "G2j51ncYcGK10fSO", "status": "REFUND_FAILED", "statusReason": "8AQDN0lnQdvpXany", "subscriptionId": "5Oxr5EGdmYf3IdTu", "subtotalPrice": 70, "targetNamespace": "1J9GMmBOXq21jGzB", "targetUserId": "cgCyOpt3vppegSGZ", "tax": 69, "totalPrice": 24, "totalTax": 14, "txEndTime": "1997-10-14T00:00:00Z", "type": "8ae0jfA2BUmBwt49", "userId": "FUrrfGPenC3PMFm9", "vat": 96}' \
    > test.out 2>&1
eval_tap $? 258 'ProcessUserOrderNotification' test.out

#- 259 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Gx8lGJjrPHiqxp4g' \
    --userId 'kEKCKDiWQETX3G3v' \
    > test.out 2>&1
eval_tap $? 259 'DownloadUserOrderReceipt' test.out

#- 260 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '1BBgOCuAWrrWNiaZ' \
    --body '{"currencyCode": "VHL5uW4MoyPMeRNF", "currencyNamespace": "suF8C55UB7iVtuTT", "customParameters": {"jqKs6eChL13AjMFD": {}, "fD7QtVoAzlgWGBOf": {}, "NVTUXCOtFldvUV4X": {}}, "description": "DDmS7gub2YDxY5M1", "extOrderNo": "wyfZoscDsNZmmuDJ", "extUserId": "DXcQ3oeYs7d2a2uP", "itemType": "COINS", "language": "wfBI-no", "metadata": {"gWbZ5tCMKIVRSGk6": "g0AQl8d7LeFe2SyU", "sDcjP7TgFxRAZ2QH": "ylc6VEnhjNswc4iN", "6xkIfkS7Ln8xx1s9": "KIbIEzTkpqY6f52o"}, "notifyUrl": "0AndazXR6dTe14qm", "omitNotification": true, "platform": "RGQRoQmZurs847JA", "price": 21, "recurringPaymentOrderNo": "5412EDhoIV6bHYOm", "region": "UWDOQipXnRtnl4Ks", "returnUrl": "3SuDlPt45vxtdW6m", "sandbox": false, "sku": "obJyk8QhlSeC99Dq", "subscriptionId": "eLgcf5fHbyQDrZJv", "title": "DX259z3GWns0HRaO"}' \
    > test.out 2>&1
eval_tap $? 260 'CreateUserPaymentOrder' test.out

#- 261 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'H79wP0DkwHHQyAME' \
    --userId 'AJh8dkY7uacfhi4V' \
    --body '{"description": "XzfEZ3jp4J47Rhu5"}' \
    > test.out 2>&1
eval_tap $? 261 'RefundUserPaymentOrder' test.out

#- 262 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'eNRswcj0QwWGjL1D' \
    --body '{"code": "I5WSHG3dn1GIr0k0", "orderNo": "2alaQRCUZizmAhbx"}' \
    > test.out 2>&1
eval_tap $? 262 'ApplyUserRedemption' test.out

#- 263 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'TlwBqmbUq6zQXUfw' \
    --body '{"meta": {"2HjHWzIt708UWp2m": {}, "YpgzkCUSxwoNLgWA": {}, "2EdjpXrXjODVY3m3": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "QyZ4OdtdPhUW81qr", "namespace": "PZ5z2ZLoxLZSLgxM"}, "entitlement": {"entitlementId": "UwCfXZihuW7keEji"}, "item": {"itemIdentity": "i3Ev0146ZgJRSJBW", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 83, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "2pRWU5NalWTqv2kb", "namespace": "3nHmZ647KoeRoFlQ"}, "entitlement": {"entitlementId": "oLAWh97xcMOT87Rl"}, "item": {"itemIdentity": "8noS90wRw8mEuYJm", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 56, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "wr7xR6a8vIuoudQX", "namespace": "XofTRZ2Pwvzvq4vx"}, "entitlement": {"entitlementId": "ACzInKJEpf2ZpQWt"}, "item": {"itemIdentity": "BQ8FBIjhswn2d1OI", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 52, "type": "CURRENCY"}], "source": "DLC", "transactionId": "k2p7aA1wUXKPU7sf"}' \
    > test.out 2>&1
eval_tap $? 263 'DoRevocation' test.out

#- 264 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'jN6ymDzGdyDp00El' \
    --body '{"gameSessionId": "88jdbDgDH8pcYdWo", "payload": {"YoFFTjosyuAv9FXi": {}, "Ht5yzkydo5tldR9s": {}, "8v9qwo5lODPp6iez": {}}, "scid": "U7RrBlESKDRoOjgR", "sessionTemplateName": "hItEm1aeWRTUKW4v"}' \
    > test.out 2>&1
eval_tap $? 264 'RegisterXblSessions' test.out

#- 265 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'tc0coGl7gpqeoi6B' \
    --chargeStatus 'CHARGED' \
    --itemId 'ffisuiC7V44wE2Ox' \
    --limit '85' \
    --offset '47' \
    --sku 'p6XgzSBVrhUxXm9v' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserSubscriptions' test.out

#- 266 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'jg3ynQdz7QbEP2Pf' \
    --excludeSystem 'true' \
    --limit '80' \
    --offset '1' \
    --subscriptionId '6NAdWaKvUy3CqK0x' \
    > test.out 2>&1
eval_tap $? 266 'GetUserSubscriptionActivities' test.out

#- 267 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RSPbHqDhPh91JDTo' \
    --body '{"grantDays": 86, "itemId": "yRUvuBpSl9Sw3NsJ", "language": "C81GMFfGWDtD2eMJ", "reason": "e8qq0DBPOXgOQaJM", "region": "UZWoRilPRhDeekAZ", "source": "dbrck0Zt2wkjV3JN"}' \
    > test.out 2>&1
eval_tap $? 267 'PlatformSubscribeSubscription' test.out

#- 268 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9VkUd7douaHTpJE7' \
    --itemId '0xGrdmnB5OM5chhy' \
    > test.out 2>&1
eval_tap $? 268 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 269 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6yyIrqb8Z2RhsPIF' \
    --userId 'qqAyzbaTncoEaNR8' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscription' test.out

#- 270 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'w24gH1RSO7kCHzwx' \
    --userId 'DpUmI9RLjWRL2RlN' \
    > test.out 2>&1
eval_tap $? 270 'DeleteUserSubscription' test.out

#- 271 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UAagQe8N0jbtYkn7' \
    --userId 'hwFesbFUg2VW6J80' \
    --force 'false' \
    --body '{"immediate": true, "reason": "gULIGIoq2AuevPSu"}' \
    > test.out 2>&1
eval_tap $? 271 'CancelSubscription' test.out

#- 272 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BrCn1BL69Iq0n4zY' \
    --userId 'd9rRR78oMBGC6ef0' \
    --body '{"grantDays": 4, "reason": "4CoCcFfH6AT5FJWK"}' \
    > test.out 2>&1
eval_tap $? 272 'GrantDaysToSubscription' test.out

#- 273 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'k90Sv53rQNvrDgo3' \
    --userId 'cNhJcYJ517Na8lf1' \
    --excludeFree 'false' \
    --limit '35' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscriptionBillingHistories' test.out

#- 274 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'p4TEH7uY85sTwxYI' \
    --userId 'qbmuAtfgSTm2YOT4' \
    --body '{"additionalData": {"cardSummary": "E00ZkUzS3cp9hwxX"}, "authorisedTime": "1983-03-02T00:00:00Z", "chargebackReversedTime": "1994-05-21T00:00:00Z", "chargebackTime": "1989-06-01T00:00:00Z", "chargedTime": "1990-05-04T00:00:00Z", "createdTime": "1977-05-26T00:00:00Z", "currency": {"currencyCode": "st3zpXm0K7Cn4lCA", "currencySymbol": "Rhptj9fm2Z1ofeB8", "currencyType": "VIRTUAL", "decimals": 63, "namespace": "ksbnJ0TXPZhGHQgM"}, "customParameters": {"ftSRdh58njPbR9Vr": {}, "Gz50paDnGxN0xQd6": {}, "nOZ12tAYyfIM0Etf": {}}, "extOrderNo": "4tNVeWvairhing1g", "extTxId": "TR3AgPtjQlgo83Q8", "extUserId": "t6knZ5WHb4E8veAg", "issuedAt": "1995-09-18T00:00:00Z", "metadata": {"lqhFCzrcdiFXg4AA": "aiWgr3oCGuL2WWUG", "5YRW9RLHpKAXIpZl": "ZWA1nT3C3lsh7n68", "EhgFEZOd4vwO6EWB": "BeKrkIRDREc4Yco0"}, "namespace": "MjQ11mHZSkWpiXK3", "nonceStr": "CYK996m4dWpYkLTX", "paymentMethod": "4YZBoO4g9Hy6sMCZ", "paymentMethodFee": 45, "paymentOrderNo": "PJTsxZKXuNsMgEuh", "paymentProvider": "ALIPAY", "paymentProviderFee": 70, "paymentStationUrl": "ShSiUCYsZX36pkZp", "price": 89, "refundedTime": "1992-06-30T00:00:00Z", "salesTax": 86, "sandbox": true, "sku": "xoIutmlTCs8HKgnZ", "status": "AUTHORISED", "statusReason": "lDZKUWh3S2mhFurD", "subscriptionId": "KKCZPD49bOT2RYDO", "subtotalPrice": 48, "targetNamespace": "VuDX6dwBcSpDe55G", "targetUserId": "pVJA4bxxteea8Mwu", "tax": 54, "totalPrice": 25, "totalTax": 65, "txEndTime": "1972-12-11T00:00:00Z", "type": "4MSk7INRaaoUJ1mI", "userId": "RhAE2aZ6QSutGOdr", "vat": 62}' \
    > test.out 2>&1
eval_tap $? 274 'ProcessUserSubscriptionNotification' test.out

#- 275 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'jGZaBbFOmOhDGMs8' \
    --namespace $AB_NAMESPACE \
    --userId 'PXCAe7QYFHOtoY0M' \
    --body '{"count": 55, "orderNo": "yg7XwcsvN813HM5f"}' \
    > test.out 2>&1
eval_tap $? 275 'AcquireUserTicket' test.out

#- 276 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'IsEw1eKbqIDhuitU' \
    > test.out 2>&1
eval_tap $? 276 'QueryUserCurrencyWallets' test.out

#- 277 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'KuZrDOMbb7oXfHRy' \
    --namespace $AB_NAMESPACE \
    --userId 'CryzhMf8TmmshEW0' \
    --body '{"allowOverdraft": true, "amount": 1, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"8qEDz4l8iX1YuMc6": {}, "orj8K1Sz2wruiayN": {}, "aYb7sS2dh393XPNd": {}}, "reason": "tzdYlxJibN45TnuC"}' \
    > test.out 2>&1
eval_tap $? 277 'DebitUserWalletByCurrencyCode' test.out

#- 278 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'LlGaaFcLmscmauDt' \
    --namespace $AB_NAMESPACE \
    --userId '6oFpff0ZOtKJBJmr' \
    --limit '48' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 278 'ListUserCurrencyTransactions' test.out

#- 279 CheckWallet
eval_tap 0 279 'CheckWallet # SKIP deprecated' test.out

#- 280 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Te8HtTWuJhI8jvLE' \
    --namespace $AB_NAMESPACE \
    --userId 'XaFhe0bMm7Pq4yYI' \
    --body '{"amount": 86, "expireAt": "1980-12-08T00:00:00Z", "metadata": {"Tk0pg9pqcukK7Wsx": {}, "Ckkq8XUFM0iP28XL": {}, "tPTqNzkdbHCE1ukx": {}}, "origin": "Nintendo", "reason": "OLLY8jWM6J6F9mD1", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 280 'CreditUserWallet' test.out

#- 281 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'db7QPprr8VOMe0zS' \
    --namespace $AB_NAMESPACE \
    --userId 'HSYyzFw3nE9A3vmz' \
    --body '{"amount": 89, "metadata": {"x9liRGtF09ktugzY": {}, "muKyuUaRYwj79azE": {}, "y3oN5F4J8RVUM8rx": {}}, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 281 'PayWithUserWallet' test.out

#- 282 GetUserWallet
eval_tap 0 282 'GetUserWallet # SKIP deprecated' test.out

#- 283 DebitUserWallet
eval_tap 0 283 'DebitUserWallet # SKIP deprecated' test.out

#- 284 DisableUserWallet
eval_tap 0 284 'DisableUserWallet # SKIP deprecated' test.out

#- 285 EnableUserWallet
eval_tap 0 285 'EnableUserWallet # SKIP deprecated' test.out

#- 286 ListUserWalletTransactions
eval_tap 0 286 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 287 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'cTU1TSxajE9GV5TA' \
    > test.out 2>&1
eval_tap $? 287 'ListViews' test.out

#- 288 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ceIaDkUp6SAGOuix' \
    --body '{"displayOrder": 12, "localizations": {"KEynrhPH6cUPPLdU": {"description": "B7o98HUbBV7oHEnM", "localExt": {"dklr0gTIUc4qBoWd": {}, "3qde38aNn7TI4r07": {}, "N2bmB5uoEhdRssWd": {}}, "longDescription": "YpBQJIvgmi0bFbIc", "title": "QHC6UqXaYbVn23lk"}, "4WnE3VhHWwNgIjP1": {"description": "oCLKLDwiE9DELKtG", "localExt": {"HR2DhYg6zR33rYk7": {}, "jw3fKl3YctrIWyaP": {}, "5IyCvR5E4nwbPTqC": {}}, "longDescription": "4CA42hjHwUt3O1qF", "title": "fywCWr8qplQTVkmQ"}, "nM33uJ2AiaDvKoE0": {"description": "XijhTXzOcb6QJEQV", "localExt": {"gfW7fxmHcQbt7A6g": {}, "M5FECAXXtVc5gSVq": {}, "PhQ9Ey1YiUw3WuxH": {}}, "longDescription": "CGvqUZoitpCyah1p", "title": "yUxvAn457XqmytwE"}}, "name": "uGv5A3iPBfYpGG7C"}' \
    > test.out 2>&1
eval_tap $? 288 'CreateView' test.out

#- 289 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'Y8yIt0hI0US0lC86' \
    --storeId 'kpZfoh39qTG34oTC' \
    > test.out 2>&1
eval_tap $? 289 'GetView' test.out

#- 290 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'hfhpgAGZbOHXuBTX' \
    --storeId 'yT5ZYiVN17LTMHdp' \
    --body '{"displayOrder": 97, "localizations": {"AWWluK7eExKxZXcA": {"description": "yeLpsdUxNA0C2uJe", "localExt": {"IINmQH0QaNIOKKC2": {}, "CIkLTGiZG4RbBzjy": {}, "jZQNJ71UpwIgC2zt": {}}, "longDescription": "miLS1qiyIGUpyBog", "title": "jvxzG7AcDgciHZ1T"}, "kuWl2lVsdtiseFIA": {"description": "ZTjL59GxCF8h2nzu", "localExt": {"wmltvA1yMKmgdqlC": {}, "ZstlslHqa6FZVS70": {}, "ymsTezMPbz7YGJKa": {}}, "longDescription": "9e0IiJxftfN60gqX", "title": "PSWzahZBznDENwNL"}, "ra8K7pNYARedefWe": {"description": "ZhvuSq6bHawwimXB", "localExt": {"vfrfs5dmHOLOV2fG": {}, "x4xnuDD98P0VL1Jl": {}, "8MYj8aeH5CWi1riz": {}}, "longDescription": "T0nOyvMrpgW88IOU", "title": "mkuFyHfdYCFb6KCo"}}, "name": "tl2mRciJZH9EsXWW"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateView' test.out

#- 291 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'lLiNOmv7GFUXiWAI' \
    --storeId 'hWK8pkqZ4ciTkEqP' \
    > test.out 2>&1
eval_tap $? 291 'DeleteView' test.out

#- 292 QueryWallets
eval_tap 0 292 'QueryWallets # SKIP deprecated' test.out

#- 293 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 47, "expireAt": "1982-01-19T00:00:00Z", "metadata": {"2Jg4nISQbweFnuHk": {}, "ieYL4WBIoCQ8eUTS": {}, "ZHvN3vrOF6aqfYwZ": {}}, "origin": "Oculus", "reason": "QnP7iFArnc3HciWq", "source": "GIFT"}, "currencyCode": "Brv9zgvoCswUNm4Q", "userIds": ["RGTQSO2HeZ8ifHcd", "KpCAHPqhQp0XkInu", "yThXxAVbZR1IUGMO"]}, {"creditRequest": {"amount": 4, "expireAt": "1994-11-06T00:00:00Z", "metadata": {"QKtCqbZpuaVrhQwU": {}, "MAOB96hwhBZzEUvO": {}, "m9uMSQrBTnPN7463": {}}, "origin": "Other", "reason": "8M6FKASadpKgHvOc", "source": "REDEEM_CODE"}, "currencyCode": "TWu9wumyl17c2vV6", "userIds": ["DoUNuz8DNM1tln1W", "UNgYUBrSrsiGFvAA", "9LK2GWnrsLQZI6n8"]}, {"creditRequest": {"amount": 95, "expireAt": "1979-04-10T00:00:00Z", "metadata": {"25qsuBLUUaAdSs3d": {}, "JTHMA3fAPQP69c0Q": {}, "IK1heSbvTwHFIAUo": {}}, "origin": "IOS", "reason": "HF6rv6EUXXh7smwA", "source": "DLC"}, "currencyCode": "YTfyfeduHPky34Am", "userIds": ["FJSvUvffIaNnkDrP", "2J03XAz352LYRdHs", "5dA1vBMEaPNRhBwN"]}]' \
    > test.out 2>&1
eval_tap $? 293 'BulkCredit' test.out

#- 294 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ttHsO7a7q0u7HpYk", "request": {"allowOverdraft": true, "amount": 98, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"QGbt7BBc0B15ixIG": {}, "geF1oXDeGRIz7n53": {}, "o2OYT6IJoVZVwRo6": {}}, "reason": "ERQQRBzk072mrfBu"}, "userIds": ["cKWOGQXmSwe56Wff", "Qf9RQWSvHDNOJ1GI", "BwndLU2U7cFXngcS"]}, {"currencyCode": "g8ciowJdivrlx9DI", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"sD0hicYHeVuU17lC": {}, "jt6Ip4XOdTW4Kpya": {}, "4kG6PlUyunZIVp91": {}}, "reason": "Q8LHoxUhvkTLQ2ML"}, "userIds": ["p7e6pZN6Urwd2Msq", "MKfS5zdN6hfig1EN", "skBvC7BOzcFzVKdG"]}, {"currencyCode": "DwclKlRt1ANuykIb", "request": {"allowOverdraft": true, "amount": 37, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"04y1vfoeSdXBWXrJ": {}, "djw2QDgt5quyae3q": {}, "yob2bf20mzCVIviK": {}}, "reason": "agvfbTXOpSMY4HkO"}, "userIds": ["41g35A3KoeK2h19I", "a8yLALCgm0bveGXQ", "WzfSUyNzliwtq7US"]}]' \
    > test.out 2>&1
eval_tap $? 294 'BulkDebit' test.out

#- 295 GetWallet
eval_tap 0 295 'GetWallet # SKIP deprecated' test.out

#- 296 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'd5Eu8O4GlFYPzjIv' \
    --end 'MnUnMq20GlRnemEv' \
    --start 'K53AJMyGe85TpBVS' \
    > test.out 2>&1
eval_tap $? 296 'SyncOrders' test.out

#- 297 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["6TejXeYU4qeB63gb", "cpH8wnu5ZkLUplj8", "XrnJB0wJUKZ7nvfc"], "apiKey": "7n2wgBtB01QqVgxz", "authoriseAsCapture": true, "blockedPaymentMethods": ["9wvNJ4ig8GkmLtB6", "IDOu0l9MC38uuhYH", "4Uc6MIqNU8Umer1a"], "clientKey": "fYFA8nCKat9OHvGH", "dropInSettings": "yhvqYAeeOXFzuQ5X", "liveEndpointUrlPrefix": "BOe1sokVl0Ei8gfu", "merchantAccount": "MvuM7aUH9P43Md3h", "notificationHmacKey": "rGE4E9EZuPh8HsTp", "notificationPassword": "VGACkBPGTIWVEZE6", "notificationUsername": "cvzDYAA6OCnUafD0", "returnUrl": "OGnZt8nXbPAaBfEp", "settings": "iqmYbXvsU2nKSCi4"}' \
    > test.out 2>&1
eval_tap $? 297 'TestAdyenConfig' test.out

#- 298 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "WPMTJj0M6iQZIYOh", "privateKey": "dXAf7yCj5eN8eFVV", "publicKey": "SMpARoqZllkmy2c3", "returnUrl": "A6G7auRIwPJTeDLu"}' \
    > test.out 2>&1
eval_tap $? 298 'TestAliPayConfig' test.out

#- 299 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "G5SNSWacdXm9gwOr", "secretKey": "HBhG5DdXP3caYAxi"}' \
    > test.out 2>&1
eval_tap $? 299 'TestCheckoutConfig' test.out

#- 300 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '4RDAmBTkfOU1xKQc' \
    --region '4aJqJsKl0UOhE3EF' \
    > test.out 2>&1
eval_tap $? 300 'DebugMatchedPaymentMerchantConfig' test.out

#- 301 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "FkWYUmnW3eiwifav", "clientSecret": "py4nLH7kgc0FdJRL", "returnUrl": "A0Ei7QaLFvikZylH", "webHookId": "a2bje6vpYRF3rm5z"}' \
    > test.out 2>&1
eval_tap $? 301 'TestPayPalConfig' test.out

#- 302 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["7RRkNSUGoYuD2p79", "H2YhpAqqgATv3bJC", "ucwWlF1C3PjGk1Xc"], "publishableKey": "h2uFnTyFGn5ReOH0", "secretKey": "Ti5A9q9Ax8mRmb6O", "webhookSecret": "lXywZ314830hwzjA"}' \
    > test.out 2>&1
eval_tap $? 302 'TestStripeConfig' test.out

#- 303 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "0HZsioIHV60GNRkD", "key": "Qchru7J1YD1Dd4VA", "mchid": "BM7fokk6HuiorbVM", "returnUrl": "bFUFWcazmh2w0RuR"}' \
    > test.out 2>&1
eval_tap $? 303 'TestWxPayConfig' test.out

#- 304 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "2WJ5qtfE1KhUyTgo", "flowCompletionUrl": "wjGiF3ee73mQteFE", "merchantId": 12, "projectId": 88, "projectSecretKey": "eZx3NTpNM19MpH5x"}' \
    > test.out 2>&1
eval_tap $? 304 'TestXsollaConfig' test.out

#- 305 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'cf4HDCrb5Hfvoqzx' \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentMerchantConfig' test.out

#- 306 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '7DL5M7POYj37ewT9' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["m9nwUwQYFfDBDnDA", "QV0QVUkXUwXnYKHf", "pfRUXtI1P2Nn4ugy"], "apiKey": "CM9fGMURPLvvjQ4Y", "authoriseAsCapture": false, "blockedPaymentMethods": ["MyjYHmKoPuWTQpOT", "vGeB1SsHOZQXgv7e", "HmPHJuDQFYGpclKW"], "clientKey": "iiukAdmjUwSpQoNd", "dropInSettings": "BqBn1VVnt2AEsrkA", "liveEndpointUrlPrefix": "5cmzj2rzFtfWrdGT", "merchantAccount": "WYXoBmkwkArAT5SH", "notificationHmacKey": "3vQQiImBUdpJt0OO", "notificationPassword": "4YN5YcihkWCe0Glk", "notificationUsername": "1mXSMYzmpHunFunU", "returnUrl": "gndUnopiVnqwzq6L", "settings": "YhnKL5kZFnN9YZTX"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateAdyenConfig' test.out

#- 307 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'IPccdZ71XbUjQo8W' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 307 'TestAdyenConfigById' test.out

#- 308 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'u5qwRtBqrVMtBQum' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "e7AiuMMH0jjxYx3z", "privateKey": "A6pl2beVYa3vlKtK", "publicKey": "ufIFqRWUd8e5xMo6", "returnUrl": "5jyrnMrvM8ORNSuX"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdateAliPayConfig' test.out

#- 309 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'iVpsJhvB0acZAA4i' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 309 'TestAliPayConfigById' test.out

#- 310 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '8jsw7BXDhdobJsEz' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "2DXJRBiYvH7i71kE", "secretKey": "pcMBvW55LD1zZYuB"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateCheckoutConfig' test.out

#- 311 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'S9q33tjchOtnS7r7' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 311 'TestCheckoutConfigById' test.out

#- 312 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '15CvlpNY0blbOafd' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "t829KjHosDo3EiRV", "clientSecret": "2N33xgo8e9ZlrgpV", "returnUrl": "vslp7CvdcQ002Zje", "webHookId": "J5Y55jtjXbT0P58b"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdatePayPalConfig' test.out

#- 313 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'k6PTyufS5tsRuaZI' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 313 'TestPayPalConfigById' test.out

#- 314 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'tDzVZwGZhEAZylA0' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["l5gpLo1JNZ6kTGd8", "D25DijybFTELDZQT", "KnFtXWD85322BVdO"], "publishableKey": "pW3yjLl5cDwi0ec2", "secretKey": "xPrnc3rk45KoMsrT", "webhookSecret": "cP0zsZW21ZuLFJ2X"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateStripeConfig' test.out

#- 315 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '2tBngNEk5HzPl5u2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 315 'TestStripeConfigById' test.out

#- 316 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'lGZh8nep9EP1lOur' \
    --validate 'false' \
    --body '{"appId": "XpgcmYvtGVgR8oyt", "key": "7TCj9bIfwtp0nLcf", "mchid": "OXQX015nmA1kbZWZ", "returnUrl": "pFibCP2HRODChyJf"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateWxPayConfig' test.out

#- 317 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'efF7fG6cLenBDZmp' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfigCert' test.out

#- 318 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'J3GXjMAHKXGZZQHP' \
    > test.out 2>&1
eval_tap $? 318 'TestWxPayConfigById' test.out

#- 319 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'bsjFoD4S3rqRmG1j' \
    --validate 'true' \
    --body '{"apiKey": "lwL8bAVROeydtRLJ", "flowCompletionUrl": "XzKqAjvsZcCgGodS", "merchantId": 29, "projectId": 4, "projectSecretKey": "OWiPVo8cN66ELKH3"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateXsollaConfig' test.out

#- 320 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '2v13rEsjhNgyHnlx' \
    > test.out 2>&1
eval_tap $? 320 'TestXsollaConfigById' test.out

#- 321 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'XEL6unSBtYFil7Zy' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateXsollaUIConfig' test.out

#- 322 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '13' \
    --namespace 'NrHK7xbS2c3DOD8B' \
    --offset '73' \
    --region 'EBSPpgcZIPLcH1Kx' \
    > test.out 2>&1
eval_tap $? 322 'QueryPaymentProviderConfig' test.out

#- 323 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "5oSlJYm7r2AX8rXJ", "region": "TOkjKHBFbDdBQiO6", "sandboxTaxJarApiToken": "vlP63RP1hgssmbz7", "specials": ["ALIPAY", "ALIPAY", "STRIPE"], "taxJarApiToken": "3kiOzWT845ZWMnvA", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 323 'CreatePaymentProviderConfig' test.out

#- 324 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 324 'GetAggregatePaymentProviders' test.out

#- 325 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'gjEp2X9RhulIfxHM' \
    --region 'IAJYO05Dr6nPvnlx' \
    > test.out 2>&1
eval_tap $? 325 'DebugMatchedPaymentProviderConfig' test.out

#- 326 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 326 'GetSpecialPaymentProviders' test.out

#- 327 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'omDLMPPr8cPUoTTp' \
    --body '{"aggregate": "XSOLLA", "namespace": "lP8bJBeVTr5BjW5i", "region": "FUYqJDiU6E6RhBK3", "sandboxTaxJarApiToken": "urwf18n5vMXJQO2F", "specials": ["ALIPAY", "WXPAY", "CHECKOUT"], "taxJarApiToken": "KBY0xFnh3v0cWe5M", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 327 'UpdatePaymentProviderConfig' test.out

#- 328 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'aeNZZhq5s2GRvLOv' \
    > test.out 2>&1
eval_tap $? 328 'DeletePaymentProviderConfig' test.out

#- 329 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 329 'GetPaymentTaxConfig' test.out

#- 330 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Ua5e4u00vMhZZpmL", "taxJarApiToken": "FvPmcDzkt3yXFwcD", "taxJarEnabled": false, "taxJarProductCodesMapping": {"RrqiEmz2OD18NyXT": "Q2Rgp0SrFdAu7SMK", "ix5p6tOfLKGTIJNA": "DpdcyLcuwDkiIk3w", "n7MTvXdx1zuyDNKK": "jwgemTTRcnG1yQHY"}}' \
    > test.out 2>&1
eval_tap $? 330 'UpdatePaymentTaxConfig' test.out

#- 331 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '5VKrorxqFPHuh6RG' \
    --end '8ouz0yxfgJYccAZb' \
    --start 'Y7ORojMTdixsIuTC' \
    > test.out 2>&1
eval_tap $? 331 'SyncPaymentOrders' test.out

#- 332 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '56CDCD5S5nUmgmrY' \
    --storeId 'i33Gd4ZgksfsppNk' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetRootCategories' test.out

#- 333 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'wSy971rSDCoU14sz' \
    --storeId 'cUdQCckHvzhJTxis' \
    > test.out 2>&1
eval_tap $? 333 'DownloadCategories' test.out

#- 334 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '7FWoCxHC9XGvL9Gx' \
    --namespace $AB_NAMESPACE \
    --language 'oZYjKGG7CT47xFaj' \
    --storeId '4zGMkH1b7FNQaRfY' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetCategory' test.out

#- 335 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '7GiPKJ5ro01r14Ea' \
    --namespace $AB_NAMESPACE \
    --language '5ai1Rn6JSO2lhW7v' \
    --storeId 'tODT6Xn7KTQboh8u' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetChildCategories' test.out

#- 336 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '1xjAzvbZgy4JjosE' \
    --namespace $AB_NAMESPACE \
    --language 'SbnKHkimoMVCcaf7' \
    --storeId 'OVkwaX8k5LXVxiSj' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetDescendantCategories' test.out

#- 337 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 337 'PublicListCurrencies' test.out

#- 338 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 338 'GetIAPItemMapping' test.out

#- 339 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'LQdwcVBf9tESsOPP' \
    --region 'CwU2EpARP4rhwoYd' \
    --storeId 'ScEtHYldLrts9hca' \
    --appId 'aJEvtWHF9XidsHPy' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetItemByAppId' test.out

#- 340 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId '4ijrFtORDbPv7Hx7' \
    --categoryPath '1mqTVHAFJOWABcmU' \
    --features 'SqvR4FN2LyLLFTqr' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language 'n5GVNfsn17JNhpyP' \
    --limit '20' \
    --offset '100' \
    --region 'BhIDwYXQwy5WTp0D' \
    --sortBy '["updatedAt:asc", "updatedAt"]' \
    --storeId '4wa8ubw8LPG6hbLw' \
    --tags 'RaSSjwcmijhqsIgl' \
    > test.out 2>&1
eval_tap $? 340 'PublicQueryItems' test.out

#- 341 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'IGV1DByJ3DtbO6vE' \
    --region '0zKShXq5EawkNG5q' \
    --storeId '8cgaBYbwlH2xRpdR' \
    --sku 'ESN6ez9IyUxLBoUy' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetItemBySku' test.out

#- 342 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'QOIeDVFLXMZCBTnA' \
    --region 'kyuZzDLKS6d6GwAR' \
    --storeId '2wVJ5RhWeAhbbC5S' \
    --itemIds 'H5TTYJZtawiPBQJq' \
    > test.out 2>&1
eval_tap $? 342 'PublicBulkGetItems' test.out

#- 343 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["DBsbIamuK71aRnBw", "g2p9Yhp0LJ32lsXS", "hzac6laDaKIrRmYm"]}' \
    > test.out 2>&1
eval_tap $? 343 'PublicValidateItemPurchaseCondition' test.out

#- 344 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'EXTENSION' \
    --limit '21' \
    --offset '16' \
    --region '2Yi61MBAf6mKAbl5' \
    --storeId 'FoX0WdGPepqUkpcl' \
    --keyword 'BNN7at63EdwHeKqC' \
    --language 'dABu8Q0BCVD8Tg3k' \
    > test.out 2>&1
eval_tap $? 344 'PublicSearchItems' test.out

#- 345 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'm1XLURZxpwMYyLGj' \
    --namespace $AB_NAMESPACE \
    --language 'ryCg3bMyqByXhwmc' \
    --region '8hWoModbrIjf8iRy' \
    --storeId 'zPWU0lIMjigTMj7m' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetApp' test.out

#- 346 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'dE7gUTNi0JBpRbtK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGetItemDynamicData' test.out

#- 347 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'KzHFbbF02pLRcTPA' \
    --namespace $AB_NAMESPACE \
    --language 'HV5KeciikjoWwUzO' \
    --populateBundle 'false' \
    --region '2fqKinI7N4bCzaOt' \
    --storeId 'atQ1m2DNhmASL9Jv' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItem' test.out

#- 348 GetPaymentCustomization
eval_tap 0 348 'GetPaymentCustomization # SKIP deprecated' test.out

#- 349 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "WPPADUTgWpWd9TYY", "paymentProvider": "XSOLLA", "returnUrl": "5HPZ4jATr8oGAh2d", "ui": "IjvuS6Z2G0Eos4NP", "zipCode": "JdxMCPtFazTnvC70"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentUrl' test.out

#- 350 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FscRPVYhpIJE02ie' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetPaymentMethods' test.out

#- 351 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Pu5KBODrPtXbU9cs' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUnpaidPaymentOrder' test.out

#- 352 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ItzeMAXh1dtwnqxx' \
    --paymentProvider 'WXPAY' \
    --zipCode '4kbd5Qlo9ht5d1iD' \
    --body '{"token": "cTjZ9LtYpokbXaO6"}' \
    > test.out 2>&1
eval_tap $? 352 'Pay' test.out

#- 353 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1oOEv8ZtQti0soFQ' \
    > test.out 2>&1
eval_tap $? 353 'PublicCheckPaymentOrderPaidStatus' test.out

#- 354 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'vQabnLcGxYJS8Dss' \
    > test.out 2>&1
eval_tap $? 354 'GetPaymentPublicConfig' test.out

#- 355 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Ml3YZdTQE3zck81R' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetQRCode' test.out

#- 356 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '0Zz3xZ0Na7YUGFjz' \
    --foreinginvoice 'haBn2o7hrLwEDqjX' \
    --invoiceId 'hSar1CcNUqeDroLQ' \
    --payload 'jtK1jHMkXrLYZpYj' \
    --redirectResult '0eVBKLI98xDPNa9m' \
    --resultCode '09y9dGyIPhU2VOW0' \
    --sessionId 'BFu9MlFiqSfYlvbE' \
    --status 'B2trkVcYwOzPZgeN' \
    --token '1UtBaEz7rbJuQJml' \
    --type 'ZomtO7t3uWbNV8UR' \
    --userId 'jH9xBNS4sXpFboyu' \
    --orderNo 'JsHH7HSBlAEWAH72' \
    --paymentOrderNo 'lGU07M1eDcIJvoDc' \
    --paymentProvider 'ADYEN' \
    --returnUrl '6AMnlbXWkYypgRzT' \
    > test.out 2>&1
eval_tap $? 356 'PublicNormalizePaymentReturnUrl' test.out

#- 357 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '29iSD1ePb0FGsdAI' \
    --paymentOrderNo 'Y6CqT3QV7SrDM97i' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 357 'GetPaymentTaxValue' test.out

#- 358 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'qCb8gZ9gKQ4P9bkr' \
    > test.out 2>&1
eval_tap $? 358 'GetRewardByCode' test.out

#- 359 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'SgB04neylryXQWMr' \
    --limit '98' \
    --offset '61' \
    --sortBy '["rewardCode:asc", "rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 359 'QueryRewards1' test.out

#- 360 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'TU8o3PaBL5iWD3gF' \
    > test.out 2>&1
eval_tap $? 360 'GetReward1' test.out

#- 361 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicListStores' test.out

#- 362 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["4vgppE7nLSkrc9qD", "0770lGUsdxvRLb6N", "H3R5FToxxyxcfCyM"]' \
    --itemIds '["3Ncpc9ioNduktapm", "kamPa222AzpNYUtB", "ojljUHRfSq3brTW1"]' \
    --skus '["LwXhujrw50inwZhH", "hBJBkAlzLVbhejI9", "y9YbPO4zP2Ff7yRK"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicExistsAnyMyActiveEntitlement' test.out

#- 363 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'DXJLwJPHI0tXG5Nc' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 364 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'crtc843sz3PRQnrj' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 365 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'TEijKIFx03fXRrmq' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 366 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["osau3L9AZpO08ocm", "TeHG8KkDhOv7S4H9", "v6jQiUG5GOvISX3i"]' \
    --itemIds '["EYRaZaN1sadtI6ZU", "OBJUlQYmhmymh6Wu", "ECxo0sv7fT4sUSNI"]' \
    --skus '["dR9xBo3Gl3vQ1U0I", "EMMKKgrRkeLLAzjZ", "bb75h70rjNSCiEXZ"]' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetEntitlementOwnershipToken' test.out

#- 367 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "7M51VCBbdDTzeZnN", "language": "ywJL_ilxA", "region": "mnTwqYzprUTjFRhI"}' \
    > test.out 2>&1
eval_tap $? 367 'SyncTwitchDropsEntitlement' test.out

#- 368 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'aTH10UzSCRQPR1Y6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicGetMyWallet' test.out

#- 369 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'bfB3IbFEniuJkXkn' \
    --body '{"epicGamesJwtToken": "3pkFD4kPl7VWgNsV"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGameDLC' test.out

#- 370 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ECiAcPEFqgT6JJYN' \
    > test.out 2>&1
eval_tap $? 370 'SyncOculusDLC' test.out

#- 371 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'kwHEdOYhJOMhM9VG' \
    --body '{"serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 371 'PublicSyncPsnDlcInventory' test.out

#- 372 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '1pwjG21NqOVlxZR1' \
    --body '{"serviceLabels": [60, 13, 86]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 373 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '3QaSAdoNokZMXFE7' \
    --body '{"appId": "glKEKuY9nIWvizP2", "steamId": "qpcx84CLx6ta9WS2"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamDLC' test.out

#- 374 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '3WBCzNiVoc0ZgVfm' \
    --body '{"xstsToken": "6KtVGv3UfkSuWvpf"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxDLC' test.out

#- 375 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WzzeDt5B5nUfyyZe' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'W6rFqab1PklXlC8u' \
    --features '["iBbatIeo1ow5N5hg", "0zOMWa0reWq3iCmO", "4EKRfTEqmZkEDI1I"]' \
    --itemId '["wFj5hOFCvRbtIsZK", "FGvlOjnPg0xYmMOo", "YmqWmHjT89IOSwvO"]' \
    --limit '92' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserEntitlements' test.out

#- 376 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6OFG3lFKcpjukQp3' \
    --appId 'EawBct0Hq6JxOXOk' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserAppEntitlementByAppId' test.out

#- 377 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'C7LtEMpgM5vtRYU2' \
    --limit '24' \
    --offset '26' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 377 'PublicQueryUserEntitlementsByAppType' test.out

#- 378 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'pOxtVYXOw9Jn6lug' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '70SaxYc6usYkT1T0' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementByItemId' test.out

#- 379 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JaIEZShNXV9djXwV' \
    --entitlementClazz 'CODE' \
    --sku 'jAIrQwX1gkS2PP4s' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementBySku' test.out

#- 380 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZtHi36hPhW9RrPuf' \
    --appIds '["s6L4Do3vgBr7nlk5", "av9m3EzKETHZgbpA", "SdqxpkW6pmBT8k8V"]' \
    --itemIds '["G5q6MNc8jJrfi8Df", "UKaInlp7B1bTDHrz", "Jv2abWCalIUPEhmG"]' \
    --skus '["lIGvxmGOfIw2QZWR", "OnEHmQPnNoujwnkT", "R0f0BL4NGYFjDN5v"]' \
    > test.out 2>&1
eval_tap $? 380 'PublicExistsAnyUserActiveEntitlement' test.out

#- 381 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'IGeTiJPlVGqahHsG' \
    --appId 'kLn05UOcahSXP0wD' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 382 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'oTkaNPzclbJTMrdy' \
    --entitlementClazz 'CODE' \
    --itemId 'c38qzfygJOEeRhM9' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 383 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'T8hBo0Mi6DWkp66e' \
    --ids '["WAcjEIpxHWlClbPZ", "ah8wfsXRetiz5iYy", "NfuoPhTuS7djp6yL"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 384 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '1jBFYjNKGaGCWmYr' \
    --entitlementClazz 'APP' \
    --sku '2QXNeHvCu7oYGTDt' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 385 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'EmXX0HUONAhXVUSl' \
    --namespace $AB_NAMESPACE \
    --userId 'wicy9ekfDR5ebFYl' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlement' test.out

#- 386 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'N769BON9b6u4avpI' \
    --namespace $AB_NAMESPACE \
    --userId 'BWjdqN9bs7DLTIMI' \
    --body '{"options": ["1qQj9V3pdu8TXJxK", "C39n2jKJ9rNYfarW", "kvQF37zi9NJ0LKaI"], "requestId": "far05N1rrknC34SJ", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 386 'PublicConsumeUserEntitlement' test.out

#- 387 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'MQfo08VxidbbrP4m' \
    --namespace $AB_NAMESPACE \
    --userId 'uCiXZIgYB2znchlm' \
    --body '{"requestId": "L2EgzW38n0IJdhUL", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 387 'PublicSellUserEntitlement' test.out

#- 388 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'v3fqaAOeyJ4pW6hd' \
    --body '{"code": "3BP6ZMJAHxZMyLHx", "language": "mDiM_rCvA-585", "region": "AVTmKAFNA5SfZgEg"}' \
    > test.out 2>&1
eval_tap $? 388 'PublicRedeemCode' test.out

#- 389 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VMatYkXoHO6fwZWO' \
    --body '{"excludeOldTransactions": true, "language": "cThP_dOyi-748", "productId": "ERvNmT6n0xGtctba", "receiptData": "vSah4tqvidUfDbNU", "region": "dUDqW18vRW4AJJVj", "transactionId": "vImXn8LXhngOc3Ue"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicFulfillAppleIAPItem' test.out

#- 390 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ogWn8GQZLR8rFbet' \
    --body '{"epicGamesJwtToken": "GqUlALOAA409upjR"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGamesInventory' test.out

#- 391 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'yJIXubf3nJRHHpmV' \
    --body '{"autoAck": true, "language": "ss", "orderId": "JbTuKyV3w6NF11uv", "packageName": "vXJwqqwpR6OFIOc9", "productId": "dtdDLImGZoawRaC5", "purchaseTime": 2, "purchaseToken": "Lt5CBPuA2kbNh36Y", "region": "0kvhsFZLJ625wrfR"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicFulfillGoogleIAPItem' test.out

#- 392 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dgKEBvPQkUkkLxZH' \
    > test.out 2>&1
eval_tap $? 392 'SyncOculusConsumableEntitlements' test.out

#- 393 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'ezQUi47J6p2oKhy9' \
    --body '{"currencyCode": "XyriPjr3RiRQQEE9", "price": 0.6423484689723626, "productId": "k1DnCaATNcvZVU5n", "serviceLabel": 42}' \
    > test.out 2>&1
eval_tap $? 393 'PublicReconcilePlayStationStore' test.out

#- 394 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '4TemV9Dy4Dn9aWLD' \
    --body '{"currencyCode": "aTB2fUnsTmG3bEOV", "price": 0.7116577743794832, "productId": "IvvAPDpFgtYF16RD", "serviceLabels": [65, 86]}' \
    > test.out 2>&1
eval_tap $? 394 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 395 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '6iu5VE6ca8qOqVKq' \
    --body '{"appId": "BekCQYx3XsiWeZnV", "currencyCode": "acQDCWQ6oVsHEsmF", "language": "jjO_991", "price": 0.6769523512964276, "productId": "WcXtj91StQgdJzav", "region": "N2KFoUj5EQYn9log", "steamId": "Nh9QaYDeMqRnLgj2"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncSteamInventory' test.out

#- 396 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'laYKm2dIln5eBqNS' \
    --body '{"gameId": "TRsBvxDMwOpjlkKJ", "language": "hVNy", "region": "6HBmMJajHPRBIIVh"}' \
    > test.out 2>&1
eval_tap $? 396 'SyncTwitchDropsEntitlement1' test.out

#- 397 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'cQQbK3pRbIIvRntu' \
    --body '{"currencyCode": "WZ12Y0h8yC9Z8RQb", "price": 0.42511740377152685, "productId": "Fhroyj2QCYMIafR2", "xstsToken": "MTsnW7aSQE1UVeaJ"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncXboxInventory' test.out

#- 398 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '7ZK0WzS3VbYu8ln2' \
    --itemId 'gX3yh9jxCmG9gIjt' \
    --limit '70' \
    --offset '11' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserOrders' test.out

#- 399 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8WiKg7l7DHqXkHsk' \
    --body '{"currencyCode": "MwL1d1qz6HWQaHOD", "discountedPrice": 100, "ext": {"BuSzlioUS5L0PDFy": {}, "BF6zsMSlUoYV5am0": {}, "sKKPDwRMILoF5y3v": {}}, "itemId": "SEeYf4Oi0ziJFV9Q", "language": "Gpg_BMNo_Yx", "price": 26, "quantity": 77, "region": "CoV7oS4veQnLPhlS", "returnUrl": "4rRb889Fz41yzdNk", "sectionId": "OdFGzlBHNVfrH335"}' \
    > test.out 2>&1
eval_tap $? 399 'PublicCreateUserOrder' test.out

#- 400 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IQJQGmxkKEZSgk4l' \
    --userId 'RlZb6OAcjXDSkr9R' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserOrder' test.out

#- 401 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PoXw8nIWgDhrvr9P' \
    --userId 'P7U50i4aRF3AHRmW' \
    > test.out 2>&1
eval_tap $? 401 'PublicCancelUserOrder' test.out

#- 402 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'FO6GLzWio4P13HcW' \
    --userId 'DS9Ae8MSvdStDHZS' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserOrderHistories' test.out

#- 403 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'pc5BD8qUCOXAeApq' \
    --userId 'dg09oUGjZnMaWnMF' \
    > test.out 2>&1
eval_tap $? 403 'PublicDownloadUserOrderReceipt' test.out

#- 404 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'C9JX942acqa43eEw' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetPaymentAccounts' test.out

#- 405 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '8unI3akQVP0WBhBv' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'G3EVnZQrI4vZoc8Y' \
    > test.out 2>&1
eval_tap $? 405 'PublicDeletePaymentAccount' test.out

#- 406 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'Egfp0wPLyEFADnQW' \
    --language 'fDY3tDiKk88IW109' \
    --region 'i5KyySdLak3Gesrd' \
    --storeId '24JhFjievnD3mJEy' \
    --viewId 'j1bYHqr1h80InxAS' \
    > test.out 2>&1
eval_tap $? 406 'PublicListActiveSections' test.out

#- 407 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'DF8xvmTT2XJlpyqM' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'Fnuw9S6VShwACOjv' \
    --limit '44' \
    --offset '63' \
    --sku 'DP0ikcjlmHC9LGma' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 407 'PublicQueryUserSubscriptions' test.out

#- 408 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BpX1R0cS5g2VJo0t' \
    --body '{"currencyCode": "UlTDbL13rUvxe3J3", "itemId": "wike9fjEDgl0F5EX", "language": "yCS-mTYP", "region": "dpI1QbDUkRRBSphw", "returnUrl": "8uKLz7MqoL4jnSxL", "source": "KVPBvOkL2cr9Mctl"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicSubscribeSubscription' test.out

#- 409 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3QYlM4A24wM7Ctvq' \
    --itemId 'cIUiRnMLipljlvSx' \
    > test.out 2>&1
eval_tap $? 409 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 410 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qoV5Ux1gcER425Pc' \
    --userId 'x4ohMeY4WPG3Ew3k' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserSubscription' test.out

#- 411 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'J3dR9GVeB3KtmSgU' \
    --userId '1qHoJaNx0JDttBqW' \
    > test.out 2>&1
eval_tap $? 411 'PublicChangeSubscriptionBillingAccount' test.out

#- 412 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rO8TFoSM5DMsgGzY' \
    --userId 'pzmbgcE1eNNFEPao' \
    --body '{"immediate": false, "reason": "UVPpvg2zlj74x9oB"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicCancelSubscription' test.out

#- 413 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'it5ehJLGJ3U0FTcC' \
    --userId 'gJrz3a2d2zwr1Vfz' \
    --excludeFree 'false' \
    --limit '93' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUserSubscriptionBillingHistories' test.out

#- 414 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'GTh8QZkysptu2mvi' \
    --language 'C1TcKXedbbG3bQIM' \
    --storeId '50aeWT48M5wzhdHj' \
    > test.out 2>&1
eval_tap $? 414 'PublicListViews' test.out

#- 415 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '3jy0BpJjbDGTWv06' \
    --namespace $AB_NAMESPACE \
    --userId 'UVeHiaheN6VAO6jj' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetWallet' test.out

#- 416 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'iRTuNA8Dj3vpUo6Y' \
    --namespace $AB_NAMESPACE \
    --userId 'ZGyZl6JaJpY6OgBF' \
    --limit '34' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 416 'PublicListUserWalletTransactions' test.out

#- 417 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'LOlX5noVSbhsDmGN' \
    --baseAppId '5MCTWmDB0YPxbBrn' \
    --categoryPath 'WwWUgBei5bjljSnP' \
    --features 'swlIADDPgKG1l3J1' \
    --includeSubCategoryItem 'false' \
    --itemName 'iN7YmwYMQhI9uyS2' \
    --itemStatus 'ACTIVE' \
    --itemType 'BUNDLE' \
    --limit '80' \
    --offset '13' \
    --region 'eMHQqfldmEQQpOfZ' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "displayOrder"]' \
    --storeId 'EbMXzDlFOLw0ziaF' \
    --tags 'kjRO4f1zVb31s1c0' \
    --targetNamespace 'ch4sXdyvPL6iS5Le' \
    > test.out 2>&1
eval_tap $? 417 'QueryItems1' test.out

#- 418 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'utuRFcC9iCJt6Kfp' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 418 'ImportStore1' test.out

#- 419 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'gCByhfRw1gc3O2XI' \
    --body '{"itemIds": ["YzEx2tl39irGaO44", "lpyvntak3gvs9vNq", "3h3wZYVfeRbaSKTv"]}' \
    > test.out 2>&1
eval_tap $? 419 'ExportStore1' test.out

#- 420 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'T8KMjbwWxP17ttWy' \
    --body '{"metadata": {"25jGJGJMYTHPwmiI": {}, "heA4NpZixG9oahKu": {}, "oJlQI5yMv9gZ5C0d": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "uWQ3pFAwtPOssEA2", "namespace": "7uq5JeIAqu8kVPR6"}, "item": {"itemId": "116rE29Qy4eax2tO", "itemSku": "kxILIStQ9WUPg7Gt", "itemType": "wkVSvDKTH8y0fcal"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "923kgGk5y4VTYeYL", "namespace": "AvwsNJNj4yIgXJeH"}, "item": {"itemId": "0TqEv1s0ApipNOZe", "itemSku": "NeRND3Hn1EjcpxXv", "itemType": "yRkD6hmmlB8pBedI"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZLM0AoEHcB0gaYiO", "namespace": "MXZULHeONs6R2cj9"}, "item": {"itemId": "xgdUglgxuyATmCBx", "itemSku": "AFFIIo2jWJzvlGEn", "itemType": "ARI1NjeC5bo6R2HD"}, "quantity": 97, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "dSX45hDIP2cb5fas"}' \
    > test.out 2>&1
eval_tap $? 420 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE