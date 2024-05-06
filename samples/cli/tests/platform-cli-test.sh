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
echo "1..448"

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

#- 3 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'HTEooYy3LXrFVcVF' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'iKB7T7ZiqwzRaOHp' \
    --body '{"grantDays": "IcgUs3LyvsBKhVrd"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'eRp4h61VNk87j0uI' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'OrvFbabIyyhmYJeu' \
    --body '{"grantDays": "3CEpOIH07f4eFLEx"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "pqyhO3fkuYvEXcsp", "dryRun": false, "fulfillmentUrl": "HYP7TpUbavXKkRXg", "itemType": "BUNDLE", "purchaseConditionUrl": "96Gos0TGoqgrbaVi"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Ic88OCWcxtaPKBtj' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'nkzAKVhhhtvjp3HG' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'ieCPcReKvqEMsm6b' \
    --body '{"clazz": "CxcQyfsXl77N3V39", "dryRun": false, "fulfillmentUrl": "UuSllGSSdJ8xfKC0", "purchaseConditionUrl": "i4bgypyh2WmjPxxg"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'KnreJNKeNkNiBZl9' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name 'Wponobjp1oWS52an' \
    --offset '34' \
    --tag 'T7XE2gYz4RP0Uuf3' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "inWBXdQB4kV1Nkg6", "discountConfig": {"categories": [{"categoryPath": "RwQgkBCFWTm9nyM2", "includeSubCategories": false}, {"categoryPath": "BHfo0q1P9VXAHigJ", "includeSubCategories": true}, {"categoryPath": "00jI5IvNymZ45Sbd", "includeSubCategories": false}], "currencyCode": "WQCi5JsI3puztqga", "currencyNamespace": "Uk5VVmAwBRZFVfX8", "discountAmount": 0, "discountPercentage": 74, "discountType": "PERCENTAGE", "items": [{"itemId": "ScqS9E9x13WVslrE", "itemName": "vbvUt7SGgWTmTn75"}, {"itemId": "OoF7IsJOXk8590v6", "itemName": "1MdNgwJDGyBxlqGV"}, {"itemId": "l5CIRurXNs29mNUA", "itemName": "j4UNnNci8etwmTJM"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 10, "itemId": "rJ2J7jzmIRnRGlBO", "itemName": "RaYJLHxTPA1yyvH9", "quantity": 81}, {"extraSubscriptionDays": 96, "itemId": "gWrCY8hwLXdQsAdG", "itemName": "0EIICIzt57XMnkRn", "quantity": 31}, {"extraSubscriptionDays": 3, "itemId": "s9oau2zHf4HUqaHx", "itemName": "nlVflvk5lZi0N6HI", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 77, "maxRedeemCountPerCode": 60, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 81, "name": "F5XziONwdf38j0UQ", "redeemEnd": "1985-07-14T00:00:00Z", "redeemStart": "1998-05-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Q6FJZeiXsvIJ3oH8", "BTGLii8Lr6F3aMkr", "gENaa8uWOA4zUgfr"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'tQBRolussugK9aUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'AOfpmu4YiPwzTu3l' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JyUupFIgG40XSGAj", "discountConfig": {"categories": [{"categoryPath": "Xus3ILLyrxytA3S5", "includeSubCategories": true}, {"categoryPath": "ssIDz6iy8kzdmH0d", "includeSubCategories": false}, {"categoryPath": "CbfrlnDxURQ8TZrB", "includeSubCategories": false}], "currencyCode": "Z0xtnBxxDkI475h3", "currencyNamespace": "2oQWN4SJ3wkmSKnv", "discountAmount": 76, "discountPercentage": 14, "discountType": "PERCENTAGE", "items": [{"itemId": "NGLAC8mGf7Wrm00O", "itemName": "nM1IQ7ygO2l9G54n"}, {"itemId": "lncfr8TQou4GTBnA", "itemName": "QwmngMsEMV8hpqQz"}, {"itemId": "wr6SELz2QargDCKU", "itemName": "3ZAZTxYQmJO8GJND"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 9, "itemId": "ZrJ1pdoOAcrl5A3y", "itemName": "DnrgGxqkUTPmOKyc", "quantity": 78}, {"extraSubscriptionDays": 16, "itemId": "1oytCLEHlgO8wBcG", "itemName": "bAhZKuXsHjuZxni7", "quantity": 27}, {"extraSubscriptionDays": 27, "itemId": "d2gYYrNvMCmYAESV", "itemName": "xouCwUoSuTMDFHzO", "quantity": 4}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 17, "maxRedeemCountPerCodePerUser": 33, "maxSaleCount": 83, "name": "NS4uxzZt6wnfNiU8", "redeemEnd": "1984-09-15T00:00:00Z", "redeemStart": "1995-08-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ykM0F5P2lC8VcJfM", "xnJWN8HcJGVed16j", "NVfr9tExrpWfjOXF"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '7QpttCgYpvX2S8Wu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCatalogConfig' test.out

#- 19 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateCatalogConfig' test.out

#- 20 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLootBoxPluginConfig' test.out

#- 21 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "cZ7ZDc6jmOQRwQ84"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "h5ncACc4h9pvhcQu"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateLootBoxPluginConfig' test.out

#- 22 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteLootBoxPluginConfig' test.out

#- 23 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'UplodLootBoxPluginConfigCert' test.out

#- 24 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 24 'GetLootBoxGrpcInfo' test.out

#- 25 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSectionPluginConfig' test.out

#- 26 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "4xzwYEMSyes4s4yJ"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ivAWwh8UJmF4SuDH"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateSectionPluginConfig' test.out

#- 27 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteSectionPluginConfig' test.out

#- 28 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 28 'UploadSectionPluginConfigCert' test.out

#- 29 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'Cwprnwz8oURjQ6ht' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '2skq9cygUORvV7zH' \
    --body '{"categoryPath": "f6Kybtl0AID2SLRt", "localizationDisplayNames": {"WolZ1pp52mVD4WNP": "qsvUCe68CqHrPeaT", "zgBDgIRVdhR1t0TO": "PxFRxnuIZN2jQ2MP", "bRcqwL50BIHSnoEr": "jTnf2o4I6vcSkRTA"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'kG4lMWwb5ukZYB6Y' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'dmVsqwSE3bPbWzTf' \
    --namespace $AB_NAMESPACE \
    --storeId 'ACKkjQRySyVmHDpc' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'LgpShpXPDAq5bhsx' \
    --namespace $AB_NAMESPACE \
    --storeId 'la4HNbNQW7R88mZZ' \
    --body '{"localizationDisplayNames": {"16EXP2qS7bc7w2P6": "FdcO86lAw49GXgrR", "g01YW4OfWmKa00KY": "33RY2fFWKiVyFFLm", "7a1JibpbH229fuyP": "Tti5fvsNEtC4sioT"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'jLMycXeKtcDKeB9B' \
    --namespace $AB_NAMESPACE \
    --storeId 'nViKubsUpKAIDLZ8' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '1FgB3lDIO6kjr7Mz' \
    --namespace $AB_NAMESPACE \
    --storeId 'godGT2r9hFexJmnP' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'R4fxUPzXjgcLFtVC' \
    --namespace $AB_NAMESPACE \
    --storeId '0midTYWyNQ9uBK70' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'B2BdsKKddSHU3IXI' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '80' \
    --code 'hSwpfnAY5yxuTgSG' \
    --limit '15' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '7rfqOEeFKHffPUBU' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "D7izUOAFJ6AsqK6B", "quantity": 12}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'pfAymAAJdKHWC8h3' \
    --namespace $AB_NAMESPACE \
    --batchNo '87' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'SkBwsftxxF33BP5w' \
    --namespace $AB_NAMESPACE \
    --batchNo '49' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'KJgYzHpUtRoqaZqB' \
    --namespace $AB_NAMESPACE \
    --batchNo '81' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'xZ2aG49pewFo2CcF' \
    --namespace $AB_NAMESPACE \
    --code 'O967oCNPP8PbmUkz' \
    --limit '91' \
    --offset '46' \
    --userId 'y5vkWcMiOhopTySr' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code '2JiVQwWZL9JDzz1A' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'bqVz7J2l1i1gkdcq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '2PkQrKQ6Vw4UH71f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'EnableCode' test.out

#- 46 GetServicePluginConfig
eval_tap 0 46 'GetServicePluginConfig # SKIP deprecated' test.out

#- 47 UpdateServicePluginConfig
eval_tap 0 47 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 48 DeleteServicePluginConfig
eval_tap 0 48 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 49 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 49 'ListCurrencies' test.out

#- 50 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "JKZHY6Pz4fonYATL", "currencySymbol": "FJt81otNXENNF2gX", "currencyType": "VIRTUAL", "decimals": 44, "localizationDescriptions": {"zDqs37FSuuz0q9lN": "qgSbfermtrVqKGE9", "tDttN6Vf2Q0aYYV8": "wY6jU3PORVqFcJSz", "sCClqqe4hGYEBo2J": "r2VycGZTTlm14gNG"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'T3wuTX7Okdhrtxf6' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"3GT5STDLx5XlzbU6": "6qXi5pbzA0XjJDCE", "TpMypgLmTf8UGySt": "n1gxmfPlBjTqV8DM", "BxT5izwayRTMvFIS": "noNDQi1uWvlPN7tS"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'm2gUPkCbXzBGVjsZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'k7LodTSyPl6f69rQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'rgSPC0Gd62kYBznx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetCurrencySummary' test.out

#- 55 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetDLCItemConfig' test.out

#- 56 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "LBS5jUIMtZbhUrxt", "rewards": [{"currency": {"currencyCode": "XnkorlZMM4cGqezz", "namespace": "7ssnIilVsQcvEoQZ"}, "item": {"itemId": "FbCAZtdYEf3XBAyA", "itemSku": "NLF7fOwGdnakzTr4", "itemType": "8AMgaLh0bQOKWhv6"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "B57q43ne5uAacyvw", "namespace": "zaILjo9cWQg1KlRc"}, "item": {"itemId": "p0qe9XemtCmtSbvP", "itemSku": "nR3iLDFKgU4FzWLm", "itemType": "kf919IXSYdAqrcFi"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "dcPQJJLwxt1fT26U", "namespace": "ctlLVn2PBO1fHQa4"}, "item": {"itemId": "mL3rinqLAMR34731", "itemSku": "Hay4gJeTXJ3SOWzc", "itemType": "mflCR2EMdmUpsGFe"}, "quantity": 36, "type": "ITEM"}]}, {"id": "1ulL06aAQmKirjch", "rewards": [{"currency": {"currencyCode": "W5Gm5OYlB9iR18NJ", "namespace": "orDTtIGIaFPeeAeH"}, "item": {"itemId": "GgvYTBeeF60zfpLY", "itemSku": "bqVeRVffAnZgOafK", "itemType": "O2wS5koxL6oUNMt3"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"currencyCode": "WabMvCcZuPYWbfMj", "namespace": "70XcGEKwLL2tvNyx"}, "item": {"itemId": "VCeCKb2wBU41B4EJ", "itemSku": "9tWpKuW75oiAOXSe", "itemType": "5DnDr15eIiQFJLVS"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "5Y77mOvXuAkYBR4b", "namespace": "5PmhaeC5qQ8oJOQU"}, "item": {"itemId": "oK89SbCA0CFP6r8l", "itemSku": "FPhIoJBoKZR2OZ6R", "itemType": "bpJzn4iT9FtPGIKZ"}, "quantity": 37, "type": "CURRENCY"}]}, {"id": "DTYM9haSQiBKkcRd", "rewards": [{"currency": {"currencyCode": "1bfwXAMspjnfzY76", "namespace": "cWBYtkPchnShknJo"}, "item": {"itemId": "9qbYkla06nw7hQyg", "itemSku": "8BQws7ebbzvM3E3r", "itemType": "rd3IgxiYLLGXk5JA"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "kbkBjZJOWEa19G4p", "namespace": "TKgPZt5maWKh1GtW"}, "item": {"itemId": "ad8njN76vyrcpPWD", "itemSku": "BkTTEGRhEnLHdhzD", "itemType": "WjPXygJOKc3TqIvW"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "VGXTSOHaVvgcupL4", "namespace": "mTGqTWyTmm4q9tkn"}, "item": {"itemId": "c6JFj7r1CuTWnUjB", "itemSku": "APa6NZCU1Jz4P0KG", "itemType": "0cqFIDZKcw0mVJpj"}, "quantity": 88, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateDLCItemConfig' test.out

#- 57 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'DeleteDLCItemConfig' test.out

#- 58 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetPlatformDLCConfig' test.out

#- 59 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"BAGw8RfltqHBhzU1": "gBoiTniEnNI4iTtE", "NJ13APyJtTKWk5Vi": "GBe2hNaC0EbGMm15", "eXhfZfaEMVVe9zQw": "sS1sJxhaKKh17748"}}, {"platform": "PSN", "platformDlcIdMap": {"nnvNJdDwPfNQr5mN": "JfYYeLw5EG7MOgYg", "gVGSOxtKI6xdGMCe": "0n245aX41FqRCOc0", "xxAYOtC9NMun8pVl": "eB1hB4hOcZ1heOv6"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"W8GkXTOEaiFTfiXg": "GXS8APIWEcFm0JSW", "H23EsdYSObuCfU2R": "UGUkPFYN5GMyuM7s", "0NMexDxGXGrYlYUY": "A0JG512ejvBqGL2l"}}]}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlatformDLCConfig' test.out

#- 60 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeletePlatformDLCConfig' test.out

#- 61 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'vijv9zpHShAh0UBg' \
    --itemId '["MSVp374qgPgr2Keb", "YDFhv09IobtWWLfd", "mODiQA22B42U0PdA"]' \
    --limit '3' \
    --offset '82' \
    --origin 'GooglePlay' \
    --userId 'F216PpBemP2m4OOQ' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["he1utkg2qAuSNdAB", "QxSdOG429tNGLvUH", "YYEj74ITa26imufj"]' \
    --limit '62' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 62 'QueryEntitlements1' test.out

#- 63 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'EnableEntitlementOriginFeature' test.out

#- 64 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "UePC4Wq6JVTprEoD", "endDate": "1975-11-16T00:00:00Z", "grantedCode": "FGAQuL5sLqLyiBTD", "itemId": "8qSZfgzfpVTzCpev", "itemNamespace": "AWxS5Cp4mkZ7ilvq", "language": "LW", "origin": "Steam", "quantity": 100, "region": "IyMnmsiZlIVpOKyX", "source": "REFERRAL_BONUS", "startDate": "1986-04-12T00:00:00Z", "storeId": "cKohW8kbsvaXGYlN"}, {"collectionId": "XKrMsLOciXxwLWUJ", "endDate": "1992-11-02T00:00:00Z", "grantedCode": "8vEyBgosbp6DGSNN", "itemId": "V6Mi0tfuKJf6hyEu", "itemNamespace": "XAwXjHN2V1TF7woD", "language": "tsn_966", "origin": "Nintendo", "quantity": 7, "region": "k3NVDWLXZnKZYuQU", "source": "ACHIEVEMENT", "startDate": "1973-09-03T00:00:00Z", "storeId": "1gAKzoKnT3y0X445"}, {"collectionId": "SKEcTkWlIjkEoEhh", "endDate": "1978-09-18T00:00:00Z", "grantedCode": "CIK19L5WDT83zQPo", "itemId": "NFNMHJhm1jG1rRSa", "itemNamespace": "0DHWXm0TcAerDV5X", "language": "RHor-FB", "origin": "Other", "quantity": 99, "region": "QWYC3P8fzNpG0dJH", "source": "IAP", "startDate": "1974-11-17T00:00:00Z", "storeId": "69O50bLjMIDELPhG"}], "userIds": ["xULcbW9Dr71o6SiT", "oa2l5w35h6KqvtQh", "iaAIZZuAlCgvOQrQ"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["3rhgMuVg4sCRwAOc", "RpOB6jWJJGh0nwvU", "gQYEaLrhbOYinRw2"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'NyZHYAmeX5w9QpTv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '12' \
    --status 'FAIL' \
    --userId 'eJ1k5KPYCeMyED9B' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'e6ZDSgnvC3TW1tIO' \
    --eventType 'OTHER' \
    --externalOrderId 'pr2BuAIrdBwj3BrU' \
    --limit '57' \
    --offset '50' \
    --startTime 'Lo3wGvc1b010O9oG' \
    --status 'SUCCESS' \
    --userId 'gDXsZ09Z1zayurlm' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "Z74iCtQxArnJ3KE4", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 38, "clientTransactionId": "YlSylHqTFGLVCynv"}, {"amountConsumed": 10, "clientTransactionId": "IfP7v9PWqRoyuZo7"}, {"amountConsumed": 60, "clientTransactionId": "b70m2e6bfihIWUdF"}], "entitlementId": "LdSFWq2ZP7PRx0Ec", "usageCount": 52}, {"clientTransaction": [{"amountConsumed": 92, "clientTransactionId": "FK52iH1kLyAqDXN8"}, {"amountConsumed": 91, "clientTransactionId": "o7QZTsGKnlxIAPYs"}, {"amountConsumed": 34, "clientTransactionId": "k7fHxSeUIy6IUvpi"}], "entitlementId": "lJNzw4BtYofNakrV", "usageCount": 57}, {"clientTransaction": [{"amountConsumed": 11, "clientTransactionId": "XrYPKjCZK82DpWkw"}, {"amountConsumed": 65, "clientTransactionId": "uGv93QvJFFi9vLLX"}, {"amountConsumed": 67, "clientTransactionId": "Zb4ETIjDRjtUXct5"}], "entitlementId": "TuQSub4vQN31i3wP", "usageCount": 63}], "purpose": "dmNj8gfr03m4cLgw"}, "originalTitleName": "9I8HYVHRFw8bQs0e", "paymentProductSKU": "HLH4qcaBuuGxQUyY", "purchaseDate": "QpZtKQRZPHVaFocB", "sourceOrderItemId": "q8JAI8JED9wR13DH", "titleName": "lrJsLUbVEZgtJoMZ"}, "eventDomain": "a8Vhg7Ol0LcIlXR5", "eventSource": "hHTxbzEFp00nr2vP", "eventType": "M3f1ukR8aZq7WZWM", "eventVersion": 24, "id": "gz3PP7VYapVr8fD8", "timestamp": "cFdBQqThiLtTmyGY"}' \
    > test.out 2>&1
eval_tap $? 70 'MockPlayStationStreamEvent' test.out

#- 71 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetAppleIAPConfig' test.out

#- 72 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "bjGm1K47LRLMzDuN", "password": "vi2RwiI1nKEyRYXs"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateAppleIAPConfig' test.out

#- 73 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteAppleIAPConfig' test.out

#- 74 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetEpicGamesIAPConfig' test.out

#- 75 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "J9yc6C7l6qFZHvAH"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateEpicGamesIAPConfig' test.out

#- 76 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteEpicGamesIAPConfig' test.out

#- 77 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetGoogleIAPConfig' test.out

#- 78 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "LlCvat8YbVehqJy2", "serviceAccountId": "yVB5h6XEgcpFtihT"}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleIAPConfig' test.out

#- 79 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteGoogleIAPConfig' test.out

#- 80 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleP12File' test.out

#- 81 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetIAPItemConfig' test.out

#- 82 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "GG2ejLlFdy9raMWX", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7r34fccEWhnUd3nU": "93k61egyYIRcq3AX", "Q2wVJM9qSX16csuI": "rpV4ie1OlywkgRTg", "0GVFknaAUTZME4Gd": "ePtKv5Dyi3P5Hio1"}}, {"itemIdentity": "1BDHWpmScyajXjKy", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"g6cPTGXUOGXC20gA": "hIT4BabWUUa6RZNv", "Ki9x7HQWUNVQuYxY": "7OkhybeP11GQztUV", "Gze9usOaX7IksVrQ": "24dFWi4YV3ppxI5y"}}, {"itemIdentity": "keRCJ5K51FBbhTOL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"mxMGvuzWgizcgAxk": "S0pQXCexicp1MyDF", "xDshaqMMfP57PHTl": "eSSB3lARuVDbcXTf", "nPHPePH3cPjmBhYV": "nKSRk4BvdEHMUQx5"}}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateIAPItemConfig' test.out

#- 83 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteIAPItemConfig' test.out

#- 84 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetOculusIAPConfig' test.out

#- 85 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Tjbri0YcPpFpmom7", "appSecret": "PmrsgpOvtpZw3pR6"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateOculusIAPConfig' test.out

#- 86 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeleteOculusIAPConfig' test.out

#- 87 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetPlayStationIAPConfig' test.out

#- 88 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "OjirzM6Q0S2XrfnS", "backOfficeServerClientSecret": "OBTyNfSagbjI35cL", "enableStreamJob": true, "environment": "x2yJenxDW8PT3uMn", "streamName": "ZAg6JvCVTxHp74pB", "streamPartnerName": "DL9xOzZwj7cl5swS"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdatePlaystationIAPConfig' test.out

#- 89 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeletePlaystationIAPConfig' test.out

#- 90 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'ValidateExistedPlaystationIAPConfig' test.out

#- 91 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "padHJLcF0VLXOJJw", "backOfficeServerClientSecret": "PItJwTe1jXerHDNg", "enableStreamJob": false, "environment": "8ZF6rmOgDwtFI5FQ", "streamName": "V1zIjcJD7jB8xVsn", "streamPartnerName": "FdqtM7ozTSPP4g8o"}' \
    > test.out 2>&1
eval_tap $? 91 'ValidatePlaystationIAPConfig' test.out

#- 92 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetSteamIAPConfig' test.out

#- 93 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "sXxVGiPKLmmWeTdp", "publisherAuthenticationKey": "sZYcbXwqDfgxScr6"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateSteamIAPConfig' test.out

#- 94 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'DeleteSteamIAPConfig' test.out

#- 95 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetTwitchIAPConfig' test.out

#- 96 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "C9n9Qyrc0LJHuGGl", "clientSecret": "6tPSGoJKDD0RaipW", "organizationId": "m4ut12KDezqsddQ6"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateTwitchIAPConfig' test.out

#- 97 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteTwitchIAPConfig' test.out

#- 98 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetXblIAPConfig' test.out

#- 99 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "msPIx6D121p2HDoJ"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblIAPConfig' test.out

#- 100 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteXblAPConfig' test.out

#- 101 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'qE9LjHWrgzTQuGtQ' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'S53DfBvul24soZMu' \
    --itemId 'oBaXZTvXlJu9hxis' \
    --itemType 'INGAMEITEM' \
    --endTime 'gWuxlptbIrfSTAHh' \
    --startTime 'mH6fvwSLaWst5Emy' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'rPAIkdt9eoycuvV2' \
    --itemId 'c5shZBqb4if36l6G' \
    --itemType 'OPTIONBOX' \
    --endTime 'hUKX69WAD2No4UOV' \
    --startTime 'Y73yTfTCzAsVv3bK' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'NzGvxjiTDrYygO72' \
    --body '{"categoryPath": "VDyehpbqHndmlvbn", "targetItemId": "c40EWpShOK2t56Jr", "targetNamespace": "RHXgCHbZVOXUbAOA"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'OcW8mlB4aTl0CAwu' \
    --body '{"appId": "na6peFGTeAzxBUor", "appType": "SOFTWARE", "baseAppId": "YniWMnM5D3Rtgqaa", "boothName": "IaHiV5ZWAZfyyrRM", "categoryPath": "Jh5m2ghRCBsbGDFy", "clazz": "M5znY8ibQ89hI1as", "displayOrder": 37, "entitlementType": "DURABLE", "ext": {"YlYFnYs98Ch1AbkB": {}, "Gy6kGGrj4y79P98M": {}, "yh97GFMgHr3fkqdG": {}}, "features": ["nSQfdnGrJCTexMMU", "yI0UxkS7VdLYLugi", "7IqgI0quQUUUf1pM"], "flexible": false, "images": [{"as": "arqRR3xuJVGxgjAV", "caption": "ire5n6fNsYN3S68z", "height": 71, "imageUrl": "PkXQsZGhzObcMoqF", "smallImageUrl": "qGAzmHQzo13zTEWx", "width": 7}, {"as": "yZqItxLa7wsWxtfv", "caption": "h4cdawTN1w5IwNLa", "height": 65, "imageUrl": "1kLVsgTD6ehcCNsS", "smallImageUrl": "aaL37xDDRBSJ4a9o", "width": 95}, {"as": "Ocn9Po8ODZvadmxX", "caption": "iiNP5gJ6Vt5R3wIU", "height": 4, "imageUrl": "PbC1Z6gKHeaDm2ad", "smallImageUrl": "1Yqxc8s89s2Q7bMS", "width": 11}], "inventoryConfig": {"customAttributes": {"GRx40aBu8nzB5fiO": {}, "iFyD5eYMxyJrNpnN": {}, "ZvpSuG7DvBYexxtB": {}}, "serverCustomAttributes": {"pxgMtP5XnOGAMbp0": {}, "dLueIZOGwgRVyJBb": {}, "SOOUB2679s2zUHME": {}}, "slotUsed": 100}, "itemIds": ["yNLrKC2nsLIIy2Qq", "gkwcHjJAODWjH6aI", "hkua0ylfdLxgZqNi"], "itemQty": {"PSd9hjTVRroRaUmu": 96, "sKkWdcOy7XHvTItH": 85, "7aJ19HKnMU7StdvP": 36}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"DarQ1pLTNLueyE1o": {"description": "iTUehvUWNxj88PtI", "localExt": {"YjTxGG6zE9WRTLaB": {}, "E3QahnXpqTfYpAcm": {}, "ea07ogFEdP0m5a9O": {}}, "longDescription": "UaSImvqM5sUWqeum", "title": "RP1zNrL5bCRWTj2E"}, "wxtcOPIeFfuDvFQz": {"description": "SLzkI83ukb24GsSH", "localExt": {"xFhouT6tX1nHqKMN": {}, "BGGzYiDDQ5niOENM": {}, "IpaFCZV5dN8awLvF": {}}, "longDescription": "ALPsr6yZ21OZwzjN", "title": "8ZjPdbEEDRG6JYXK"}, "mr9PoZw1CUI9DwiM": {"description": "zvYBM9c0p0Qn6P2I", "localExt": {"Nd7xjsvPDlPiEqw2": {}, "LxSQCtIgmrwfVFXw": {}, "RTMkQylMMurfagOj": {}}, "longDescription": "mqt9QemAzx4Mubsa", "title": "jzuwjX7KTvZTCvSY"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 24, "endDate": "1999-07-29T00:00:00Z", "itemId": "PSGevIMK2qNB2l7h", "itemSku": "WTIYfwvsMbjy33Az", "itemType": "LRUMpPNmjBDB1yLh"}, {"count": 21, "duration": 43, "endDate": "1972-07-17T00:00:00Z", "itemId": "nk9KuPop54Ofp6i3", "itemSku": "wVBSNmDMV4NmHrqI", "itemType": "20SLY1pMxb4GCOY9"}, {"count": 27, "duration": 80, "endDate": "1972-02-18T00:00:00Z", "itemId": "deRIFykcIyDP1sBc", "itemSku": "NI0H4RBoxSMSzLfO", "itemType": "ATKFavYUQLAYxCSS"}], "name": "z4iaXPiiWOCh9gBn", "odds": 0.512888815242589, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 58, "duration": 100, "endDate": "1992-07-03T00:00:00Z", "itemId": "NYKmA19HEMcK6e7v", "itemSku": "f7W5UhLaoQHx1ZbQ", "itemType": "0TEIcwRLXl6GPYL0"}, {"count": 85, "duration": 6, "endDate": "1977-09-22T00:00:00Z", "itemId": "QxIbBCRRVpwPzcsc", "itemSku": "vFb5xW67pi27dihb", "itemType": "HBo2IZmo9wSaNXLg"}, {"count": 60, "duration": 48, "endDate": "1995-10-29T00:00:00Z", "itemId": "aRSPt2vMYkIjiUnr", "itemSku": "rVgW1dUZJXGDa0Zg", "itemType": "ad4HCsvicQAbI1Lv"}], "name": "1DCVUSliLRqYEmzl", "odds": 0.891684940668536, "type": "REWARD", "weight": 62}, {"lootBoxItems": [{"count": 83, "duration": 69, "endDate": "1983-05-17T00:00:00Z", "itemId": "VJdMS8ci2Pi0laMf", "itemSku": "cyb51LSNjywjb3HL", "itemType": "CYhNMVHyg78dEO9l"}, {"count": 21, "duration": 14, "endDate": "1982-10-16T00:00:00Z", "itemId": "fGDSqSDqiztiP3LJ", "itemSku": "gtfBsHFMPU1HUfaY", "itemType": "mGwpRi1miXFWrQ4r"}, {"count": 4, "duration": 96, "endDate": "1977-08-14T00:00:00Z", "itemId": "vVqHZirVP2NPrnLM", "itemSku": "nLrcnP6PjrBCm6z2", "itemType": "pZgZTPzBU4jrigzu"}], "name": "nqQ8VXBRMwrfglul", "odds": 0.03145698083540338, "type": "PROBABILITY_GROUP", "weight": 8}], "rollFunction": "DEFAULT"}, "maxCount": 17, "maxCountPerUser": 98, "name": "TI8N9fyN7abSFBML", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 81, "endDate": "1971-09-07T00:00:00Z", "itemId": "VmzjzrTm5Sky572I", "itemSku": "QOr9KYE4zNnQ4ALZ", "itemType": "N4Ihu5D6oDutoxk7"}, {"count": 97, "duration": 75, "endDate": "1978-01-08T00:00:00Z", "itemId": "Ftv0GMZNphuYzdra", "itemSku": "pgtZtW67t5t7zWjV", "itemType": "2EuLugZ86NEPZDCT"}, {"count": 19, "duration": 52, "endDate": "1985-12-20T00:00:00Z", "itemId": "ZZKBjjGgA9gKBfz7", "itemSku": "yGYI9enfV65BgsEC", "itemType": "Ak9gF2ENVns2LgOf"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 98, "fixedTrialCycles": 62, "graceDays": 4}, "regionData": {"raNcEkfK7Eluq9tf": [{"currencyCode": "6XqU7TBkZQgXWtEu", "currencyNamespace": "3LKSs5pt5iv88K62", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1986-12-31T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-11-14T00:00:00Z", "expireAt": "1999-06-23T00:00:00Z", "price": 100, "purchaseAt": "1978-04-18T00:00:00Z", "trialPrice": 88}, {"currencyCode": "ul9HvCCrukvV9Vwg", "currencyNamespace": "uu08Fg4mkx49TyYL", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1978-10-18T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1990-03-27T00:00:00Z", "expireAt": "1973-05-16T00:00:00Z", "price": 23, "purchaseAt": "1992-12-27T00:00:00Z", "trialPrice": 5}, {"currencyCode": "H7myjOI9mVXbBI8O", "currencyNamespace": "llgkUbQ0HCa9Eio6", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1980-09-11T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-04-22T00:00:00Z", "expireAt": "1977-07-15T00:00:00Z", "price": 35, "purchaseAt": "1998-06-24T00:00:00Z", "trialPrice": 31}], "oOgYyxewXk1C7d5z": [{"currencyCode": "aspeetC8jHYpSMII", "currencyNamespace": "3kbqqJYkoqRrGDlU", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1980-10-22T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1983-11-22T00:00:00Z", "expireAt": "1989-11-16T00:00:00Z", "price": 1, "purchaseAt": "1979-02-28T00:00:00Z", "trialPrice": 17}, {"currencyCode": "wGURN8gZXz7XiYty", "currencyNamespace": "Oa038dhrLKjb3FEj", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1990-03-03T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1998-04-12T00:00:00Z", "expireAt": "1980-07-28T00:00:00Z", "price": 96, "purchaseAt": "1975-01-02T00:00:00Z", "trialPrice": 2}, {"currencyCode": "yPZWdKTRa7BCOByN", "currencyNamespace": "KeMRnm1xHs8XrjzG", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1986-04-03T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1983-11-23T00:00:00Z", "expireAt": "1983-04-15T00:00:00Z", "price": 35, "purchaseAt": "1997-09-30T00:00:00Z", "trialPrice": 90}], "VLmXqUSUrVXoOnyu": [{"currencyCode": "qmmo9jYLPDRQtlsz", "currencyNamespace": "N9a469o0sbtSOJQE", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1995-12-04T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1981-07-17T00:00:00Z", "expireAt": "1988-09-22T00:00:00Z", "price": 82, "purchaseAt": "1984-06-03T00:00:00Z", "trialPrice": 23}, {"currencyCode": "kGlK3zk4iSVTy9GP", "currencyNamespace": "EWJSL4GxGFAbjauT", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1982-05-31T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1993-09-22T00:00:00Z", "expireAt": "1982-09-15T00:00:00Z", "price": 48, "purchaseAt": "1974-04-13T00:00:00Z", "trialPrice": 66}, {"currencyCode": "lwLzopZodgCrf93W", "currencyNamespace": "RamZ4yP7G5gfy9hr", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1973-03-18T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1971-06-18T00:00:00Z", "expireAt": "1988-09-11T00:00:00Z", "price": 92, "purchaseAt": "1988-05-25T00:00:00Z", "trialPrice": 61}]}, "saleConfig": {"currencyCode": "trYHis0OnPbWO6Xs", "price": 28}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "AqiDMzg7jXZAowM7", "stackable": false, "status": "ACTIVE", "tags": ["6inPRB8npwN202vo", "T8XIpphkjH0s5ORA", "a2TifLnc8cb0pTv7"], "targetCurrencyCode": "n8fYR9r6OZcMiabW", "targetNamespace": "v3uD94BmIyxTMQOC", "thumbnailUrl": "jgszWwAbpaxpKhDv", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'pacSrKcyacY9IITw' \
    --appId 'o9lPHUDjTS4iqwwu' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'GXVGzcJ4L8WWDBMY' \
    --baseAppId 'zTh53ugSKDHxwFCo' \
    --categoryPath 'RtcyY3YjlqwjZJUD' \
    --features 'IbgcicKIIqcsBWof' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '50' \
    --offset '66' \
    --region 'e1oX7QaYJTllBp4H' \
    --sortBy '["updatedAt:asc", "createdAt", "updatedAt"]' \
    --storeId '3bkJXDwYswHzK67w' \
    --tags '27mGEqUwMHkkUJ6R' \
    --targetNamespace 'pfqB4GSf2gKA2S0o' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["7pYreOs1KW3SEu6Z", "dQ04qE80ZAMXAbPA", "tp5aYI2OrP232zHc"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'aHukC33pN7NELhEb' \
    --itemIds 'mIrbpQTEzUnexoe0' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1TU0SdXDBCgmJpCo' \
    --sku 'HXeTJ0naLMElGTn9' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Ciwts6lKvSXQxX2x' \
    --populateBundle 'true' \
    --region 'ZRRsi2gqxwZ0PZYJ' \
    --storeId 'GW1vi0o0SOpW7JGX' \
    --sku 'mKvs60voutpycdzC' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Ev5NclUkAgNtLePN' \
    --region 'YaV1KZwm92nDISGX' \
    --storeId 'Acv4iUuVAqMoSY3k' \
    --itemIds 'Yg8d2mVZXyuyMXJF' \
    --userId 'cWVvWlNnBgFP59yV' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qWJCNzzaiPyYh2oB' \
    --sku 'MjnJEuldI3vkXpZJ' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["M40bxDx2zmmBW7jy", "6xHzkZfjNgEMqC0L", "V8NLue56DKyRyxBP"]' \
    --storeId 'QIQsxtyd6yts9HAz' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'NU6MrPrG17RIeAtC' \
    --region 'GAG4bCKaSjS16fO3' \
    --storeId 'XsK9o6G5Z7ehf9I7' \
    --itemIds '4iuoGzyWrKpbEykb' \
    > test.out 2>&1
eval_tap $? 115 'BulkGetLocaleItems' test.out

#- 116 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetAvailablePredicateTypes' test.out

#- 117 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform '3T0JOv52n00RSB5r' \
    --userId '3QuqF9yyf2ODK4oa' \
    --body '{"itemIds": ["IkeHFf081LG7E0tJ", "A2hinwrwSXwX1CxZ", "hsgCptpkrJ6CDGED"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '5mATgSolrWulKQ3c' \
    --body '{"changes": [{"itemIdentities": ["rGVwTN3ovM2vm2EN", "hTTa8sUv68VsDZjQ", "HnJTFX5Jzw4Oaz0n"], "itemIdentityType": "ITEM_ID", "regionData": {"Hj9Ays4jDQckcXy2": [{"currencyCode": "guINM0XpCgJ3gdfJ", "currencyNamespace": "iHmLq0JzDEGdzaIF", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1977-10-08T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1994-08-07T00:00:00Z", "discountedPrice": 44, "expireAt": "1974-05-16T00:00:00Z", "price": 63, "purchaseAt": "1999-09-24T00:00:00Z", "trialPrice": 7}, {"currencyCode": "jkuRs8Mf3JEDfF5I", "currencyNamespace": "tmv6rnwuKUhN0dvy", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1984-08-27T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1975-01-06T00:00:00Z", "discountedPrice": 76, "expireAt": "1982-05-19T00:00:00Z", "price": 95, "purchaseAt": "1998-04-24T00:00:00Z", "trialPrice": 5}, {"currencyCode": "JsMUXKUDLOZOYc9f", "currencyNamespace": "ydvoqNQAUhyKe7zR", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1976-03-20T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1991-10-23T00:00:00Z", "discountedPrice": 62, "expireAt": "1982-04-08T00:00:00Z", "price": 33, "purchaseAt": "1990-10-01T00:00:00Z", "trialPrice": 11}], "BPlpqVNUDAx7GDIZ": [{"currencyCode": "RL2vchvdd1bgLJMW", "currencyNamespace": "ruUYnQJWQsq7SLNE", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1980-10-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1977-02-02T00:00:00Z", "discountedPrice": 60, "expireAt": "1987-09-23T00:00:00Z", "price": 21, "purchaseAt": "1999-01-16T00:00:00Z", "trialPrice": 64}, {"currencyCode": "3Q7BClRqtH2Hsvwj", "currencyNamespace": "RsD6qlVw1T2d8TmX", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1980-06-05T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1984-11-14T00:00:00Z", "discountedPrice": 5, "expireAt": "1999-08-25T00:00:00Z", "price": 26, "purchaseAt": "1985-12-14T00:00:00Z", "trialPrice": 24}, {"currencyCode": "pBtnkFO8xSQjngSg", "currencyNamespace": "jNUDCYBRU7n7p8TH", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1993-06-26T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1971-05-22T00:00:00Z", "discountedPrice": 77, "expireAt": "1989-12-06T00:00:00Z", "price": 66, "purchaseAt": "1974-10-15T00:00:00Z", "trialPrice": 69}], "Sf4TdJ4s37DGKkoB": [{"currencyCode": "9pqh1nOUzbAstUPk", "currencyNamespace": "E3jVRykRlrlsFkKo", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1990-01-16T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1978-10-24T00:00:00Z", "discountedPrice": 44, "expireAt": "1982-10-01T00:00:00Z", "price": 75, "purchaseAt": "1972-05-10T00:00:00Z", "trialPrice": 98}, {"currencyCode": "CakOed2EWNVRj67a", "currencyNamespace": "k9Cq3BKt2DZWIOTz", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1978-03-20T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1987-02-12T00:00:00Z", "discountedPrice": 47, "expireAt": "1982-03-23T00:00:00Z", "price": 57, "purchaseAt": "1977-08-16T00:00:00Z", "trialPrice": 11}, {"currencyCode": "WkRtOOkTXbC9NJc2", "currencyNamespace": "35GYOi63C1qV3cPc", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1971-08-05T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1999-11-02T00:00:00Z", "discountedPrice": 55, "expireAt": "1992-03-25T00:00:00Z", "price": 70, "purchaseAt": "1999-08-15T00:00:00Z", "trialPrice": 28}]}}, {"itemIdentities": ["a10vqT7MH0h1RMhk", "ImyG4WynKpmL6soH", "uP5demZiyFt3B06c"], "itemIdentityType": "ITEM_ID", "regionData": {"S1z2YLytfA85Ri8Y": [{"currencyCode": "4p8KGpdVJGDN2Z1d", "currencyNamespace": "IJdSqiFDnVACQqHx", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1991-10-13T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1982-12-04T00:00:00Z", "discountedPrice": 83, "expireAt": "1986-03-28T00:00:00Z", "price": 98, "purchaseAt": "1982-03-11T00:00:00Z", "trialPrice": 94}, {"currencyCode": "s4k11aPHbAbvI0XQ", "currencyNamespace": "nEWh6LaGgT6SxPXg", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1983-05-08T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1974-08-02T00:00:00Z", "discountedPrice": 44, "expireAt": "1992-04-30T00:00:00Z", "price": 14, "purchaseAt": "1988-08-06T00:00:00Z", "trialPrice": 60}, {"currencyCode": "ek63nm4HPideAzwY", "currencyNamespace": "aVaTnG6H8ZTnXKX7", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1973-07-11T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1985-07-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1989-11-05T00:00:00Z", "price": 83, "purchaseAt": "1983-01-17T00:00:00Z", "trialPrice": 18}], "lvsx1BIHldkLTeLh": [{"currencyCode": "03Wpn50VyUPHnem3", "currencyNamespace": "cKtQSlhtwoszhyY8", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1996-10-16T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1975-06-19T00:00:00Z", "discountedPrice": 81, "expireAt": "1971-12-22T00:00:00Z", "price": 33, "purchaseAt": "1986-09-04T00:00:00Z", "trialPrice": 43}, {"currencyCode": "IpVopJ92FKGo5Tlo", "currencyNamespace": "gvA9JZK3QAjl5eog", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1982-06-27T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1974-10-17T00:00:00Z", "discountedPrice": 20, "expireAt": "1996-10-07T00:00:00Z", "price": 71, "purchaseAt": "1998-05-10T00:00:00Z", "trialPrice": 25}, {"currencyCode": "Olo0FnJC3TIqHdnj", "currencyNamespace": "Z63OFZ9h9HeZI0A0", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1996-10-02T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1997-05-10T00:00:00Z", "discountedPrice": 30, "expireAt": "1992-05-05T00:00:00Z", "price": 85, "purchaseAt": "1971-10-22T00:00:00Z", "trialPrice": 64}], "eSCaapQ6HpTPbTR0": [{"currencyCode": "ltsh6LHxMFhosm2H", "currencyNamespace": "eYSkWR5CkB8UnP5V", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1977-06-29T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1995-07-15T00:00:00Z", "discountedPrice": 27, "expireAt": "1989-03-05T00:00:00Z", "price": 99, "purchaseAt": "1997-05-18T00:00:00Z", "trialPrice": 45}, {"currencyCode": "R7CrezhcipTsIlEc", "currencyNamespace": "ue8lwxUsyzDiDT0q", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1994-09-24T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1992-11-24T00:00:00Z", "discountedPrice": 28, "expireAt": "1990-02-18T00:00:00Z", "price": 39, "purchaseAt": "1973-09-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "zjbLWfa8o77oWL2F", "currencyNamespace": "VroMx4uVGMPUNVGM", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1978-10-28T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1988-08-29T00:00:00Z", "discountedPrice": 47, "expireAt": "1984-06-02T00:00:00Z", "price": 80, "purchaseAt": "1998-01-26T00:00:00Z", "trialPrice": 62}]}}, {"itemIdentities": ["n9uNkLRZTLiQR5Yn", "sQWh2b9sbN2HpRWg", "SaroTr8q8JpLScGp"], "itemIdentityType": "ITEM_SKU", "regionData": {"HrklgdNNiFcIBZHZ": [{"currencyCode": "n3kkpPrFQD3Ad4tu", "currencyNamespace": "Rvh5bu2AoPIhCC8s", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1999-12-12T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1998-06-04T00:00:00Z", "discountedPrice": 63, "expireAt": "1987-04-15T00:00:00Z", "price": 62, "purchaseAt": "1978-01-11T00:00:00Z", "trialPrice": 20}, {"currencyCode": "Wg8r1SXq6sjabK5p", "currencyNamespace": "xYMvGDx0inv3ngc1", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1990-09-22T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1974-12-31T00:00:00Z", "discountedPrice": 13, "expireAt": "1996-10-08T00:00:00Z", "price": 62, "purchaseAt": "1975-09-11T00:00:00Z", "trialPrice": 23}, {"currencyCode": "EKzGyJO9i8VTFwxw", "currencyNamespace": "tzTKvWOyYcZl3bSC", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1992-08-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-07-15T00:00:00Z", "discountedPrice": 60, "expireAt": "1992-12-29T00:00:00Z", "price": 61, "purchaseAt": "1980-07-05T00:00:00Z", "trialPrice": 19}], "7mdwugz94q7Lne84": [{"currencyCode": "gDV20LwnQg5fHdMB", "currencyNamespace": "DU0vOtCYvRBELYrO", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1994-10-05T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1974-05-01T00:00:00Z", "discountedPrice": 0, "expireAt": "1972-11-30T00:00:00Z", "price": 44, "purchaseAt": "1978-11-09T00:00:00Z", "trialPrice": 87}, {"currencyCode": "5HqHqPrjXKKD3jRI", "currencyNamespace": "DM8Tiewd57SpwGcU", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1984-08-05T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-10-28T00:00:00Z", "discountedPrice": 86, "expireAt": "1995-03-03T00:00:00Z", "price": 21, "purchaseAt": "1996-10-10T00:00:00Z", "trialPrice": 40}, {"currencyCode": "nWmmP5HYRuvF0Mxw", "currencyNamespace": "7XYUNuDAGtMIQRyJ", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1973-02-12T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-06-12T00:00:00Z", "discountedPrice": 8, "expireAt": "1972-07-25T00:00:00Z", "price": 15, "purchaseAt": "1990-04-16T00:00:00Z", "trialPrice": 90}], "4rNcEI63DOdshgfP": [{"currencyCode": "S6yidZmQyvxMZ1Wr", "currencyNamespace": "KGswuDM299PlIyre", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1988-08-26T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1997-02-04T00:00:00Z", "discountedPrice": 81, "expireAt": "1983-09-09T00:00:00Z", "price": 52, "purchaseAt": "1985-01-14T00:00:00Z", "trialPrice": 13}, {"currencyCode": "5fqIaN1iz7JIfH2O", "currencyNamespace": "al9esYjQmCbErYBa", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1974-03-13T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1975-08-22T00:00:00Z", "discountedPrice": 40, "expireAt": "1993-04-02T00:00:00Z", "price": 22, "purchaseAt": "1980-05-27T00:00:00Z", "trialPrice": 12}, {"currencyCode": "YntNkYAahrr1OxQX", "currencyNamespace": "6q9fLQpSVvdA3Qkp", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1991-03-05T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1989-04-19T00:00:00Z", "discountedPrice": 12, "expireAt": "1971-03-05T00:00:00Z", "price": 37, "purchaseAt": "1996-08-21T00:00:00Z", "trialPrice": 74}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'CODE' \
    --limit '69' \
    --offset '50' \
    --sortBy 'Cp1XknslDwm5n4Xw' \
    --storeId 'BS7dr0Y8jwIah4nP' \
    --keyword 'EUab5KzsiYZaC6Hg' \
    --language 'ZGFVsoHkc2XUYzAT' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '70' \
    --offset '65' \
    --sortBy '["name:asc", "displayOrder:asc", "updatedAt"]' \
    --storeId 'gm6AkzLmmX5rcsTQ' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'WLkKqIL4kmokeG8Y' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DWNG8UkkV5rvLt93' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '76wrxEc4NDA11vFq' \
    --namespace $AB_NAMESPACE \
    --storeId 'r9xcIeWPAGjpe69e' \
    --body '{"appId": "47uE46syFllEYQ9P", "appType": "DLC", "baseAppId": "Ls8iv6XKetAtl9gi", "boothName": "DQgjLgwLPLGNhSzn", "categoryPath": "JeDXfBBUU11L4VCI", "clazz": "HZQR13uI3u1MbWMB", "displayOrder": 28, "entitlementType": "CONSUMABLE", "ext": {"5IaZvZcWcdxMs8Ll": {}, "SCammFqPj7wM5m7i": {}, "2AUTu3iqnV2D2SWQ": {}}, "features": ["sqWNCEYqcY3jwvB8", "azC20LNBayarKztV", "zlhhHh9q0BVzSx86"], "flexible": false, "images": [{"as": "4H8SL7FlkzlNHMCy", "caption": "FnaLMKdR2Z4bMiRw", "height": 84, "imageUrl": "56PsuBPCzmOC4cpz", "smallImageUrl": "LwQsIr61XNGt4d9J", "width": 12}, {"as": "nYb87Jpr7jbnLYlo", "caption": "1d4Yi7MJX3Iucis3", "height": 75, "imageUrl": "1FPrreraK5J9MAED", "smallImageUrl": "Efdq0TLJcXd7hQG4", "width": 19}, {"as": "jn7r8W00xkfSdEp5", "caption": "szHUHRKJMgg3N2LW", "height": 78, "imageUrl": "kLpO2I5osfP0jjJ0", "smallImageUrl": "HGmgO5aKOu2dwTCP", "width": 48}], "inventoryConfig": {"customAttributes": {"gCjLxShyQZTE6IJR": {}, "Sh0qFgPBQ5fuH0L5": {}, "lEuQ1QYFLF7x6HG6": {}}, "serverCustomAttributes": {"7UpJG8dLa0FAoLqh": {}, "CHMi5DY7Gmqob7R0": {}, "KAfrOlOPKmsk1LVP": {}}, "slotUsed": 99}, "itemIds": ["tYSsFn4o4WgYI0Hp", "6gmKo2oOcxbkW2hi", "A7p8yuCt46pqgYsA"], "itemQty": {"5xwG7nemubZCMhs4": 77, "aatknFbfaRUkS0pZ": 53, "zfY0Q8LfnSERDN2l": 61}, "itemType": "MEDIA", "listable": false, "localizations": {"SoQCgmNIk0DNPJI8": {"description": "ppdRiGHLIVYgiRii", "localExt": {"J1yjDQXvn7jB3orV": {}, "IvwJ7mPtvnEWr6wz": {}, "oXwVT9z6jD15mzZT": {}}, "longDescription": "ss2iDR2djrU3KLSz", "title": "upbTLgUOvs15rTcO"}, "Dc3TI1CAv21RqxMj": {"description": "IHsfLd6XBGuNZrB3", "localExt": {"uNB1dhGLAnScWCYz": {}, "bzoiX43M63LXvDxH": {}, "yBqRYmA8ESxaPPib": {}}, "longDescription": "BBq9BhY8e7XSQL7w", "title": "buzbc4lK7ZCtilsK"}, "Es0QWOusqxwQL6ue": {"description": "FVtjt8PPOtsoQ2Du", "localExt": {"YLue0C5DR5LxpNKC": {}, "Ptt8uBQe5NhayTyn": {}, "dgMPeXZTmZjhQAw9": {}}, "longDescription": "dMqkAV8TTCeMhGMN", "title": "9Qj49KOrIBHykwgK"}}, "lootBoxConfig": {"rewardCount": 30, "rewards": [{"lootBoxItems": [{"count": 10, "duration": 1, "endDate": "1982-12-14T00:00:00Z", "itemId": "E3hXoUw3SlURRw8w", "itemSku": "mxv1xzoI0qFkDDtM", "itemType": "b1yNOJUfVslbPldM"}, {"count": 91, "duration": 0, "endDate": "1993-02-08T00:00:00Z", "itemId": "7zm7oUusTwkCbILz", "itemSku": "z2sUiWjOqsPPEN2d", "itemType": "3Gwb8MpUssJZdkqC"}, {"count": 41, "duration": 7, "endDate": "1983-04-04T00:00:00Z", "itemId": "7BGeJ67hAeYjq6s4", "itemSku": "4E1y9YWMLJhWtv7m", "itemType": "KsPvJDe4ggLsh9Gv"}], "name": "iSkJYYstBtS3iF7a", "odds": 0.8188839304496098, "type": "REWARD_GROUP", "weight": 100}, {"lootBoxItems": [{"count": 87, "duration": 65, "endDate": "1998-06-28T00:00:00Z", "itemId": "JCXwo59ehqRfuaTg", "itemSku": "0Mw9RJHltOymYTn9", "itemType": "qzG71NfP5nxA0hmx"}, {"count": 9, "duration": 74, "endDate": "1984-06-30T00:00:00Z", "itemId": "Cej2zSjcry7JwSgr", "itemSku": "p16u3JonvDWx1t70", "itemType": "ktxqe439gz1KP5QO"}, {"count": 25, "duration": 15, "endDate": "1982-05-31T00:00:00Z", "itemId": "7O3R5gMtNgOH94Ea", "itemSku": "RDXcNJcQRJsu2X3r", "itemType": "2TtIHYPqopCQ1set"}], "name": "UjXAstc1YFqV1wom", "odds": 0.8702349838276274, "type": "REWARD_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 47, "duration": 85, "endDate": "1978-07-04T00:00:00Z", "itemId": "nL3kMgbe459PKySM", "itemSku": "XxpIW41ICS2fbKP7", "itemType": "cTlcdcYiPcbd1YlB"}, {"count": 12, "duration": 69, "endDate": "1998-04-13T00:00:00Z", "itemId": "WVaMa6WIZe6XqaHo", "itemSku": "Nz4YgMPD9suLLEWy", "itemType": "YLZJdPSePcVYHrM0"}, {"count": 64, "duration": 84, "endDate": "1997-07-30T00:00:00Z", "itemId": "svj5VCaXvu6khqVm", "itemSku": "BOIxc9gxupSQyhgE", "itemType": "6Gb1pv01pm6eeQUW"}], "name": "R3TkHwY9tY9SKnYX", "odds": 0.5412456276381411, "type": "REWARD_GROUP", "weight": 32}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 49, "name": "cXVvAypDXLMWNXy0", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 6, "endDate": "1993-01-15T00:00:00Z", "itemId": "SPbdS3Fniay3tKsy", "itemSku": "D2nufoaTZl6GzFsN", "itemType": "e56VeuaS2y5duelQ"}, {"count": 91, "duration": 40, "endDate": "1989-01-19T00:00:00Z", "itemId": "sblLL0Rcg42hNH5K", "itemSku": "EYCwb8vDlkAEdo1Q", "itemType": "cxuNvxR7LRDXlfsQ"}, {"count": 97, "duration": 10, "endDate": "1974-03-22T00:00:00Z", "itemId": "eeXRLakJwiK5mG1Y", "itemSku": "7o2deMlAgzMALvZM", "itemType": "zmZlITcZVZFIuMtY"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 21, "fixedTrialCycles": 39, "graceDays": 81}, "regionData": {"QNtklMzPuqLiKhgn": [{"currencyCode": "mZsbOGwydusLg9dd", "currencyNamespace": "ucshhKHXGqy6D8vc", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1975-05-11T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1972-04-30T00:00:00Z", "expireAt": "1990-11-04T00:00:00Z", "price": 34, "purchaseAt": "1996-11-02T00:00:00Z", "trialPrice": 91}, {"currencyCode": "ZbvxRPlX6P9QRqPO", "currencyNamespace": "c0FHONFuIlB87lY3", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1986-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-07-16T00:00:00Z", "expireAt": "1978-01-21T00:00:00Z", "price": 82, "purchaseAt": "1991-11-07T00:00:00Z", "trialPrice": 71}, {"currencyCode": "i7cLf1J2n3r39pug", "currencyNamespace": "giYkgjkUXSFKxmHv", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1988-10-18T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1997-07-12T00:00:00Z", "expireAt": "1983-09-30T00:00:00Z", "price": 37, "purchaseAt": "1996-05-24T00:00:00Z", "trialPrice": 63}], "b4V2wOiQZthhk73C": [{"currencyCode": "DNN2fm0FNyQINKPL", "currencyNamespace": "kShbTXVY3W1yUBFr", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1982-03-21T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-02-08T00:00:00Z", "expireAt": "1989-05-14T00:00:00Z", "price": 21, "purchaseAt": "1987-04-28T00:00:00Z", "trialPrice": 76}, {"currencyCode": "niGl8wwXppUZ1sqT", "currencyNamespace": "n1WKhJyjtAlOg5fV", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1971-12-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-01-31T00:00:00Z", "expireAt": "1993-04-20T00:00:00Z", "price": 36, "purchaseAt": "1998-04-11T00:00:00Z", "trialPrice": 79}, {"currencyCode": "Zl1Nznm9hr5nNZAy", "currencyNamespace": "pGz57URIRr1KRVQG", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1991-09-18T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1980-04-17T00:00:00Z", "expireAt": "1973-01-02T00:00:00Z", "price": 79, "purchaseAt": "1993-04-10T00:00:00Z", "trialPrice": 68}], "QXLZ9fsd7hnBmOi3": [{"currencyCode": "GsDJGBbmJymXWArk", "currencyNamespace": "6OxNxoUNGGGsLNhE", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1984-05-14T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1975-06-10T00:00:00Z", "expireAt": "1990-08-04T00:00:00Z", "price": 60, "purchaseAt": "1994-09-27T00:00:00Z", "trialPrice": 10}, {"currencyCode": "3s384qMyjT7Cr6B9", "currencyNamespace": "ent5kNkoh3LRvFFn", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1981-11-10T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-01-04T00:00:00Z", "expireAt": "1971-01-02T00:00:00Z", "price": 60, "purchaseAt": "1978-12-27T00:00:00Z", "trialPrice": 44}, {"currencyCode": "tYsTK4zlDYJhzyCO", "currencyNamespace": "ysno2oq8hKEZSAtc", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1975-07-04T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1991-04-10T00:00:00Z", "expireAt": "1982-12-23T00:00:00Z", "price": 82, "purchaseAt": "1994-07-15T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "t2BBK5AZpsionWip", "price": 81}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "RY7ySgnzTrmSa5OW", "stackable": false, "status": "ACTIVE", "tags": ["OoAkozrz8Z1oLlC0", "Yu0MGajWdmUPALp4", "DYkhdQ2JNeooKzSN"], "targetCurrencyCode": "GiCHO6YE8i2YoxuF", "targetNamespace": "CqZ3PtvbCqHYWWvx", "thumbnailUrl": "nR9n6SanUPU4L671", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '06SpvRJxngHTbLsA' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'kAjl9q3OqMp2wuF8' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'z1WAvlJLOaRsgwvK' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 7, "orderNo": "QjGaxL8gxOVxvHXF"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'PI9jF5KDKqM3RDE1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2zl2QmIXQEyryR1F' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '7HYiaXYAr8J739Q5' \
    --namespace $AB_NAMESPACE \
    --storeId 'qgKxVTZQVo2ooNFl' \
    --body '{"carousel": [{"alt": "NmHp5DlJL182yiaZ", "previewUrl": "M2C8WMvGAMX5j5zy", "thumbnailUrl": "d931KWO3A0wiAJ8U", "type": "image", "url": "9vBBwbWbuuU96ZUY", "videoSource": "generic"}, {"alt": "akt1lZH4Qjz5H7Ov", "previewUrl": "ErMGxORWHTgX9z7s", "thumbnailUrl": "mzdtRaZanehVwHQV", "type": "image", "url": "LxKdqhQ4sFfhPC3a", "videoSource": "generic"}, {"alt": "HXSB9TxEnsFbvvRN", "previewUrl": "KaLQdBdfq8pm8gFN", "thumbnailUrl": "i64IBPxs1yN2PLNo", "type": "video", "url": "9vLgUN044nohABIk", "videoSource": "vimeo"}], "developer": "F53j4GXsh14NxUJe", "forumUrl": "tmr51rBQ7cqBXNVZ", "genres": ["Racing", "Strategy", "Casual"], "localizations": {"pOSmmkBkJNdBrOZ8": {"announcement": "gzlcFhVp4s0bocLW", "slogan": "1myduCeWuf5E6vAT"}, "voOzIUiHC3xlivFW": {"announcement": "AD7ZojErRki9PIBL", "slogan": "0z6EuGGNIiSpBdPr"}, "cb0cggKHgTIgmJcP": {"announcement": "A3sVy558QiYan2Hv", "slogan": "KiXw9dt3wrjHJCWV"}}, "platformRequirements": {"JnCPsJh522Yjhdaz": [{"additionals": "EVT871ZcRtILDkc8", "directXVersion": "B4pmZHSqesNoN76H", "diskSpace": "sTOToklN4Ri1OQLR", "graphics": "5DjRucyBo3H9nV7P", "label": "1FgaTV38iV8GWcSz", "osVersion": "cYVRyOkhJrppmsil", "processor": "l6kEZ25keNkILq4O", "ram": "PJdkzSF1rXUovRsS", "soundCard": "vA83TXpYSKilnnqt"}, {"additionals": "gB4JJP65HS9lPBBl", "directXVersion": "NaYAllf2a8piHMaT", "diskSpace": "UB5f5wEk030lMJfI", "graphics": "RBoAjsotBDiVttgI", "label": "mRggFAJFi0U3hSW0", "osVersion": "lBzKXWRGN3BAV6l6", "processor": "Hcw1VXWbdLuZnIfi", "ram": "VbJunUunfSB0AfXo", "soundCard": "nH40JwKpeQlpQqhq"}, {"additionals": "zbZ8FHrPflXiIxty", "directXVersion": "JZtiwRmdw2lkUxDN", "diskSpace": "TJDc0AQhYYXtauA8", "graphics": "niNpiS0wtmfBCELl", "label": "UWSpoLWsrHYabvZd", "osVersion": "k4x5tBz59RiyCTAi", "processor": "prxNExtvfTonMwqX", "ram": "mXZLR32eYJawIwYg", "soundCard": "jNTViME1djkQfL5t"}], "ug0reK9t3atxhEDh": [{"additionals": "EakDM84tshxyse2b", "directXVersion": "xqEeutf99Rqxdtxf", "diskSpace": "NIAEW4Xq5kjzUY0u", "graphics": "lCEwIdVInPI9G6Be", "label": "OsJoUvqZOs4jjqAo", "osVersion": "GC8Qmw3Ms0mfvDaa", "processor": "KO7myM7uyHG8uhgV", "ram": "RuKpFd6pQwIVgp6r", "soundCard": "2Irwq8Y06RZ4jSWL"}, {"additionals": "mVtAeTalZcw0tK74", "directXVersion": "64yn1ttvfySsVlah", "diskSpace": "f5pWNbtZ3D2PBBWF", "graphics": "FqVH3YMQlLzY6JfL", "label": "8rLAkC3MxdV8gxy7", "osVersion": "at0HVtwwXibX0m8E", "processor": "PqwHboD16iOSnx8x", "ram": "tV03nGoz3pPRnEsA", "soundCard": "KugDOvYl1rYcae8m"}, {"additionals": "XNCYdYyV2haBlPQC", "directXVersion": "uz9KkD0u9DBQCX51", "diskSpace": "A4FCb1KmM4dSuaLs", "graphics": "YjYpv111YVHhiWhz", "label": "5mxoOM86yRv7k2bI", "osVersion": "qwwKJ1DWOocs8O19", "processor": "IQAGwPjgW9WwpROE", "ram": "8xzQnWNVbVmqrPMY", "soundCard": "tfkG3lJ7LZA1r94E"}], "5VnYrN0ifegD9D6U": [{"additionals": "5OnxsoVv5U2YJYdP", "directXVersion": "UZ0vyJwITM5T8e4E", "diskSpace": "KZ2OMCLxdlXVVchY", "graphics": "5bJdEiHxPVVCuZKx", "label": "jidYUf1f4GpmcThg", "osVersion": "7qKUo1VwluuIFs2N", "processor": "xJrSamkdT2JELfWV", "ram": "HKTFrb1pFXbVY7L1", "soundCard": "K69HQWraImYFlhCF"}, {"additionals": "HWBUg3rHgTxVDfbZ", "directXVersion": "p7Yxfd2v9qjG5E7U", "diskSpace": "iVSdMpQfnLMLRfc0", "graphics": "vk22MWklS53lFmh6", "label": "nqpxZ05dDLIFWUt4", "osVersion": "QzRck8RjO48jkBCQ", "processor": "dNEHOGLWvL5kZxTv", "ram": "C7h3kiZdRNPBzBMV", "soundCard": "qQvVnGlwHFH8h7m9"}, {"additionals": "JWax8jdV2HuUEZw6", "directXVersion": "RFtuM57M1Z3Kauey", "diskSpace": "V4L7Q2onALWUg6QO", "graphics": "ZRdOsRQxsp6S1Tps", "label": "zXyWHpXACA5QshFK", "osVersion": "6AGxdXCiaqkxxIck", "processor": "Jh5tlzWqzebwQTdk", "ram": "AGz7px8ICLPF8V6I", "soundCard": "eR7QxjIlJwJGoHxi"}]}, "platforms": ["Linux", "Windows", "Linux"], "players": ["MMO", "Coop", "LocalCoop"], "primaryGenre": "FreeToPlay", "publisher": "iLJuv2zBX5eyPJr0", "releaseDate": "1988-09-21T00:00:00Z", "websiteUrl": "yCDIzUPWAmJYqXKb"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 't1OGU3juiRjzIgjV' \
    --namespace $AB_NAMESPACE \
    --storeId 'yck6hHGYu8A5cMLt' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Gp4eTmB68dXNFfST' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'acjHraADHNHoodOl' \
    --namespace $AB_NAMESPACE \
    --storeId 'Vr99dxfeqgSsuYhs' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'EaHSrEFxM9iHOxL4' \
    --itemId 'KP2arV31ooBkNVlc' \
    --namespace $AB_NAMESPACE \
    --storeId 'kHzAftZYVAkd73E0' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'noMByTtNCeqb9sYL' \
    --itemId 'wsOOEopu5ifTThIB' \
    --namespace $AB_NAMESPACE \
    --storeId 'Rqnhe981yXDUx24h' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'DmzELCNrYouLvxoH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '65OuGNueqWXVhnWL' \
    --populateBundle 'false' \
    --region 'F5vwGjAGPoOSNoXu' \
    --storeId 'l8rumBLbx0u7MxyM' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '3NfNhhOukW78BQG8' \
    --namespace $AB_NAMESPACE \
    --storeId 'hhNPWbEEYJtsujqK' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 3, "comparison": "isGreaterThan", "name": "gaye5t3WdyHN1uRu", "predicateType": "EntitlementPredicate", "value": "KBZarhvT8BVZfhrp", "values": ["0VVcevqeBe5SAKm8", "O7yywemUq0HPENMz", "OHXnzBQJMFcEglgl"]}, {"anyOf": 11, "comparison": "isGreaterThanOrEqual", "name": "2lkM6lAIsxZFZUIK", "predicateType": "SeasonPassPredicate", "value": "zAIcEdo34vaPcDNv", "values": ["1R35us7UjZI2qkJw", "Eq9mQkH1EJzoeOrD", "fMdiDffzpkJIBzUs"]}, {"anyOf": 24, "comparison": "excludes", "name": "ZwPkctzIkxd27yKD", "predicateType": "SeasonTierPredicate", "value": "DbJgsuW7lJZBfT8K", "values": ["x81TixNaXPWjTQqA", "fmbwNUD24HRH2C60", "DqNwa81BwXQb0uBK"]}]}, {"operator": "and", "predicates": [{"anyOf": 5, "comparison": "excludes", "name": "IqWunFZwwLZwhV7t", "predicateType": "SeasonPassPredicate", "value": "B7SlKosQVZAV4w5T", "values": ["Osx4agiwd8Xdpk1W", "oIx3eL0xUlJJaJN5", "l9Y421q8CCTHPNeR"]}, {"anyOf": 40, "comparison": "isGreaterThan", "name": "NyXAdLdQrjQKdp0c", "predicateType": "EntitlementPredicate", "value": "sit3cbhrLNfxTA23", "values": ["XSIp37NBTG2hP44e", "ndg1pd0TqSnQUW9E", "RQwMtibWHst6xgH0"]}, {"anyOf": 83, "comparison": "excludes", "name": "weo7NJ0tCWck09ad", "predicateType": "EntitlementPredicate", "value": "kkF1JSceOoLbHmp9", "values": ["6pcCom2xeuVz0K5v", "m72Ai3F4UJjOUlbo", "IlSdKfvWN1XmRqiG"]}]}, {"operator": "and", "predicates": [{"anyOf": 32, "comparison": "is", "name": "8v56qtI9zwODDDFO", "predicateType": "EntitlementPredicate", "value": "qdpM9RAoCDQ95Egd", "values": ["6U14jOyhhIqzXGHE", "AzmcV4WDnl33OH8p", "D9UVtXz8P5EW2YrQ"]}, {"anyOf": 48, "comparison": "includes", "name": "gWtp0suR2PCtPS3R", "predicateType": "SeasonTierPredicate", "value": "i7nbhppNymrn5b1T", "values": ["9GGXCkdNK4hbZLhh", "Ss29gqIaSrNp1qd4", "vBzJTMyi15c5Q3Tl"]}, {"anyOf": 32, "comparison": "is", "name": "dpbCR6B9ngw3aBK3", "predicateType": "SeasonTierPredicate", "value": "oKjyP4ey1DFW2EO3", "values": ["4eym1xUaWwPTQeXu", "AddHt64lE9kniqiz", "G4q2gOhZolcaii6z"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '3QoMygfzKhOpg4BZ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6Wxs0mlN2IRNSkhi"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'EWBMNlQxK1oXob4S' \
    --offset '33' \
    --tag 'ykExCkWJ14tkCBm2' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iSvGq7es7zxny6Sr", "name": "RBQ3IReMosaOaTFW", "status": "ACTIVE", "tags": ["0Sn97RmVyG22TRlz", "lHmqnJ1wDEh47tmu", "g4qzGjQEdBQzKf9Z"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'vqUORwBm92BrfOgD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'ckLreyOithaADxAc' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "yRuQFpvHlTTpVv3M", "name": "V0zDUflrhv4IRr0s", "status": "ACTIVE", "tags": ["gFnMeBY7b2hDOV62", "vqk4fjQBFZOtPMHU", "LmjMaiv2aPLSHKNk"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'lrlPUybWrtlzW10l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZjAdD5b7RvCLGSXA' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '5' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ZpfxNumsDTYg4y6V' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Uwi7h2lJW34oSqrT' \
    --limit '29' \
    --offset '50' \
    --orderNos '["WKPtMF6Pu4kIAoFQ", "pmSaLrs6xfnqojiO", "BQH6s5hEAMtMSFHC"]' \
    --sortBy 'v0QV2IUlG0nDlf6s' \
    --startTime 'BXUCmlnDueZQvjGo' \
    --status 'REFUNDING' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 143 'QueryOrders' test.out

#- 144 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'GetOrderStatistics' test.out

#- 145 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3WPtcD33iZ5NIttu' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hiWcaQgARZDY06xQ' \
    --body '{"description": "VEkLd8ThTNyXyzzo"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundOrder' test.out

#- 147 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentCallbackConfig' test.out

#- 148 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "AxUZlxFavY5b4mSi", "privateKey": "rNsxdYDJTCV7cqyQ"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '7BMVp6DvDco6NUq8' \
    --externalId 'M8DWWSO5FiXeyvFL' \
    --limit '45' \
    --notificationSource 'ALIPAY' \
    --notificationType 'JVfSAEbWwmvzi7R9' \
    --offset '27' \
    --paymentOrderNo 'c9nS1NLwgE0S2pPo' \
    --startDate 'pzXwh98U4yTqi6rC' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 149 'QueryPaymentNotifications' test.out

#- 150 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'bDJVZLJWFYMFgn2v' \
    --limit '44' \
    --offset '85' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 150 'QueryPaymentOrders' test.out

#- 151 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "skXyqNuQLuKpygXF", "currencyNamespace": "PPPD6goAnnMAHgTG", "customParameters": {"52tOUDq4uopwckQp": {}, "zG0q7X3odvbG7KRS": {}, "kH0FycG3WJdU4Cwr": {}}, "description": "kBMcVpWKhp4geGH5", "extOrderNo": "ziOsSWBYIwn0zxub", "extUserId": "25pHigCSR16gSGNm", "itemType": "BUNDLE", "language": "HpNv", "metadata": {"gRT1CuvFdpWOkzRj": "Z0yoYNGyRNS3U8sY", "lLmpN8FRwKh5qaKi": "P5x2ugtpKI37e7Da", "xV9m61oDOsGDix0T": "8MbMaPPEBxMVWALO"}, "notifyUrl": "I4WwVMQeQeke1eP7", "omitNotification": true, "platform": "Zpj8US0vQHCeOmWA", "price": 97, "recurringPaymentOrderNo": "hqXAFHgSPN5xJnxj", "region": "HfBNRszh8dkF14Zl", "returnUrl": "loMbJamYKjbfw0xx", "sandbox": false, "sku": "0R2wxAjN2Uf1k41T", "subscriptionId": "zVdBukbpQTrHYaK8", "targetNamespace": "AqafnuPdejMhyTHN", "targetUserId": "8qqNMRwFApbcen4T", "title": "ExtJNMkpUmYqBU13"}' \
    > test.out 2>&1
eval_tap $? 151 'CreatePaymentOrderByDedicated' test.out

#- 152 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Pc5hBaTo0BvqgGrc' \
    > test.out 2>&1
eval_tap $? 152 'ListExtOrderNoByExtTxId' test.out

#- 153 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KKuGETfKULC1lFE1' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrder' test.out

#- 154 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9R42FcJG5pRVvzDy' \
    --body '{"extTxId": "ajcqJOEFI6a87sEw", "paymentMethod": "InJdGzevqV3bfoiK", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 154 'ChargePaymentOrder' test.out

#- 155 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Qi02pHj93sXlkq8A' \
    --body '{"description": "MBQIoFTyFCVF8qmR"}' \
    > test.out 2>&1
eval_tap $? 155 'RefundPaymentOrderByDedicated' test.out

#- 156 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8G1JXHsLygAmSvV6' \
    --body '{"amount": 94, "currencyCode": "vUFFy7iMmoi6mKSQ", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 12, "vat": 41}' \
    > test.out 2>&1
eval_tap $? 156 'SimulatePaymentOrderNotification' test.out

#- 157 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'omSVvTEGDosSx9o8' \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrderChargeStatus' test.out

#- 158 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformEntitlementConfig' test.out

#- 159 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Oculus", "Oculus", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformEntitlementConfig' test.out

#- 160 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 160 'GetPlatformWalletConfig' test.out

#- 161 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["Other", "Other", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 161 'UpdatePlatformWalletConfig' test.out

#- 162 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 162 'ResetPlatformWalletConfig' test.out

#- 163 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'GetRevocationConfig' test.out

#- 164 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateRevocationConfig' test.out

#- 165 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'DeleteRevocationConfig' test.out

#- 166 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'otiWkwulg8DuH4fE' \
    --limit '84' \
    --offset '9' \
    --source 'DLC' \
    --startTime 'iMiiG4dKuZs7RNyp' \
    --status 'FAIL' \
    --transactionId 'MRcXT0LO3SycEvpt' \
    --userId 'TpqbfW353FGfg8Ak' \
    > test.out 2>&1
eval_tap $? 166 'QueryRevocationHistories' test.out

#- 167 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationPluginConfig' test.out

#- 168 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "nOOwjNN26JuWgjX2"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "TSTkd1HdP8YlevOj"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationPluginConfig' test.out

#- 169 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationPluginConfig' test.out

#- 170 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 170 'UploadRevocationPluginConfigCert' test.out

#- 171 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dlUplYrVNAkkn4m9", "eventTopic": "5MAy3ng8GgKlVSVy", "maxAwarded": 9, "maxAwardedPerUser": 36, "namespaceExpression": "NuxvZ4cSHYi6bxhT", "rewardCode": "oRhehPFeU3dC9cbr", "rewardConditions": [{"condition": "Awvkkcc7r7djYMsG", "conditionName": "pLUXVqnHI8VmAcO2", "eventName": "De6DgjXkqLu935uI", "rewardItems": [{"duration": 39, "endDate": "1987-05-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OdrMlUGLvwocH8YZ", "quantity": 93, "sku": "KR4RSYWufIE3cZgg"}, {"duration": 86, "endDate": "1997-05-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WvZlUADH4C3ei6ZR", "quantity": 24, "sku": "C1cGI9wrfqLwJRnZ"}, {"duration": 11, "endDate": "1973-07-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "i3YyRveW2oX0pKpH", "quantity": 23, "sku": "J9DNvlvOd6gQatgm"}]}, {"condition": "izyla7urU8CfU2yj", "conditionName": "LwDwVkzXrBztwVvS", "eventName": "mM1glCxlncYdI4Qu", "rewardItems": [{"duration": 93, "endDate": "1985-08-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wsq7J4Yk6xPpXCoB", "quantity": 49, "sku": "15eO26rAmbPt0x96"}, {"duration": 57, "endDate": "1998-08-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tqjEGIgiyHisSXN0", "quantity": 39, "sku": "gnYtV9kl1Sgj5ma0"}, {"duration": 39, "endDate": "1987-09-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OKWxNedf0k2fqCG4", "quantity": 10, "sku": "I8Bldzl0ZE9uQd9D"}]}, {"condition": "z2vKFqaHP2LtzcFn", "conditionName": "7gr3VY4Qv4FF9zaL", "eventName": "zep2DeG5SfRiyi8c", "rewardItems": [{"duration": 80, "endDate": "1986-05-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tstdhXNLQ9diJ4Pz", "quantity": 50, "sku": "5n4Aa73y7Yrk6epD"}, {"duration": 81, "endDate": "1993-12-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Cz4yBVtcKHODut6z", "quantity": 27, "sku": "gsRaA1loasRx2EZy"}, {"duration": 47, "endDate": "1976-10-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "R855pR7zxe9Dm8HP", "quantity": 8, "sku": "RrkKhn91BHXeC1NZ"}]}], "userIdExpression": "ywcfyROiOZADWqWc"}' \
    > test.out 2>&1
eval_tap $? 171 'CreateReward' test.out

#- 172 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yFw7NkxrydHdOwJz' \
    --limit '57' \
    --offset '64' \
    --sortBy '["rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 172 'QueryRewards' test.out

#- 173 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'ExportRewards' test.out

#- 174 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 174 'ImportRewards' test.out

#- 175 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'k4AVTwkXkrhKlUTe' \
    > test.out 2>&1
eval_tap $? 175 'GetReward' test.out

#- 176 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xLVLZysf8aIuuLBV' \
    --body '{"description": "ZfZBz5jOae4be8UE", "eventTopic": "E55VRAvsjqkToJDC", "maxAwarded": 2, "maxAwardedPerUser": 50, "namespaceExpression": "LN4Wi0WoAijJydiP", "rewardCode": "fpMhn07gxklMa7TR", "rewardConditions": [{"condition": "XjZYGnss2MAGFrrU", "conditionName": "L8n7SwJsgNpTzAJb", "eventName": "AK9JANK73sQD9ZtO", "rewardItems": [{"duration": 53, "endDate": "1981-08-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lp2MFSF3sJO9POaM", "quantity": 49, "sku": "alRxwI7MYoRWke2B"}, {"duration": 15, "endDate": "1971-10-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "yabeP37zSJlG1wMb", "quantity": 39, "sku": "Ogxs3yZfA6pVdRu3"}, {"duration": 24, "endDate": "1988-10-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "81DVmSol63aX9arO", "quantity": 53, "sku": "ZW7MsUU3KTMPAns5"}]}, {"condition": "3fYzgLjQ6BKdAX3q", "conditionName": "MDhGdkMqHpiRdjZA", "eventName": "73mQ4nXXJSVrgLnG", "rewardItems": [{"duration": 2, "endDate": "1988-10-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "adzTuYyiVmw43tAN", "quantity": 42, "sku": "qM3MH2m70TB9YzR8"}, {"duration": 23, "endDate": "1984-03-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "04CnjxcHGixDBhOq", "quantity": 80, "sku": "r2zU5nz3LF7skCn3"}, {"duration": 90, "endDate": "1981-09-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fvYMWpPqnY62Aq6t", "quantity": 71, "sku": "MnVkOzxdOsIJYcDK"}]}, {"condition": "xQgKP3RvncmV1wI2", "conditionName": "KxP0rBoQmnuR4sxJ", "eventName": "m6xznC69he0pTAF3", "rewardItems": [{"duration": 52, "endDate": "1972-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bc2MuhUqjXEoA6ux", "quantity": 11, "sku": "VNbVl3Eh2aRQ3MJ3"}, {"duration": 3, "endDate": "1984-02-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tO8RM8h9DEXeDemz", "quantity": 89, "sku": "HYUMIlGx6pSBb5dD"}, {"duration": 39, "endDate": "1987-01-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QK2krteNlAja46b2", "quantity": 38, "sku": "Qp47jWTLkHx6rSAO"}]}], "userIdExpression": "qO4n44rKeoHrY40X"}' \
    > test.out 2>&1
eval_tap $? 176 'UpdateReward' test.out

#- 177 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uW5z1sWDLmli4eQp' \
    > test.out 2>&1
eval_tap $? 177 'DeleteReward' test.out

#- 178 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'EmjWkaCl000tmUPZ' \
    --body '{"payload": {"p6TrJCMDq0eurM6b": {}, "Y1ouoUge0Urp1Bki": {}, "WFLNx69FBKm9SCIc": {}}}' \
    > test.out 2>&1
eval_tap $? 178 'CheckEventCondition' test.out

#- 179 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'V4UjEFaOoK5pU2KD' \
    --body '{"conditionName": "2tMq9pUeCqw2QDR8", "userId": "MgMzVjgXesaNzaZd"}' \
    > test.out 2>&1
eval_tap $? 179 'DeleteRewardConditionRecord' test.out

#- 180 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'JxLDb1ywoaO2lmMx' \
    --limit '53' \
    --offset '33' \
    --start 'dVBRgH4WAY5Oyhew' \
    --storeId 'FwpsLtisrY8qki21' \
    --viewId 'CuHDQVc1YWVHRt3w' \
    > test.out 2>&1
eval_tap $? 180 'QuerySections' test.out

#- 181 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'qDKB6zsSc5nDzgqH' \
    --body '{"active": true, "displayOrder": 87, "endDate": "1977-11-15T00:00:00Z", "ext": {"uYh8awXQ7Y0eBqKY": {}, "OJhk0uizCjxvCy9o": {}, "kCHnUeo7hpl40tLS": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 64, "itemCount": 34, "rule": "SEQUENCE"}, "items": [{"id": "L13BiwJilyYqZXGT", "sku": "Pb2NGNq6l3ly0f1O"}, {"id": "JgNB9fZ4HkbuzA3X", "sku": "WJ4KvARnDEtRO87V"}, {"id": "irArF3ZXWE8OqGpv", "sku": "c8OpoDWJXY0hIo6d"}], "localizations": {"KvTKFTxf6VwsNLQw": {"description": "SsgfgCinAl9bPUWE", "localExt": {"J6fxzx5WlTRnTLqV": {}, "0IzUAq2nnWhTT3Cc": {}, "7iZxvlTwxEJlLI75": {}}, "longDescription": "pYVTXZdGYJEoAJSZ", "title": "EfyFzA4h7jVmND9Y"}, "dxolEJUAX1dYvPGM": {"description": "zrVxQEeBSFBQVvFU", "localExt": {"vadoHGdLL7L8MhQJ": {}, "cYxOBIGaRHiWpUgp": {}, "jKCwDhOcrNB8MWcm": {}}, "longDescription": "yXZYHJuZSSYRbZZ5", "title": "c6dtTEF4kMooV0II"}, "9nuXXuFY0BwAzPDp": {"description": "pue0Y1GX8xzyQS54", "localExt": {"4hwYYF4LQ2ksPrbv": {}, "EirptnhAXS4keqmi": {}, "9utqEWLz8iAiXNe2": {}}, "longDescription": "SzG7oBiiy2X5KCUD", "title": "snvQmeKP8TX2BWHa"}}, "name": "KujQ4R1mbHeTfwZ6", "rotationType": "CUSTOM", "startDate": "1990-05-02T00:00:00Z", "viewId": "5OYQ2K6yMLFjuoNP"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateSection' test.out

#- 182 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'cTKPYtGgPWIpCMxo' \
    > test.out 2>&1
eval_tap $? 182 'PurgeExpiredSection' test.out

#- 183 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '4R87FZprMeGExoBW' \
    --storeId 'TdQVR2wk8SJbry4g' \
    > test.out 2>&1
eval_tap $? 183 'GetSection' test.out

#- 184 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'LKBOXpa8CSvzFIl7' \
    --storeId 'OGOyZ86SFuWatjZE' \
    --body '{"active": false, "displayOrder": 71, "endDate": "1988-10-24T00:00:00Z", "ext": {"d7rJ4SQLppLEidpt": {}, "CUxqObzGHUhycA2P": {}, "kUxchCT13wHZlt2Q": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 84, "itemCount": 32, "rule": "SEQUENCE"}, "items": [{"id": "N8oMlH8R8pUYGbHn", "sku": "K8Kavfi2W0jqBTko"}, {"id": "iXOtY3ycFhwb4z9O", "sku": "zXcLJ7lxOCPrAmCK"}, {"id": "aBxeGFOhls3qEH9T", "sku": "nU0P6SujrEhSlSmW"}], "localizations": {"SUa9JKiNWOtDRkQ7": {"description": "cFK9a4nHqviEEeIG", "localExt": {"IegeaZaYQtR1FG7A": {}, "IPcmICo3qWQmXtva": {}, "8wumEhu8QuWypY9P": {}}, "longDescription": "xeQgriuSFu0CFixq", "title": "i0YfJoEFPEPNF5Ea"}, "1mbDAFHl1MCLF6C3": {"description": "n13lkfot9aBAWIKB", "localExt": {"UFqEHIyLf8Gg3gUT": {}, "xLt6qDxMAEwNAGTF": {}, "IKuXgK2ETlYVz1qx": {}}, "longDescription": "sx8hyYOqmSPZFLJq", "title": "jVt6NqXhlwpGHAY2"}, "7eocLyVeyKmH4dUB": {"description": "y7OP3o42qyLky9B2", "localExt": {"j4nIMwPtqHowfNsO": {}, "Av6jLE9EtI7bXbUg": {}, "Z9W83gKL7AP0rpji": {}}, "longDescription": "3c8Bjc0Xop86yCos", "title": "9Bn946KKWITyOSp3"}}, "name": "XuqEg363en2VCjfD", "rotationType": "NONE", "startDate": "1979-02-06T00:00:00Z", "viewId": "qP99h7qPwJc1Beha"}' \
    > test.out 2>&1
eval_tap $? 184 'UpdateSection' test.out

#- 185 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'LW78vhjDcZyRmZf6' \
    --storeId 'gxGx1VPYK8OVItFZ' \
    > test.out 2>&1
eval_tap $? 185 'DeleteSection' test.out

#- 186 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'ListStores' test.out

#- 187 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "H5OgImhTO6PPjnAg", "defaultRegion": "jvZhdQ8ROID9gnh7", "description": "w3bqV95W2RhUOcRl", "supportedLanguages": ["LRU3KM6TVQsRuCIv", "63HWF5yx5KAT5xWt", "4GHOEJUYxI0b8G4S"], "supportedRegions": ["zQpCX8VXkBlIEkjf", "W0gEKstnxiJR9Mqy", "5OPtppmOk3ZwBnmm"], "title": "sdHp65nmEYYVoFn7"}' \
    > test.out 2>&1
eval_tap $? 187 'CreateStore' test.out

#- 188 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
    > test.out 2>&1
eval_tap $? 188 'GetCatalogDefinition' test.out

#- 189 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'DownloadCSVTemplates' test.out

#- 190 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["wwKlwAJDIMIBGtjH", "s6z3En8T1qIMJIsx", "sTbUfvyU56uyxvsU"], "idsToBeExported": ["QxDP1y4KMhKugu5L", "Mkbk6dRa2ZViHmj4", "jRVjxpGxqFFeJ4x6"], "storeId": "E2DDcw0LlBg26FIP"}' \
    > test.out 2>&1
eval_tap $? 190 'ExportStoreByCSV' test.out

#- 191 ImportStore
eval_tap 0 191 'ImportStore # SKIP deprecated' test.out

#- 192 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStore' test.out

#- 193 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'DeletePublishedStore' test.out

#- 194 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'GetPublishedStoreBackup' test.out

#- 195 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'RollbackPublishedStore' test.out

#- 196 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kNFkLAkOI418eMNb' \
    > test.out 2>&1
eval_tap $? 196 'GetStore' test.out

#- 197 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'wpSTsnHrJ574miCA' \
    --body '{"defaultLanguage": "wYn39LDQOyexylg3", "defaultRegion": "s9EqvVOAZpgOV0ff", "description": "0uwgV96nDQZG8i1o", "supportedLanguages": ["FEgv6boCxr6xu4ig", "ijmWJMcopfHPkTNF", "c1SRySEMFyE6gdNq"], "supportedRegions": ["Ucm3STINkIQmq2Qz", "liwQRtE08X8E5A13", "WherQnCN89d0A1NC"], "title": "AFf2rrH8LtRiofDi"}' \
    > test.out 2>&1
eval_tap $? 197 'UpdateStore' test.out

#- 198 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NFhMk5t62FV4mmPs' \
    > test.out 2>&1
eval_tap $? 198 'DeleteStore' test.out

#- 199 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'Xrvn4U5sw45Wpcrg' \
    --action 'CREATE' \
    --itemSku 'agAazSgHCXa2bcJJ' \
    --itemType 'CODE' \
    --limit '43' \
    --offset '8' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd '6MlUmZ8HsTkSrKKa' \
    --updatedAtStart 'mknwDjbObSX9vQBO' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 199 'QueryChanges' test.out

#- 200 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'oDUlJ2jaKmvfz6ek' \
    > test.out 2>&1
eval_tap $? 200 'PublishAll' test.out

#- 201 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'CFRzYHMdes5e5vOF' \
    > test.out 2>&1
eval_tap $? 201 'PublishSelected' test.out

#- 202 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ZdGHizM3OmJpTk0D' \
    > test.out 2>&1
eval_tap $? 202 'SelectAllRecords' test.out

#- 203 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'z0v7C28YoW8ZpHNq' \
    --action 'CREATE' \
    --itemSku 'bnSswWSkGKfjmABn' \
    --itemType 'SUBSCRIPTION' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'BAd7Lm7C6qKUlBLC' \
    --updatedAtStart 'eCiIZqhCKTCC0QmW' \
    > test.out 2>&1
eval_tap $? 203 'SelectAllRecordsByCriteria' test.out

#- 204 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'wnczLpOTLzaLtwzT' \
    --action 'CREATE' \
    --itemSku 'j5wuus1przMDergZ' \
    --itemType 'CODE' \
    --type 'ITEM' \
    --updatedAtEnd 'GCeQ69K3SNADN1Sj' \
    --updatedAtStart 'pZj7XRsuxUFboYsw' \
    > test.out 2>&1
eval_tap $? 204 'GetStatistic' test.out

#- 205 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'YnKern4PL8L23IHb' \
    > test.out 2>&1
eval_tap $? 205 'UnselectAllRecords' test.out

#- 206 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '0OVv9fIuxhvwyPJ2' \
    --namespace $AB_NAMESPACE \
    --storeId 'xu47jeTy9ucNioq2' \
    > test.out 2>&1
eval_tap $? 206 'SelectRecord' test.out

#- 207 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'MKQAP36gHXxNWKyF' \
    --namespace $AB_NAMESPACE \
    --storeId 'lSime7nY1beDaDr1' \
    > test.out 2>&1
eval_tap $? 207 'UnselectRecord' test.out

#- 208 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'SI3ZfHIWdGJ5McEU' \
    --targetStoreId '9VelDg8pPZnIAFF2' \
    > test.out 2>&1
eval_tap $? 208 'CloneStore' test.out

#- 209 ExportStore
eval_tap 0 209 'ExportStore # SKIP deprecated' test.out

#- 210 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'LkeSrIGv1H3WIIoy' \
    --end 'Uhp8XOLRZCLnmu7E' \
    --limit '66' \
    --offset '100' \
    --sortBy 't9AmTWCzHlE7B99B' \
    --start 'brbi5Fs23aWS4Kut' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryImportHistory' test.out

#- 211 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Koi6z4B1eqPVxwEH' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'XmNoYSBnzvt9u2Mt' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 211 'ImportStoreByCSV' test.out

#- 212 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'FICfl5LAD7jKFiXF' \
    --limit '77' \
    --offset '46' \
    --sku '4zV2OuIOGF2NWiXW' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'vKzf2OlpUd9eIVHP' \
    > test.out 2>&1
eval_tap $? 212 'QuerySubscriptions' test.out

#- 213 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FYHJIwpTI7Kxh7qv' \
    > test.out 2>&1
eval_tap $? 213 'RecurringChargeSubscription' test.out

#- 214 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '5mmS9OZkpCjvYJXb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketDynamic' test.out

#- 215 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'adT8qYmzLqfnLm8i' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "8KDeyGxe8mZnUBHx"}' \
    > test.out 2>&1
eval_tap $? 215 'DecreaseTicketSale' test.out

#- 216 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'RYYNWHBuxozQQJih' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 216 'GetTicketBoothID' test.out

#- 217 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '99DikONZghrbg4tc' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "elLeRghpQOI58vb7"}' \
    > test.out 2>&1
eval_tap $? 217 'IncreaseTicketSale' test.out

#- 218 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 37, "currencyCode": "KwlfVdKeqRVUrK2j", "expireAt": "1996-10-20T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "9qQvXcuAjJ5ZiGeP", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "1w7aVsHCUKIX3TJ0", "entitlementOrigin": "Twitch", "itemIdentity": "4xzSgac9k16R1wj9", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "erLBu0ws3hu65cof"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 98, "currencyCode": "O8T2OA9BPiFhB8UX", "expireAt": "1975-12-14T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "y7E5r2rFE0zAReBU", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "IvvvupDNCeZevOBf", "entitlementOrigin": "GooglePlay", "itemIdentity": "U5KgB7upsAuQR2JI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 56, "entitlementId": "atrpwN4U88eD84rQ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 49, "currencyCode": "8tuw9qkd38kv2Yp6", "expireAt": "1999-12-06T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "fMg2fSFTRNB1IsCx", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "KSlGF4Ee0zcSL3uY", "entitlementOrigin": "GooglePlay", "itemIdentity": "93oNZfE3euSjPInx", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "DIQr6pYu05Pjhed6"}, "type": "FULFILL_ITEM"}], "userId": "L7L5YPifYULOALgx"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 39, "currencyCode": "tFTLSIadgBPnNRCy", "expireAt": "1976-07-31T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "nedoW7twYRc5XHcH", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "uuUsYkR3dZux4Wy3", "entitlementOrigin": "Playstation", "itemIdentity": "mW6PSoijqHVclAXA", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "AMdGJLsLr64jwNZ8"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 55, "currencyCode": "sXVXX5DAidEt9hI9", "expireAt": "1978-09-25T00:00:00Z"}, "debitPayload": {"count": 25, "currencyCode": "QSNQBj5mYDX2qxOG", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "IVc9XGZVBDIaAbKX", "entitlementOrigin": "GooglePlay", "itemIdentity": "QTrhajs4rmbeMdWy", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "AZLAtLSoauW5GnNu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 23, "currencyCode": "oV73WiXrURSktHW3", "expireAt": "1990-09-03T00:00:00Z"}, "debitPayload": {"count": 11, "currencyCode": "f5wY8apb8VqGC9Gi", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "MbKNT3QfFxuIQhHJ", "entitlementOrigin": "GooglePlay", "itemIdentity": "MAN3sH2FJ5SHJWR6", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "QNFbozzjU47plNEQ"}, "type": "FULFILL_ITEM"}], "userId": "7KDitNximIHCHS6Q"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 89, "currencyCode": "EzP5Nqtc5Gy28lme", "expireAt": "1991-10-14T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "RUnT3MD29E7Z8dLV", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "AJOuCM4sNsifF5zS", "entitlementOrigin": "Epic", "itemIdentity": "gVWVutAGhnV6EukP", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "83hbOv6P83X5z7Oh"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 36, "currencyCode": "OpfA6Az0f8D1Tl3A", "expireAt": "1973-06-03T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "JMD1XSQ3JCQu0IZj", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "pDYv58IQuo5KHCO0", "entitlementOrigin": "System", "itemIdentity": "DQCfncFhwAmvlc29", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "nn5StPmvNQEgPdcT"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 81, "currencyCode": "aBuFZMhjBTx3iQeZ", "expireAt": "1981-08-11T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "8mZ7tr93o6Mhh2aK", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "3TYJ6s9ImoZPLYyC", "entitlementOrigin": "Other", "itemIdentity": "7QzOzNGANQRqV6JQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "0lnZHDZcfurml4xS"}, "type": "DEBIT_WALLET"}], "userId": "8MjuFcT7qb5xPNyr"}], "metadata": {"mCECkgLa7BGwbtIT": {}, "YZ65yODGhJ9McQhy": {}, "Cbe0uJCOQVAWCNgB": {}}, "needPreCheck": false, "transactionId": "mqU7UNTbYKPtQiOJ", "type": "EqDWjNmQYLRlG62c"}' \
    > test.out 2>&1
eval_tap $? 218 'Commit' test.out

#- 219 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '65' \
    --status 'FAILED' \
    --type 'nCI9ZhcuvQe2CSTK' \
    --userId 'sTtxNaAOtnDSEwIL' \
    > test.out 2>&1
eval_tap $? 219 'GetTradeHistoryByCriteria' test.out

#- 220 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '6Y8vQCOUC2KMClgb' \
    > test.out 2>&1
eval_tap $? 220 'GetTradeHistoryByTransactionId' test.out

#- 221 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'slEx341DHJegJmF0' \
    --body '{"achievements": [{"id": "uqRTBo20fNizJpoF", "value": 79}, {"id": "8W3MoysCF8jLbE7c", "value": 85}, {"id": "U74npKGVD8qsT79r", "value": 54}], "steamUserId": "eREIkkqucDASGPKL"}' \
    > test.out 2>&1
eval_tap $? 221 'UnlockSteamUserAchievement' test.out

#- 222 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'P7Rt8EgCyFY6TWBf' \
    --xboxUserId 'k82ya1YcMEvvKTAq' \
    > test.out 2>&1
eval_tap $? 222 'GetXblUserAchievements' test.out

#- 223 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'VdEpMtHk1x9JPQu1' \
    --body '{"achievements": [{"id": "vBBDUNqeMvCiY79x", "percentComplete": 89}, {"id": "pXJk9T2dnTluTMrU", "percentComplete": 14}, {"id": "rnIi7s4KaKLsMIRc", "percentComplete": 63}], "serviceConfigId": "HhsbaJvBcBC6YKhH", "titleId": "VOop9YNg6iKy2Cz5", "xboxUserId": "dBrVuZdqYZl0SRgU"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateXblUserAchievement' test.out

#- 224 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'DXwwZiIyG22WDyQ0' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeCampaign' test.out

#- 225 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Lw0WpnpTeeMAWlmo' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeEntitlement' test.out

#- 226 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Gb5ISuGyBAO0asBy' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeFulfillment' test.out

#- 227 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '2lHziDXmCXFpfGcr' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizeIntegration' test.out

#- 228 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'scwVpCBZ9XTnebXX' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeOrder' test.out

#- 229 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '962OGHpUEkHXoUVM' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizePayment' test.out

#- 230 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ZG2EB2SsH4KXkIDb' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeRevocation' test.out

#- 231 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '9gipsMqUjjvawDfT' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeSubscription' test.out

#- 232 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'kqknI9v20nYZ4bRs' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeWallet' test.out

#- 233 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'OOKBZ5HCC0NzFNhR' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 233 'GetUserDLCByPlatform' test.out

#- 234 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lw8ALdgd2GhXWPcu' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 234 'GetUserDLC' test.out

#- 235 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RfFHuajlBdWaNpDU' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId 'nbg5kIE8V4kWEKo7' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'zINPBnWcjD9R1qiZ' \
    --features '["dbA7WLC7e5jl1x9o", "vBm28dyAZC1bxSLr", "HW5ZNfzFX3K6EZkK"]' \
    --fuzzyMatchName 'false' \
    --itemId '["9xtFgrwMgUMPLtr5", "Dm0zmBeZWdSb150L", "ovJpqpDmiKw03SX5"]' \
    --limit '19' \
    --offset '3' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 235 'QueryUserEntitlements' test.out

#- 236 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'y3lrWNpHIJCzIWyi' \
    --body '[{"collectionId": "BquHaGovWMowdTJQ", "endDate": "1976-12-09T00:00:00Z", "grantedCode": "SCmicwoimm4zDeAS", "itemId": "iVSTCsGqoYC3tsiQ", "itemNamespace": "BWHt5614o2Vn4UkC", "language": "qdi-BnKa-kL", "origin": "GooglePlay", "quantity": 9, "region": "DgCjzWNUJgFULxkJ", "source": "PURCHASE", "startDate": "1999-01-15T00:00:00Z", "storeId": "70mPj85HlioR4yIo"}, {"collectionId": "uaVtLdfhZ6mKbZI7", "endDate": "1982-12-24T00:00:00Z", "grantedCode": "7uOvYVFe33GtRQq0", "itemId": "fi78QzRTZKEIYnKQ", "itemNamespace": "G8FGX5Fkcv5VI8xi", "language": "YH_dcdv", "origin": "Steam", "quantity": 52, "region": "pDJGTUuoO2Qq4pg0", "source": "OTHER", "startDate": "1994-05-13T00:00:00Z", "storeId": "j9qqxwCKntjFCpox"}, {"collectionId": "pSj7F83il7mvMriR", "endDate": "1995-05-15T00:00:00Z", "grantedCode": "1mJZfsooyV4wCpEh", "itemId": "w62Vrv0bAB4pCvBT", "itemNamespace": "PGC4hRoo8WjZ8ot5", "language": "tIi-PMuv", "origin": "Twitch", "quantity": 63, "region": "etN5a6WITuO6OYHj", "source": "REWARD", "startDate": "1991-02-20T00:00:00Z", "storeId": "MVSEPriarrypAfPa"}]' \
    > test.out 2>&1
eval_tap $? 236 'GrantUserEntitlement' test.out

#- 237 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'IY6PxbZ26WNrwAo7' \
    --activeOnly 'false' \
    --appId 'nAUoWlbhrI2FG3Jz' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementByAppId' test.out

#- 238 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VTCOmcyggtxwWhEi' \
    --activeOnly 'false' \
    --limit '24' \
    --offset '64' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 238 'QueryUserEntitlementsByAppType' test.out

#- 239 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6rhx7qZYvctopsPR' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform '3dp4la3xO4aJufYz' \
    --itemId 'THhBuZU66cxHeDxb' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementByItemId' test.out

#- 240 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0do8P6UqK4GqwZqE' \
    --ids '["JXm4v2yZL0zaxmLn", "B45si24CxW0lhBmM", "5l20uq0zxdVG9AQX"]' \
    --platform '9RwjKVilM6OgNSU4' \
    > test.out 2>&1
eval_tap $? 240 'GetUserActiveEntitlementsByItemIds' test.out

#- 241 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'eSmRAsKAKiRztEgB' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'gWdMdPlmdOYcB9jM' \
    --sku 'jQrbVP8T28cm3g7S' \
    > test.out 2>&1
eval_tap $? 241 'GetUserEntitlementBySku' test.out

#- 242 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'PXxSfD8Ld5kQqGPb' \
    --appIds '["P9EVOmPCM6YpGe0j", "owHgLCbsFMlM97eg", "ZC9hXczvChSErGHL"]' \
    --itemIds '["7SlOXhbPUc9TVY3T", "H1RqGZCQVXaFEiA4", "bSerDkEGaesdS5iR"]' \
    --platform 'ahaqtsQ3wliMJDbc' \
    --skus '["0IPR6WBd0wqVip5C", "IGyGR1iVpFpq7zBw", "03xgOUWuXMKPten9"]' \
    > test.out 2>&1
eval_tap $? 242 'ExistsAnyUserActiveEntitlement' test.out

#- 243 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lcxcAsczyznsSJEl' \
    --platform 'cqeAnPgkZB0shCCs' \
    --itemIds '["4GLxKefKblNqiJCA", "RYqu1LJ5PDBv8VUe", "9yOd5xIh2ilB83F0"]' \
    > test.out 2>&1
eval_tap $? 243 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 244 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bKGM3lMSOvGUiSMz' \
    --appId 'dSzcvBtjo0dJECSt' \
    > test.out 2>&1
eval_tap $? 244 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 245 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nRqlDjqaRCzVc8ex' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'i6Sik9XPWSa2tDZg' \
    --itemId 'Xj6LCpZ0al0Ea66F' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipByItemId' test.out

#- 246 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'FRctA8rilkvWj4z1' \
    --ids '["ga7GHt4c0oDIK4wd", "Ww4NCe7OWDfXsFnL", "0dWc39WsrIHAk7Wg"]' \
    --platform 'VR99fRMftmvkybqO' \
    > test.out 2>&1
eval_tap $? 246 'GetUserEntitlementOwnershipByItemIds' test.out

#- 247 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Am8T2siwAxUQ01X5' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '3NEjp7ZWLcHzFmQo' \
    --sku 'S4Tzrieu4d2q13ta' \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementOwnershipBySku' test.out

#- 248 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'p6T6OZhFMoNwOstj' \
    > test.out 2>&1
eval_tap $? 248 'RevokeAllEntitlements' test.out

#- 249 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'y2Fjqzh6ws3Cbfod' \
    --entitlementIds 'ZUvX0wNgI36QrJPo' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlements' test.out

#- 250 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'QuayDF8q9Ma9gxny' \
    --namespace $AB_NAMESPACE \
    --userId 'RZPpjeYPTiPebGfu' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlement' test.out

#- 251 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '2WFNtmAdTbI2zjm8' \
    --namespace $AB_NAMESPACE \
    --userId 'd4P6fcqi0MMVkGwX' \
    --body '{"collectionId": "P33edxXw54M6KSl7", "endDate": "1979-12-05T00:00:00Z", "nullFieldList": ["lvjeke74icVbPC6k", "QHXIq4tGQ59UbAYM", "nfR1Ne0oltnMsq8G"], "origin": "Other", "reason": "oxMTpt5TCVzYs4GJ", "startDate": "1987-09-22T00:00:00Z", "status": "INACTIVE", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 251 'UpdateUserEntitlement' test.out

#- 252 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'nEvujsPw1PsAOXki' \
    --namespace $AB_NAMESPACE \
    --userId 'aY95wuoXcpqBPY8s' \
    --body '{"options": ["PKLcxL5IdpSCDprA", "UzPSG6LVJZ6GP8av", "QGcMec3F5HuNK2CN"], "platform": "tBgVFzmjLr9mpJPe", "requestId": "G5QqqAqwTl44SUmM", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 252 'ConsumeUserEntitlement' test.out

#- 253 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'BmZC7JR2apftNp8a' \
    --namespace $AB_NAMESPACE \
    --userId 'S8OK0k0AFwbXaxdW' \
    > test.out 2>&1
eval_tap $? 253 'DisableUserEntitlement' test.out

#- 254 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ub5pjaUsiMx1SJ8J' \
    --namespace $AB_NAMESPACE \
    --userId 'TdCnd2a59CsFNBkT' \
    > test.out 2>&1
eval_tap $? 254 'EnableUserEntitlement' test.out

#- 255 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'oAxcZjrG1GNZEBFr' \
    --namespace $AB_NAMESPACE \
    --userId 'IG06QFHJ64Ko8ghR' \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementHistories' test.out

#- 256 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'qnzTjSNKxSdoU3x5' \
    --namespace $AB_NAMESPACE \
    --userId 'IcJsas6eDPWndzeA' \
    > test.out 2>&1
eval_tap $? 256 'RevokeUserEntitlement' test.out

#- 257 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'WlStqGcLiDjaQQ0r' \
    --namespace $AB_NAMESPACE \
    --userId 'eOwJkO7pTe1AmWYI' \
    --body '{"reason": "Lc9c6YQbJBoJfa5I", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 257 'RevokeUserEntitlementByUseCount' test.out

#- 258 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'TV8k0m9UcPzygC0t' \
    --namespace $AB_NAMESPACE \
    --userId 'sXp0xkqCL2IbpIC1' \
    --quantity '9' \
    > test.out 2>&1
eval_tap $? 258 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 259 RevokeUseCount
eval_tap 0 259 'RevokeUseCount # SKIP deprecated' test.out

#- 260 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'fNhgX23xawCdmrJ8' \
    --namespace $AB_NAMESPACE \
    --userId 'YtuZCTvpT6g06cbo' \
    --body '{"platform": "bDHc74J3ZAW6fqYY", "requestId": "ipi0LaWVJtrKVtTw", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 260 'SellUserEntitlement' test.out

#- 261 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'AyWnqiuubHzSWDiC' \
    --body '{"duration": 34, "endDate": "1990-01-08T00:00:00Z", "entitlementCollectionId": "OBjiHXSUeBuWzdGe", "entitlementOrigin": "Oculus", "itemId": "bpbdkajSuEBwhsRw", "itemSku": "pudpwn3haX6tEgW6", "language": "g7qN1fFn7wIj4dOY", "metadata": {"E4hs6b0cFp99kpMm": {}, "loxancV8c88m613Z": {}, "uiCLuoHBJnoDZd4U": {}}, "order": {"currency": {"currencyCode": "QDaZHdUweiPBEj8G", "currencySymbol": "nJGy31e5mg3E6606", "currencyType": "REAL", "decimals": 50, "namespace": "JGhfxUcmcq5zp7g7"}, "ext": {"esn1DDL9cgnOz1g4": {}, "IpBwNt6dYi9ZM3i7": {}, "7BZy1avhKZt2pBKJ": {}}, "free": true}, "orderNo": "qJlMmkP0JJvxFp06", "origin": "Epic", "overrideBundleItemQty": {"k7d5MEyWYsM2bDt9": 82, "LP1vGhIPh3WZlzpJ": 26, "xFAp3e0ZjRZ6R8Xa": 28}, "quantity": 91, "region": "w3y1Ze9zyDMQ8Q6O", "source": "DLC", "startDate": "1990-01-17T00:00:00Z", "storeId": "HxXPs21t05f6Bnah"}' \
    > test.out 2>&1
eval_tap $? 261 'FulfillItem' test.out

#- 262 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '50qNOBjQVLK7LZpN' \
    --body '{"code": "GjtOCyh11HzDSl97", "language": "vYW-cePK", "region": "tnJD81a2h5QlMizz"}' \
    > test.out 2>&1
eval_tap $? 262 'RedeemCode' test.out

#- 263 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'umQo6DRLqy0bf1Hk' \
    --body '{"itemId": "ZoQ9i9IKWUkt0tfD", "itemSku": "jcI2MwbcZvTBjNgt", "quantity": 56}' \
    > test.out 2>&1
eval_tap $? 263 'PreCheckFulfillItem' test.out

#- 264 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tVSwCTEK0j11pLP6' \
    --body '{"entitlementCollectionId": "g7zJdTQ5S5c1Y4y0", "entitlementOrigin": "Xbox", "metadata": {"0jq5boqGnKMyugMm": {}, "eflINOg1jurDmEWj": {}, "JAJSqjGdYtbFf1zC": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "XOoucNiraFsiJf1B", "namespace": "M17T1ivQp3O9DR5u"}, "item": {"itemId": "h38I3jCXgiZpHXR6", "itemSku": "RCv1DdOh9b39qN5A", "itemType": "xcouHdOXiHpOQncH"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "ksFUYDwjsdbFtZmN", "namespace": "lQwjC31cAq6HXDhG"}, "item": {"itemId": "pjAAwYYTxQ1NHWDZ", "itemSku": "RaE0wiWUHBxt4qJ6", "itemType": "ePUmG7pnvOup3VTI"}, "quantity": 43, "type": "ITEM"}, {"currency": {"currencyCode": "8IFrSbaBaxjiUUYz", "namespace": "7pZ4oHqp3YZplKJ3"}, "item": {"itemId": "LqziJpnQEGohpixD", "itemSku": "eKZrS6VBaLKVlEcZ", "itemType": "oXJw2gAsPgATKaGB"}, "quantity": 37, "type": "ITEM"}], "source": "GIFT", "transactionId": "ZSfoJd0TB1hpE2cx"}' \
    > test.out 2>&1
eval_tap $? 264 'FulfillRewards' test.out

#- 265 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'W2o3YKHA3MXRvXN8' \
    --endTime '8ybXKt476OiRjXSC' \
    --limit '97' \
    --offset '92' \
    --productId 'vw5odcwqfmReK2lz' \
    --startTime 'eyqUT8wHbtE7pS7s' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPOrders' test.out

#- 266 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SDv7Kg3Gcby7ZOQB' \
    > test.out 2>&1
eval_tap $? 266 'QueryAllUserIAPOrders' test.out

#- 267 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'jz6IKe4ZT9Ivf2qC' \
    --endTime 'IGwB7ZNe7iynCdj2' \
    --limit '38' \
    --offset '4' \
    --startTime 'hsVSLom8iMfItggc' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserIAPConsumeHistory' test.out

#- 268 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WX0AaS8rUyrQzkJp' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Fq-MUDw", "productId": "GxaFZ9c18DpdmA4M", "region": "rH7aY1dGtwbOzAAr", "transactionId": "IfKTPZRAkQg2JvQI", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 268 'MockFulfillIAPItem' test.out

#- 269 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Q5661JvqQKwoffns' \
    --discounted 'false' \
    --itemId '8FuPj2FRLsgezbjN' \
    --limit '85' \
    --offset '26' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserOrders' test.out

#- 270 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'GJeGAP0f8pYJA4w1' \
    --body '{"currencyCode": "J2PzVS4Cn0qZyjVv", "currencyNamespace": "DqD118KTiIyzV6Id", "discountCodes": ["z4E3sNbx3EBgvavD", "hjyn1pTeWAYbUwNM", "xEl0yzKm0nWFmXfk"], "discountedPrice": 53, "entitlementPlatform": "IOS", "ext": {"Zte0J3CrqcHGdRQN": {}, "Y6siu4jWoigG9KaP": {}, "eaKAZjFQ2qRvi5qw": {}}, "itemId": "xvaQjdL5ArCHrQHK", "language": "k3FJhNPYMVAdHAID", "options": {"skipPriceValidation": true}, "platform": "Oculus", "price": 57, "quantity": 28, "region": "Km0rfR86hKReaLyK", "returnUrl": "vl8hjz10vNyCs01k", "sandbox": true, "sectionId": "TEwCrd0vhn9AVmnR"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateUserOrder' test.out

#- 271 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'wRB44cklNAxSFiR7' \
    --itemId 'GfNuufYxc7otEuMy' \
    > test.out 2>&1
eval_tap $? 271 'CountOfPurchasedItem' test.out

#- 272 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'QkxvmxuHri07nUD6' \
    --userId '7oS83z1Xt0t4D6fV' \
    > test.out 2>&1
eval_tap $? 272 'GetUserOrder' test.out

#- 273 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'EelZctQLXsFQxmg1' \
    --userId 'B4HvVE1TDOfqS9TC' \
    --body '{"status": "INIT", "statusReason": "3qOwRNjDoE6dpeZJ"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateUserOrderStatus' test.out

#- 274 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SpjbwYylqbYVWb5p' \
    --userId 'Vo0LR4OMrUcSIG8e' \
    > test.out 2>&1
eval_tap $? 274 'FulfillUserOrder' test.out

#- 275 GetUserOrderGrant
eval_tap 0 275 'GetUserOrderGrant # SKIP deprecated' test.out

#- 276 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'YQS5ZY7XzJwsh6tH' \
    --userId 'SYxVjlKlXAkRPCIi' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrderHistories' test.out

#- 277 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'PROUJX2P2JnUXbSQ' \
    --userId 'iMxATEQMLv5crdwp' \
    --body '{"additionalData": {"cardSummary": "uKK9Mf5FcPcr2qp3"}, "authorisedTime": "1980-06-10T00:00:00Z", "chargebackReversedTime": "1988-10-03T00:00:00Z", "chargebackTime": "1985-09-13T00:00:00Z", "chargedTime": "1983-09-05T00:00:00Z", "createdTime": "1989-04-19T00:00:00Z", "currency": {"currencyCode": "R0rvcalOHltCsQTk", "currencySymbol": "FtSRwKw68fG78g8R", "currencyType": "VIRTUAL", "decimals": 31, "namespace": "xethHDX4hLA8UIHF"}, "customParameters": {"FBXIGi0yPBQHpx7g": {}, "HvNg2vVNU3a5Q3Ec": {}, "Lfg0bG5zcea77nBt": {}}, "extOrderNo": "mLlYcqq4AatoKMMd", "extTxId": "cfGYVRBD3c4dJZal", "extUserId": "MAaFRGcOjSEQnWmF", "issuedAt": "1979-05-19T00:00:00Z", "metadata": {"yevXrEi8izBxWSL9": "DrMYuyvtSXftrfqy", "YOyZZHT2YXILQBS7": "MQqm97ompjtonQ7H", "g8cThb5EDNdHeHxO": "SJ4rm7ZLaRr8swQv"}, "namespace": "8cN5ZnWOZ1EWODxP", "nonceStr": "0Jbgy8yQBDui5TNP", "paymentMethod": "EAPXYmmppZCg8hrh", "paymentMethodFee": 18, "paymentOrderNo": "wKcxEU2i3BmcQMiU", "paymentProvider": "ALIPAY", "paymentProviderFee": 9, "paymentStationUrl": "2hPnYNPsaWCoZl5c", "price": 92, "refundedTime": "1983-02-01T00:00:00Z", "salesTax": 61, "sandbox": true, "sku": "J4013invPb0ggxm7", "status": "CHARGEBACK", "statusReason": "ZmtAchk9uRXKOTM1", "subscriptionId": "6LJevaDXWWvuqmuY", "subtotalPrice": 67, "targetNamespace": "oLVW4Bp5su9FwKCX", "targetUserId": "izsCe2PCAJudJB6N", "tax": 50, "totalPrice": 38, "totalTax": 93, "txEndTime": "1974-05-07T00:00:00Z", "type": "rj7pLNyNhRlhe4RL", "userId": "xKkGytiSc91kPqI7", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 277 'ProcessUserOrderNotification' test.out

#- 278 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'pMYeyZc0N6XmfPry' \
    --userId 'piGOjfgP8MpCSNSj' \
    > test.out 2>&1
eval_tap $? 278 'DownloadUserOrderReceipt' test.out

#- 279 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sPYG7E1U92AMaqvp' \
    --body '{"currencyCode": "JoBEICANsJvxa217", "currencyNamespace": "vvU1V1WEzz4fRKaT", "customParameters": {"eEtFBjTnm71sfTNN": {}, "QQX4ysr8QKnBOAwB": {}, "cogFHwQI1sWc82x2": {}}, "description": "1YoptCYlhcGJ7wFO", "extOrderNo": "5e3w2uxVEVvd1WhA", "extUserId": "OHih2caTkx5UdnfW", "itemType": "LOOTBOX", "language": "dSK_ZnaH_ut", "metadata": {"TA1Bvi6KWG5M6uct": "JKC4KEsxRBbvkk0q", "2tUMnNzSdXx0Uveb": "672iuUJtSTo2FJJt", "QPCN354YHAXn0c02": "1I9uh1Yr2pg358Re"}, "notifyUrl": "aHNPWIeyuNctYsM6", "omitNotification": false, "platform": "9ReWxzNyuV34roKe", "price": 22, "recurringPaymentOrderNo": "RsDE0FIpDB3PykyN", "region": "RUQZ0eQDUmSoyYwr", "returnUrl": "ogshSCNgcOFWaMuh", "sandbox": true, "sku": "kjYAs0bDM7wDCLEQ", "subscriptionId": "ZCqEfId790DbPVd0", "title": "aW7E2OokibhrJFyZ"}' \
    > test.out 2>&1
eval_tap $? 279 'CreateUserPaymentOrder' test.out

#- 280 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WE63m1Q3ekZAwyHY' \
    --userId 'QWp1ITlni2CWxuM3' \
    --body '{"description": "fkF4l6GKdP7FI8aX"}' \
    > test.out 2>&1
eval_tap $? 280 'RefundUserPaymentOrder' test.out

#- 281 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '8007ULAfuSuXQd6I' \
    --body '{"code": "b5WxlQDCdFDEuoZg", "orderNo": "kvjc2Q4zvekuZQlS"}' \
    > test.out 2>&1
eval_tap $? 281 'ApplyUserRedemption' test.out

#- 282 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'WB0AxMNkSBCcDReC' \
    --body '{"meta": {"skpMHXTmalQGmaVq": {}, "QQxGExDsj8zKnr2O": {}, "NLvGvFIMxllLGDG4": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "mQwU3xlwMNxdEQh8", "namespace": "EPFfivC7YhOzY6OE"}, "entitlement": {"entitlementId": "5tw1lD9OF1AzgBKm"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "cepkvveOVSQYooqm", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "iZLV4sg9JRztu7Hn", "namespace": "724aE5MxjsUEXUsG"}, "entitlement": {"entitlementId": "AEo9wyOE6xuBDwPf"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "DDDrKL3pz8RXvXls", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 26, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "rRDq6XSoyWTpQ5Bo", "namespace": "LW8vReSupdOW7QIT"}, "entitlement": {"entitlementId": "BCwq6Gzr3FpjgljE"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "0nZSfnPXcuCM6qhW", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 32, "type": "ITEM"}], "source": "OTHER", "transactionId": "XqQVu9I9vnhcW0iQ"}' \
    > test.out 2>&1
eval_tap $? 282 'DoRevocation' test.out

#- 283 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '7El2XLE17VKyN8ep' \
    --body '{"gameSessionId": "cLbsVC6O8jd1P6OQ", "payload": {"PyUWn1AhNQHXon4R": {}, "1q7jTnCrrAkUBftH": {}, "HQ1lP9CBFLRQxL6M": {}}, "scid": "PA0P2cuiiRbSpMUy", "sessionTemplateName": "N8odH12ltdwiQAQs"}' \
    > test.out 2>&1
eval_tap $? 283 'RegisterXblSessions' test.out

#- 284 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '5XqBkZ0pBF1fHBhm' \
    --chargeStatus 'SETUP' \
    --itemId '35pc5AbMdVwLKpo8' \
    --limit '90' \
    --offset '87' \
    --sku 'pRM03jYFkbqR7S4c' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserSubscriptions' test.out

#- 285 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'v3rddgYVSTYhQlYI' \
    --excludeSystem 'true' \
    --limit '15' \
    --offset '19' \
    --subscriptionId 'y2nVXEnZIm4MRSWj' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionActivities' test.out

#- 286 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SjQ225BJXjgvRIwS' \
    --body '{"grantDays": 92, "itemId": "UMerzfALDH7VRNJp", "language": "hvYyZ11iSclu2kAN", "reason": "TagpnpRMXL4IOcwI", "region": "xi6CLGBRow20sYJf", "source": "8B6qfDbHfEeAPvv5"}' \
    > test.out 2>&1
eval_tap $? 286 'PlatformSubscribeSubscription' test.out

#- 287 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IBaPg25SVYJryEog' \
    --itemId '2fkHa1aE1U91H6A6' \
    > test.out 2>&1
eval_tap $? 287 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 288 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6GeWjzBaDuzrkMLX' \
    --userId 'AKfDhApRFe5Nojki' \
    > test.out 2>&1
eval_tap $? 288 'GetUserSubscription' test.out

#- 289 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fe2mjrC0OK47mrv0' \
    --userId 'TKntTIePe3PlCywl' \
    > test.out 2>&1
eval_tap $? 289 'DeleteUserSubscription' test.out

#- 290 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'G64yX7IojGA5OK5T' \
    --userId 'VceaxWIu227B83rM' \
    --force 'false' \
    --body '{"immediate": true, "reason": "QobLQ8qFW4Ukm4Nn"}' \
    > test.out 2>&1
eval_tap $? 290 'CancelSubscription' test.out

#- 291 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PBzOHG9sfIq0trsN' \
    --userId 'fkTOfA8LsdmFhl5T' \
    --body '{"grantDays": 95, "reason": "nkBWNXGCvifJ35Kd"}' \
    > test.out 2>&1
eval_tap $? 291 'GrantDaysToSubscription' test.out

#- 292 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vwjvnDrHHeX88nwP' \
    --userId '1hMfdrQGEtCvzobe' \
    --excludeFree 'true' \
    --limit '59' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionBillingHistories' test.out

#- 293 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dkGarXAW7ML08KwW' \
    --userId '5NJ6tFtiOUWlnRNK' \
    --body '{"additionalData": {"cardSummary": "IMBw7aqiqLVKh0Ig"}, "authorisedTime": "1997-08-22T00:00:00Z", "chargebackReversedTime": "1988-02-17T00:00:00Z", "chargebackTime": "1971-01-18T00:00:00Z", "chargedTime": "1983-04-06T00:00:00Z", "createdTime": "1980-06-01T00:00:00Z", "currency": {"currencyCode": "wrZPu1FDG0TWlEcX", "currencySymbol": "gScFrjFW48esmolF", "currencyType": "VIRTUAL", "decimals": 49, "namespace": "Ell88Qb1spbyw9uh"}, "customParameters": {"LMKS0tj6BHQouwGX": {}, "qhaRrRek5VgS1OTz": {}, "Yc7i0HPVwNFJlKGg": {}}, "extOrderNo": "NfXdISU2hOEWYdge", "extTxId": "5bjU50Uzze1r4RT9", "extUserId": "mV5i8Z7vxRkaUY0y", "issuedAt": "1999-05-14T00:00:00Z", "metadata": {"ysngfnEzF1LOzRmj": "uVSQ4pKfF6NX1wre", "SvbeX69wCMuf0ma8": "5ZYjr495JTIDNYUL", "1gXsEWMIEf0OS4E8": "P27c9yEv4uxFQjgP"}, "namespace": "sp1DZlpAsG7zXOCX", "nonceStr": "5SC21uyc55T3GyjW", "paymentMethod": "LjWN8ShAhLoVF3Oi", "paymentMethodFee": 81, "paymentOrderNo": "0wxVTiXDRWou0XzZ", "paymentProvider": "PAYPAL", "paymentProviderFee": 6, "paymentStationUrl": "fcHTHKzoAhgVIk8b", "price": 90, "refundedTime": "1984-01-03T00:00:00Z", "salesTax": 59, "sandbox": false, "sku": "XhXqBrFjitlCznKO", "status": "REFUNDED", "statusReason": "gtblC6x8DUrhwrz5", "subscriptionId": "0nBWwIdH1LWeIGKR", "subtotalPrice": 97, "targetNamespace": "IurUr1b380bt3cft", "targetUserId": "GluLJyiVzEwThQVp", "tax": 47, "totalPrice": 49, "totalTax": 77, "txEndTime": "1994-04-05T00:00:00Z", "type": "cvP9sCdaqClkxV9D", "userId": "vVinexikFxuaspfT", "vat": 2}' \
    > test.out 2>&1
eval_tap $? 293 'ProcessUserSubscriptionNotification' test.out

#- 294 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'lsvXwp4094b5ByLY' \
    --namespace $AB_NAMESPACE \
    --userId 'hLUNJ32I8EhAlhzC' \
    --body '{"count": 19, "orderNo": "k1ETafNsBOd9XwLz"}' \
    > test.out 2>&1
eval_tap $? 294 'AcquireUserTicket' test.out

#- 295 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'UrusXS7QNj9i77a1' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserCurrencyWallets' test.out

#- 296 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '0uUG7ubNKUtX1fB9' \
    --namespace $AB_NAMESPACE \
    --userId '3eSPt7G7OMiwizK0' \
    --body '{"allowOverdraft": true, "amount": 87, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"nrpbge5k9dEmROhY": {}, "To816ZlpXlpSqnOa": {}, "6hYu204LpkOmmcow": {}}, "reason": "ehizV5odua2lmvk3"}' \
    > test.out 2>&1
eval_tap $? 296 'DebitUserWalletByCurrencyCode' test.out

#- 297 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'qBzfVh3abPVn7Gsc' \
    --namespace $AB_NAMESPACE \
    --userId 'pB97uBMNfeVu4W3G' \
    --limit '12' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 297 'ListUserCurrencyTransactions' test.out

#- 298 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'hfnYrnGyULKmWLEP' \
    --namespace $AB_NAMESPACE \
    --userId '2Ctiyx1OIcNjcs4W' \
    --request '{"amount": 57, "debitBalanceSource": "OTHER", "metadata": {"bA9dxeA4jEwQ7qg3": {}, "CN2OREoYTxE8zGCz": {}, "8g2TL79yDFJdVFTQ": {}}, "reason": "C4gCy21N1LhXyu2K", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 298 'CheckBalance' test.out

#- 299 CheckWallet
eval_tap 0 299 'CheckWallet # SKIP deprecated' test.out

#- 300 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '3up3qJLhmBQ8Lfj8' \
    --namespace $AB_NAMESPACE \
    --userId '8lImhUSCG2spqrrY' \
    --body '{"amount": 99, "expireAt": "1989-01-14T00:00:00Z", "metadata": {"aRLtRjdLi1ZruRtS": {}, "AzyuB5nbtADVTB2w": {}, "8rXTqDeKh9dRRvsK": {}}, "origin": "Nintendo", "reason": "5S75zTLobGykLwnk", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 300 'CreditUserWallet' test.out

#- 301 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'yFRRRJs4tBuqlUCf' \
    --namespace $AB_NAMESPACE \
    --userId 'dhGdaI8rF2soCQCH' \
    --request '{"amount": 54, "debitBalanceSource": "PAYMENT", "metadata": {"Eu33bM18nSUBDBr8": {}, "vYtmrzSdzAA8WsC8": {}, "UdzIgOiRhxyQBQLr": {}}, "reason": "iVrbpCYAKk1jXkbk", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 301 'DebitByWalletPlatform' test.out

#- 302 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Cd8uBaOLqqYkNuIP' \
    --namespace $AB_NAMESPACE \
    --userId 'dMFs0J4IEVFh2Weo' \
    --body '{"amount": 41, "metadata": {"0c3nXZUcvyEqPoKz": {}, "PcLxRBtidDFYAVwe": {}, "AypcK0iIKfIXnjDi": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 302 'PayWithUserWallet' test.out

#- 303 GetUserWallet
eval_tap 0 303 'GetUserWallet # SKIP deprecated' test.out

#- 304 DebitUserWallet
eval_tap 0 304 'DebitUserWallet # SKIP deprecated' test.out

#- 305 DisableUserWallet
eval_tap 0 305 'DisableUserWallet # SKIP deprecated' test.out

#- 306 EnableUserWallet
eval_tap 0 306 'EnableUserWallet # SKIP deprecated' test.out

#- 307 ListUserWalletTransactions
eval_tap 0 307 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 308 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'aKVXVqIBSRg0EDzj' \
    > test.out 2>&1
eval_tap $? 308 'ListViews' test.out

#- 309 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'fvCOdd79PiX5J60V' \
    --body '{"displayOrder": 100, "localizations": {"bl6ZEyFDoMZz1nPK": {"description": "a1kz3XOactGUGpFq", "localExt": {"d1XDILcn4b26MYUb": {}, "ph9K2njLbNxChVyY": {}, "TLTwQlPPb8plq8ej": {}}, "longDescription": "7Yx4VV6P5q9M4blB", "title": "0bV58EtjanuXRWFf"}, "an8Sf0QpgOaP7wZ5": {"description": "vquQ0Ppt6U49DZ9L", "localExt": {"w9fo0DrdAmrIwsT3": {}, "2GpeOIk0hM95JAg6": {}, "CtIwGe383nCtaZt8": {}}, "longDescription": "Fr0tDRDtcACOgNn1", "title": "S7eCKuzUW0eE7aE6"}, "z8ffuuUEjNDF2ZrT": {"description": "am5r3RbbO6rXqByt", "localExt": {"sXDc4gX2Cc05D3Li": {}, "wMlw1Gjbnc1096wM": {}, "8peXpFhJwrW9jb1C": {}}, "longDescription": "eQRHRuI6Z2AeOmaP", "title": "JjUkqN26NRBpU04T"}}, "name": "8dtUv1EB0WmrJAdd"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateView' test.out

#- 310 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'UdKrAZJWIHjQVdts' \
    --storeId 'bKl09GfUErOjWoSI' \
    > test.out 2>&1
eval_tap $? 310 'GetView' test.out

#- 311 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'yAm1RD2KuJ5MJHCB' \
    --storeId '9NackM8SbSeI6JPS' \
    --body '{"displayOrder": 5, "localizations": {"8ojS9dGU1qoSbtiy": {"description": "tCJg3UBMH5CGL7hC", "localExt": {"u1vqsZeibofNRAq6": {}, "w1hhwKoYdOuzchVx": {}, "sIPfEQcsF4EERspF": {}}, "longDescription": "XJH48UWB5yh8CGrN", "title": "7tNrWKtMnDIjQueD"}, "lhbcyxxO1qQqGqxI": {"description": "zXUkwF2m1rVK9ERj", "localExt": {"HtUNNJpFJkRXIIDD": {}, "dp8XyhIINc57ldpy": {}, "Qw6fqmk3aLYPuahG": {}}, "longDescription": "6IVdgdF2lBxomk4V", "title": "3bnZyWfyD4fId5nr"}, "eggBOcJSbnlZA2n8": {"description": "cZEZFmvJtUHoRjZQ", "localExt": {"TRiT0GKjKAQ57o25": {}, "t2qRu9taRtMLEM5i": {}, "6Jh5tEHIilXbOQ9k": {}}, "longDescription": "jYuwS91SU4zLQqAC", "title": "5ydA88TNu1QF9rtT"}}, "name": "wzzG4hJtfDWo5eon"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateView' test.out

#- 312 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'wj1tBB9L3BAOBVOM' \
    --storeId 'cHZTVn6d2NMLXs8G' \
    > test.out 2>&1
eval_tap $? 312 'DeleteView' test.out

#- 313 QueryWallets
eval_tap 0 313 'QueryWallets # SKIP deprecated' test.out

#- 314 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 32, "expireAt": "1978-04-18T00:00:00Z", "metadata": {"40NVwRnaI4634xOJ": {}, "BjRr55ZbxcglOk6Y": {}, "QMTyjUhvGwhcIqJr": {}}, "origin": "Steam", "reason": "V2RDyyvwv1LzqmCp", "source": "OTHER"}, "currencyCode": "1T5gNbwxNuGDh29q", "userIds": ["DUkcQqupCdZLAPZO", "SvxBdLLmyAvW4wNk", "m8U9ffSghogvsn1e"]}, {"creditRequest": {"amount": 74, "expireAt": "1982-11-14T00:00:00Z", "metadata": {"H6jGRBuzTsMXvYhy": {}, "PW29Wj7Aqin2bdG6": {}, "vcfpxqJ0IEGSFBHA": {}}, "origin": "Nintendo", "reason": "lQJGgJRQzTwP3eKs", "source": "SELL_BACK"}, "currencyCode": "vnNZfPk6xQuy36i2", "userIds": ["KAtdbdK9Bl6vxe4x", "4JIKCysg2GSEyy4H", "pn280t5jHgcxKZ1l"]}, {"creditRequest": {"amount": 77, "expireAt": "1978-09-08T00:00:00Z", "metadata": {"O7FHHq24bbQhD4L3": {}, "YDYeeJDamMK4BsVR": {}, "SWA13tsEzOSFqUah": {}}, "origin": "Other", "reason": "B1H0pRowf0ze38XM", "source": "OTHER"}, "currencyCode": "jcAntcBv0oNqR4vV", "userIds": ["LFmzlV0beHbtYQgD", "rrFQhNtQyPMMd7WX", "JnhR6JAd9Dn1jpMe"]}]' \
    > test.out 2>&1
eval_tap $? 314 'BulkCredit' test.out

#- 315 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "PIkBAsEBPn8iZg0M", "request": {"allowOverdraft": true, "amount": 39, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"P4sbIjAgEiA2BcFj": {}, "oEo5uD99jDQVUnee": {}, "PdFg0hCQevgANUeV": {}}, "reason": "jAOKoOGDckgrk3ER"}, "userIds": ["MpXX1jtf3UCR5Ue1", "MfPCM3woSZ1zFUmV", "JDahd2KhuVKceFQ5"]}, {"currencyCode": "l9OMpKZ3AUpefVBa", "request": {"allowOverdraft": true, "amount": 12, "balanceOrigin": "Nintendo", "balanceSource": "EXPIRATION", "metadata": {"cOyFqZUVAlZPzinB": {}, "9noDYurGo2do0kKq": {}, "PavWu7zyGif1vkPN": {}}, "reason": "48GTQn3XtZjZqjkG"}, "userIds": ["DJxpR7PLYAOQd4h0", "98xTOUFcDcb7WIPb", "JkqESFpNBXwgRmWS"]}, {"currencyCode": "2zOHS3fyXz3ygqlW", "request": {"allowOverdraft": false, "amount": 49, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"uffMY8JZHYExwq6t": {}, "5wAqK5BP44C4ScfK": {}, "HlNyDaW1dEFb08E0": {}}, "reason": "0oUoVkyrTXML5IvZ"}, "userIds": ["GwNUCI8W7xQeaISc", "w5fRTpoWbBCgF7dL", "3P7BXIf4lSCXezAb"]}]' \
    > test.out 2>&1
eval_tap $? 315 'BulkDebit' test.out

#- 316 GetWallet
eval_tap 0 316 'GetWallet # SKIP deprecated' test.out

#- 317 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'A6wU3Hyx6JpBl1UA' \
    --end 'Y8wRvmBE17Xr5yqb' \
    --start 'C6yzDVePiMhKkgiT' \
    > test.out 2>&1
eval_tap $? 317 'SyncOrders' test.out

#- 318 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["H0ha0KB3MwMRjSpw", "NXsFpCgAayoaacEc", "ut0IxfUsSAnOY4sG"], "apiKey": "IB95GRtcX4DjkssP", "authoriseAsCapture": false, "blockedPaymentMethods": ["tr2QujaTXS0JddAz", "voK3V6uEBwdgm8JR", "mxC3vJZAmdFxhhUb"], "clientKey": "Ry2K30BTsMWJmxfS", "dropInSettings": "TeBo7if1knMWy5Qh", "liveEndpointUrlPrefix": "Mc78HdVyMR2AfsXw", "merchantAccount": "DxEfKbvP9r8QigHt", "notificationHmacKey": "4pFbAqYiRCQS8fHl", "notificationPassword": "aAhHdLCvxydC6fhZ", "notificationUsername": "aTvVBWjwN4Mb6dsy", "returnUrl": "k0lK82bhHso7Z22W", "settings": "FHDgLr9iifOIjec8"}' \
    > test.out 2>&1
eval_tap $? 318 'TestAdyenConfig' test.out

#- 319 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "43sWj5lxMYLeZQ8O", "privateKey": "ERMc6M8OFgiZix6f", "publicKey": "vjldON78xJnTUN4P", "returnUrl": "g0zOpuYMy2yUiJGR"}' \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfig' test.out

#- 320 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "vhRm7Ytv7XlnD0cj", "secretKey": "6gIsFVZWFBx1KaIi"}' \
    > test.out 2>&1
eval_tap $? 320 'TestCheckoutConfig' test.out

#- 321 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'F1nd7Vp4cFrtw1UV' \
    --region 'jahaR5cHnccVJ6CL' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentMerchantConfig' test.out

#- 322 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "8eFw7Xi6rVlwheay", "clientSecret": "YdH5QZezNhJlRpAs", "returnUrl": "GIznnJcz12RQfkbc", "webHookId": "HnfuY4NtsdILtGvP"}' \
    > test.out 2>&1
eval_tap $? 322 'TestPayPalConfig' test.out

#- 323 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["4gyBK4PgI8x0hVYd", "gnYyvTa7Vy535xd7", "eJD6IeG7TvAZUZ49"], "publishableKey": "5TxAXNYQsJTmWNM9", "secretKey": "jwf1NB7GR6Cdm4SL", "webhookSecret": "qecKhgjpgheaK53D"}' \
    > test.out 2>&1
eval_tap $? 323 'TestStripeConfig' test.out

#- 324 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "pkwH3BKjqWTD7z8b", "key": "YVplOuCHfIEH7Qlg", "mchid": "nxYbpnytRpDaW6X7", "returnUrl": "T3ytziHQpiqAWl47"}' \
    > test.out 2>&1
eval_tap $? 324 'TestWxPayConfig' test.out

#- 325 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "WTZw1Di5MSqELwy9", "flowCompletionUrl": "YsAs2AIAnM41rsPC", "merchantId": 82, "projectId": 0, "projectSecretKey": "tbuxKlcShQGfHUpa"}' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfig' test.out

#- 326 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'wx2avoli9xwp2tKc' \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentMerchantConfig' test.out

#- 327 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'B2ERk0qFnKEai8kd' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["nZvBwCrUFvXee8hr", "o0Bq3QWdSYdxv6rK", "l2Uj8mLR0uWSXubj"], "apiKey": "so2vFcUT5qmqmXkY", "authoriseAsCapture": false, "blockedPaymentMethods": ["CPU2GUPE6oD4DRIm", "EbkkjjmDllCzX6f8", "Sho8RZgaetY1mGnR"], "clientKey": "NO8e2gt5UVPwUc0C", "dropInSettings": "12r3qAL28An1lHhx", "liveEndpointUrlPrefix": "aaQG3DJ5Ftk1cMHx", "merchantAccount": "pOSgvxyYdMk1nHfl", "notificationHmacKey": "wEvApQxJu2GFJH5W", "notificationPassword": "KWhXm7sMwCvVUlP0", "notificationUsername": "DAQRlzX0DHu4Zoe1", "returnUrl": "usgvwO7fMtl4un4f", "settings": "ZWtZPJ1ytbEwPx0U"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAdyenConfig' test.out

#- 328 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'AoOu76doXFWzlHC2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAdyenConfigById' test.out

#- 329 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'FG98s0PWyxg3GYJW' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "IgKjOTAngHYCOmo7", "privateKey": "uKGb77A4QyoHHW8P", "publicKey": "XxQP8hUfpzl4O70b", "returnUrl": "ECgAGW19F0LsRfCZ"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateAliPayConfig' test.out

#- 330 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'AwQtGskE3nhqI77S' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 330 'TestAliPayConfigById' test.out

#- 331 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'kzLL181RIYS20JFu' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "NwbN0XKPXjv9hKwj", "secretKey": "iNxB7zIKVVX6qBjP"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdateCheckoutConfig' test.out

#- 332 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'F2adz0cRYU8mhDbt' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 332 'TestCheckoutConfigById' test.out

#- 333 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'RSIL6d27gfJtJag6' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "hVYLyKdwi6M2HHsC", "clientSecret": "EHdD3DscNyv1sLWO", "returnUrl": "y6IW7iOIqihA4xjx", "webHookId": "Ip17Joz4KmwmIPhc"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdatePayPalConfig' test.out

#- 334 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'vdCpvEu0S5WrfM7X' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestPayPalConfigById' test.out

#- 335 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'V2ZktSv7xzKqDIXa' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["wmUvy0y0HZYN0Ij2", "J8Me8EgAkySiIblj", "xAiIfIRYRlO984BV"], "publishableKey": "wahrlc88OvSHoTXo", "secretKey": "3dcU9rbFZ0FPOeCi", "webhookSecret": "1vjcZaEOMnBqTHjo"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateStripeConfig' test.out

#- 336 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'hlHNLAK3ZKDkEidr' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestStripeConfigById' test.out

#- 337 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'kmHzmqg71mpRW9re' \
    --validate 'false' \
    --body '{"appId": "ElYSVRO3ozSeMqt4", "key": "sIGSEgZAwN90ldHK", "mchid": "lLz6e4MSIrc6QeC4", "returnUrl": "yn9qA3qJAdgeMaSm"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateWxPayConfig' test.out

#- 338 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '6NDs1mfsd7IyKZCX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 338 'UpdateWxPayConfigCert' test.out

#- 339 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'EvhsCZlb3FYhBopP' \
    > test.out 2>&1
eval_tap $? 339 'TestWxPayConfigById' test.out

#- 340 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'QB4tfHdg0ggR0sCl' \
    --validate 'true' \
    --body '{"apiKey": "CVvh8XQKKuu19Y87", "flowCompletionUrl": "xg6g0EUHOpWCRZzm", "merchantId": 16, "projectId": 43, "projectSecretKey": "k0EwjDKpMQ6PG35R"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaConfig' test.out

#- 341 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Q3Ka8pogNWGMjteV' \
    > test.out 2>&1
eval_tap $? 341 'TestXsollaConfigById' test.out

#- 342 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'lqysADWge53lU3em' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateXsollaUIConfig' test.out

#- 343 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '6' \
    --namespace 'q5Nya8LoMXRVB8Se' \
    --offset '74' \
    --region 'VX0Oa3dSfB0y6NZt' \
    > test.out 2>&1
eval_tap $? 343 'QueryPaymentProviderConfig' test.out

#- 344 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "jbIQeOrcz3J6NCXy", "region": "QZQzPpMMYnkmee3l", "sandboxTaxJarApiToken": "8h6t3Ra6cQSt7GY8", "specials": ["WALLET", "CHECKOUT", "WXPAY"], "taxJarApiToken": "5SNvRYwkUVwQf0Tc", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 344 'CreatePaymentProviderConfig' test.out

#- 345 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetAggregatePaymentProviders' test.out

#- 346 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'uawOHS6Myg8qB3rf' \
    --region 'L9XYzOxnIibx3C3N' \
    > test.out 2>&1
eval_tap $? 346 'DebugMatchedPaymentProviderConfig' test.out

#- 347 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 347 'GetSpecialPaymentProviders' test.out

#- 348 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'zdOu4tm3Yi4K9g7z' \
    --body '{"aggregate": "ADYEN", "namespace": "QdfxpqZQEUsm76Xj", "region": "9TkiGBsIlIt76xe6", "sandboxTaxJarApiToken": "4f1MhTcf5P9dsYqk", "specials": ["WALLET", "WALLET", "STRIPE"], "taxJarApiToken": "4arjRptU7TarVMUa", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 348 'UpdatePaymentProviderConfig' test.out

#- 349 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ttS2egUZuxKrBKm7' \
    > test.out 2>&1
eval_tap $? 349 'DeletePaymentProviderConfig' test.out

#- 350 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxConfig' test.out

#- 351 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "1ATjFScZA18H7yA2", "taxJarApiToken": "Gt812hP3TL58wRkz", "taxJarEnabled": false, "taxJarProductCodesMapping": {"BCKjPwpxr6t5C3q3": "4UTwGW80J4GGo6Ui", "ELOqzgUSJoQ7f3Z3": "atoXTao58fBvnMXR", "Sd6K4yaISKdrRnjR": "clg47JTbJMRrOTah"}}' \
    > test.out 2>&1
eval_tap $? 351 'UpdatePaymentTaxConfig' test.out

#- 352 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'c9ImhlCVT53fMb6C' \
    --end 'NQELTxQkTKduv40I' \
    --start '8bq15Qq0b6Wj4dZL' \
    > test.out 2>&1
eval_tap $? 352 'SyncPaymentOrders' test.out

#- 353 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'fOGIHivlQcaT4uTc' \
    --storeId '8z9022dF4G1stK0q' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetRootCategories' test.out

#- 354 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'sTQTBba9Ke36WUFY' \
    --storeId '9LtUjALIdpSMBqbc' \
    > test.out 2>&1
eval_tap $? 354 'DownloadCategories' test.out

#- 355 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'IucI5XmO5tPi1Wa1' \
    --namespace $AB_NAMESPACE \
    --language 'WHCzBcbiupS4Hk4D' \
    --storeId '4jO5xuqfhy1bJjVs' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetCategory' test.out

#- 356 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '9gaLShO5yTzVTvX5' \
    --namespace $AB_NAMESPACE \
    --language 'fQQkVFkOrpzNJ7Lm' \
    --storeId '3WoqbW1bM0JdblSx' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetChildCategories' test.out

#- 357 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '4KrCMKR3CKX45OQP' \
    --namespace $AB_NAMESPACE \
    --language 'FuJ3TdAE9WFHIu9U' \
    --storeId 'HGqWJpSFlhTAtaBo' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetDescendantCategories' test.out

#- 358 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 358 'PublicListCurrencies' test.out

#- 359 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 359 'GeDLCDurableRewardShortMap' test.out

#- 360 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 360 'GetIAPItemMapping' test.out

#- 361 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'ra1lt7SInVNSG995' \
    --region 'zpUP0oeWGHjaef7E' \
    --storeId 'Ue86GJepONnlCwUc' \
    --appId 'hkBFmU49J6RToWAg' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemByAppId' test.out

#- 362 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'KKHghE7Na2Ylg76Y' \
    --categoryPath '2FaF8pwKp2yPGKMV' \
    --features 'pubN6DbkqPfUKdop' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'PNIITZMXiEhgKQDq' \
    --limit '7' \
    --offset '66' \
    --region 'RQC916xesV0msWzL' \
    --sortBy '["updatedAt:desc", "name:desc", "displayOrder:desc"]' \
    --storeId '1V5Pyd7Qbu8e28h5' \
    --tags 'O2NsIh5Ur3xHuos6' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryItems' test.out

#- 363 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '85cFnzcCwDIED7yQ' \
    --region 'HqFY2wyZEjeh5Yat' \
    --storeId 'i97CHLTWa85NRmCp' \
    --sku 'HdWMH0jDngTx96YV' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItemBySku' test.out

#- 364 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'xs6cL66ltqdRmG1t' \
    --storeId 'un2aoCOSm4dVBxVX' \
    --itemIds 'xMdWDiuWNW7mVK6T' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetEstimatedPrice' test.out

#- 365 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'yPpX3QLLPyIcox5j' \
    --region 'idS8mXgQE6YHZ8wD' \
    --storeId 'dHkoC3MRbUjSqwqM' \
    --itemIds 'I2ODpwOFeUQO7sfr' \
    > test.out 2>&1
eval_tap $? 365 'PublicBulkGetItems' test.out

#- 366 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["0RWGTbS82BvO8w9H", "ojuhQpxeqRL6bjGW", "MAJpXHDp3v58w3y5"]}' \
    > test.out 2>&1
eval_tap $? 366 'PublicValidateItemPurchaseCondition' test.out

#- 367 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'LOOTBOX' \
    --limit '1' \
    --offset '8' \
    --region 'BRwy3s3CHv3yYGr6' \
    --storeId 'gLdA1g8UF2DLQVoO' \
    --keyword 'nLQvxxNtJDX2tYjV' \
    --language 'OaswqGveu5ICkdGv' \
    > test.out 2>&1
eval_tap $? 367 'PublicSearchItems' test.out

#- 368 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'zXCSBVYVWWnwR0na' \
    --namespace $AB_NAMESPACE \
    --language 'JtnVWdUh339umx8C' \
    --region 'eqsuwwIjv1Y368Pb' \
    --storeId 'NEdNwV0osr3RMsmD' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetApp' test.out

#- 369 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'zC95pL1zFRboUzeo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemDynamicData' test.out

#- 370 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '5D0jzMsncexwTpui' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'tay7YFdKmAVZij1w' \
    --populateBundle 'false' \
    --region 'jk4T8Pcmj7OZAx6l' \
    --storeId 'ZXaAepTd7RutFJVp' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetItem' test.out

#- 371 GetPaymentCustomization
eval_tap 0 371 'GetPaymentCustomization # SKIP deprecated' test.out

#- 372 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "wHYyGIPjb0KYiySc", "paymentProvider": "CHECKOUT", "returnUrl": "rW7ypNeiftWtKVtm", "ui": "h0waIx4Eh5TJU0vH", "zipCode": "qmKKeOV0oy7ofGTB"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetPaymentUrl' test.out

#- 373 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GRhzRjGeurp5G975' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentMethods' test.out

#- 374 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aO2EEePNT6daEHNp' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUnpaidPaymentOrder' test.out

#- 375 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0CVcYvodWMd7MinH' \
    --paymentProvider 'WALLET' \
    --zipCode '7kHkxojr1rQrCNE2' \
    --body '{"token": "nrQMrS1Gb7pJfkzf"}' \
    > test.out 2>&1
eval_tap $? 375 'Pay' test.out

#- 376 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'i9KNFRaNHhQbAi8g' \
    > test.out 2>&1
eval_tap $? 376 'PublicCheckPaymentOrderPaidStatus' test.out

#- 377 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'yUDwW7s3i4roC28C' \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentPublicConfig' test.out

#- 378 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'KC0PgCQZNTF0SrJk' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetQRCode' test.out

#- 379 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '4PtNMiVQBlQzJQpn' \
    --foreinginvoice 'jsbRJyVted6Ecb6G' \
    --invoiceId 'yJLKIcDMtqPaPk8I' \
    --payload 'gAgPafetB62UEt9e' \
    --redirectResult 'VrJ7UvCqdjH48Uue' \
    --resultCode 'ohb1icu4jTxsxFwg' \
    --sessionId 'DrqZzp6NrerU8RWy' \
    --status 'mu1SWY1B1QXnMl9I' \
    --token '6QpmBAifJdZvX0g9' \
    --type 'HBpcsdfjLHmYFZUp' \
    --userId 'wac9x6tNw43Eeb42' \
    --orderNo 'kHXvIQsYxkfXSBYE' \
    --paymentOrderNo 'cGRBKbGEaywNjTF3' \
    --paymentProvider 'PAYPAL' \
    --returnUrl '7GsOEVS0o5i5QVkd' \
    > test.out 2>&1
eval_tap $? 379 'PublicNormalizePaymentReturnUrl' test.out

#- 380 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'mFWUHhH88xzgrjVi' \
    --paymentOrderNo 'lFv0nrQoLLywP0DM' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 380 'GetPaymentTaxValue' test.out

#- 381 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'QvFJmCVi5ATEMDJR' \
    > test.out 2>&1
eval_tap $? 381 'GetRewardByCode' test.out

#- 382 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'nrJlCQQA1VTGdmbs' \
    --limit '18' \
    --offset '3' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 382 'QueryRewards1' test.out

#- 383 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'M8SR79s6KY7FQ9wg' \
    > test.out 2>&1
eval_tap $? 383 'GetReward1' test.out

#- 384 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicListStores' test.out

#- 385 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["XMnFEanwkNuyrti5", "FWve4idLSVYBRU1w", "9sUWUh7Ze30UTgNk"]' \
    --itemIds '["kZJu72dvXftldX2U", "2RyeNpU9dzUsfal5", "PY5ZrcBFaNXnw7DL"]' \
    --skus '["m22EiIO8GWpYZPlq", "bXor6SGVjQqks5sx", "bCwUNT1EaAalS4aw"]' \
    > test.out 2>&1
eval_tap $? 385 'PublicExistsAnyMyActiveEntitlement' test.out

#- 386 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'iouAReQZkglDuPul' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 387 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'XY555ZU2CnHtKKnE' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 388 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'DVpNZSq6EHlUKaYP' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 389 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["U2xgxxp44wARe0Tv", "Ud5KmJFMDzG9sarr", "YwHR7Vq6pqJfyFEZ"]' \
    --itemIds '["9AqjdcCPNXLdJewu", "HopXyCVgasx9Vh3V", "i8ssKFBXx1grCUkr"]' \
    --skus '["mS7YoES5uISotwTM", "o6WauXR0b8HkOrA9", "A7M33sTCwHGdFjRW"]' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetEntitlementOwnershipToken' test.out

#- 390 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "9MyeR4x1Tw5xUwbe", "language": "yB_HpoW_WB", "region": "DLcebguq7GshBhDN"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncTwitchDropsEntitlement' test.out

#- 391 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '3plOpBSBJcKJKo09' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyWallet' test.out

#- 392 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '7HJXpw4ZmC4uErj5' \
    --body '{"epicGamesJwtToken": "IXv6T0gq2j9aoaVN"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncEpicGameDLC' test.out

#- 393 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '2piV3LcdpnYNBnCG' \
    > test.out 2>&1
eval_tap $? 393 'SyncOculusDLC' test.out

#- 394 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'wmy7QwBlH1nwZMQo' \
    --body '{"serviceLabel": 7}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSyncPsnDlcInventory' test.out

#- 395 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Bt41ln8MOjuiDrXY' \
    --body '{"serviceLabels": [48, 44, 36]}' \
    > test.out 2>&1
eval_tap $? 395 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 396 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '2qt43HhrbxpmkVaA' \
    --body '{"appId": "uoVYWjjVs4YebwIT", "steamId": "K1xeIiFI0AEuw9Np"}' \
    > test.out 2>&1
eval_tap $? 396 'SyncSteamDLC' test.out

#- 397 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dULvjV7gcdYWXoql' \
    --body '{"xstsToken": "gWZT4KbIEyfEYsSe"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncXboxDLC' test.out

#- 398 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JYn3zJv9KlmlJKWM' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'QWr2MZUJrMYTermw' \
    --features '["v3PYPvedfAHAvYcg", "wGPYxAVAQwtN2HHK", "MsDpFtjfGhYcyP36"]' \
    --itemId '["73cQTWNt5lImHbUS", "w8YaLWrVSU7jwVyP", "Xz1eHO3cLF7rwtni"]' \
    --limit '99' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlements' test.out

#- 399 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'U006WSrtf68oE6HB' \
    --appId 'kyZOap9czmNWZ7IF' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserAppEntitlementByAppId' test.out

#- 400 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'KUGvZ8TELQjtqSKF' \
    --limit '39' \
    --offset '31' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 400 'PublicQueryUserEntitlementsByAppType' test.out

#- 401 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'qUHAc4Vu2lBmVFPt' \
    --availablePlatformOnly 'false' \
    --ids '["si57DMwhDFTdRzrN", "QiFtN4ZZUx2yrRiS", "6cORnVlzV734m38z"]' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlementsByIds' test.out

#- 402 PublicGetUserEntitlementByItemId
eval_tap 0 402 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 403 PublicGetUserEntitlementBySku
eval_tap 0 403 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 404 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'UfBdSDhApgfeQveF' \
    --endDate 'Vcb7S1jeVTA2jiPU' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '11' \
    --offset '36' \
    --startDate 'fyfpFYtnZkjE7bii' \
    > test.out 2>&1
eval_tap $? 404 'PublicUserEntitlementHistory' test.out

#- 405 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JAOsVY52P8qbASAy' \
    --appIds '["t2nwRvhyfhbB04OX", "akM5nIIHV6icMVXi", "hmhqZ0ecmaxFNjYp"]' \
    --itemIds '["NdxSC0esY8RNidAy", "yyqGz3dPJsNqhxUW", "160t5gE8wTAeOmS0"]' \
    --skus '["AdPY5pbSI2VeaDqD", "4XomOkvFpB3Pk8Wn", "uYz9toxD7HBhKVdz"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicExistsAnyUserActiveEntitlement' test.out

#- 406 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Gn2PgQrcnb08pGrz' \
    --appId 'zboNgabsjeoFSMoP' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 407 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4wjpu69vHAA17dFA' \
    --entitlementClazz 'APP' \
    --itemId 'm9iXHD8DyuhoOcaC' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 408 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'h2s7aLyN6elR0o8y' \
    --ids '["7c4rhvCjYJ1aNzQa", "LIlFpcEIYXU7z9Rn", "Q68bE6Lcl186Xxhq"]' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 409 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'cQyxN4rXl4nwFSaT' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'gRVH8MGdGUCx6Gd3' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 410 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Hug9wUh2aWSlgjkf' \
    --namespace $AB_NAMESPACE \
    --userId 'vIbEuPcyGsrUsDki' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserEntitlement' test.out

#- 411 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '4Ms2bdbZyckzaRpQ' \
    --namespace $AB_NAMESPACE \
    --userId '4fLmqtHanUf1aVS1' \
    --body '{"options": ["O7UtfHt2sPqiFTlp", "Cesp2kl24hsqN1I2", "fun3Q8FGGVwzWl0w"], "requestId": "gmC8EzVNiqXBDUSe", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 411 'PublicConsumeUserEntitlement' test.out

#- 412 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'i323ugEbE1X0ytU9' \
    --namespace $AB_NAMESPACE \
    --userId '95AZ4pNx8uMfnID6' \
    --body '{"requestId": "ncSWihTzPJt5fQZP", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 412 'PublicSellUserEntitlement' test.out

#- 413 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'mXf4aAbXrTLz5RKm' \
    --namespace $AB_NAMESPACE \
    --userId 'ZoHlPrisk2XSeypG' \
    --body '{"useCount": 4}' \
    > test.out 2>&1
eval_tap $? 413 'PublicSplitUserEntitlement' test.out

#- 414 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'jfU6OOHqz1hSblDB' \
    --namespace $AB_NAMESPACE \
    --userId 'f25D6sGsTKjhllhY' \
    --body '{"entitlementId": "oboTh2YYWiNQcyiJ", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 414 'PublicTransferUserEntitlement' test.out

#- 415 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '1PIQADSs1vNdL0va' \
    --body '{"code": "BVXYF1CTeqOghG8f", "language": "Uy", "region": "UyfBadTdlodDRC6F"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicRedeemCode' test.out

#- 416 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'och2QOqWq0TvryF7' \
    --body '{"excludeOldTransactions": true, "language": "ZL", "productId": "rdajrLGlZ1cskXBB", "receiptData": "Fi4fwNI0G5A9sotB", "region": "mOcy7dxTiZaannYZ", "transactionId": "ojdlFhfseUYe9TEs"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillAppleIAPItem' test.out

#- 417 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '256B48aDUMWQSXfh' \
    --body '{"epicGamesJwtToken": "gvp5YbPYpye65onb"}' \
    > test.out 2>&1
eval_tap $? 417 'SyncEpicGamesInventory' test.out

#- 418 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'hQvu4lm0CvaSOIta' \
    --body '{"autoAck": false, "language": "sw-WBuD", "orderId": "zkCFzvhD433AUAuK", "packageName": "mZkmo1Vw2IDwMlqr", "productId": "hpL0Jg5SlE63LsF9", "purchaseTime": 42, "purchaseToken": "BYIFdnBPHYYUpXhR", "region": "PlE7aFdlx894sVPn"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicFulfillGoogleIAPItem' test.out

#- 419 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'g8VO6WsLhVBMeFY0' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusConsumableEntitlements' test.out

#- 420 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'SAfgoJkLM4bPPpEu' \
    --body '{"currencyCode": "3KBemSthxB91rUcd", "price": 0.6748453729337823, "productId": "wEaHRSgrFdOs94ia", "serviceLabel": 82}' \
    > test.out 2>&1
eval_tap $? 420 'PublicReconcilePlayStationStore' test.out

#- 421 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'IgLZDMjAsfZ6OBHP' \
    --body '{"currencyCode": "sCJ8brrTzRwCYnQ6", "price": 0.26962653385621105, "productId": "hHYsxb6cPIKFUvIm", "serviceLabels": [66, 76, 21]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 422 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gYcIr4WgTVmBgYcl' \
    --body '{"appId": "t3IUtyZaXvgoL8E4", "currencyCode": "zXmvDAmNv7RSD14N", "language": "Jd", "price": 0.6246769715013993, "productId": "zOMOX2rVPFLoFo0I", "region": "oehWGo75nLNp1h6h", "steamId": "CoHHYHzI3VVmnAqd"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamInventory' test.out

#- 423 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'g0FX9OXZNwNePkIg' \
    --body '{"gameId": "TFhgqFC8LMN5LV3e", "language": "Tg_EVUf-519", "region": "PPuNqn7392vaeAYu"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncTwitchDropsEntitlement1' test.out

#- 424 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'N7uz4CecYyJInDY5' \
    --body '{"currencyCode": "Snn5XNJ4Nm3QSGMS", "price": 0.9617624912029831, "productId": "fpLJoL8sDUqqK0qY", "xstsToken": "sPOROQXKieZ6kUBo"}' \
    > test.out 2>&1
eval_tap $? 424 'SyncXboxInventory' test.out

#- 425 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '7GLaH3ZJh4gvCjFv' \
    --discounted 'true' \
    --itemId 'asH4nB7GhTIPWImS' \
    --limit '38' \
    --offset '90' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 425 'PublicQueryUserOrders' test.out

#- 426 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '49WsGqZAJ51wvHZt' \
    --body '{"currencyCode": "H1NtBoHYGZAwx1zc", "discountCodes": ["d8Wl36P49OIK0Mrr", "AiVWa0GU947iuwAy", "rz1rtrlEBpy86BDr"], "discountedPrice": 17, "ext": {"8olqn7fAoJYUXjTH": {}, "6irUHjZjgLhadfHs": {}, "aT6qBHNLcuAf4ti6": {}}, "itemId": "5JaGYFBA70RfHSTR", "language": "gvm_Xucq_mv", "price": 57, "quantity": 96, "region": "FladaN6QWTBFpRPt", "returnUrl": "XicLhrfz3hFZHzJN", "sectionId": "kf5EKLxw4YnyrqGz"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicCreateUserOrder' test.out

#- 427 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'DMzD8mykOyZnAlo3' \
    --body '{"currencyCode": "d6UWyTPlv8Ad7r4a", "discountCodes": ["W9l0sPph8GT3kT23", "Fw4cUAHYLQLnLD1i", "Xrt9i0Uyk93sAJJK"], "discountedPrice": 9, "itemId": "Dn5NhssuYB2lEZFy", "price": 52, "quantity": 22}' \
    > test.out 2>&1
eval_tap $? 427 'PublicPreviewOrderPrice' test.out

#- 428 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '2ZFdVQjQXucZ3qbd' \
    --userId 'ELBthJMqVA4btVO2' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetUserOrder' test.out

#- 429 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '69mXQrFvIzKgSIYh' \
    --userId 'eby9gkVb4AUmPmCo' \
    > test.out 2>&1
eval_tap $? 429 'PublicCancelUserOrder' test.out

#- 430 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '7jVa54FM22yNxSXu' \
    --userId 'U94eJx3W03CD8okL' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserOrderHistories' test.out

#- 431 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'HO2G7fbvAYJsNqtc' \
    --userId 'ZEQ50PkjyIEqCjb0' \
    > test.out 2>&1
eval_tap $? 431 'PublicDownloadUserOrderReceipt' test.out

#- 432 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'rfonIAdAN7TFKkl1' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetPaymentAccounts' test.out

#- 433 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '4vF4uodU0Xxw3bEz' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'g9peVslm7ofignG9' \
    > test.out 2>&1
eval_tap $? 433 'PublicDeletePaymentAccount' test.out

#- 434 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '1tPykPLV7BhVk4p2' \
    --autoCalcEstimatedPrice 'true' \
    --language '1p9IDlHUiu3lOkjK' \
    --region 'k07WndC8cndvg8VT' \
    --storeId 'RGYi8ChlV5Pgqt3w' \
    --viewId 'BsjqIvo6FjJM08qy' \
    > test.out 2>&1
eval_tap $? 434 'PublicListActiveSections' test.out

#- 435 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7fMj0sRAy4WHLfsI' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'bjkNQegY7G3xTxMa' \
    --limit '42' \
    --offset '94' \
    --sku 'TSzOjD3CTklEorOu' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserSubscriptions' test.out

#- 436 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'VOnzADfTtAzHipE3' \
    --body '{"currencyCode": "3NyhHBX6s4GlXcCS", "itemId": "RnzRWxrdDAem9YEv", "language": "lK_rdaO", "region": "USmtM00CV0m0zs0d", "returnUrl": "fSxPgwKQFztxGjrL", "source": "jN7b8tNAkRE5N6nd"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicSubscribeSubscription' test.out

#- 437 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sLSiAlicezIygCd9' \
    --itemId 'wxOqvljPskpliqoN' \
    > test.out 2>&1
eval_tap $? 437 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 438 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'f1qihapwU8C5uuoN' \
    --userId 't3CL5JacESmwczix' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscription' test.out

#- 439 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qIAJCFw0o6DSvgbC' \
    --userId 'zVhlvx2lB9O8Mq77' \
    > test.out 2>&1
eval_tap $? 439 'PublicChangeSubscriptionBillingAccount' test.out

#- 440 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BTMvxewUVIWAQecg' \
    --userId 'QZQtnUZDFQV4D46E' \
    --body '{"immediate": false, "reason": "g7FHdPEH5lAXkbUC"}' \
    > test.out 2>&1
eval_tap $? 440 'PublicCancelSubscription' test.out

#- 441 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BhpqGyjoFRUTKnhy' \
    --userId 'E5xwoGtwscKUwNLU' \
    --excludeFree 'false' \
    --limit '3' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 441 'PublicGetUserSubscriptionBillingHistories' test.out

#- 442 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'C7NmJEUeFYqHDOAT' \
    --language '7BhAhAWJ4cLdO15e' \
    --storeId 'BK3cRv6y19dLDB5F' \
    > test.out 2>&1
eval_tap $? 442 'PublicListViews' test.out

#- 443 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'NkmAD44l5TkHV8n2' \
    --namespace $AB_NAMESPACE \
    --userId 'CpLuX8uHeKwN1Z9c' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetWallet' test.out

#- 444 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'vp4H2v5Gb4ino5qK' \
    --namespace $AB_NAMESPACE \
    --userId 'TjlRfPdD1MCrIqzx' \
    --limit '23' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 444 'PublicListUserWalletTransactions' test.out

#- 445 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'CK4gTLEq97TgeOei' \
    --baseAppId 'mn26yvDtX2q0YyZw' \
    --categoryPath 'cr7N1iZQKOxte5TW' \
    --features 'ZnQdSS0f9i73Q7un' \
    --includeSubCategoryItem 'false' \
    --itemName 'c3osUbBeBCC4ydsT' \
    --itemStatus 'ACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '51' \
    --offset '60' \
    --region 'RcXWsO7i0tV1r0uM' \
    --sectionExclusive 'true' \
    --sortBy '["name", "name:asc", "name:desc"]' \
    --storeId 'Jef9tRFqJGmW0PYg' \
    --tags 'q5pdCRwqMDNG8dR0' \
    --targetNamespace 'IDqsNfEcdYa82KLB' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 445 'QueryItems1' test.out

#- 446 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'jOHBn8A0MxQv2K0w' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 446 'ImportStore1' test.out

#- 447 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Ko8eSknlB8aRcvGP' \
    --body '{"itemIds": ["HmpdpjYitNlegVfe", "araYZTM9A04ZjMpJ", "0TFBaJ5Z5Z95RzPI"]}' \
    > test.out 2>&1
eval_tap $? 447 'ExportStore1' test.out

#- 448 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'YAEu4wdw5ZjFEjDu' \
    --body '{"entitlementCollectionId": "KFTRurXspjr6rgTu", "entitlementOrigin": "Twitch", "metadata": {"meWn9cf0TtPicWcd": {}, "YTN9Lo8Yx2Rg4VPp": {}, "2L0QJsiZ8C22NmJt": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "tgnHtEaCMRQbOcHm", "namespace": "fhvpMTN5HmU2TFRt"}, "item": {"itemId": "qmnpOjz9jX4Phoqf", "itemSku": "QwshiiFBwhLs0bKY", "itemType": "P8vmo57n9xmUl7KD"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "LVR5HcsQMrfrqFqS", "namespace": "cZC33nW4G4LK68Ik"}, "item": {"itemId": "1Z0IuCPdnkTIjXaD", "itemSku": "6o2dGwoWL9rLWJ5Z", "itemType": "ly9F9wFqi3Yfqm7N"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "uTVOrKBATKSPCHFb", "namespace": "S28NHr0yO4954Ocs"}, "item": {"itemId": "4NDwyHOwTXAZibUw", "itemSku": "dJrjuMbecXDEGox1", "itemType": "ltnsqh8bsPUqoV62"}, "quantity": 97, "type": "ITEM"}], "source": "GIFT", "transactionId": "hxW1HzYPcZCRLoKp"}' \
    > test.out 2>&1
eval_tap $? 448 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE