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
echo "1..422"

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
    --id 'XTpWJdTOw7Qxu7ke' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'XwSsam9MMARQ3eRg' \
    --body '{"grantDays": "5YDkV6zfNMV13cOT"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'NaZ4Hz1ONJPze1x0' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'W6kYZmEHc8PYOmTd' \
    --body '{"grantDays": "7r3DUYaGiY9Ey8nm"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "ZTKJAGR8qJxsBkER", "dryRun": false, "fulfillmentUrl": "3MMbxdkF68UYOY1C", "itemType": "OPTIONBOX", "purchaseConditionUrl": "wmnyUXH18OnIlMMj"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '41L8pc9U2xRf00EF' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'EkUvs8ftiSJCUQjk' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'tAGhk8u6LoGZj3gX' \
    --body '{"clazz": "VxffF14y87UZLUNk", "dryRun": false, "fulfillmentUrl": "tCqwigMGvGurgidc", "purchaseConditionUrl": "GdXxNpghz4RJmNlf"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'xD9uM9v1IX2JyFGP' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'LuRLrl1dUyIWUMMl' \
    --offset '88' \
    --tag 'VC0JJirPykF22BcF' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "H7I4UUBEmYsUwZNX", "items": [{"extraSubscriptionDays": 78, "itemId": "BINUEBrKvRVXWwRS", "itemName": "izqKSz2vWtr3ArED", "quantity": 40}, {"extraSubscriptionDays": 89, "itemId": "Rsa4aJXoI6yLPqNB", "itemName": "ypP680Oej69EealW", "quantity": 28}, {"extraSubscriptionDays": 50, "itemId": "2e751Pec6ct2TWCQ", "itemName": "wtTGyE6EBKPqDcE9", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 46, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 55, "name": "soAF3HmVhPeyjH6I", "redeemEnd": "1998-03-21T00:00:00Z", "redeemStart": "1994-03-23T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["bjyz1NrasWpJnAFv", "6smOcToxvwpp7se9", "GK7FvjsVYobf3unc"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'fR9zR6GwAwxG3RKI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'yZJK4rsw7pXycxnO' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8oLeatS8pe41adwa", "items": [{"extraSubscriptionDays": 34, "itemId": "KUXUuqutlxwQXn2u", "itemName": "DvHPF3QezQOYkfGq", "quantity": 87}, {"extraSubscriptionDays": 49, "itemId": "uesPEpCsGpoQn5Ym", "itemName": "PPeUBSaIUCVxOof9", "quantity": 18}, {"extraSubscriptionDays": 62, "itemId": "9sNIPOquyx5EoudH", "itemName": "BHwecwKGIx5g47iD", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 25, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 1, "name": "PobNAwUn4PVKG73F", "redeemEnd": "1996-07-10T00:00:00Z", "redeemStart": "1983-07-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["swxxWCtJZxutqiAd", "ufsWUqnlpFg6pwG3", "rcEUWQuoO9mIgJIt"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'kvVvO99UAdzxO5B7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "OWKwMZUS1dEKAFKO"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ueeO1FVM9q2c3GQP"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "5rJySHphtVtcSFAl"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "g85hQdTwCEY1Mbom"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'TlxsQLktov9akDiZ' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'GqptOs4VvqxbQpnr' \
    --body '{"categoryPath": "i4vGmOGwGjlSf7ZR", "localizationDisplayNames": {"xXuirX2csDDzxRlN": "7AriwY89RXiMkpJ3", "BiIZjYm0oV2hEP7D": "y9DWPuSDn5jF3uHF", "nEDMJqtLIOWpeetC": "N1NEfSUiyiSPQW6C"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '3FIbDk72qSxUSGfi' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'NgNcdM8o3sUXjKIe' \
    --namespace $AB_NAMESPACE \
    --storeId 'DgSp7JRGL4BKtN8G' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'JWfoMQj6SudYF4gA' \
    --namespace $AB_NAMESPACE \
    --storeId 'tQRw7kXVGjd5fdTX' \
    --body '{"localizationDisplayNames": {"T0srJf1PHpaHEJDj": "ZBwxcQ4JP1qBL5my", "K1aSxs2g1Ylw9CZP": "GjhhcuZKUvNWePZm", "uy8BMrOGYpGU0zMC": "1e0VKAtGQ2EjXvs4"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Q3SiKgLyeW1QpPjz' \
    --namespace $AB_NAMESPACE \
    --storeId 'vW5v02MhZ7ee35BY' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '90qxFpPQcYXSXY0J' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZFJEIhxfuwtNEizC' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'XqAHtKa6zaOtjmnS' \
    --namespace $AB_NAMESPACE \
    --storeId 'AfsTeq32QQpJUq5R' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'gHXuS4lomTpeDW5e' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '79' \
    --code 'GWF5mjq8Oqwc6EWZ' \
    --limit '8' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'KuQzMOpdTYgZuHyy' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 81}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'uE1LXrIMSDiem92F' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'oa5aLEqVI4oxf0S0' \
    --namespace $AB_NAMESPACE \
    --batchNo '68' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'y48uWFKzjXPPqelZ' \
    --namespace $AB_NAMESPACE \
    --batchNo '80' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'AanbrAbv7sGCKkbY' \
    --namespace $AB_NAMESPACE \
    --code 'yacqt75cECBNXeX5' \
    --limit '59' \
    --offset '23' \
    --userId 'vKWbKaT0l5uQ27wg' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'JpwIDu3T67E91qsM' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'yugSC8czvimAdnnS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'AP05KqWLVwiLZgMC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "NmnCuJh9Oh3OGeRj", "currencySymbol": "GJ18FOfgmLB4sH5V", "currencyType": "REAL", "decimals": 55, "localizationDescriptions": {"TjpzdDcIjLSWrtKE": "jTg0Dzm8QsG6B8Me", "aRQcwA2J3ztyqcvQ": "3HsNOwcw9dwipt0A", "uY5SWIbjZDGGxciu": "LWQJ3TtMGkDflVsr"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'OXdtm9hbUEXKgpOv' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"gqC5tif3BzoeBWsr": "FSbOShkipyf7ke0V", "9hGOa77GnGwfacJX": "WtpRJymSIyNRWkd2", "QBPJfJwrP9lkhCrW": "ieJsXcrdN8m10eC7"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'lI9l2fYzL8hNdJVJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '0kY6PC56LG9xGFz9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'MERlro8zcjGVIZkv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "rrfCyIuoYMGOZ5cQ", "rewards": [{"currency": {"currencyCode": "nTumcsqvAnNMQIej", "namespace": "xR14rUHDGpt9SHHx"}, "item": {"itemId": "0FWKiJ3osjuqDjPA", "itemSku": "nBsuCndEBT4Xy5Fe", "itemType": "envHTR0rb9q2tuS6"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "IRWTrTQv2rvGClpT", "namespace": "3Q4PnXRcEoTrInYh"}, "item": {"itemId": "tH90NPE3WqLdxx7L", "itemSku": "d3TXODZXgt2v5sMl", "itemType": "ZIpt9MLydWHsKara"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "QMxMuPg5QSyaLKql", "namespace": "M6HIILxYktoVKLKP"}, "item": {"itemId": "iIEnTB9pKBjfnfgu", "itemSku": "dz1B60woamW1JInl", "itemType": "t26XXnDr7WJUqX3l"}, "quantity": 99, "type": "CURRENCY"}]}, {"id": "B9Rvb1BVBv8mQbI1", "rewards": [{"currency": {"currencyCode": "vInUriIuZaKsHrL5", "namespace": "LZG1rccxu5us2Y2V"}, "item": {"itemId": "kUOLy6jMVB3Hr03Q", "itemSku": "iNWWaxHzVPsMvbjw", "itemType": "5C6ojj5Gl8dbcQwp"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "hyrwPQTCfox4CgxW", "namespace": "D6X9hmnNeoaGK5yP"}, "item": {"itemId": "UY0XP1cJ3KdtnQo0", "itemSku": "7Suee2e3sjmyHK0j", "itemType": "7iFaf7t5HArpuwqm"}, "quantity": 93, "type": "ITEM"}, {"currency": {"currencyCode": "tk5kXjsU31nZuLFI", "namespace": "ZBiiSRKdlc7HqGdK"}, "item": {"itemId": "ZRtMJGVbFgWnEhTu", "itemSku": "Kv6WHRSjq4rUCbqa", "itemType": "EcUFgbyyojGbQ88g"}, "quantity": 90, "type": "ITEM"}]}, {"id": "7gayMMyAeDlcMy5Y", "rewards": [{"currency": {"currencyCode": "EjFwPQr4Y1Dwn2Pn", "namespace": "74PxdsVj6JJMwMHM"}, "item": {"itemId": "CxPzLQKGccV13sKY", "itemSku": "w9qNqNW9gLcEfLhk", "itemType": "yJcyviQTPgKVXA7m"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "ImAZvjRqMcrrzs8C", "namespace": "hgHP7ub93hSqqZEK"}, "item": {"itemId": "tDfvKHwWLmTxLhrI", "itemSku": "JRjuZ4rlVi2EElkA", "itemType": "Gu4H3W0xLiPfryna"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "9QdzlGS8dcQxipKE", "namespace": "DYLKp9YPsU2yo8MZ"}, "item": {"itemId": "ypyJjAzMSAwFqqYC", "itemSku": "aIWDvxQNKvkXyCl7", "itemType": "7NgguQwKZojkQpCd"}, "quantity": 39, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"SWT7JSgsyUjYuHgf": "zsXs1yhVsgcfSSBn", "c35wQPlMNjYn9BjO": "v3WDCX2TmpPVEJ96", "qHBU1fVvwiSPAOUg": "6xx4JSfvI01mD1mK"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"d1JFFZ1K1kpem4xk": "Lu7HUdGhbQ17jp3D", "SgqxhN2iFdg19Edt": "b4hlQTaNPbAuIJUi", "w2vVlgI8OuwoDqRC": "TmzmG6LF0gRAGk0n"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"JdZWVfpIZdCfdii9": "UieNevL4F2ywfJgT", "1r8gZvvvjRaM98PI": "locBcyNQDYrfECCT", "j9gKg8KnIaWTkWBD": "EQggVk97m5N5hvRG"}}]}' \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'nd2N7o0VIIWsBTla' \
    --itemId '["5ZSjktRndpBhNz65", "mC6YCLNEb9imTquF", "SLdTgZlGVrfUdJOk"]' \
    --limit '65' \
    --offset '55' \
    --userId '4cjrj1CAToWjXPcL' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["mmivPLTiDyFkJIG8", "4g7aLsUFQQp1fikJ", "01I95JhZbRbnevkZ"]' \
    --limit '3' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1995-09-07T00:00:00Z", "grantedCode": "LsQlRUtrhoAjPmnb", "itemId": "mveeaOLZIgrz1H4G", "itemNamespace": "G6wNUyYlCkklW8Wb", "language": "rDve-sWsi", "quantity": 45, "region": "KW6P5tBQlsmUCtKP", "source": "REWARD", "startDate": "1980-08-18T00:00:00Z", "storeId": "RdQtFrvnNMCtiZop"}, {"endDate": "1972-05-23T00:00:00Z", "grantedCode": "hi2EgdF1ELJfAPzQ", "itemId": "rFA9f7xPuo6WVyyH", "itemNamespace": "upGfKkvFn0eoxKKH", "language": "NzwZ", "quantity": 22, "region": "2aUPlNJyZaGwkNXB", "source": "OTHER", "startDate": "1993-07-21T00:00:00Z", "storeId": "vWOHIuWzLNoyFME5"}, {"endDate": "1986-08-06T00:00:00Z", "grantedCode": "BPM2wNoSmD2i0SV3", "itemId": "j2qG6XivrmaeYTSK", "itemNamespace": "rkaJV71nQjxlvDWE", "language": "vvc-Lz", "quantity": 62, "region": "nBQfQVk43WoBdXN9", "source": "REFERRAL_BONUS", "startDate": "1995-08-10T00:00:00Z", "storeId": "uMDfj6b9u5mxiqra"}], "userIds": ["QcFxILxWWXjVczne", "6k2BGsUO9TnD26F8", "ZbBabpcGrvkJwIIU"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["bbgWNgnXE8AwsyGS", "n02JCg4R7GMd2yZo", "PBnLWp0VL1jbNcEI"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'vDJogFxNuB48Sgus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '99' \
    --status 'FAIL' \
    --userId 'p5iqk0d9uyUrHLt3' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'bukVwtXpbQfYbMIv' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'Ss6ndUHVPnPtkgbk' \
    --limit '92' \
    --offset '94' \
    --startTime 'AEnOYAmtOnJHFFNA' \
    --status 'IGNORED' \
    --userId 'XJXF0dv9yVnX9yvg' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "7rcoa7vfRMOwR2SK", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 56, "clientTransactionId": "AbOmizSu5RgThR8U"}, {"amountConsumed": 12, "clientTransactionId": "7RqiVvYVw57taTGa"}, {"amountConsumed": 58, "clientTransactionId": "75BiccwrdY3pPhSc"}], "entitlementId": "OFEHNBHtLDkb304m", "usageCount": 54}, {"clientTransaction": [{"amountConsumed": 17, "clientTransactionId": "0fqPUCSxGcoxQHSa"}, {"amountConsumed": 5, "clientTransactionId": "wTQSAMDww7BS1Re9"}, {"amountConsumed": 84, "clientTransactionId": "viLOL6ectByB4hA4"}], "entitlementId": "OsnTIB5wmqmOsI3d", "usageCount": 63}, {"clientTransaction": [{"amountConsumed": 60, "clientTransactionId": "LV89WdBVomLSWtqh"}, {"amountConsumed": 32, "clientTransactionId": "lYog2awqtReIkari"}, {"amountConsumed": 72, "clientTransactionId": "EpqZuyFEdVNFpCBz"}], "entitlementId": "HCa1WjEQleXPElZI", "usageCount": 55}], "purpose": "wyNP4ZUa0wqMX5pN"}, "originalTitleName": "A2njdCsLwjuXWipE", "paymentProductSKU": "51KDXkw49PxvOWdR", "purchaseDate": "xO6eYgA4fFvCYCny", "sourceOrderItemId": "F7lYmsAPBVSSzQLg", "titleName": "Rknk6W9bACTJuW5S"}, "eventDomain": "7EOgNvsKMvj8WPJs", "eventSource": "cYvubSVFJ4iwSGWB", "eventType": "riWCJwRWMzSajEbo", "eventVersion": 65, "id": "fVU8YofRQClEmCTb", "timestamp": "XLOVZiHoZTT1bt6Z"}' \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "9IZ41R8sPkyz3AgW", "password": "xrTlzE3Y0NP7r4dH"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "HhCIn4JjMqZSJs4N"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "52dNpS2vx1cDND7W", "serviceAccountId": "68kMvNZziBevFUec"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "6tPFhrhuZ3Q0utlD", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"7V2yW6YdEaSrIWOo": "u2IIiGYVPCdj3AzC", "7l1E187KPUutRVKy": "8c8GOhI7KjAyAmLw", "m1xULBaRNaImHCXH": "G9lHrIfMSZcvi7yF"}}, {"itemIdentity": "EbII4MwcNHhzpN2T", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"UVIZJCzQUZyN716y": "V3WB6OH3l5WgaIqK", "QJJ1kfDATrVVLv5P": "vmFDFLpzNPNO0AYf", "qkcA3iSy6NSeZRfx": "tOe2f18feAnsApWx"}}, {"itemIdentity": "AVqAfulA0gyyg49J", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"hFZwrb7t6UGZ8swY": "AiRHyX8nXUfxlcqV", "8hpnAOAwlNnfx4Uj": "o0XEcsV9g3czA11G", "y2hLRcZbJlPnq8IX": "Hwioz0ddBArOxBYq"}}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "nRniR951YKWM3Bz1", "appSecret": "IwpTla8sFK3OXgOx"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "jeTDn9RO6E20A9kr", "backOfficeServerClientSecret": "ruR4jI3bpKTCYNS6", "enableStreamJob": true, "environment": "nFZ5KTFhxkDhBqO0", "streamName": "QrLz5ljDT5ixt3Jb", "streamPartnerName": "3kapl4Le4nWW5Yt7"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "V48Zac4lZMxJf5L9", "backOfficeServerClientSecret": "5E1xRWkrRmGD66Nq", "enableStreamJob": true, "environment": "l7iPTeyX4kLjRaUx", "streamName": "LXnmtdJC87WaQ5hv", "streamPartnerName": "yNNHAZI0NCmSv2vu"}' \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "R01Q8aODb5FmoFwd", "publisherAuthenticationKey": "kAdmF7oeD3fWsfeF"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "leG2LKYL5wazjiCD", "clientSecret": "E8XyE5eUF94g4dkL", "organizationId": "Y885HDFBev3GDWlD"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "ncwHUjjeDcWiW0wv"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password '5SdzRcMzMEpxXqSe' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '450xOFUv5zAPhjZy' \
    --itemId '92UyW2Crdz4xTBy3' \
    --itemType 'BUNDLE' \
    --endTime '8SD0tmnExGXUFGac' \
    --startTime 'aLrDwTxd7p2ecZ7r' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'H1WNUtrOhQWcF7n1' \
    --itemId 'WiQvohgbAhxIKHfi' \
    --itemType 'CODE' \
    --endTime 'OMZpr1BN7K3npGDV' \
    --startTime 'OtlpfMV9nqMfJ6rT' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '5igDWyzomy1b3e29' \
    --body '{"categoryPath": "bUfl4byHtNRrL4FC", "targetItemId": "CFouTlAtirnzXfzr", "targetNamespace": "VMr8fR1pXkTq0KGY"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'fUgIpylsGDQvqicj' \
    --body '{"appId": "3VhAdG0IxIFm8pSL", "appType": "GAME", "baseAppId": "yWXZ6OsU6mwPC0sk", "boothName": "GHsAzLHv8vaH6zUb", "categoryPath": "0VbrBr1kzDx6p8Z9", "clazz": "5wl6IpaEv2GLdjss", "displayOrder": 52, "entitlementType": "DURABLE", "ext": {"VPCZKS9HJxEToWFq": {}, "Nbg3Kg5FfHaOlyjP": {}, "sXk5Ch5wA0GpxKx5": {}}, "features": ["LjtpGfTdFMAlXhO3", "JzxY72ue1cZzuJ4i", "Q6ynfrfbQHTXcxAK"], "flexible": true, "images": [{"as": "1fuvuubsEmTKq7QD", "caption": "DmlOZba0faCHS3cr", "height": 23, "imageUrl": "D4wO4lgeTntjFIr7", "smallImageUrl": "a2FZUZfa0oYX3WkL", "width": 47}, {"as": "tu2M5L7ucNd0ihsz", "caption": "epTCtDX7r7b97yaB", "height": 34, "imageUrl": "Icz42NYCi29Uw54t", "smallImageUrl": "LSqIXgnsve4AB7nr", "width": 85}, {"as": "VoSrytZL2T2BfpF5", "caption": "KEPfEs0GGiIvUO4U", "height": 90, "imageUrl": "aVuIS9l4MSxhhnVZ", "smallImageUrl": "0gjtIjNxUD5cPYhu", "width": 74}], "itemIds": ["7gt4pI6rkGneN4Lm", "g3NXQ8AGVAm6alON", "ZBoeT3rDdF1kdyqd"], "itemQty": {"fijEFUwsnZyZucHd": 58, "vCpCcXpc4yvIa7kr": 35, "qhrrOG2CLLRP5lVH": 8}, "itemType": "LOOTBOX", "listable": false, "localizations": {"3zB0EFcqlHgKE0O6": {"description": "RsqRzaJPVQDWZWPX", "localExt": {"WoA1p2diBhf30SL2": {}, "HX11IKX2iBBECWj2": {}, "O9UTvIIg0T5NLT61": {}}, "longDescription": "uGP4Xt3qpC8jTGen", "title": "NnKEX6dkvUOMSSyW"}, "kmnC1FdLwgtM1QlZ": {"description": "nxa5DTZLmILRkH5O", "localExt": {"UavEk8q6m85FiFL2": {}, "FYz1QRGl0hxiQRSK": {}, "XcxpOXXyyZvqyeBN": {}}, "longDescription": "2ZrVoOpCnwunr8ek", "title": "0zrwiTLvJ2WcMP3V"}, "s9ZuodyFa5pPNS40": {"description": "ggwSLgEo3uAqKgP0", "localExt": {"vw1jt02YXR7Pbjei": {}, "pxCYH05RRqhqRj7d": {}, "ZMqFmApJeYnyhVmN": {}}, "longDescription": "hYrzHgIdGmcMXob6", "title": "eJUTHKUkOtxOnP4x"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 61, "duration": 41, "endDate": "1984-11-29T00:00:00Z", "itemId": "ndCsODbz3PGP0dzF", "itemSku": "IsfGAGLXW8PsYl7s", "itemType": "wrJq8Anfjhj86qeH"}, {"count": 48, "duration": 33, "endDate": "1972-11-04T00:00:00Z", "itemId": "9UVuYX8J6MFFCSMY", "itemSku": "vaD50OdofcIOvmIo", "itemType": "BI87d04rhTj6wUAb"}, {"count": 8, "duration": 65, "endDate": "1981-12-30T00:00:00Z", "itemId": "dgV4Ci5nQx5V1AhZ", "itemSku": "wtyqRlOc0STFMQ3m", "itemType": "WnjZRjmrxkJorEWt"}], "name": "cUTXC8gv1wMhF2g5", "odds": 0.47876544868842796, "type": "REWARD_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 50, "duration": 14, "endDate": "1982-07-15T00:00:00Z", "itemId": "NQktW5iME34oVKtV", "itemSku": "zfGWnkojevK2rwMm", "itemType": "8jkdmZaBrw0gIOrR"}, {"count": 94, "duration": 3, "endDate": "1996-08-28T00:00:00Z", "itemId": "c3MTvLgeQbWODghc", "itemSku": "YD9f5C2sYP3fWwIv", "itemType": "NOF9TrgB3OQ2MBdE"}, {"count": 38, "duration": 16, "endDate": "1984-06-21T00:00:00Z", "itemId": "ZPQQGxWzorzLg1rd", "itemSku": "xPDDXqsw2T310Ict", "itemType": "YqNGREldtxve4CUE"}], "name": "DfFJ3zVVxOrKIzjP", "odds": 0.8517098051995953, "type": "PROBABILITY_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 57, "duration": 33, "endDate": "1991-10-17T00:00:00Z", "itemId": "3w8Z74KzujMi0Smu", "itemSku": "1sBLQIUNTwy26ARW", "itemType": "OSYKgr2vQnKKOJsD"}, {"count": 19, "duration": 65, "endDate": "1997-08-07T00:00:00Z", "itemId": "1WllxsXTa3uHlICy", "itemSku": "fvTqiWgYKuwhFUJn", "itemType": "JLOyQVrlXxbszaUo"}, {"count": 36, "duration": 73, "endDate": "1996-06-20T00:00:00Z", "itemId": "kZjwka5xhxklWX8i", "itemSku": "FbjrS2Y2XKXEf1BO", "itemType": "btVwCH3cfqbi8iFB"}], "name": "m3rakNxuunzqZavS", "odds": 0.6489940149952409, "type": "REWARD_GROUP", "weight": 50}], "rollFunction": "CUSTOM"}, "maxCount": 90, "maxCountPerUser": 28, "name": "VDSXnoceA1ag4Nkk", "optionBoxConfig": {"boxItems": [{"count": 5, "duration": 87, "endDate": "1981-08-16T00:00:00Z", "itemId": "d7WXIcL2gGlJZpL7", "itemSku": "qiwobgCmY8r9Eiij", "itemType": "gXdItGaopByrCHVC"}, {"count": 94, "duration": 32, "endDate": "1991-09-24T00:00:00Z", "itemId": "udodKlO9yL5D2bIP", "itemSku": "zYEuU2Zu176iq8ES", "itemType": "uQzGrwFGbezRd6cY"}, {"count": 77, "duration": 41, "endDate": "1973-01-04T00:00:00Z", "itemId": "kOnozNzk255MPffm", "itemSku": "qe6OHWFEMLyj0mJm", "itemType": "FnkN4HNmeD27v8mJ"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 6, "fixedTrialCycles": 34, "graceDays": 90}, "regionData": {"1cGZPFLukTGP3Cvg": [{"currencyCode": "V5IlWCmX79XajdVE", "currencyNamespace": "RQwWHdQDuGxGivWa", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1998-02-21T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-02-21T00:00:00Z", "expireAt": "1978-05-05T00:00:00Z", "price": 68, "purchaseAt": "1981-04-13T00:00:00Z", "trialPrice": 19}, {"currencyCode": "cl6OHtwPWwlTSlwW", "currencyNamespace": "HrkFyfvIuoLqhxgy", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1990-12-21T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1980-06-23T00:00:00Z", "expireAt": "1982-12-29T00:00:00Z", "price": 44, "purchaseAt": "1995-08-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Y7IW3Yjdq29htdPs", "currencyNamespace": "SDW98j4m61waeyti", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1972-01-04T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1987-05-17T00:00:00Z", "expireAt": "1986-05-28T00:00:00Z", "price": 9, "purchaseAt": "1997-09-07T00:00:00Z", "trialPrice": 44}], "rod9kaGsJl8EaSZT": [{"currencyCode": "gqSreo2Mc4yVcyO4", "currencyNamespace": "69VdfegUSlMkOOoi", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1992-05-12T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1987-05-07T00:00:00Z", "expireAt": "1979-10-13T00:00:00Z", "price": 67, "purchaseAt": "1974-12-08T00:00:00Z", "trialPrice": 25}, {"currencyCode": "1lbcR29XdgZLwybw", "currencyNamespace": "pAo2hhOcAHr1CP53", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1986-10-14T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1990-08-16T00:00:00Z", "expireAt": "1979-09-17T00:00:00Z", "price": 25, "purchaseAt": "1999-07-07T00:00:00Z", "trialPrice": 29}, {"currencyCode": "Vfhb8eLcqf9NEyGy", "currencyNamespace": "YHM5lA07vmpYaGQc", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1988-12-29T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1983-01-31T00:00:00Z", "expireAt": "1988-04-07T00:00:00Z", "price": 96, "purchaseAt": "1974-06-22T00:00:00Z", "trialPrice": 63}], "gzjnlyYxtx9lfOiU": [{"currencyCode": "swLoQmkNYC7ehPAs", "currencyNamespace": "u15yXx9bu3d2PTnT", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1974-09-29T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1998-06-26T00:00:00Z", "expireAt": "1984-07-18T00:00:00Z", "price": 56, "purchaseAt": "1985-03-10T00:00:00Z", "trialPrice": 5}, {"currencyCode": "09lHIMtBQdEx92EF", "currencyNamespace": "KBhJp6DSeGNwWR7f", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1996-10-19T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1984-07-25T00:00:00Z", "expireAt": "1990-10-24T00:00:00Z", "price": 30, "purchaseAt": "1979-08-11T00:00:00Z", "trialPrice": 10}, {"currencyCode": "LcyodmpSp6NHwCsW", "currencyNamespace": "YQnJDLlE9KvQXghT", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1996-04-13T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1992-02-05T00:00:00Z", "expireAt": "1973-12-02T00:00:00Z", "price": 73, "purchaseAt": "1973-03-18T00:00:00Z", "trialPrice": 60}]}, "saleConfig": {"currencyCode": "JNM71ur9G1OkjDr2", "price": 44}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "RviHkz18sy9pHFhm", "stackable": true, "status": "ACTIVE", "tags": ["q7APQL5EZLbSFGgM", "vYcb1DkhGM36qW6p", "nll2EJdXiiVkIPRd"], "targetCurrencyCode": "WZowkY9wlb3qiDfs", "targetNamespace": "utpw88TpZSQiNssR", "thumbnailUrl": "zthl1IfsJ2o8j5Or", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'CwJ3CXRavsJpHEMp' \
    --appId 'HUwUvFzDvoIoaKlW' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate '2WU2K4YphP4UiPOR' \
    --baseAppId 'E6MFq7zlSepcSNPz' \
    --categoryPath 'DaRRrp2Wz1tcR7lu' \
    --features '1fNtu2zXPQ31k254' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --limit '84' \
    --offset '65' \
    --region 'Ihcf1yD5QU86cFUl' \
    --sortBy '["displayOrder:asc", "name:desc", "updatedAt:desc"]' \
    --storeId '3lb14rA79dLkeROu' \
    --tags 'tMotbYIDfCPVIhM7' \
    --targetNamespace '493MBLQwxmgAGPBE' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["n1eLXtSBHXOYp20A", "d01Ci9LTo8L2fcQW", "wcxBm7zeiH5wAJUc"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WAhv0XcKxxwDFCyL' \
    --itemIds 'wH2wCNOSHmJd7TBs' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Jtj1lGrZcfq09klx' \
    --sku 'ciaLf11aB9uv392T' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'TulWzQmJPiOzrMbj' \
    --populateBundle 'false' \
    --region 'MvBMI5pacBGawAuz' \
    --storeId '0DptGDKkwWhjcpyO' \
    --sku '4mfmEgY8x8Ch35Q4' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'BSaA9lBclBoWYJvV' \
    --storeId 'HFAOeniJbKAtgCyh' \
    --itemIds 'mA0UjojyGSneGUyb' \
    --userId 'EEuF9DUQSZYddIS2' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'vqS4U32LdI9qQ22n' \
    --sku 'qYWiUCGHImRMAx2x' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["tEKwTMUSvjqAvGQE", "09IGBF1HPGGhPr5W", "xBo91XgK7ivYCoKl"]' \
    --storeId 'SuxUJWlVddyUxfB5' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'gLMUog1abyfo6SCW' \
    --region '1PrPiqZ0c7dgkKAS' \
    --storeId 'DOu7fxdmJwFeWaDl' \
    --itemIds 'ViNQNe35v6CvxvI1' \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'GdhYrvOGwEahvBcQ' \
    --body '{"itemIds": ["LTIitbbfGJ2bEQFt", "uaGKoTenpABVmgad", "cIpkQzqV1Reh6yz3"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'jCs2lMyKQiUVK8lj' \
    --body '{"changes": [{"itemIdentities": ["lL1KY9VgJtdBYtsZ", "T0prfCJAnI8VR3Dv", "BWa2RrdCNXQ1VkPC"], "itemIdentityType": "ITEM_SKU", "regionData": {"jAPc5MRPILbNbRI5": [{"currencyCode": "ip2BggcReafO2CMD", "currencyNamespace": "kntpzDg6cZZ3bqQz", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1987-11-29T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-10-14T00:00:00Z", "discountedPrice": 73, "expireAt": "1975-10-01T00:00:00Z", "price": 66, "purchaseAt": "1999-05-10T00:00:00Z", "trialPrice": 34}, {"currencyCode": "db3grcVXVr1Jad6N", "currencyNamespace": "Sk7coF7xEdh1XzeE", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1982-12-15T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-07-04T00:00:00Z", "discountedPrice": 29, "expireAt": "1973-07-07T00:00:00Z", "price": 70, "purchaseAt": "1996-09-24T00:00:00Z", "trialPrice": 72}, {"currencyCode": "pZtDI3RqX8NTI7vi", "currencyNamespace": "C4F7WZ4gmCVH7jtz", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1994-02-02T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1987-09-12T00:00:00Z", "discountedPrice": 55, "expireAt": "1987-07-03T00:00:00Z", "price": 48, "purchaseAt": "1991-05-19T00:00:00Z", "trialPrice": 44}], "uuY9fThGMwZJrwGl": [{"currencyCode": "fZ3rXN1cDD5OFn1v", "currencyNamespace": "8dNTL9UTR5riJuA5", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1988-06-17T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1984-06-05T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-02-19T00:00:00Z", "price": 46, "purchaseAt": "1976-04-30T00:00:00Z", "trialPrice": 96}, {"currencyCode": "YsDAq6KRZYWcc2uA", "currencyNamespace": "aWXMSCOPxuODLO4g", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1988-10-23T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1997-12-06T00:00:00Z", "discountedPrice": 83, "expireAt": "1996-01-09T00:00:00Z", "price": 90, "purchaseAt": "1995-02-11T00:00:00Z", "trialPrice": 73}, {"currencyCode": "kE5baCrAIvpyQDrs", "currencyNamespace": "YnmRTFISMH5PYVeJ", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1983-04-24T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1986-01-29T00:00:00Z", "discountedPrice": 65, "expireAt": "1987-11-02T00:00:00Z", "price": 63, "purchaseAt": "1994-03-30T00:00:00Z", "trialPrice": 94}], "PQQz1M1rseKp0AUb": [{"currencyCode": "Z3NWVxoFevFaOVbh", "currencyNamespace": "hFs9NnmLj9Ji0RhA", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1988-02-29T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1977-10-28T00:00:00Z", "discountedPrice": 33, "expireAt": "1998-03-18T00:00:00Z", "price": 90, "purchaseAt": "1971-08-18T00:00:00Z", "trialPrice": 90}, {"currencyCode": "EOT8CDYDJoJKC1dy", "currencyNamespace": "GEkKwA4H9Dmy34rY", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1999-02-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1996-10-16T00:00:00Z", "discountedPrice": 84, "expireAt": "1993-07-20T00:00:00Z", "price": 39, "purchaseAt": "1976-10-08T00:00:00Z", "trialPrice": 86}, {"currencyCode": "bhNRFPOIg3sWHBzE", "currencyNamespace": "tgF60X9Pi7bdbpQL", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1974-10-10T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-11-29T00:00:00Z", "discountedPrice": 48, "expireAt": "1976-09-17T00:00:00Z", "price": 45, "purchaseAt": "1976-08-25T00:00:00Z", "trialPrice": 23}]}}, {"itemIdentities": ["dXBOaGm5EcClSEJX", "BNF5HrYjdWOXWciz", "pJANWg7ANrhjj6wm"], "itemIdentityType": "ITEM_ID", "regionData": {"L6qUNRSNtvY4jgvK": [{"currencyCode": "tiw3F1MAZwJUCsSy", "currencyNamespace": "5Lps7ZjXlS0mqwpd", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1984-10-15T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1973-10-15T00:00:00Z", "discountedPrice": 39, "expireAt": "1974-07-09T00:00:00Z", "price": 59, "purchaseAt": "1982-07-24T00:00:00Z", "trialPrice": 27}, {"currencyCode": "flWs1bgECDsubmGF", "currencyNamespace": "kNgLCBnu6qwxYKjO", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1994-07-05T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1984-01-15T00:00:00Z", "discountedPrice": 71, "expireAt": "1985-07-30T00:00:00Z", "price": 73, "purchaseAt": "1977-02-07T00:00:00Z", "trialPrice": 86}, {"currencyCode": "07K8RlVTtqYcE1pc", "currencyNamespace": "flH8mG3eVEGn0AgB", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1993-12-15T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-09-09T00:00:00Z", "discountedPrice": 80, "expireAt": "1971-10-05T00:00:00Z", "price": 79, "purchaseAt": "1978-12-04T00:00:00Z", "trialPrice": 69}], "Pji9WhNpQ6LodsL1": [{"currencyCode": "cJbt08tw1LSSzz82", "currencyNamespace": "TAGjGr2J7eEBbCwM", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1989-04-15T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1986-10-02T00:00:00Z", "discountedPrice": 90, "expireAt": "1992-05-22T00:00:00Z", "price": 92, "purchaseAt": "1990-01-10T00:00:00Z", "trialPrice": 47}, {"currencyCode": "BksMrnPs6w0QxVEQ", "currencyNamespace": "k4y3V6C5HLrKl1q2", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1989-05-03T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1977-12-20T00:00:00Z", "discountedPrice": 78, "expireAt": "1995-01-31T00:00:00Z", "price": 23, "purchaseAt": "1985-01-09T00:00:00Z", "trialPrice": 80}, {"currencyCode": "M07hBGVZSwz2C4kF", "currencyNamespace": "7fMxdXXaGOYHmZyS", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1993-07-31T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-06-10T00:00:00Z", "discountedPrice": 94, "expireAt": "1998-03-06T00:00:00Z", "price": 22, "purchaseAt": "1993-04-11T00:00:00Z", "trialPrice": 48}], "KwAy4IwsGP0yMexE": [{"currencyCode": "vjD4D5k69UIqZtw2", "currencyNamespace": "lUQ8p33twZeouKLu", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1990-04-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1995-10-18T00:00:00Z", "discountedPrice": 2, "expireAt": "1992-11-24T00:00:00Z", "price": 83, "purchaseAt": "1983-01-12T00:00:00Z", "trialPrice": 75}, {"currencyCode": "8b74PTshlCAvAV85", "currencyNamespace": "Nt8VgX6l55acnpqG", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1986-07-20T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1996-10-15T00:00:00Z", "discountedPrice": 14, "expireAt": "1983-12-03T00:00:00Z", "price": 30, "purchaseAt": "1980-03-13T00:00:00Z", "trialPrice": 64}, {"currencyCode": "X6GSZVtmCA6vJBed", "currencyNamespace": "zTsSULDwgO7Wgcmu", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1977-02-08T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1972-04-15T00:00:00Z", "discountedPrice": 79, "expireAt": "1994-12-02T00:00:00Z", "price": 73, "purchaseAt": "1983-07-23T00:00:00Z", "trialPrice": 46}]}}, {"itemIdentities": ["joV3YyzqXCJ5Fjib", "s2AlsIzecJSXiNBD", "Cs7hrg32BCbzmkyD"], "itemIdentityType": "ITEM_ID", "regionData": {"c8y72do9M2S4wqlE": [{"currencyCode": "PoT6haphGZM9mrwS", "currencyNamespace": "SJNJDMeSSPh2PH9o", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1973-11-03T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1978-01-13T00:00:00Z", "discountedPrice": 5, "expireAt": "1975-12-13T00:00:00Z", "price": 78, "purchaseAt": "1993-01-13T00:00:00Z", "trialPrice": 6}, {"currencyCode": "iwMM5SrGhbV6c3Lw", "currencyNamespace": "fOFQJUsVxqhKQ6F8", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1982-04-19T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1991-03-29T00:00:00Z", "discountedPrice": 22, "expireAt": "1991-04-15T00:00:00Z", "price": 46, "purchaseAt": "1981-12-04T00:00:00Z", "trialPrice": 27}, {"currencyCode": "rxWvkFKmcTTTpWoI", "currencyNamespace": "i56suYu8BKeAnHai", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1974-12-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-07-20T00:00:00Z", "discountedPrice": 32, "expireAt": "1984-10-26T00:00:00Z", "price": 63, "purchaseAt": "1998-11-25T00:00:00Z", "trialPrice": 10}], "b1N5O2y4WqpYFEUe": [{"currencyCode": "WEpWKmJrZ6p6jbtt", "currencyNamespace": "OLhDvqZb1zAJPFnM", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1982-05-25T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1981-02-01T00:00:00Z", "discountedPrice": 88, "expireAt": "1996-01-30T00:00:00Z", "price": 86, "purchaseAt": "1971-12-18T00:00:00Z", "trialPrice": 38}, {"currencyCode": "VTp2VplrpsLecux3", "currencyNamespace": "8kGn0q6TTkIhmrZ3", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1975-10-25T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1971-12-23T00:00:00Z", "discountedPrice": 10, "expireAt": "1989-11-18T00:00:00Z", "price": 81, "purchaseAt": "1981-05-30T00:00:00Z", "trialPrice": 42}, {"currencyCode": "vVZlLC10wgi2EYA1", "currencyNamespace": "wWFzrGR2I6DXajtq", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1989-10-05T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1988-11-02T00:00:00Z", "discountedPrice": 28, "expireAt": "1991-11-07T00:00:00Z", "price": 18, "purchaseAt": "1980-12-11T00:00:00Z", "trialPrice": 71}], "nmLLT8QQsS8OWDd0": [{"currencyCode": "yjNea1IqmjocdL8B", "currencyNamespace": "gYOOY8WKtcjyM9Mv", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1981-11-15T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1995-11-10T00:00:00Z", "discountedPrice": 54, "expireAt": "1997-12-25T00:00:00Z", "price": 88, "purchaseAt": "1993-11-19T00:00:00Z", "trialPrice": 8}, {"currencyCode": "TW6gwqdIsoYaoSGl", "currencyNamespace": "KSFruEPMm7Er88Fs", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1977-02-04T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1971-05-10T00:00:00Z", "discountedPrice": 68, "expireAt": "1986-07-01T00:00:00Z", "price": 4, "purchaseAt": "1977-08-07T00:00:00Z", "trialPrice": 21}, {"currencyCode": "8xUYz5G3lm3JmBzg", "currencyNamespace": "PL6eOfNHGKq7zuSu", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1993-11-16T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1998-05-08T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-09-16T00:00:00Z", "price": 47, "purchaseAt": "1990-01-01T00:00:00Z", "trialPrice": 80}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'OPTIONBOX' \
    --limit '64' \
    --offset '49' \
    --sortBy 'wU2AtLeXSlE71AbQ' \
    --storeId 'i7G927q851X3vnYt' \
    --keyword 'PBurYXNBCKhxnAm1' \
    --language 'hPUfzaXivaLHZStt' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '47' \
    --offset '68' \
    --sortBy '["createdAt", "updatedAt:asc", "name:asc"]' \
    --storeId 'tdbGUsWNciCFVmVX' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'YN8356nIvmpUV12T' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zDAm6RJBhYXpXwVD' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'SVfw8Pka1OXtdVBK' \
    --namespace $AB_NAMESPACE \
    --storeId 'wG76Faq0RmaTz7mB' \
    --body '{"appId": "7w6eeTyc9XWx52da", "appType": "DEMO", "baseAppId": "ryDW2Jhj3lfxTXML", "boothName": "XYpymRlUKt78mfhu", "categoryPath": "jN8rUdKGypKJ8NU3", "clazz": "txKpWghUmxWv06i5", "displayOrder": 17, "entitlementType": "DURABLE", "ext": {"QWeojuAATD88xg7D": {}, "gGqBIJUWNodvTo6Z": {}, "av6SiTLSXxeIDNU7": {}}, "features": ["LCoxrrzqwpWsRvtO", "Y3lHxPPzot6FCfeO", "F2ivNClA4PvW7wRQ"], "flexible": true, "images": [{"as": "QmlozVORYCHQ6uie", "caption": "YcaudFoxguL54FQa", "height": 19, "imageUrl": "EDNt6kJAEJGqp0BU", "smallImageUrl": "o6NFXnJRPTDmUPsp", "width": 47}, {"as": "KJhIVD81tcY8TXWw", "caption": "WiXQuEVgCHkf67zr", "height": 64, "imageUrl": "GviW0UUnFsVl8J2P", "smallImageUrl": "rJoWRe0wtHkbaOcJ", "width": 56}, {"as": "ZwYFXIVhySIV0CUF", "caption": "3JpBNPsCz580oYCo", "height": 47, "imageUrl": "lnL0o2RyupfsZrMO", "smallImageUrl": "Wr14s10H1ErhibUh", "width": 1}], "itemIds": ["5AT0ITlsP1KonmTb", "MkvbTTtBJo3bWt27", "DrgTXCOSVCX5eWFd"], "itemQty": {"BaPFEdVaIzPnLDtN": 74, "kguIqQsDVlCwYhmG": 10, "JXbqwBDAhNeWDTpD": 78}, "itemType": "COINS", "listable": false, "localizations": {"j5doS9y8pvP1D2KE": {"description": "UhZ5G1PvTq0TPJA3", "localExt": {"NSOrWTmNPiqtMFwM": {}, "QoyHHnwH2iTNZfRx": {}, "teSy1IU7UqLcXkPf": {}}, "longDescription": "Kx3pyRHLZa1BWnsr", "title": "bqOsAMr2jlNamN62"}, "Kgk5LwEquDHLHSlU": {"description": "vI97PratSEwUyYmb", "localExt": {"t5DHMTlYm3vmpIug": {}, "rycnCgEgGJQSxLFy": {}, "PaS2oYdVX94bIcIn": {}}, "longDescription": "WeTvDE0v5z2mWRWx", "title": "1PRZ7ntcnWl5CR59"}, "80U7JGiISHennQW0": {"description": "OsMS1yO2j1iL6UGw", "localExt": {"fiWLIzGy1YTwpy1b": {}, "cKUKNWOgIRTSKQQs": {}, "1dcePqzumDI9N8aD": {}}, "longDescription": "ctd8LfjgLmAqBW8n", "title": "Mcx1jGxRNUoj5iH3"}}, "lootBoxConfig": {"rewardCount": 15, "rewards": [{"lootBoxItems": [{"count": 100, "duration": 81, "endDate": "1978-08-25T00:00:00Z", "itemId": "GrdnDjPL1NahQnZY", "itemSku": "2PeEFHKRihQFp02Y", "itemType": "EwvayLL1Xwy0Tbwc"}, {"count": 63, "duration": 31, "endDate": "1974-11-17T00:00:00Z", "itemId": "mjpbiEbQBN4ehUMm", "itemSku": "QXv0iGbXkWyQAeUE", "itemType": "jdQ2NOOU3t2srxaO"}, {"count": 74, "duration": 10, "endDate": "1972-08-21T00:00:00Z", "itemId": "MM9WUn1o2kXATc6D", "itemSku": "ibSZ58fW9rL3mGAn", "itemType": "KgBkhCi7AMvBRPss"}], "name": "E6ZM97D0Vt1QXfHW", "odds": 0.3930210186811788, "type": "PROBABILITY_GROUP", "weight": 48}, {"lootBoxItems": [{"count": 29, "duration": 98, "endDate": "1984-06-03T00:00:00Z", "itemId": "BhnRRz3qhjV77cBt", "itemSku": "vtLsvsoxxw8DaBQK", "itemType": "bwyMZsFq52ahskWD"}, {"count": 29, "duration": 97, "endDate": "1979-05-31T00:00:00Z", "itemId": "Wc5ch7tcSGlmraiO", "itemSku": "n1JVKQDzKXQTMrwZ", "itemType": "wZhwyCUv32lAXL5t"}, {"count": 18, "duration": 41, "endDate": "1990-10-04T00:00:00Z", "itemId": "oERysExIavn21gpG", "itemSku": "yGzNs8vYfpOHd8K3", "itemType": "yg0N9OodX2UDP1Fm"}], "name": "QiqxWJwlzRtKsRx2", "odds": 0.48686680557932993, "type": "REWARD_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 58, "duration": 71, "endDate": "1983-03-27T00:00:00Z", "itemId": "3QzSib6HwAaS1xMM", "itemSku": "gWf8OG8LbMkowwRw", "itemType": "JOshzdqLabA1Sn6r"}, {"count": 93, "duration": 6, "endDate": "1991-07-01T00:00:00Z", "itemId": "crLLTD5YMarxwy4J", "itemSku": "mYEX5UGkLI4UvuHs", "itemType": "qAoegUj8Dp09SGEF"}, {"count": 71, "duration": 54, "endDate": "1973-04-02T00:00:00Z", "itemId": "0DNV3TPTc6qE1T4e", "itemSku": "2JOsTfp4pAE6ywlQ", "itemType": "fEkUV5faXbBR6A1v"}], "name": "dkDIwZFD1cHTUMqF", "odds": 0.029484765140944336, "type": "REWARD_GROUP", "weight": 63}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 57, "name": "BmkSFjIlahzk9aPw", "optionBoxConfig": {"boxItems": [{"count": 50, "duration": 96, "endDate": "1986-03-08T00:00:00Z", "itemId": "nwOQlswRcXtctHn8", "itemSku": "gmY7FfsMBvo3553d", "itemType": "PYBgJbwlgH3FL9OJ"}, {"count": 60, "duration": 28, "endDate": "1972-10-19T00:00:00Z", "itemId": "sWlLim3gkqM59rc0", "itemSku": "vo7aSVpEcuUasHe4", "itemType": "hmaIcOND59qC3sY5"}, {"count": 5, "duration": 97, "endDate": "1985-09-16T00:00:00Z", "itemId": "gKbSfrs2CMDBPP8f", "itemSku": "5QhPk7FXqIS6EXbn", "itemType": "udMG0cnmLTqMVIH3"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 32, "fixedTrialCycles": 51, "graceDays": 61}, "regionData": {"eA1fbJhv89kVDmJ3": [{"currencyCode": "GjidhnNbsN0Wj1mH", "currencyNamespace": "AX3EIwSEbj04wnm2", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1980-06-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1979-07-09T00:00:00Z", "expireAt": "1981-06-16T00:00:00Z", "price": 19, "purchaseAt": "1975-06-23T00:00:00Z", "trialPrice": 3}, {"currencyCode": "WbPkqd6vj5sgr3tb", "currencyNamespace": "qaXRmIv2a4Ke93F9", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1976-12-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1989-03-19T00:00:00Z", "expireAt": "1999-05-22T00:00:00Z", "price": 98, "purchaseAt": "1972-05-08T00:00:00Z", "trialPrice": 31}, {"currencyCode": "O7dkuxOWUA24Gcte", "currencyNamespace": "1A4Jzm5WI1yPsX3K", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1989-02-08T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1982-02-27T00:00:00Z", "expireAt": "1995-01-02T00:00:00Z", "price": 80, "purchaseAt": "1998-11-30T00:00:00Z", "trialPrice": 45}], "wsOKxQrCJXlzjTse": [{"currencyCode": "mYQ17NhBEIz2ZmPT", "currencyNamespace": "0YJYm4GfKLWebitd", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1975-11-21T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1975-01-19T00:00:00Z", "expireAt": "1984-02-04T00:00:00Z", "price": 6, "purchaseAt": "1984-10-07T00:00:00Z", "trialPrice": 20}, {"currencyCode": "JkmCYbdUCuk1Skts", "currencyNamespace": "6kZYg6xhzAdPOZzG", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1976-05-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1995-11-12T00:00:00Z", "expireAt": "1977-09-25T00:00:00Z", "price": 61, "purchaseAt": "1975-12-25T00:00:00Z", "trialPrice": 10}, {"currencyCode": "5bWAN7nbEFyNabth", "currencyNamespace": "tcES9tB9t5MosH1t", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1997-05-23T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1973-08-22T00:00:00Z", "expireAt": "1978-07-17T00:00:00Z", "price": 58, "purchaseAt": "1977-01-18T00:00:00Z", "trialPrice": 83}], "2WPttm92VdWi5ErT": [{"currencyCode": "U5JQR5wdqO3QlxJL", "currencyNamespace": "BXdkgHHY0EDDi6fX", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1997-11-01T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1973-01-02T00:00:00Z", "expireAt": "1978-09-02T00:00:00Z", "price": 42, "purchaseAt": "1993-07-08T00:00:00Z", "trialPrice": 93}, {"currencyCode": "JVx9X91ePz3j44ZO", "currencyNamespace": "Ba1ahZryyYXYDDML", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1997-10-16T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1991-02-08T00:00:00Z", "expireAt": "1972-03-30T00:00:00Z", "price": 78, "purchaseAt": "1994-12-08T00:00:00Z", "trialPrice": 98}, {"currencyCode": "5lNpyARaqTWChHPR", "currencyNamespace": "fiMa9Mv0qt5tPMGI", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1981-09-26T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-08-29T00:00:00Z", "expireAt": "1995-01-31T00:00:00Z", "price": 97, "purchaseAt": "1990-02-12T00:00:00Z", "trialPrice": 99}]}, "saleConfig": {"currencyCode": "HtxoxZIayC7EOGqx", "price": 70}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "2p3SPwltHwI6tlYt", "stackable": false, "status": "ACTIVE", "tags": ["T7SSiLIsSjkTydNR", "wbJQC0WR9pgRHMd8", "IOAFIZemNxKovssW"], "targetCurrencyCode": "b1bNDG2arNrJb6qs", "targetNamespace": "tiphymeuKGLmwF7Y", "thumbnailUrl": "GY6yMDj6bicTBjOV", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '3Q3pS0U89HnXIb0B' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'teHIemmpQVH0lJeh' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'LKJk9w3XNRVYf2tr' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "KDXk3eD6L2KWE7v4"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'kcdf0GCNvcWOK1A6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'FS0U7atJw2el5fPV' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'I98nWoxNwA61St1y' \
    --namespace $AB_NAMESPACE \
    --storeId 'tBLMLJyQBfyiNwwD' \
    --body '{"carousel": [{"alt": "pnTnNlMv2mCZdPoA", "previewUrl": "YaZY3UXxCsVwI7gh", "thumbnailUrl": "kmiik7DXFh1OhGna", "type": "image", "url": "iP3JDfIN0DoZ6eJq", "videoSource": "generic"}, {"alt": "XwlxqPLbxC13qCv3", "previewUrl": "5bPhvQVh5Cw6N0IX", "thumbnailUrl": "KhMMXGkJ8h6TZror", "type": "video", "url": "ctHlA3vsIj6QneOm", "videoSource": "generic"}, {"alt": "gSCFvK7YcOxuYFIk", "previewUrl": "D9abXwsiZ8Viholk", "thumbnailUrl": "mm6R3DtlssNRXBJ1", "type": "image", "url": "Gy9aHYqgi1uRm7l7", "videoSource": "generic"}], "developer": "juRInCQS1QxIxzRd", "forumUrl": "MPVuFOUzAA799mzU", "genres": ["Simulation", "Simulation", "Sports"], "localizations": {"45caYFfqpsvpn8z4": {"announcement": "cvBgTHlOMAZgK85H", "slogan": "mEwdRJ9JsG219ZV3"}, "1us9mxvCJfpcD2BT": {"announcement": "oL2dNZIxN0A25aa4", "slogan": "cxhV1RevNlLw9SFO"}, "jf19XuGw61ZcJaYW": {"announcement": "Lhx4lubc8VD9V51p", "slogan": "2EyjKjefPL3KtRNB"}}, "platformRequirements": {"KlBbFKEAq81T5RkG": [{"additionals": "tR2g2NuZAytJfU01", "directXVersion": "btK7ZFgFaLa85Eyp", "diskSpace": "3GxlQU7dEXfkrb7h", "graphics": "LM5mlxhC1vb9FM9p", "label": "fMt3ayv7kwddiatv", "osVersion": "cgDOULpoP47kRz6z", "processor": "A9SrNdpPWHrGQFB7", "ram": "8fyKFIG6PMVgUZsQ", "soundCard": "a3g4M7Zwe1QZEvzw"}, {"additionals": "42j8BKf6CThY88N5", "directXVersion": "FcCbDiAB7qTwKDEk", "diskSpace": "mN0PK2841dGuLKUE", "graphics": "DfWNIRgv1IKA2CT9", "label": "yVRgU2ep1cRJgBGT", "osVersion": "QuRC2AsXBsDFoRaG", "processor": "s1MSbDuvyT8x3mhw", "ram": "CJK2SoVWXM6oIJbH", "soundCard": "UEh3K2qCmfKO6yua"}, {"additionals": "GuTfhE6ffT7rE2LW", "directXVersion": "fnIf6Tiwp9VNSiLS", "diskSpace": "nDXTI5IvLO4d8Eni", "graphics": "k6dtolZFzBzI2iyy", "label": "KlU0ZYgB7c5glAvr", "osVersion": "YuTU28Gk54IHpsFS", "processor": "u4lRFXhfkzb997ci", "ram": "kwzFCPPhFdcPGoG2", "soundCard": "6gwfmWwoDQJfbqLr"}], "DG5Tdxp0mUybedFo": [{"additionals": "4NrK0QpnLZncKmEI", "directXVersion": "W3XfRbT8Y57sf2vE", "diskSpace": "81FjMbWHfbh0QRiv", "graphics": "xuM8XIwdI7nwzZce", "label": "pKAUWbu2g1QzJGbo", "osVersion": "Vv6QqdZ0njaT1K7L", "processor": "iICcgnD52ItYTeuZ", "ram": "nU4Q9b0F0YpxzqQe", "soundCard": "18QkydHMw4AJkdzM"}, {"additionals": "Y7OEa19y4tPyV1bu", "directXVersion": "oNqwCBFYSPwO7tpc", "diskSpace": "tKLSiLDTjFy1zfYE", "graphics": "1RzVt63Vv1MQhoTh", "label": "m2eAn5ol49mf1cor", "osVersion": "Y3MJ1Xie74FxnotC", "processor": "4NfbcNpysDrh1EPL", "ram": "yuvKl9Krop569jjH", "soundCard": "osBjtwsZnyIyNsaC"}, {"additionals": "0W3jvWHPOVYzq2W6", "directXVersion": "WYJlGOb2HblYCgQ6", "diskSpace": "QftgXZhXjYoQoU8B", "graphics": "Pwukuh2oCRIbgphe", "label": "khK09QozrRJFMrE0", "osVersion": "f1zRx1E5K0JvvCUc", "processor": "qFpmIBV2DC24waS0", "ram": "VFGblg6Ff7ke2tIi", "soundCard": "4B4W2Ffdojyr7fw1"}], "X16S7xTdQfEgGxmh": [{"additionals": "LMo9FpnhKaQiPCN1", "directXVersion": "XbwF8ysUA90LonaS", "diskSpace": "SYezsRBqzbiDLZL4", "graphics": "eKffTz9yTegrNF1L", "label": "MaaToO52a2yamRTH", "osVersion": "4Xiu5UrvftWAADKp", "processor": "awl4cUdjVF6dOE9o", "ram": "jdsUyklEfObiBbOv", "soundCard": "6x1DwYfMhMJIj7DE"}, {"additionals": "PvoDy8n7BGF1EgsO", "directXVersion": "3UmmqiehISsZjF1O", "diskSpace": "mNotCc8ZbWoAjZAL", "graphics": "K2vadqrPN4xRZ865", "label": "psqPpe3JlAHphSuG", "osVersion": "JL0OfRm5r3EGiDZa", "processor": "cID8amLyYbZt7dOf", "ram": "FnfqhsBzuoOceP8S", "soundCard": "nUXVAF3YS9r6STrZ"}, {"additionals": "lnWnWv9CWj3Zt9tg", "directXVersion": "R2OdlyhdPheffrxC", "diskSpace": "72zJ6tSH2hbREf6M", "graphics": "jphtwcI42muSAkMg", "label": "eidzYK0D5o6vo9iA", "osVersion": "uXK6X0acAtbkFzok", "processor": "1a0UoWiEXXSX3Bo7", "ram": "5v7Uficd22s6F56n", "soundCard": "naojvC8NlHnRXN9x"}]}, "platforms": ["IOS", "IOS", "IOS"], "players": ["Multi", "LocalCoop", "Coop"], "primaryGenre": "Casual", "publisher": "gFmoh3mFSHNqYlC6", "releaseDate": "1999-09-20T00:00:00Z", "websiteUrl": "rtYnyWDvHvN4es4P"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '2mAOgEVUDsidUDhH' \
    --namespace $AB_NAMESPACE \
    --storeId '4nnKRSOr6Q1gIqtx' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'hcFVK7vQuzS6HzML' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'QGL2K2MRYQYpgrrH' \
    --namespace $AB_NAMESPACE \
    --storeId 'tb5dqjj6WBbKcNGl' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'HeB7HtC67pIq3bxW' \
    --itemId 'MM1Z0xYkStIjFH6w' \
    --namespace $AB_NAMESPACE \
    --storeId 'fAtCKEz9vked0bJm' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '35HCWvnRwgh7f1NZ' \
    --itemId 'UpigsTr9tgAml0i3' \
    --namespace $AB_NAMESPACE \
    --storeId 'sl0bLrm7xPbIll40' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'YIV3IBvyzpt5V6vq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'rfDuv8iyTZyAYKDj' \
    --populateBundle 'true' \
    --region '7swQEz5hwaT9a0kH' \
    --storeId 'OKacLbOvuKNV5tuY' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sFCWRCoN0FqKHfFL' \
    --namespace $AB_NAMESPACE \
    --storeId 'g39ZO1QQamzMnJDC' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 60, "comparison": "isNot", "name": "WTNHeA8VPnzcLlyr", "predicateType": "SeasonTierPredicate", "value": "vZuPkEK6HO4GblmZ", "values": ["5zlVVZepVeI2KOzp", "owH4K2s11O93I0aw", "DsCcr8Cm9xulfg4P"]}, {"anyOf": 38, "comparison": "includes", "name": "DftAmqzoUi9DPWZk", "predicateType": "SeasonTierPredicate", "value": "Kf9T4eakDTlfEdTL", "values": ["qSpeWo1OyeXiS1qp", "7UOUkBYdntxjAnG3", "2xKvkuQa2CdB1vnD"]}, {"anyOf": 91, "comparison": "isLessThan", "name": "sQXRJiYLJ86Cuc0e", "predicateType": "SeasonTierPredicate", "value": "k4hKRoAni1EoSAXP", "values": ["1N3qUgrhsoz1ZKDt", "JafGbg6oKdm3Zs3N", "PHfZ6eZtc90xUGcC"]}]}, {"operator": "or", "predicates": [{"anyOf": 81, "comparison": "isGreaterThanOrEqual", "name": "4n3d7mjVfozev6ai", "predicateType": "SeasonTierPredicate", "value": "MmuiO9KuIZdINxD7", "values": ["ecKkV7HAw3t1rjPA", "5mJivB2sI4QJyvbD", "yEusfbgYXnczaenJ"]}, {"anyOf": 37, "comparison": "isLessThan", "name": "opRBSdGOj547L9ao", "predicateType": "EntitlementPredicate", "value": "wbKMCRUy5eFDT3cR", "values": ["Nxzzkxz2H4im6V4Q", "Esddx1ZEvsW1GJj6", "j482sbnL8dPcfOxf"]}, {"anyOf": 0, "comparison": "isNot", "name": "kBg2iu7yZtwbJx7J", "predicateType": "EntitlementPredicate", "value": "UzQ1XB6GeNqHhZ9B", "values": ["VVdQPnQCPD9nG4cn", "3YsalRuHyHTkrBTe", "sxxIeIVmvSwilLZg"]}]}, {"operator": "or", "predicates": [{"anyOf": 92, "comparison": "includes", "name": "37zJgmL2s5DFAvMz", "predicateType": "SeasonTierPredicate", "value": "6VHIx6JByGM0BG0t", "values": ["Y8zqfk2x1YC8Bx8G", "BJiFuEklu3CAPd2B", "3EQJWh7jZyzPwEbu"]}, {"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "f6YofS2gDx7QSrj9", "predicateType": "EntitlementPredicate", "value": "jTzuLu0AKKq7WEzf", "values": ["yxGyEQhTnTQRaGMo", "pviIcNYOOAl7ktjG", "k8udxEDMYSUmg4Jq"]}, {"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "mqImL1uy7Afpx8EB", "predicateType": "SeasonTierPredicate", "value": "jC0pRDzmcK7EdRjY", "values": ["E3k6NvH07GfpKs1n", "fLoAIBOob0JalQGU", "Y3TkLXlqFNmS7sjk"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'gc1cNIp1ekGyfNiz' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "QynQqALwZI64dTbV"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --name 'RQn14eW9eRHPSZ8w' \
    --offset '65' \
    --tag 'FTwyE2LrpsddrxUw' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oN5fvfDFZXWesOXD", "name": "arBsbKYcIKb8xsyw", "status": "ACTIVE", "tags": ["aSvHVIGK4BXyigU2", "3q3LEA4uiZ1QWjBK", "Rg3WXY0iGX6diqNs"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ictXBZFkVHCxZ5gh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Kkj01MfsIZZCq78J' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ygbYyDvjikBljMqV", "name": "Evt2reSNv8om9Qjj", "status": "ACTIVE", "tags": ["jVADnad0iMl761qa", "2K06mhEc9P86DLYX", "T2fFv5XZz8uNY1nd"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'tHRCflUm5LtpFKtt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '2fInUBqH9WcSSYsl' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '55' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'D8dc9FfYNZh9Fizd' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'ZoypGbpLMDMLEUP9' \
    --limit '55' \
    --offset '73' \
    --orderNos '["RL8dNR8D0yqc7Tp2", "G6I9erk8UTyzf5bA", "zN9Ip9qhp5jFUKm0"]' \
    --sortBy 'pAn0UtNdcozVKuSs' \
    --startTime 'UUcIZZ2vS2i07tjz' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6O8GLVbCMZMrP52k' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kWlSWfn3NRzTeazq' \
    --body '{"description": "vxKn2vxgBzOWZM2g"}' \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "LFZYAetLAj9uNsvV", "privateKey": "a2HdO25kpE1y106f"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'YBnRExJ8bVFklCSI' \
    --externalId 'yLVTV8al9QZ0H9C5' \
    --limit '48' \
    --notificationSource 'WXPAY' \
    --notificationType 'E7Bcaehn3jHiNbjg' \
    --offset '100' \
    --paymentOrderNo 'NjFrRIDrEL9GgNFw' \
    --startDate '5RIH5FlpvjK1EakR' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'VeEOu9d0IngpwXHb' \
    --limit '20' \
    --offset '41' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "8txqUREKCESfapTG", "currencyNamespace": "RUnAiWvpwpDnH1pr", "customParameters": {"K550MTV2l3IwMJ8i": {}, "8HInj8bTFDGnbPMu": {}, "kVJm7j4j9aGndaba": {}}, "description": "AbNwq0aPumjY6deE", "extOrderNo": "vKQkikW28Yl3C84H", "extUserId": "ANaxhjLyU5CVE4up", "itemType": "INGAMEITEM", "language": "vLQ-hhWZ-qp", "metadata": {"OryAmOOXSvmyachb": "mbjdvz5o1QuQFFMj", "wflIUt8ovofGXvaj": "v3VvsqnhWzarTZWb", "pzWs78wmSaBTnWHF": "a3uEj1pxvvHAtHYL"}, "notifyUrl": "mzci8jOMyf3hhiSW", "omitNotification": false, "platform": "JSrmpEGNuxozZsXc", "price": 44, "recurringPaymentOrderNo": "DvN6laSVTQlUVfSI", "region": "ELWdOH1ZkuXawtnt", "returnUrl": "t1oiRFrgPzxP7nm6", "sandbox": false, "sku": "UX2TQos8sIJCUSDO", "subscriptionId": "eGEN0gL4L4ScpCZJ", "targetNamespace": "o1c0YIH1INpXgzNB", "targetUserId": "j1n4hEnOhuLplCuo", "title": "kxI5hLNL5KxkFg6A"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '8Ccf2A80D54KZALH' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Hc8NbyInwfA6eRKZ' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7CYr77svVHXH8aLo' \
    --body '{"extTxId": "bQlzzQXsT2C1FdwT", "paymentMethod": "sXzZ6nLKuKiaeCCq", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'onACX8O9VW72vCOB' \
    --body '{"description": "73WAXqWp8ZU8HSFh"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'q2X59GNio0AYkYUk' \
    --body '{"amount": 70, "currencyCode": "BDC7cAdhiN33Hz0Q", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 67, "vat": 36}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Fetnn4tIq4vXJ8aR' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Other", "Steam", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'txr2ivWz8RMWlyqT' \
    --limit '58' \
    --offset '58' \
    --source 'ORDER' \
    --startTime 'EcGIgB2DHRn5yFGz' \
    --status 'SUCCESS' \
    --transactionId 'CrcuJTYTJAOMeXWV' \
    --userId '7twzFnXjAug5Xr6d' \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "FQj0N24qex1QKRlu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "UAgDjrnOFB8LbCpM"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BXBFdZbpyrRJh0Kf", "eventTopic": "OnUvuyIYUWLu0FP6", "maxAwarded": 18, "maxAwardedPerUser": 40, "namespaceExpression": "WxQJzbO9GJs8np6j", "rewardCode": "idze7tJOqFt2u6n5", "rewardConditions": [{"condition": "XDwnkpyKxcxYzhbL", "conditionName": "aDKYzkgBbPlwS1jl", "eventName": "UDFjdZcW339ibi8R", "rewardItems": [{"duration": 98, "endDate": "1978-03-22T00:00:00Z", "itemId": "FUBej9nMJ1IsdqcB", "quantity": 35}, {"duration": 28, "endDate": "1979-04-30T00:00:00Z", "itemId": "Amj8aOexzEadbXz4", "quantity": 77}, {"duration": 32, "endDate": "1983-11-15T00:00:00Z", "itemId": "IMDFEwNAgNLC7WPn", "quantity": 49}]}, {"condition": "E6cbDO7Bh1uHfQOH", "conditionName": "lF04kPBSXccHDPke", "eventName": "fMSDMtHoHYcRQ2aV", "rewardItems": [{"duration": 88, "endDate": "1972-08-19T00:00:00Z", "itemId": "7WBvKercdcJXCNiJ", "quantity": 87}, {"duration": 52, "endDate": "1976-01-31T00:00:00Z", "itemId": "3BhObOBw7V25SdSe", "quantity": 35}, {"duration": 0, "endDate": "1988-03-14T00:00:00Z", "itemId": "mcow4k9EQqAgGcaP", "quantity": 81}]}, {"condition": "NdjfaRpvs4dqfCbg", "conditionName": "R2iDKkEmrwTLeVvM", "eventName": "sat4GOO6CcoMx65r", "rewardItems": [{"duration": 81, "endDate": "1976-07-27T00:00:00Z", "itemId": "W987LoxcMXIRIfDp", "quantity": 48}, {"duration": 85, "endDate": "1987-08-15T00:00:00Z", "itemId": "kkMYsqP0oLmHwlVX", "quantity": 10}, {"duration": 13, "endDate": "1999-02-28T00:00:00Z", "itemId": "2KIuJBIGlhpJiQ9N", "quantity": 98}]}], "userIdExpression": "csKyxGo2nFplAa00"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '4d1Qq15blrCX4rY1' \
    --limit '21' \
    --offset '79' \
    --sortBy '["namespace:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4cJuNLxbbu16SOo6' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HdXOKMUn7zoou51P' \
    --body '{"description": "a4cVH86IsQ1am7Xo", "eventTopic": "6nhdZBBwipTjq3To", "maxAwarded": 26, "maxAwardedPerUser": 84, "namespaceExpression": "OH0m1FaulZLuAIoS", "rewardCode": "ZNCQt4I2h6qqdz0o", "rewardConditions": [{"condition": "jOJOvgeLMU7M3krE", "conditionName": "S3QGqFSnbFj9wNST", "eventName": "wqD68KPgCS0iGLgG", "rewardItems": [{"duration": 43, "endDate": "1994-10-20T00:00:00Z", "itemId": "rdPcmqFvYGVUm6jm", "quantity": 4}, {"duration": 88, "endDate": "1980-04-20T00:00:00Z", "itemId": "1tgEWn5tEOtPQXE2", "quantity": 36}, {"duration": 90, "endDate": "1997-08-18T00:00:00Z", "itemId": "nepokLpCyst3glWh", "quantity": 53}]}, {"condition": "WAzNDEBtUEy0Y5E3", "conditionName": "hQ6pKwYckEe9RZpG", "eventName": "hRGqCIEqIgdl38m8", "rewardItems": [{"duration": 52, "endDate": "1995-12-24T00:00:00Z", "itemId": "r8Xg3PXa2e6hibw5", "quantity": 48}, {"duration": 65, "endDate": "1973-08-08T00:00:00Z", "itemId": "FO991cxIApQfOvX2", "quantity": 56}, {"duration": 27, "endDate": "1995-10-09T00:00:00Z", "itemId": "9wQ1HxRnkDlY0TQN", "quantity": 77}]}, {"condition": "2aX2ZjVZGVvvqKhq", "conditionName": "qz80e3PPE29lSple", "eventName": "vvpNO8ARiYfmVEqo", "rewardItems": [{"duration": 7, "endDate": "1975-07-28T00:00:00Z", "itemId": "84kaeT8W5tfUny6L", "quantity": 33}, {"duration": 68, "endDate": "1982-03-11T00:00:00Z", "itemId": "rfDFyuFYRBlvXgzS", "quantity": 99}, {"duration": 43, "endDate": "1997-12-09T00:00:00Z", "itemId": "mzwOemvG11fbTxa6", "quantity": 42}]}], "userIdExpression": "FSBkZLq2RlcZW8Vc"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ECVnEn4QGlCrYwQQ' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'bV75eQkH8IvIhiYz' \
    --body '{"payload": {"4ReW3z34rs7i31HR": {}, "WejTe0c6jWtPs1T9": {}, "oJeDsdOkm4jHzbeR": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'rnYds7OgToYRt6zt' \
    --body '{"conditionName": "YkxLLW6rxc6eAPdZ", "userId": "3ZHrIozSr7v8a68F"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'hlw9be67KhqewT7b' \
    --limit '9' \
    --offset '95' \
    --start '7s5GJy5jyiF2ljtj' \
    --storeId '7GQNiHhbxqyiPyqK' \
    --viewId 'BHD6uk8NrO6RBrq2' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'pT3GoX8MyriSfvB3' \
    --body '{"active": true, "displayOrder": 27, "endDate": "1976-07-12T00:00:00Z", "ext": {"C4wLUIeTLWRV3nlC": {}, "w7KrqcDKjjH9GlO0": {}, "DBhicwjh8q0ZMxrK": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 24, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "CIPCrQQqD2JpYuFp", "sku": "ac02PJfOyD2MA7Kf"}, {"id": "MiKjRRuEbgEj7i5y", "sku": "KunniX60jxHFH2Zp"}, {"id": "x9BK7eLl0U5O0Dmc", "sku": "blBcD6cqvT6hB3LM"}], "localizations": {"zTU1peIuoiRi7Vos": {"description": "EhSVJR6Ck9hBMAUQ", "localExt": {"qfmIg4YdEPOGQ8Vd": {}, "JH2kPtJl4yEig6tz": {}, "zzo8vz7XwqRkYp5s": {}}, "longDescription": "si05CTDXMCIp9cWO", "title": "VM7fuP2ynhy1HvGS"}, "HBexq7UJLOj3erwX": {"description": "tDadktAO0XlXKy1M", "localExt": {"myNJeCox2LIXZF4f": {}, "AySu2vwoxyPdZhL6": {}, "FLR3Yid9Iq3eNNIE": {}}, "longDescription": "ZesU7BCghYGDaGW0", "title": "vb41GM5T5qtsz40s"}, "EhnUEaH3ZKZFa814": {"description": "j1fBdEbwjwnMl9se", "localExt": {"raDxiCnEVUcAW3W3": {}, "vjxBBVd26OLsFhPn": {}, "C1kONJ3YbjuXvLPD": {}}, "longDescription": "oyHZsdk3zGnx8xvk", "title": "JpfV8WdXEefhWD8p"}}, "name": "qQAPeAXLHpicQR4r", "rotationType": "CUSTOM", "startDate": "1975-11-03T00:00:00Z", "viewId": "NdxPiSMm5VponZ9g"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'R2d0jLWEkfaJY67b' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'RMQ3solaEE1GbTZK' \
    --storeId 'SYzKJYx9E3jS7Igp' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SvbypCNoxaMTITcv' \
    --storeId 'T5DVVpOu9RtaAuWc' \
    --body '{"active": true, "displayOrder": 97, "endDate": "1991-04-17T00:00:00Z", "ext": {"stXIW59sZexAL1Fp": {}, "ZrF28tJx1a1kVQ5X": {}, "xzN73k7wBaYM0ywY": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 39, "itemCount": 88, "rule": "SEQUENCE"}, "items": [{"id": "pc6xe3izES5F98IG", "sku": "YJevfKQw1aCQwbuy"}, {"id": "pjYuC8oqTr2P7MlC", "sku": "MjCvKrIvArC48LgI"}, {"id": "Cxpd0JZswH4vvmrB", "sku": "Ybcr2SD741J6PazR"}], "localizations": {"oXpJUzkn5K8FuUGB": {"description": "I3iiFLFV77vA93n3", "localExt": {"upWd2N4tTXyT4nIA": {}, "7lKznlYzNXqS49Nc": {}, "RGAA1J7ruhaLiaoZ": {}}, "longDescription": "peiPETdyUiALVMtd", "title": "p5lcCkMeNQsiEkle"}, "ieco8vL26wKdJM0D": {"description": "hmDIGfcGYrsoNzVO", "localExt": {"utdIhNwZg2B4L2GN": {}, "Fg2eQXky8faDdBlt": {}, "iZ5nvRcC2GwSYLZs": {}}, "longDescription": "i4BbSemHDfIRHBB8", "title": "m0EIh4yDm3wUqFNN"}, "VGvBoWiK2i57JUuq": {"description": "TVdjX5ZzfeeDMYkE", "localExt": {"WgfED7dHk5urGNsg": {}, "XSrpPuLtsW7RcOEf": {}, "KMBElk3xvDWRDc38": {}}, "longDescription": "ZvpBK0tmYjSqzX9A", "title": "ZZX9pF4SlW4i9eX3"}}, "name": "37Nhqeko7iqwHOFY", "rotationType": "CUSTOM", "startDate": "1981-10-07T00:00:00Z", "viewId": "WVRoiVdNZ8o2VAlu"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'MjzKmbIw1YNKT5Yu' \
    --storeId 'jM1OYSskLa16G80S' \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "6sjokd6CYim306ze", "defaultRegion": "XI52UfPu6QTsRcBb", "description": "iMGv50xdaF3TJ4mm", "supportedLanguages": ["OYaoTJC8bD6wL7M6", "Q9Dp5lCstvdzG3CW", "cpZ2Vlkh8lx7XUbz"], "supportedRegions": ["6ewStI3oqpw7oWkV", "R8DHfAt3zbnV1Z0k", "Q9X0mtXO8QlLjCGl"], "title": "SgGV9fNMFhrZdR8l"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'EP1BYZJJ1vZoqnid' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jKSi7ESiPu0Hct9C' \
    --body '{"defaultLanguage": "5S5oluZOjhEeSmCp", "defaultRegion": "kZNKf7UC8byzSg6I", "description": "xiApVi7GywHHUkQV", "supportedLanguages": ["pZEBQ9O4gESvVdIk", "NA6Jc1fvmWPMDfkt", "elCTPtAiCH3qyaGJ"], "supportedRegions": ["4KAqFVyiIuewTJrU", "DjSffZ9EhRuk6DL8", "f0XHiXMLpoQQ1KuE"], "title": "uvGmRSEHFgywW9UP"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'VV9aUyi2tdXWJjHG' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ZYzgEd3iVqTz3R56' \
    --action 'UPDATE' \
    --itemSku 'Fz8UZC2WlIee1qln' \
    --itemType 'CODE' \
    --limit '17' \
    --offset '22' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'astapm7Lsa8MIBUR' \
    --updatedAtStart 'MG34KdnGCCTPMLXM' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'K05Qn1mQE6dOBCpg' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'j1LEKL8Y18TaX0MR' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Ds4IeDSM5fHZktN8' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'UzavPccnTCoT7Jem' \
    --action 'UPDATE' \
    --itemSku 'Bqcy032q0mIKNn0X' \
    --itemType 'SUBSCRIPTION' \
    --type 'VIEW' \
    --updatedAtEnd 'lqT4fvEB0vANbZax' \
    --updatedAtStart '6YQmtAQEOYPadTJ1' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'UPBZQ9c0DQXsKaqy' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'ge5uNKATqr4PldsP' \
    --namespace $AB_NAMESPACE \
    --storeId 'o5MI9XTrmQpa0OqS' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'XqTOc6HRXk0A30Jf' \
    --namespace $AB_NAMESPACE \
    --storeId 'oI2vyHHpFn9El5c8' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UoXiMiKZPgyI7GB6' \
    --targetStoreId 'y9c9uv3V3mlHEKKO' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'eHimYhEe3PnYdSe3' \
    --limit '68' \
    --offset '32' \
    --sku 'V2AWTHs64vYmzZjf' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'F1S5BW4kSFENuOSo' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UH1PFVT0u31isGo3' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'TQtBtrdAVY3a34UJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'tcE3BauChNM3V87T' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "5mSoxdEuv8UOZMOy"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'UeudRVpHpUOGoi49' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'JIZSQ0wz3IuZuHKg' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "8HYnsfv6KoqvVKLC"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'sRhUy5MtDJhOOygc' \
    --body '{"achievements": [{"id": "jFO4WFieeKg56p6Y", "value": 35}, {"id": "7RrwOYcIRMswyGFH", "value": 73}, {"id": "PDOWXYGxzmqzISfP", "value": 94}], "steamUserId": "hLZWF1j4gEus0oxP"}' \
    > test.out 2>&1
eval_tap $? 206 'UnlockSteamUserAchievement' test.out

#- 207 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'HY4B5kb1bNuwsyGW' \
    --xboxUserId 'fkSANmURO5FKT3Zb' \
    > test.out 2>&1
eval_tap $? 207 'GetXblUserAchievements' test.out

#- 208 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '3zA0Yb7X7EI2VKFO' \
    --body '{"achievements": [{"id": "bdaHtFTpF19m5p7y", "percentComplete": 75}, {"id": "saf0ZkVqKTm0TjpE", "percentComplete": 60}, {"id": "tRgzVme5HCXB6OjN", "percentComplete": 58}], "serviceConfigId": "sIMNmegB2dej4pJh", "titleId": "ylj089C90OOx8L56", "xboxUserId": "28lca9T9PS9asZAK"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateXblUserAchievement' test.out

#- 209 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'VV3O1hDK2qBQ6uMM' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeCampaign' test.out

#- 210 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2p77jlkC9XR4eDZi' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeEntitlement' test.out

#- 211 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'U2IbVRvN8cdXMRJL' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeFulfillment' test.out

#- 212 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'UcxGEv5Hd9kICBA3' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeIntegration' test.out

#- 213 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '4s2mE9sHua9HPF5P' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeOrder' test.out

#- 214 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'P9XcHvGnlu81n399' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizePayment' test.out

#- 215 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'sTY0frdJRI5YtGL9' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeRevocation' test.out

#- 216 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oowMH9eKgCOEWs3Q' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeSubscription' test.out

#- 217 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'FvH35WoJgqO12vpy' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeWallet' test.out

#- 218 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'FxdjpFdo5zyjN6Ww' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLCByPlatform' test.out

#- 219 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'z4fpEbZtqtp8D5p6' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 219 'GetUserDLC' test.out

#- 220 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yZjkBSMSm6zIoW8u' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'GGiCy10Wus5vimET' \
    --features '["799vip8EGKpeoB8X", "Da40X7yUL7nTjsgn", "WfhhGwyunfEph8yF"]' \
    --itemId '["NHwgMhj9a0Vcry9j", "jCPTGXeiw6RTDoJy", "hqR6cxLDvVt8SmhL"]' \
    --limit '35' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserEntitlements' test.out

#- 221 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'CQpoqHBHOOhdOvHH' \
    --body '[{"endDate": "1989-11-24T00:00:00Z", "grantedCode": "2HvfcoAqG3HafzVV", "itemId": "v5inu07iCxU5Fyys", "itemNamespace": "xCjK4sUErxpz5IaD", "language": "wT-CXCj-145", "quantity": 39, "region": "hxsKgzcdJfRyXnkM", "source": "REDEEM_CODE", "startDate": "1999-08-04T00:00:00Z", "storeId": "Q4lkPJejWt1pycFv"}, {"endDate": "1978-07-22T00:00:00Z", "grantedCode": "0YIsVmuYo7wdCrWp", "itemId": "D0p5wKWfAN8y9nM7", "itemNamespace": "ozmUYnPYmGI4gbFs", "language": "Gt_728", "quantity": 41, "region": "pGjXwT0EPAUUvzyA", "source": "GIFT", "startDate": "1986-07-29T00:00:00Z", "storeId": "PhxTWtchB21sBVsy"}, {"endDate": "1992-09-29T00:00:00Z", "grantedCode": "cIqMJ2a91odqapkl", "itemId": "FhuF8jbLlPvMQvXi", "itemNamespace": "w9t2f0rN32JiwgR9", "language": "pYcE_088", "quantity": 18, "region": "W7h6gehn4c7F0lu3", "source": "ACHIEVEMENT", "startDate": "1987-09-11T00:00:00Z", "storeId": "RjqyCGIYAHtwcM4W"}]' \
    > test.out 2>&1
eval_tap $? 221 'GrantUserEntitlement' test.out

#- 222 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'z1dPiZLsCqAVaMY8' \
    --activeOnly 'true' \
    --appId 'XiPfjojVH1cTbCUE' \
    > test.out 2>&1
eval_tap $? 222 'GetUserAppEntitlementByAppId' test.out

#- 223 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '4qoZ0rIhWID5hqwG' \
    --activeOnly 'true' \
    --limit '7' \
    --offset '56' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlementsByAppType' test.out

#- 224 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hpyy3Kl4u5ZPHmXK' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'YbGP4Thn5xmWIVLN' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementByItemId' test.out

#- 225 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'l835gfTwpwuFYsUr' \
    --ids '["6BFTSWvRvVlXxXW4", "DozAbw82diq8hjqD", "UKz0wpNbToZl7r4c"]' \
    > test.out 2>&1
eval_tap $? 225 'GetUserActiveEntitlementsByItemIds' test.out

#- 226 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '0L1OCFeQc0W7KEXL' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --sku 'aC32l62LTOHJK2Bw' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementBySku' test.out

#- 227 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'K33DdtaauqJFrF3F' \
    --appIds '["h6JcJld1sivToRk4", "5sIdZmQ64FB6uDTl", "poUWcsdqOWnVhhbJ"]' \
    --itemIds '["kNzUdDyr4cRzib1r", "bxybmuabnl0EA8xy", "nI5c0l4K88h49ALU"]' \
    --skus '["8fyfyyJu759VNad1", "z1sfA7uwT60ZauHh", "MPWbYgi5Rq26S86y"]' \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlement' test.out

#- 228 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'wUnmiQnbJfhQ68fM' \
    --itemIds '["Rbim8rTRX7FIV0F1", "dGB7dc686TmCGfhq", "EeOaBCLXy0SjAQxB"]' \
    > test.out 2>&1
eval_tap $? 228 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 229 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wbi8G4eSEIittlgN' \
    --appId 'dZqzOm1WmQsWgPvZ' \
    > test.out 2>&1
eval_tap $? 229 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 230 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'K2YgQIGJCy01xHuT' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'DBRSNtD4OzEm482s' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemId' test.out

#- 231 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Y1nPuwhjMGKir025' \
    --ids '["QD0YvfhMSUoheaIk", "SZHh8MMnbj8NMAkj", "ptJnYZlVU6Ee0i2x"]' \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipByItemIds' test.out

#- 232 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'D4er9T8IE5GxPHjX' \
    --entitlementClazz 'APP' \
    --sku 'Fl9PRPPv3O7kbXKC' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementOwnershipBySku' test.out

#- 233 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'J0SUsSa3r9mLy8ym' \
    > test.out 2>&1
eval_tap $? 233 'RevokeAllEntitlements' test.out

#- 234 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'iooFYPQj990yeAak' \
    --entitlementIds 'h7FmgzkSRRergb1o' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUserEntitlements' test.out

#- 235 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'r7N8YOAvzIr1nQG4' \
    --namespace $AB_NAMESPACE \
    --userId 'WeEtEOBXLkoeo3F2' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlement' test.out

#- 236 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'LVmAp2eWGHgNzZ2O' \
    --namespace $AB_NAMESPACE \
    --userId 'kMN26JcwJiVJpYW9' \
    --body '{"endDate": "1983-03-18T00:00:00Z", "nullFieldList": ["wTraLx6qMgedKeSO", "eeJna1xscaPkE0ae", "BzlIkjRliB66T7Jl"], "startDate": "1991-07-22T00:00:00Z", "status": "INACTIVE", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 236 'UpdateUserEntitlement' test.out

#- 237 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '0yYZQCCGbrw47LNs' \
    --namespace $AB_NAMESPACE \
    --userId 'Yja3IUkeEAdLMBzr' \
    --body '{"options": ["IhZPTk2bKRi3EDwL", "7vapEt8cfUaarqvS", "Q8YCjujHGJZWDhx8"], "requestId": "jPgAAUSmetRJotM7", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 237 'ConsumeUserEntitlement' test.out

#- 238 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'JM3499DBQNGQFiGn' \
    --namespace $AB_NAMESPACE \
    --userId 'SJAHkSNwErnboimW' \
    > test.out 2>&1
eval_tap $? 238 'DisableUserEntitlement' test.out

#- 239 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'jmKRIvJAoI51YYjW' \
    --namespace $AB_NAMESPACE \
    --userId 'RKLS5k5O3wSo3rXK' \
    > test.out 2>&1
eval_tap $? 239 'EnableUserEntitlement' test.out

#- 240 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'vAW2YjKa7dlEoFMU' \
    --namespace $AB_NAMESPACE \
    --userId 'nVjzzGvV1vbB2cvG' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementHistories' test.out

#- 241 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '9rhXvEBpronenpBv' \
    --namespace $AB_NAMESPACE \
    --userId '2FVkKoaFPhL4FU4G' \
    > test.out 2>&1
eval_tap $? 241 'RevokeUserEntitlement' test.out

#- 242 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'XKKF0ejo0ymF2b1W' \
    --namespace $AB_NAMESPACE \
    --userId 'I5rUob5h0vlfered' \
    --body '{"reason": "i2x8njhADnaM6aeF", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUseCount' test.out

#- 243 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'L1fwR4gO2O9uufbT' \
    --namespace $AB_NAMESPACE \
    --userId 'oQ2cjL8bh0cGtEFe' \
    --body '{"requestId": "z80C5UvVGjNNGTjF", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 243 'SellUserEntitlement' test.out

#- 244 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'GPQEjnlqO6G0HX6n' \
    --body '{"duration": 35, "endDate": "1992-12-30T00:00:00Z", "itemId": "KnmhRxbTY8idaEvT", "itemSku": "so3haKim8QcOo9rm", "language": "KWpz27N3YRBZHwDx", "metadata": {"9CksXV3710afv5Gu": {}, "MuCLZv44T9VEXhPV": {}, "QYbdJhiW89j68u9O": {}}, "order": {"currency": {"currencyCode": "gLVRkpw11SDDXAlh", "currencySymbol": "cfx08ARke2Mq3gd7", "currencyType": "REAL", "decimals": 96, "namespace": "XiREid4qPCIUyQiG"}, "ext": {"HyM7J23c1mgoKFyj": {}, "3lZHJgHKF2FdY1IP": {}, "DJpWHqL26gqZIs3W": {}}, "free": true}, "orderNo": "AvzxIDdPBfMwjifU", "origin": "Playstation", "overrideBundleItemQty": {"ROZC3UXY1Lh4HB0p": 59, "kslF6O7DuDUnJAot": 51, "IQmDBcz1A8NaWYKe": 17}, "quantity": 57, "region": "f9Ko9vQYSaoXDiGV", "source": "PROMOTION", "startDate": "1979-10-15T00:00:00Z", "storeId": "LeF3AEFSxDVrKWLS"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillItem' test.out

#- 245 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'y6XCIsk5XRNIpaT2' \
    --body '{"code": "QNqghLNdW9f75l2X", "language": "NyU_GX", "region": "AR3DhG93vKYv2Axa"}' \
    > test.out 2>&1
eval_tap $? 245 'RedeemCode' test.out

#- 246 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MsT5hFqtIIkAGPNp' \
    --body '{"metadata": {"6KDbpCUtX5oMKKyd": {}, "uWoYDY38GMYOK4hr": {}, "ay9ADiG8SS8eBMpM": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "DSzQTDnYF8ay8ME9", "namespace": "JgJI3qZicMO2kleG"}, "item": {"itemId": "vOqutNj1XE5BlEfO", "itemSku": "FhuuD1kHVUkiiUxC", "itemType": "kVZAnaVR9R1LPmN0"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "FG4XgGFDOI7Ytxo1", "namespace": "5Ho6pHXPJYeou0Hl"}, "item": {"itemId": "3ZIKbQVvtNo3CF3g", "itemSku": "1keUUMJqLty2WPWn", "itemType": "XN2WGqazIKELLN2g"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "XMp8mUpBSbBIEKnu", "namespace": "PL7QaLNra7R8WzgR"}, "item": {"itemId": "LOxEOSxfkoPMQbwG", "itemSku": "jKaBv2IpBGuCHLpb", "itemType": "FNhzlaPpHdBzWLcu"}, "quantity": 80, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "fH5A351oP2uRX5Y2"}' \
    > test.out 2>&1
eval_tap $? 246 'FulfillRewards' test.out

#- 247 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FshGm43m86FYgLN6' \
    --endTime 'tzErLDCvcMIwRwAh' \
    --limit '55' \
    --offset '29' \
    --productId 'Hs2bAKdHVFnWoHdi' \
    --startTime '9an8neDhoKpeDcy2' \
    --status 'FULFILLED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPOrders' test.out

#- 248 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SX9WS2PS6qlJ1viA' \
    > test.out 2>&1
eval_tap $? 248 'QueryAllUserIAPOrders' test.out

#- 249 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'MBx73WhSGj8E6HSa' \
    --endTime 'IOCzdQ9swLfRZOTG' \
    --limit '8' \
    --offset '76' \
    --startTime 'avemBYizPfiZTYH0' \
    --status 'PENDING' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserIAPConsumeHistory' test.out

#- 250 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '8ffQK2iNqynYG2FC' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "NQ", "productId": "FnvPSFdHZkscRO1u", "region": "IgLLmMXCd13sBeDS", "transactionId": "BUQYt3ai7srFI7X0", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 250 'MockFulfillIAPItem' test.out

#- 251 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '2UcZ1jTXjoHORoKQ' \
    --itemId '1k1HS3HfzKkb07HZ' \
    --limit '14' \
    --offset '33' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 251 'QueryUserOrders' test.out

#- 252 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8Yf7MoDk7Awy82RS' \
    --body '{"currencyCode": "Et3ncxeB8v92CCRo", "currencyNamespace": "u5ChFQzFBCrw9F1v", "discountedPrice": 55, "ext": {"SfDVGFGXUah698aB": {}, "s4iO2vEqo3vxgqbG": {}, "pqYXHE5BKgqVGp4N": {}}, "itemId": "UhewbJ2x3S9yGmhR", "language": "qgEt7AYTljK8E41x", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 36, "quantity": 52, "region": "mDElNCQslcXN0ucm", "returnUrl": "CUmRNJJu49Y8hnNP", "sandbox": true, "sectionId": "iJDvjvMvR3txSGmT"}' \
    > test.out 2>&1
eval_tap $? 252 'AdminCreateUserOrder' test.out

#- 253 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'O3QQKaVJrMj06ALo' \
    --itemId '5wt3J6dPg93XC0qV' \
    > test.out 2>&1
eval_tap $? 253 'CountOfPurchasedItem' test.out

#- 254 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ddzM7s4GK5dSvad4' \
    --userId 'i5yjZUvLXTwe6joV' \
    > test.out 2>&1
eval_tap $? 254 'GetUserOrder' test.out

#- 255 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'sPZOd0W48OjgI1SQ' \
    --userId 'ruQjFIeXhdPrquU3' \
    --body '{"status": "FULFILLED", "statusReason": "UO4Hyc5th0Oglxrk"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserOrderStatus' test.out

#- 256 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UZf0ac13JqWXNVqX' \
    --userId '39hqiopYzilnJgqU' \
    > test.out 2>&1
eval_tap $? 256 'FulfillUserOrder' test.out

#- 257 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'lCBshDI1FZR8xotv' \
    --userId 'amsYPiimlhFHYNSk' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderGrant' test.out

#- 258 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'yR4e2A6F3SB5Ow6O' \
    --userId 'GfhC35UDXLAys4bZ' \
    > test.out 2>&1
eval_tap $? 258 'GetUserOrderHistories' test.out

#- 259 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'jJUMsZbMrqIx9RBs' \
    --userId 'jLQzICFpfNNaVDNW' \
    --body '{"additionalData": {"cardSummary": "gr2aTW2UWqrELHhn"}, "authorisedTime": "1984-01-06T00:00:00Z", "chargebackReversedTime": "1973-04-18T00:00:00Z", "chargebackTime": "1992-05-15T00:00:00Z", "chargedTime": "1991-09-23T00:00:00Z", "createdTime": "1992-08-02T00:00:00Z", "currency": {"currencyCode": "AgV6yxPexG4Gfp68", "currencySymbol": "dAdo01lyvaetSYeO", "currencyType": "VIRTUAL", "decimals": 95, "namespace": "2aXioaiURTVwu2Y4"}, "customParameters": {"kzeekX4VjUeT5fr8": {}, "VqN8Y15vvaP6FHxE": {}, "ZdKbFeTxqRRH6FaJ": {}}, "extOrderNo": "d2vHRXJnVhi7kfQO", "extTxId": "frtWVr8ML3Jf0XKA", "extUserId": "eQa29LlSttfuXXej", "issuedAt": "1999-12-18T00:00:00Z", "metadata": {"0HyHDXsDgtfZs2SB": "sUk7hY6su4LCglOY", "Efs9zw7IhKmzbFad": "yQhJa2l50ITJD2LH", "oCldM59miSkMH97u": "x9qISzX7MKYthTP2"}, "namespace": "9uCsnJ4Ptlwx4mbL", "nonceStr": "iYGFHJC1J6ngwrWY", "paymentMethod": "KzRS2hNLcBpH1sdz", "paymentMethodFee": 55, "paymentOrderNo": "qGGrio1R8eAgGXCc", "paymentProvider": "WALLET", "paymentProviderFee": 31, "paymentStationUrl": "Rko2LS6U5oEMIPmk", "price": 96, "refundedTime": "1973-04-01T00:00:00Z", "salesTax": 20, "sandbox": true, "sku": "F934Q0V2XJBul70Z", "status": "CHARGED", "statusReason": "o28ajGqDKiz8CbOa", "subscriptionId": "DHumdqhFK59xJOja", "subtotalPrice": 85, "targetNamespace": "1IElV9jJoRRPTOto", "targetUserId": "CyBLksvRpAAaXnaW", "tax": 67, "totalPrice": 42, "totalTax": 24, "txEndTime": "1991-07-21T00:00:00Z", "type": "S3c6uwKjGoyh0tUZ", "userId": "Ale9YRApjiyqOsbg", "vat": 94}' \
    > test.out 2>&1
eval_tap $? 259 'ProcessUserOrderNotification' test.out

#- 260 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'l8RcakTSN5ozU73C' \
    --userId '5A5KKnrCZpiwyWqv' \
    > test.out 2>&1
eval_tap $? 260 'DownloadUserOrderReceipt' test.out

#- 261 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'iM4D1QOrNUmBRJ4p' \
    --body '{"currencyCode": "Fvb9zokjZuIqBVBH", "currencyNamespace": "s17TbjbHa3H6MD0a", "customParameters": {"K4GVQCRoMfBPLN73": {}, "naZAdH3zT9PCnLP0": {}, "k80tTpLUy8YyZ0PF": {}}, "description": "EyCyG0fZ478ENjG0", "extOrderNo": "QqCPwwZRCe6UgaU6", "extUserId": "CVHxUZSgkFf0B2oq", "itemType": "EXTENSION", "language": "RYBQ", "metadata": {"lxldqV2FR7Wrc8xP": "zAvuEF6iYFjp1AJ3", "2Geyu3vdrusPt78f": "XMAygI4IxWdT3zgD", "yP5oTiQDB8C6tHg6": "JVk99vYHuRDj0lJK"}, "notifyUrl": "wUvTbeVPHMsqC5qK", "omitNotification": false, "platform": "OyMIJOLEIS28aHMY", "price": 2, "recurringPaymentOrderNo": "8oc1xRSmZtpwPDIm", "region": "bHxk2oFbOUmgjYy4", "returnUrl": "zJWQpAJILsY7Qa5z", "sandbox": true, "sku": "sWayP2DnQjOG9ksS", "subscriptionId": "6ptMLl0PD1ZuEm4F", "title": "8Ktc47XPYulEOVzD"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserPaymentOrder' test.out

#- 262 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WKHCbTpmifr7m7Gz' \
    --userId '0iGrqeVs5YY14Nx5' \
    --body '{"description": "P8ektJ5RAQUwoBHU"}' \
    > test.out 2>&1
eval_tap $? 262 'RefundUserPaymentOrder' test.out

#- 263 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'mllvYcTpstZ7xnvc' \
    --body '{"code": "eNWwYHUQfWDek5iB", "orderNo": "r0c3D7EVXuN4SdQH"}' \
    > test.out 2>&1
eval_tap $? 263 'ApplyUserRedemption' test.out

#- 264 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'FY0AzZjRObl65ndy' \
    --body '{"meta": {"ax7JNRqlzxkj2jFi": {}, "qBTYe9sqO0tkezgF": {}, "813xg97UbSxQn7oa": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "N8oLKNRKyb5D1ytt", "namespace": "YksD1xgIFLm99bpb"}, "entitlement": {"entitlementId": "GpUy4qAeosKXDoZd"}, "item": {"itemIdentity": "Pml6mLqSm89icmYH", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 2, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "SbG5laVR0PMusp1D", "namespace": "1aYtGKZYUikZo9x1"}, "entitlement": {"entitlementId": "WmDkEXxxxxziggkd"}, "item": {"itemIdentity": "o3H7I58shkeZPZTG", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 47, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "pMsxSCTeQJ0UzlJD", "namespace": "EUkWR5gv7t4MXKkM"}, "entitlement": {"entitlementId": "RU4yNQvueDzsOs7u"}, "item": {"itemIdentity": "IUJvKAX2Uzv6uuiu", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 43, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "um2ipP5748etvnxJ"}' \
    > test.out 2>&1
eval_tap $? 264 'DoRevocation' test.out

#- 265 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'WySLP4g7i4WkS9nm' \
    --body '{"gameSessionId": "3AXnuaPzSuJuRqXZ", "payload": {"qETRu4k1aAWAgqVp": {}, "VDPbaxZX14Zv23aQ": {}, "UNsYHHXnHBzaJTcu": {}}, "scid": "TdGwRX2MB87pnxoK", "sessionTemplateName": "at7JlqqtbjfOKZMr"}' \
    > test.out 2>&1
eval_tap $? 265 'RegisterXblSessions' test.out

#- 266 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'VXdLDxxcwpenJnDM' \
    --chargeStatus 'CHARGED' \
    --itemId 'cGr5KHil96v90SEc' \
    --limit '84' \
    --offset '88' \
    --sku 'T5wGIUwjejETBXqY' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 266 'QueryUserSubscriptions' test.out

#- 267 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '5jLNBAHrSnOOKBeE' \
    --excludeSystem 'false' \
    --limit '48' \
    --offset '36' \
    --subscriptionId 'I5yJAh8bpihtux7r' \
    > test.out 2>&1
eval_tap $? 267 'GetUserSubscriptionActivities' test.out

#- 268 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'swuxBN2wFbDdAWxN' \
    --body '{"grantDays": 81, "itemId": "aZOZbjeJyvRsJ2wk", "language": "AJtnKmSSrVBWhaqg", "reason": "jQCTgh3VjcUIiORz", "region": "EnT0Nph8UxuShfGN", "source": "RJ25H6VN8VQDCFQk"}' \
    > test.out 2>&1
eval_tap $? 268 'PlatformSubscribeSubscription' test.out

#- 269 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9f3eBqRcjbvDZk2l' \
    --itemId '0CnB3XEUWJpDoA6s' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 270 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JEQ6BhJqqEW2Y350' \
    --userId 'pizenpCMU7MXNLQl' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscription' test.out

#- 271 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'awQBBjC6ctXMZHfj' \
    --userId 'xp5PHU9xubCO4EH3' \
    > test.out 2>&1
eval_tap $? 271 'DeleteUserSubscription' test.out

#- 272 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bTqgH01gyaad6usv' \
    --userId 'ejFIP98IDfwvkRBV' \
    --force 'true' \
    --body '{"immediate": false, "reason": "1joKVdZpOVIGGrdi"}' \
    > test.out 2>&1
eval_tap $? 272 'CancelSubscription' test.out

#- 273 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'giFZgPdkmZH1DpUD' \
    --userId '0NhhYhgP3AOtZW19' \
    --body '{"grantDays": 51, "reason": "dCP3ZD1Kk3PBJqTL"}' \
    > test.out 2>&1
eval_tap $? 273 'GrantDaysToSubscription' test.out

#- 274 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'u8fs8fGluY7odnrl' \
    --userId 'cUwLKLBZj8tYTSjU' \
    --excludeFree 'true' \
    --limit '37' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionBillingHistories' test.out

#- 275 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XTiNf1u5Jus3Hkha' \
    --userId 'M8nbZL2yRW1zy8vv' \
    --body '{"additionalData": {"cardSummary": "89o31NBT7EdlKqer"}, "authorisedTime": "1978-08-21T00:00:00Z", "chargebackReversedTime": "1974-07-11T00:00:00Z", "chargebackTime": "1999-12-25T00:00:00Z", "chargedTime": "1975-08-17T00:00:00Z", "createdTime": "1994-12-05T00:00:00Z", "currency": {"currencyCode": "485rmxDPlMN0fMmB", "currencySymbol": "6x1Mh3GSOWohrCIa", "currencyType": "REAL", "decimals": 65, "namespace": "u3dJHQfRDo35S9qY"}, "customParameters": {"bSIA8CxkOwcP0Mfh": {}, "ne7YzdR9ja0T9rAV": {}, "BJszzkorwEhMGivv": {}}, "extOrderNo": "6zO3gSr3kGKskO0s", "extTxId": "yCCU4uvimQ9g2Del", "extUserId": "r2kXmd0TXIHDjWR8", "issuedAt": "1996-09-06T00:00:00Z", "metadata": {"LouV2BDWm9aUCJjR": "5UlvQYc5l7q3JBSv", "HkSSKXOv639C8JwN": "KCWAhkZfmv3IYaOr", "BrQYuy632lIAtANW": "LH54upkvETtQoKxm"}, "namespace": "t9h07oFE8yk15idB", "nonceStr": "QN8vcz5uqMS6nIsK", "paymentMethod": "QBx8FdUKWxOUVoN0", "paymentMethodFee": 2, "paymentOrderNo": "xhHqao4RuvdMYNwb", "paymentProvider": "WALLET", "paymentProviderFee": 71, "paymentStationUrl": "XEGr11OJG8YOgfHX", "price": 36, "refundedTime": "1990-04-01T00:00:00Z", "salesTax": 92, "sandbox": true, "sku": "JBkPcjphUXwtXySk", "status": "AUTHORISE_FAILED", "statusReason": "Sl5hIhhO0CQFhlU3", "subscriptionId": "G915YoTTSkZrUkcV", "subtotalPrice": 70, "targetNamespace": "PJGgIOuKqbtMuKFm", "targetUserId": "k8LTO98NU4qZwiq2", "tax": 58, "totalPrice": 88, "totalTax": 21, "txEndTime": "1987-07-15T00:00:00Z", "type": "B1VrY5hUmcxBTMn3", "userId": "9683gLPtdZIGiokt", "vat": 73}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserSubscriptionNotification' test.out

#- 276 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'ImC60d6rZPhGzXjL' \
    --namespace $AB_NAMESPACE \
    --userId 'gDUuUJkHMDm9KjCk' \
    --body '{"count": 2, "orderNo": "dd5sqWoZfvf9kJr4"}' \
    > test.out 2>&1
eval_tap $? 276 'AcquireUserTicket' test.out

#- 277 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'vDGEIOgbI5p9jJrN' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserCurrencyWallets' test.out

#- 278 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'G2a14vkfYrhdi1db' \
    --namespace $AB_NAMESPACE \
    --userId 'KAfqtBzerUVGL7SC' \
    --body '{"allowOverdraft": false, "amount": 39, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"UWuux6WpbhqhJmxO": {}, "EpuH6Nn7C3rfQTe9": {}, "U3R8Tq2c29nG5Wnq": {}}, "reason": "DKp45wUWKoHkxoLm"}' \
    > test.out 2>&1
eval_tap $? 278 'DebitUserWalletByCurrencyCode' test.out

#- 279 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'ZlXH4Fl98KPtN1oM' \
    --namespace $AB_NAMESPACE \
    --userId 'GDrCCXOEa2ujuMpu' \
    --limit '17' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 279 'ListUserCurrencyTransactions' test.out

#- 280 CheckWallet
eval_tap 0 280 'CheckWallet # SKIP deprecated' test.out

#- 281 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'G5pP3k9tY0iZV7A9' \
    --namespace $AB_NAMESPACE \
    --userId 'SCxDcIHCiSPecrNh' \
    --body '{"amount": 3, "expireAt": "1998-06-15T00:00:00Z", "metadata": {"icwr4qx9cEGL9IhU": {}, "oZtU2KaOWANxM340": {}, "tD49XBZR0luM1jbO": {}}, "origin": "System", "reason": "1nMJBQdUnNMlnLRN", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 281 'CreditUserWallet' test.out

#- 282 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '9bFEkSqsFJkEZ9pU' \
    --namespace $AB_NAMESPACE \
    --userId 'jjKuud8Gyr3rngPe' \
    --body '{"amount": 52, "metadata": {"UskxWk3X03jdd42x": {}, "GjHwekeFpyXaubvL": {}, "rGIoFaWcyKxyegf8": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 282 'PayWithUserWallet' test.out

#- 283 GetUserWallet
eval_tap 0 283 'GetUserWallet # SKIP deprecated' test.out

#- 284 DebitUserWallet
eval_tap 0 284 'DebitUserWallet # SKIP deprecated' test.out

#- 285 DisableUserWallet
eval_tap 0 285 'DisableUserWallet # SKIP deprecated' test.out

#- 286 EnableUserWallet
eval_tap 0 286 'EnableUserWallet # SKIP deprecated' test.out

#- 287 ListUserWalletTransactions
eval_tap 0 287 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 288 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'Rp9yx3lqKGLDvTyj' \
    > test.out 2>&1
eval_tap $? 288 'ListViews' test.out

#- 289 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'nICt2KGB0ipayQxu' \
    --body '{"displayOrder": 74, "localizations": {"tZQtAwSSYQPaTlCP": {"description": "GDwbaUBLZTCoKkW9", "localExt": {"ixRn6Tlo8EYYHbcE": {}, "kp35JDy9hduVgpIt": {}, "nhQGbpSx58k58uUa": {}}, "longDescription": "Qu9tF8AOAn130bZU", "title": "T0FW9RrAPh5THkKV"}, "mAKbiehxU3WlGKmi": {"description": "cMrvakKxFMiEJpLD", "localExt": {"vgbXkLK2SBhAgl0c": {}, "9urG6xyHcgqFdhjg": {}, "xhYrYOmXZHsIBJoy": {}}, "longDescription": "KxsHfKOhqlA5gd8d", "title": "6nxMbqVGwtqpVFsN"}, "lHjIEGjL0I3w1FcG": {"description": "wTLmR956VFFtJg46", "localExt": {"Su3pCyTCgOeUG0tk": {}, "MZC7s8CzllmPGroN": {}, "KiuvoSTjhE6Apgic": {}}, "longDescription": "8s5xl5WqB0e9YMb3", "title": "yW0UvWothArFdoqq"}}, "name": "vljJXahYupL0N823"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateView' test.out

#- 290 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'BwESsi1463e9TPvc' \
    --storeId 'igJjhi1yLddOHo3Y' \
    > test.out 2>&1
eval_tap $? 290 'GetView' test.out

#- 291 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '7zGw075mLzZrdrEb' \
    --storeId 'Xh4SlJl5yjqonIu7' \
    --body '{"displayOrder": 39, "localizations": {"UfCwWbXgPKZbGT0Q": {"description": "7AaY1LSOYUZWkVkG", "localExt": {"1fq3OQmCk9gwsKM2": {}, "ZbbwuiuSbkiTiYUr": {}, "lU1JdaBzyBu9vRxt": {}}, "longDescription": "mwi6U47AHGhElA15", "title": "nNuaoE4BPJjmMxIf"}, "qAznQJoSlZPYNw7Y": {"description": "J9MsJoVDtBcqEkLL", "localExt": {"sXICGTHlpIYCfpTB": {}, "46KRHKdzPRmP0K9e": {}, "Vw4743WKDzOuUIVU": {}}, "longDescription": "Wxz9hy7xa9hgW8r7", "title": "0e9Nb7zAQR2GaFlV"}, "58DyVNN49Nm6bYI7": {"description": "3LKW7GeDnwJz5Gd1", "localExt": {"vgCP49nbHMMVWsxg": {}, "HCkgYWTsTijwNUCq": {}, "MwlWEidHjqOTjUaL": {}}, "longDescription": "XReM2anzUb0v1zHp", "title": "aNCXy8pHXdPY4kmc"}}, "name": "PtEq6w4a6NDpSeCf"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateView' test.out

#- 292 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'YruFQ3ewlp7aB0aM' \
    --storeId 'CizrXqoPYwAYLWgY' \
    > test.out 2>&1
eval_tap $? 292 'DeleteView' test.out

#- 293 QueryWallets
eval_tap 0 293 'QueryWallets # SKIP deprecated' test.out

#- 294 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 70, "expireAt": "1986-03-14T00:00:00Z", "metadata": {"VCkbaxfZeEgAxxNo": {}, "4DT1J6LX2q8yXziI": {}, "UnfGxZbJjThmdvND": {}}, "origin": "Oculus", "reason": "6tgWCXTW3uqnZ9Jo", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "KQn8pdiTwePTwtT0", "userIds": ["xwUVtGIMI6jwfDao", "de55zEnQGd8TpqmM", "OFYcnEG1kdT8DV8n"]}, {"creditRequest": {"amount": 86, "expireAt": "1979-09-14T00:00:00Z", "metadata": {"2LRkVCSpmb7J3fIv": {}, "TTyrz7mWaaCSNQPM": {}, "zKY7hqwxNsVmp7DP": {}}, "origin": "Playstation", "reason": "blaWjhBeBF91FYOE", "source": "PROMOTION"}, "currencyCode": "iCkReiIrl0vMYOQR", "userIds": ["eAQ7bcPQukceOt71", "enRmcghbkgADBGFL", "DzxG0DTh1Tk2qENX"]}, {"creditRequest": {"amount": 87, "expireAt": "1989-09-03T00:00:00Z", "metadata": {"Z1HNqQjKtqGQxoKE": {}, "6vIthQp4FvHkO799": {}, "GtRzyxXw5TUV4UwE": {}}, "origin": "IOS", "reason": "QvslBvFbOPpgRw0h", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "ImTLje8ebZIpZnud", "userIds": ["MRwJE1ver8bdw2kG", "UZSZC9IWuA2wEziK", "smA0aCyWTj9IVE8o"]}]' \
    > test.out 2>&1
eval_tap $? 294 'BulkCredit' test.out

#- 295 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "aZLRGT1mYi2dvGkZ", "request": {"allowOverdraft": false, "amount": 45, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"4fsZW7MJtY5fLT00": {}, "76mMI8DPO30uVYBv": {}, "V16752NU0r4mzSRd": {}}, "reason": "deXHCz0nSVN0TXgO"}, "userIds": ["GJ8d887dnHIXbHx5", "i4J56EVcbAdckuKV", "XYjUzWMEVxe9ez7q"]}, {"currencyCode": "jBs9KQPX4SyLJabj", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "Epic", "balanceSource": "ORDER_REVOCATION", "metadata": {"1QKxjbw2N43dcXd6": {}, "QeVQUV5oUH3FAeKD": {}, "xP4Fpo5JDlplmojy": {}}, "reason": "Ca5KeK4xAdsdCYfP"}, "userIds": ["WNsLdvfF9LD4rCTC", "nTp8oQtS0Ft2Dri2", "ulz0B0bzC7ZNC8EF"]}, {"currencyCode": "pmXVx65G1a0nLjyG", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"LNF94i6EVmnPEu8C": {}, "3DncApvIQUCEOya6": {}, "S4UBt1ZuVWPfe46k": {}}, "reason": "mSWqMEYlnBp6m6IG"}, "userIds": ["LY9Nva9Xb6Elsclj", "tNhHXyt98YFHc1nv", "X3zKnm6HtViwJECW"]}]' \
    > test.out 2>&1
eval_tap $? 295 'BulkDebit' test.out

#- 296 GetWallet
eval_tap 0 296 'GetWallet # SKIP deprecated' test.out

#- 297 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'qSVls0oqoxvU4kQM' \
    --end 'r5S9NMJtRpKD4rlb' \
    --start 'ImntRbW2ZB6uOvOs' \
    > test.out 2>&1
eval_tap $? 297 'SyncOrders' test.out

#- 298 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["V6qev5yRKR7wfORP", "3Fxm5d94n1zUlikD", "qYvV972EpLNi7fMh"], "apiKey": "YXylW0pyYxzAmd6e", "authoriseAsCapture": true, "blockedPaymentMethods": ["brlSW4T22dajlNaq", "pBN4Up8cs6qD4NHG", "9IOsfqwgjtLYbx02"], "clientKey": "JsEc47tUslud3GBd", "dropInSettings": "RqDcVxTBXGaHTbut", "liveEndpointUrlPrefix": "s9H6BwdB8aOOTo1C", "merchantAccount": "VGeDUhfiHzb8sViT", "notificationHmacKey": "LhcTbibGdThrvo2v", "notificationPassword": "UufGB9bpbieNG7hW", "notificationUsername": "rLF5yCgv4aHVGgdC", "returnUrl": "qVluIOQlHZNdOuMX", "settings": "EhwOxRrFhbALEF9d"}' \
    > test.out 2>&1
eval_tap $? 298 'TestAdyenConfig' test.out

#- 299 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "TdSDfLPTvcnUYU6N", "privateKey": "3ZzqbQjnYvRPufk4", "publicKey": "Mgz0eaNBRH3ZVohE", "returnUrl": "AbdgmEaVbZKvpQIH"}' \
    > test.out 2>&1
eval_tap $? 299 'TestAliPayConfig' test.out

#- 300 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "CxquUkcU9mD6q4fv", "secretKey": "Tm7ZobIwv8hynrra"}' \
    > test.out 2>&1
eval_tap $? 300 'TestCheckoutConfig' test.out

#- 301 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'xdjsNOZfBFwy6ALU' \
    --region 'MyBihLKPqtGx1VAk' \
    > test.out 2>&1
eval_tap $? 301 'DebugMatchedPaymentMerchantConfig' test.out

#- 302 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "tGqVa7sDXhECA1yq", "clientSecret": "9tHaHgJdsIVglXS1", "returnUrl": "d4k5XqOVY8pP3h39", "webHookId": "OPBMBNfQgJl5vnfW"}' \
    > test.out 2>&1
eval_tap $? 302 'TestPayPalConfig' test.out

#- 303 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["z2zr64Y8fxsCpFzB", "aaplBUXCN08jTGGr", "YCSDu42Z69lJQwUg"], "publishableKey": "ouNlZLgRUgJg9u8b", "secretKey": "anQuQIAyhJkpHHVQ", "webhookSecret": "X5E3Bn3fFqoUQ5DT"}' \
    > test.out 2>&1
eval_tap $? 303 'TestStripeConfig' test.out

#- 304 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "U0dIQsWCHXII3qBE", "key": "srVpOrJ55CZNe46K", "mchid": "o0CVrJ31iUcSU9XF", "returnUrl": "fD1APABZsccexhG3"}' \
    > test.out 2>&1
eval_tap $? 304 'TestWxPayConfig' test.out

#- 305 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "GkFMZ7x3OXA75RDv", "flowCompletionUrl": "hFabuMQ15yqJCZqd", "merchantId": 35, "projectId": 69, "projectSecretKey": "gwC8uaSougCGNMYA"}' \
    > test.out 2>&1
eval_tap $? 305 'TestXsollaConfig' test.out

#- 306 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'b9n59lCWdkqDh3lf' \
    > test.out 2>&1
eval_tap $? 306 'GetPaymentMerchantConfig' test.out

#- 307 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '37SnQvVtYV2nPZNw' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["gTLretHwEpQWxYBm", "35wliyuJcGg1jmLy", "ISpXzLxZ4udo8R0P"], "apiKey": "h4QpJWD1AIseP76R", "authoriseAsCapture": false, "blockedPaymentMethods": ["m1IME4UBEdG4y5bn", "oIPAxfebY2Tj8utc", "MQq9ek0dN1fowf0o"], "clientKey": "x6Vs1G2R4Is8wVvB", "dropInSettings": "VbR2GM0N9p2l3QOf", "liveEndpointUrlPrefix": "2cqT6fovWdKSrD0J", "merchantAccount": "dIafV5YbQ6fdv5NX", "notificationHmacKey": "dCbhZU8Z6Wt5zAeT", "notificationPassword": "GZxblsRIAxNAAzCg", "notificationUsername": "SxfHW5wzDK9ebR9W", "returnUrl": "8H7FJiFuxteTBIjm", "settings": "JeEkxPvujKtMYDCL"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAdyenConfig' test.out

#- 308 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '3tT5Z4b7s0qWSKsv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 308 'TestAdyenConfigById' test.out

#- 309 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Xj9ftcKEkqHIHu2H' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "mZh4ih5rRNsfPfoe", "privateKey": "0cUhUaKwDlDtyWbl", "publicKey": "1yhJGdwK3HVyYlhf", "returnUrl": "4a8RxEbsGNPGZVCl"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateAliPayConfig' test.out

#- 310 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'HBqlQSdyogGMva7w' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 310 'TestAliPayConfigById' test.out

#- 311 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'aTjajwgX1RzEHNAl' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "ty3biGcVkc9dha50", "secretKey": "EHDPTjZlovHt95Jo"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateCheckoutConfig' test.out

#- 312 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'vbr5iTyjcpipUc0u' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestCheckoutConfigById' test.out

#- 313 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ugk8sSCUnFFMnCMN' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "btrvB1DnpIHOa4mX", "clientSecret": "T5lNHblDGZuIoeYX", "returnUrl": "sO1vHYJ7kcrYDGnL", "webHookId": "CqNHWd3I7VxodYUE"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdatePayPalConfig' test.out

#- 314 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '2YmkEqKzTNU7tBF9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 314 'TestPayPalConfigById' test.out

#- 315 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'pVtDXpZYyrK1NgAm' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["JqCMMSzSsOuue6p8", "tnNEbsxggWplvIlZ", "ztVpHuSIDd1A0Bmw"], "publishableKey": "GNdePU3Oq4Kr8uzl", "secretKey": "dgvXQQxZfIZnWRdc", "webhookSecret": "XI0fiWGWqGw3da3b"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateStripeConfig' test.out

#- 316 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'X6PHm7fDXSs7E1Mw' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfigById' test.out

#- 317 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '16ZUg7Kdd1oXe6lb' \
    --validate 'false' \
    --body '{"appId": "yU73TjfrXeud0frw", "key": "iDlVDHY49nH45YRC", "mchid": "2640QbY04Z0XPQu9", "returnUrl": "7tifiRkXmY21NXTB"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfig' test.out

#- 318 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'O0bxnT122UJ97jsG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 318 'UpdateWxPayConfigCert' test.out

#- 319 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'sOIdGtehicHGSvnf' \
    > test.out 2>&1
eval_tap $? 319 'TestWxPayConfigById' test.out

#- 320 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'yCEtBxlSNTzqqj3t' \
    --validate 'true' \
    --body '{"apiKey": "bdewuvMYsei4UxPs", "flowCompletionUrl": "2jZeGWDWDG65rLj7", "merchantId": 29, "projectId": 36, "projectSecretKey": "CcXlDAiLQAS5BmAb"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaConfig' test.out

#- 321 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '3aD4vquqTPy0ljiq' \
    > test.out 2>&1
eval_tap $? 321 'TestXsollaConfigById' test.out

#- 322 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'HPJmL26aMmlJpnab' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateXsollaUIConfig' test.out

#- 323 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '33' \
    --namespace 'DgOicqHnS645TpI4' \
    --offset '34' \
    --region 'dKUq86hfldlzC0nx' \
    > test.out 2>&1
eval_tap $? 323 'QueryPaymentProviderConfig' test.out

#- 324 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "bawSVt1Mxb1QwRHM", "region": "BfI5pAfeLZ80baTn", "sandboxTaxJarApiToken": "kY7gtSNd3ESvzxCj", "specials": ["WXPAY", "ALIPAY", "ALIPAY"], "taxJarApiToken": "UL9oo0fNIkNlUaES", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 324 'CreatePaymentProviderConfig' test.out

#- 325 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetAggregatePaymentProviders' test.out

#- 326 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'JEMWu10t7kyCgSBQ' \
    --region '7l006DH2FaBWmb2O' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentProviderConfig' test.out

#- 327 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 327 'GetSpecialPaymentProviders' test.out

#- 328 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'DjdOKiXMIlqsXmFZ' \
    --body '{"aggregate": "ADYEN", "namespace": "2ym8fqKFG5Rk2zmQ", "region": "pYd5st3GckzwMXIP", "sandboxTaxJarApiToken": "z5sW8mr8dxfBJvzj", "specials": ["STRIPE", "PAYPAL", "WALLET"], "taxJarApiToken": "fUQjf8kHTdnD4Wz7", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 328 'UpdatePaymentProviderConfig' test.out

#- 329 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ebBUeUQJWZlfjFz9' \
    > test.out 2>&1
eval_tap $? 329 'DeletePaymentProviderConfig' test.out

#- 330 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxConfig' test.out

#- 331 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Es4XtZmb65dlKEOK", "taxJarApiToken": "laCKAYrl3CjFeKHT", "taxJarEnabled": false, "taxJarProductCodesMapping": {"i8tD5cJr2CVLL2nA": "KC59sCTiQjx3LLWV", "X9zody4NUHRcVH8R": "Vs6E0aLZIjJK6sMv", "PwN9I27WevCpPgHG": "u6Oby8dEBOkvXxNs"}}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePaymentTaxConfig' test.out

#- 332 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'XsAqPJkeVRzXQSNg' \
    --end 'sUUm1EVNFtWK8XtK' \
    --start 's8HLc2SRHDYVSMYV' \
    > test.out 2>&1
eval_tap $? 332 'SyncPaymentOrders' test.out

#- 333 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '2iwjcZ1q9lbdVPpC' \
    --storeId '3108ki5q4njmjcc8' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRootCategories' test.out

#- 334 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ZNFt9MQ9gUG3QQ6X' \
    --storeId 'giZQ6ybQN7G7UmGf' \
    > test.out 2>&1
eval_tap $? 334 'DownloadCategories' test.out

#- 335 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '5Hkz05Vj9FxVAouJ' \
    --namespace $AB_NAMESPACE \
    --language '8JfpD2bRNu9I5jcs' \
    --storeId 'AeXzVJ57vpQCEGQp' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetCategory' test.out

#- 336 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '1A4LCUgRpPaENvzv' \
    --namespace $AB_NAMESPACE \
    --language 'hV9Q4DNhT29KHdpd' \
    --storeId 'Cu6tG6z22Zdi7ZVc' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetChildCategories' test.out

#- 337 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'vcHhsT5bx1THqT0X' \
    --namespace $AB_NAMESPACE \
    --language 'HEBuTDOPZKvYIThC' \
    --storeId 'i4LfUSwsZg9Vwr8c' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetDescendantCategories' test.out

#- 338 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 338 'PublicListCurrencies' test.out

#- 339 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 339 'GetIAPItemMapping' test.out

#- 340 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'W3tbqxbWwbBy6Fth' \
    --region 'szHa6htluMWDABYr' \
    --storeId 'kxM288MDw7REPapX' \
    --appId 'YSArzY4Ce2owT68r' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItemByAppId' test.out

#- 341 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'Ud8xLWGrsIpYjdhC' \
    --categoryPath 'sIZdATCUj10fOv5Y' \
    --features 'Bxe92LXJlxfJlWc9' \
    --includeSubCategoryItem 'false' \
    --itemType 'LOOTBOX' \
    --language 'nIcfXjAab0QJmQuE' \
    --limit '77' \
    --offset '95' \
    --region 'plr8KWjh2hDWI3zD' \
    --sortBy '["updatedAt:asc", "name:asc", "updatedAt"]' \
    --storeId 'ZdnHJWusnwy6vYvi' \
    --tags 'IGLduzTNMVkCGNwY' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryItems' test.out

#- 342 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '9zyu2FWmZIX7VK9n' \
    --region '3f00PbjYWFO8zppH' \
    --storeId 'hnMgCLYT0YqXPJX2' \
    --sku 'WFmoRVg9mfBP3dDq' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemBySku' test.out

#- 343 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'pEsAgKHuRElviAjT' \
    --storeId 'kaMpTsweRAmYg3Wy' \
    --itemIds 'ByY0fgRVQOeZifv0' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetEstimatedPrice' test.out

#- 344 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'nYPgvLubP3eh938A' \
    --region 'BmONPmzvKMd942rm' \
    --storeId 'gg2O4lLc6y3pjaLc' \
    --itemIds 'DzdjVsg6S8m9of5i' \
    > test.out 2>&1
eval_tap $? 344 'PublicBulkGetItems' test.out

#- 345 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["0pgc4i3cqjUjVL16", "SgFlBvunZdtPzmFX", "FsQhqi1Gpf1Ufyrs"]}' \
    > test.out 2>&1
eval_tap $? 345 'PublicValidateItemPurchaseCondition' test.out

#- 346 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'APP' \
    --limit '39' \
    --offset '9' \
    --region 'lvlFr429JO1IkSzr' \
    --storeId 'NZiWONBWKgdZ2PLe' \
    --keyword '1f78D59svDHG7sqK' \
    --language '246wqwdxYecjLMuz' \
    > test.out 2>&1
eval_tap $? 346 'PublicSearchItems' test.out

#- 347 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'O6N13h9TdVjtqVBX' \
    --namespace $AB_NAMESPACE \
    --language 'eC72RS0ViXppDGAl' \
    --region 'NldYFSvMJIskIBIq' \
    --storeId 'Ig9LuYa2QYKXiv6F' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetApp' test.out

#- 348 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'eXkXZ72btaqDRC2S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetItemDynamicData' test.out

#- 349 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'IEsgODilkdsNbGR4' \
    --namespace $AB_NAMESPACE \
    --language '2lAO1gVQ38bP676F' \
    --populateBundle 'false' \
    --region 'Og425G98iezq2dHx' \
    --storeId 'rU1QtHYxmKv9alEq' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetItem' test.out

#- 350 GetPaymentCustomization
eval_tap 0 350 'GetPaymentCustomization # SKIP deprecated' test.out

#- 351 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "TPwy98RHgC3X28Is", "paymentProvider": "WALLET", "returnUrl": "Lxx8PMuPiLGf6siC", "ui": "pQwPlO71fresJAfq", "zipCode": "jzoK0BMDhPjoZihu"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentUrl' test.out

#- 352 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ak2vWBAUsV3CQa5r' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetPaymentMethods' test.out

#- 353 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Y5ti2SxF2F2YiLNj' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUnpaidPaymentOrder' test.out

#- 354 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UjVeblNkRwhwSA7F' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'Df5AS3KAdlNwe9Fc' \
    --body '{"token": "2HzarP1WU1uo8cWO"}' \
    > test.out 2>&1
eval_tap $? 354 'Pay' test.out

#- 355 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OilIhtBgkCP4ycOP' \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckPaymentOrderPaidStatus' test.out

#- 356 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'jSgfeK2bi8H9DnpV' \
    > test.out 2>&1
eval_tap $? 356 'GetPaymentPublicConfig' test.out

#- 357 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'tAr6KcLBtA37mgEc' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetQRCode' test.out

#- 358 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Feu4c4ObOOFKGSO1' \
    --foreinginvoice 'FDROsdM1odULybEX' \
    --invoiceId '55ax4bb4E8B2duRF' \
    --payload 'zvFYDxyyxHDy4y5e' \
    --redirectResult 'A8I6s79rMAEN1YX3' \
    --resultCode 'ws9OAaId08GwCMab' \
    --sessionId '9TMhRqXePmLCS3R7' \
    --status 'oyNgrizMXcLzYrmJ' \
    --token '0PfEr1uwm0BaEOdz' \
    --type 'Y8DmVrA5RKoWDzGX' \
    --userId 'Hlmh5qauZ4Xshq6F' \
    --orderNo '1nP2XdJGAG00lcJD' \
    --paymentOrderNo '7aXEGLb1ezjGtXdP' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'SCRDBUM6XeAZlYVD' \
    > test.out 2>&1
eval_tap $? 358 'PublicNormalizePaymentReturnUrl' test.out

#- 359 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'vKgQ5yuFno4QY82L' \
    --paymentOrderNo 'Czu92X5YM1r48Swj' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 359 'GetPaymentTaxValue' test.out

#- 360 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'BtGNZWGPRfEhIyAN' \
    > test.out 2>&1
eval_tap $? 360 'GetRewardByCode' test.out

#- 361 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'nhJJ3MtDg88krlrq' \
    --limit '84' \
    --offset '38' \
    --sortBy '["namespace:desc", "rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 361 'QueryRewards1' test.out

#- 362 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'IPXKXZbrjZFHRgsM' \
    > test.out 2>&1
eval_tap $? 362 'GetReward1' test.out

#- 363 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicListStores' test.out

#- 364 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["7um2Bq5XQsTqn2SX", "FGih687qmaEsL93d", "pTFoQrq2dm9Jdgph"]' \
    --itemIds '["OeyrV0ZtsUDHBdU5", "8kNd4xjaxXVFHs8i", "ByE6AHpT0y21ksvm"]' \
    --skus '["kdrh6RXVppez3w4A", "NEtLts02fOwUNhFr", "W1IxQVCoaYwNM0KZ"]' \
    > test.out 2>&1
eval_tap $? 364 'PublicExistsAnyMyActiveEntitlement' test.out

#- 365 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'gbF7LqfeBZvIhUsn' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 366 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ySD2elyvAAhLN4HY' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 367 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'iiuanHHg5ZkeOvnB' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 368 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["EYcDnWJTniB5APQD", "HZp2Xfu8lA9CV89g", "95MMza84LInSXA26"]' \
    --itemIds '["bUFjvjbhkdWlKuit", "UZCwkfW1jSuzZ4ju", "0Z3vALidkAQxy1eb"]' \
    --skus '["kJFC2UAFrCAkiLWM", "V8Fmy1eS1zWWsMYe", "Zl3qAguDdXyHNJF5"]' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetEntitlementOwnershipToken' test.out

#- 369 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "LIKST1HxTRX3FmfF", "language": "lRHF_Vo", "region": "SmuHJahWIKkeUJl4"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncTwitchDropsEntitlement' test.out

#- 370 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'lRSSz5eZh1sq23lX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyWallet' test.out

#- 371 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '9wKASSN54Cxr30do' \
    --body '{"epicGamesJwtToken": "DbaTPy2CvjgvgLYJ"}' \
    > test.out 2>&1
eval_tap $? 371 'SyncEpicGameDLC' test.out

#- 372 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '02dLSOBPenkPRHrm' \
    > test.out 2>&1
eval_tap $? 372 'SyncOculusDLC' test.out

#- 373 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '61e4tyxhgaO0VnY1' \
    --body '{"serviceLabel": 94}' \
    > test.out 2>&1
eval_tap $? 373 'PublicSyncPsnDlcInventory' test.out

#- 374 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '1u7eHIyQOrwNzxPJ' \
    --body '{"serviceLabels": [66, 75, 100]}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 375 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zO0FSEQTPrruiy3j' \
    --body '{"appId": "8PQf5uHE3QfrXaTw", "steamId": "rRkbOtXC3hwbSRT7"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncSteamDLC' test.out

#- 376 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lsgC7yVqrfAr3Miq' \
    --body '{"xstsToken": "ojTPOn9eZFZ40quZ"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncXboxDLC' test.out

#- 377 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0TvBsxpPABwJ52G0' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'iM8G5w3pRoUv5DzQ' \
    --features '["CHm9gHw1RrwaDOQy", "MwUEGQ5V0S0cscn5", "7UDTcYdz66sjBrjZ"]' \
    --itemId '["uLTBBqQC4FYOhX86", "zw0I2ROyPEtVAmfw", "lXzk4o5xfkRsuymx"]' \
    --limit '36' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 377 'PublicQueryUserEntitlements' test.out

#- 378 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5Hi1APo7yVyMKRlV' \
    --appId '0enT2YoX711npZEh' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserAppEntitlementByAppId' test.out

#- 379 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'oMwGiljKhpbqOVfx' \
    --limit '40' \
    --offset '50' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 379 'PublicQueryUserEntitlementsByAppType' test.out

#- 380 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gTqlhHRI0d59P7kv' \
    --entitlementClazz 'CODE' \
    --itemId 'Qkcd7hk618h1R1ls' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementByItemId' test.out

#- 381 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '9aCZdB3GMgLgZ9XQ' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'V0h3XVxurVhPrXtY' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementBySku' test.out

#- 382 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'yTu4tTw9raDZPhhX' \
    --appIds '["efPxTFgdefkXqRNz", "dy1UXKVDcLxHpXP9", "uLndzCmu4f3elC68"]' \
    --itemIds '["dgXirde2OyF3Uj8m", "u0PfafKzJAjOL8QI", "HEuuCFtTzC1Q3btD"]' \
    --skus '["Q5mfbgnHdzwao34B", "kJOc1pHcRhdQxNCQ", "dVPE0jHk7tDF2UZq"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicExistsAnyUserActiveEntitlement' test.out

#- 383 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'lgKZTBeaRoK8SUmj' \
    --appId 'OO9Gf7RZimaBsi7Q' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 384 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sC5s1nGNNu5lLDyu' \
    --entitlementClazz 'APP' \
    --itemId 'u3bztD5R9X8MKgVa' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 385 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0kog513TKhbCD6Lx' \
    --ids '["ljdH2OogCjPN8FvW", "9RlYWP98n1zJ8Hnk", "uHMdVwzvST2XOEkn"]' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 386 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'qWGyADUeBQkIZwag' \
    --entitlementClazz 'APP' \
    --sku 'OvHp0I2R0gd0Huqc' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 387 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ohlM6lxVGwIb8knX' \
    --namespace $AB_NAMESPACE \
    --userId 'w8EspFKPg1B5UiyD' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserEntitlement' test.out

#- 388 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'nGvVPyoZro2Pv4AM' \
    --namespace $AB_NAMESPACE \
    --userId 'WXkujX17okMuo5DW' \
    --body '{"options": ["72pGFLCt6iXpseqL", "YPMRXgGk4dw2NnL2", "14g8X6Bqk4RkIDUP"], "requestId": "BRvZLfiGL3HnVi47", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 388 'PublicConsumeUserEntitlement' test.out

#- 389 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'MWpdogjb610sgzk9' \
    --namespace $AB_NAMESPACE \
    --userId 'hC8HQXMDqLEAx2FT' \
    --body '{"requestId": "tnelBXtIQrLnAC34", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 389 'PublicSellUserEntitlement' test.out

#- 390 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'wYP7Ta27ecpDsilu' \
    --body '{"code": "SwTmE2azbKbuZusW", "language": "XBh", "region": "GR3weEis4b9GjYOn"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicRedeemCode' test.out

#- 391 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'AhU5T0mheAoblpgu' \
    --body '{"excludeOldTransactions": true, "language": "VihM", "productId": "q21kuXM3lJTClm1w", "receiptData": "8mPHr5UrRbPCnezb", "region": "7yyyihEtRFHyXd9i", "transactionId": "TteXkt8OzZ23esbL"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicFulfillAppleIAPItem' test.out

#- 392 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YXg8gwKJIJfnKAWr' \
    --body '{"epicGamesJwtToken": "cBvQn0re5vMezOFk"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncEpicGamesInventory' test.out

#- 393 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'DmOFxeXXwIL9g2HP' \
    --body '{"autoAck": true, "language": "Nq-bh", "orderId": "peqkItuG5AjNbrRJ", "packageName": "mROTGujuDcsmlvJD", "productId": "YaDyXwYvWWhY04no", "purchaseTime": 50, "purchaseToken": "x3omhCNpSUqNRvSd", "region": "3creaTfdB5ZgNuRk"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicFulfillGoogleIAPItem' test.out

#- 394 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'BppviuVu50zFBvYj' \
    > test.out 2>&1
eval_tap $? 394 'SyncOculusConsumableEntitlements' test.out

#- 395 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'pccg3DGTEwgaABUv' \
    --body '{"currencyCode": "SpkMqPz0Gy3q5zb8", "price": 0.09824257169272588, "productId": "IfS7SzjHczzwmbob", "serviceLabel": 53}' \
    > test.out 2>&1
eval_tap $? 395 'PublicReconcilePlayStationStore' test.out

#- 396 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'yiNZle2xvvc9ThvE' \
    --body '{"currencyCode": "LoWOhBaMRBLegTh5", "price": 0.6399851366925838, "productId": "LyXUdFNYK5pYVaOn", "serviceLabels": [8, 92, 93]}' \
    > test.out 2>&1
eval_tap $? 396 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 397 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l5kRSFmmNpSRHjmN' \
    --body '{"appId": "aIQgL6x3YSEWLXfo", "currencyCode": "i9FOiQxdfZevwOrb", "language": "Uog_725", "price": 0.2598175225611711, "productId": "3yHjS0kTIx8NTpws", "region": "EPXmBI96YeZlp4ZH", "steamId": "xwELKrJ0sxp0uGhx"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncSteamInventory' test.out

#- 398 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'nx19espiborDKCin' \
    --body '{"gameId": "k6NwmfX2DNCuHOXE", "language": "MGL", "region": "FN5juWdYV7OkVwAC"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement1' test.out

#- 399 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Iu5mTEragcTpFmse' \
    --body '{"currencyCode": "PpPsg6NT8l1zyg6V", "price": 0.8088410937505276, "productId": "TFC2PLX7axyr3qLk", "xstsToken": "BLQb7m2rshYyU3oD"}' \
    > test.out 2>&1
eval_tap $? 399 'SyncXboxInventory' test.out

#- 400 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ozTO98dbYV2zRh2K' \
    --itemId '0cnrGEuz16RsHoB0' \
    --limit '78' \
    --offset '89' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 400 'PublicQueryUserOrders' test.out

#- 401 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UKiZPaillMrD30cn' \
    --body '{"currencyCode": "2Xl1qww4dC7rTEhB", "discountedPrice": 11, "ext": {"sFhE9BH0loj35AX9": {}, "gy0SX10bwW6JNBiU": {}, "8Nxoe24TdvTI3ThM": {}}, "itemId": "MHVoYyJemzsnI9HF", "language": "Na", "price": 77, "quantity": 68, "region": "QfVxpKefg6udAERN", "returnUrl": "hhgmCe3QObUsBnUZ", "sectionId": "DqFB7IFJUtYr8CIk"}' \
    > test.out 2>&1
eval_tap $? 401 'PublicCreateUserOrder' test.out

#- 402 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rJaGZaxMkDsJ1H8A' \
    --userId 'mqHOFh3rNcMM4jxS' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserOrder' test.out

#- 403 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yMxogXIKGKWDNLRu' \
    --userId 'gtPHhuWswO3yvVjH' \
    > test.out 2>&1
eval_tap $? 403 'PublicCancelUserOrder' test.out

#- 404 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '2iZKy5m1Emh9w7u7' \
    --userId 'hj9HG1hh8JaH3HAL' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserOrderHistories' test.out

#- 405 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'cjL3mUwdwTqotxru' \
    --userId 'WqXxNqi0VN68OZ4B' \
    > test.out 2>&1
eval_tap $? 405 'PublicDownloadUserOrderReceipt' test.out

#- 406 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hjWiyvR4k1isBL4t' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetPaymentAccounts' test.out

#- 407 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'RooXOKd7rI5bOm5d' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'Z8pNZlPMu925iXgO' \
    > test.out 2>&1
eval_tap $? 407 'PublicDeletePaymentAccount' test.out

#- 408 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '1EHQrDSgHy6xpg3S' \
    --language 'nbfr4f5fcWcetOSI' \
    --region '49rjRNAeAmzUKD1S' \
    --storeId 'kn7njbTL5jFNOQnI' \
    --viewId 'MlABDDEtBNdiWct7' \
    > test.out 2>&1
eval_tap $? 408 'PublicListActiveSections' test.out

#- 409 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ruR954XoxE40G85F' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'bmiEypp4k0duwNx4' \
    --limit '54' \
    --offset '70' \
    --sku 'LFXSUS1RFz2pZMqG' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 409 'PublicQueryUserSubscriptions' test.out

#- 410 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ws72i0TO9b16Yf3O' \
    --body '{"currencyCode": "G45UZTZ1UAbFyDB8", "itemId": "wl4F29ASzjKcOUi3", "language": "Xy", "region": "sm5GR8KLK8tKfmRr", "returnUrl": "PBvi021Wf7aa55DG", "source": "HbtHlCLerGJkBxLI"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSubscribeSubscription' test.out

#- 411 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ukYy47nPLTjNpNi4' \
    --itemId 'w7meabdjZmQaQ8Dn' \
    > test.out 2>&1
eval_tap $? 411 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 412 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YPla7JmfRmj4xFi9' \
    --userId 'xejerDNis6eszh1M' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserSubscription' test.out

#- 413 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'h3EAXw7iFrIkscuH' \
    --userId 'KcDV2TYndO4xjcQh' \
    > test.out 2>&1
eval_tap $? 413 'PublicChangeSubscriptionBillingAccount' test.out

#- 414 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bRoYlKIBsyKQrVpc' \
    --userId 'HyrvQ2q0L7qSXZlq' \
    --body '{"immediate": false, "reason": "GUFXLZfkiGCSG9ZS"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicCancelSubscription' test.out

#- 415 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n8kLTqYSXlCilzyZ' \
    --userId 'UgtHEs3x5kmzHCF7' \
    --excludeFree 'true' \
    --limit '67' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserSubscriptionBillingHistories' test.out

#- 416 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'Pkzv7YtuBFnhjBf3' \
    --language '7VqoFcciQOrgL7fE' \
    --storeId 'gQJdWCvzW4zE4jao' \
    > test.out 2>&1
eval_tap $? 416 'PublicListViews' test.out

#- 417 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Bg66OuplMQhpwSMg' \
    --namespace $AB_NAMESPACE \
    --userId 'Xa2YlC1zyqpkgE4L' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetWallet' test.out

#- 418 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'baBfkjsr9W1ibgjq' \
    --namespace $AB_NAMESPACE \
    --userId 'AxuHPlj4jqlE3pX0' \
    --limit '66' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 418 'PublicListUserWalletTransactions' test.out

#- 419 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'krGtMXLLo1ytjdQn' \
    --baseAppId 'o7CIsGEWgcmuBc9M' \
    --categoryPath 'tXEbV5ClhL8GlHgK' \
    --features 'JGrXEGooJez8RmIx' \
    --includeSubCategoryItem 'false' \
    --itemName '4Vyxz6gCyS1ED0CC' \
    --itemStatus 'ACTIVE' \
    --itemType 'COINS' \
    --limit '99' \
    --offset '14' \
    --region 'MYLLEtav0KduH3SK' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt", "updatedAt:desc", "displayOrder"]' \
    --storeId 'WwLL2EBmDo2oc51x' \
    --tags 'bpuV9aT8Fizu1qfQ' \
    --targetNamespace 'jl84rLtT1Wcokywb' \
    > test.out 2>&1
eval_tap $? 419 'QueryItems1' test.out

#- 420 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'I1x0ZbLOr4kdW7NU' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 420 'ImportStore1' test.out

#- 421 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'QP4NNTxxvLbOnViS' \
    --body '{"itemIds": ["FhJPGLYB9UMQdh0P", "WCLbpS6ykbqJQKPu", "sWIHgjiNGjJi5cWR"]}' \
    > test.out 2>&1
eval_tap $? 421 'ExportStore1' test.out

#- 422 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RvQSll8cQgsWd77o' \
    --body '{"metadata": {"9ysW7QwHJKn1eJVL": {}, "mf4mvOnjD4PpotA2": {}, "ZRRCQ3UnLO8SI5eh": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "VbWjqhhEH4SNssMj", "namespace": "2sUnzhE2Aw2HhvUX"}, "item": {"itemId": "nakvSrXyRmKlz8lw", "itemSku": "aKgIPHCIOxQN6eBi", "itemType": "7SzGZE9sP4wRn3ZS"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"currencyCode": "LauO05F76HbbXSNr", "namespace": "unB8ZIv0Lk0rPaPU"}, "item": {"itemId": "JKqgb215H1Pt92qH", "itemSku": "gilA3jwI9t3ivCvP", "itemType": "lIOkTk4yNOFhhnpH"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "M4RTcqJYzKtQCmZB", "namespace": "NMzAvlnKwaSQhKXW"}, "item": {"itemId": "ERc5MCJQN3wQb7mr", "itemSku": "b7g0pxjU3nTTmGGI", "itemType": "AtjHXyOE2I42Quxy"}, "quantity": 55, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "TjFyfeG8Eop6oEBv"}' \
    > test.out 2>&1
eval_tap $? 422 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE