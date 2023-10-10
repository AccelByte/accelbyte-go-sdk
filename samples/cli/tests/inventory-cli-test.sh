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
echo "1..34"

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

#- 2 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '3L3OhziWDzf6T3k1' \
    --limit '55' \
    --offset '31' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'A8wgJmpjzVRgSfgm' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "HvEjFgIsf0foLnc5", "userId": "gmqEFCEcXUCWLUha"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'saL3VOUG1xbvPdcg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'LHm72aQXgG7EHV2q' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 20}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'BnnA9oR2zgRKli2c' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "ke0TUu6vZXWxJFau"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'MAmMkxbXfuT9hLBL' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '49' \
    --qtyGte '78' \
    --sortBy 'updatedAt' \
    --sourceItemId 'UwWRLSeTUg5Iw80S' \
    --tags 'NDZktec6NhpErbR2' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'LlTRJsHwh3L4sYRv' \
    --namespace $AB_NAMESPACE \
    --slotId 'ArYBBlVXLVRXMpKL' \
    --sourceItemId '42vksTzPJ4BFda3T' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'zjo7JYZQTpFXl1RJ' \
    --limit '14' \
    --offset '1' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8Xnd0TuLFgwWHZoL", "description": "hOtywvNIarc0Jv6t", "initialMaxSlots": 60, "maxInstancesPerUser": 15, "maxUpgradeSlots": 75, "name": "NcHeIpyAXhuTKrUY"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'v2gpuaF3rwcThooH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '6xZb1p0ygTUQJBXX' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jtEuTqG4fXqGYQJT", "description": "zoLtbMI6W9I8JT20", "initialMaxSlots": 97, "maxInstancesPerUser": 23, "maxUpgradeSlots": 57, "name": "yN1b7dgyYQkQ9MDy"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'FhdRXnUgYadq1arg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '99' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4k37mgRxZ5iutMTj"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'CufMhjOf7XeJXmDH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '56' \
    --owner 'xXLQJXCqIrcRWB6X' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ynrctFsMHe8I5bpU", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'ujEbrXvrOfVxc89I' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '1oAEgICNJOEJrZLu' \
    --namespace $AB_NAMESPACE \
    --userId 'XQvZm2cyy6zqFLwo' \
    --body '{"qty": 5, "slotId": "3Zfb9ecQu6I6zGx4", "sourceItemId": "WLiqrr1IzQphUkdn"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '0jQSXLHLJzwxb2ZJ' \
    --namespace $AB_NAMESPACE \
    --userId 'sUzO09KbjUOK6FRG' \
    --body '[{"customAttributes": {"8B1y0nl2da9N1iXp": {}, "Us8PR2akQKr75D33": {}, "a7YeK1pEDTaNKEm5": {}}, "serverCustomAttributes": {"zMomYc3Bt2wvnxdH": {}, "UhVikxVYgV6xNdEL": {}, "NfSrSkeyZ2oojzuk": {}}, "slotId": "qM3Nb7ZGqGjJSpfT", "sourceItemId": "PQ1rtMOEeyqkPEbV", "tags": ["S6opmkKZP5OX92e9", "29Q0oXdArInU251D", "UFdzASuPa8UVqMKb"], "type": "AIsxLkOx6lAmnaCw"}, {"customAttributes": {"AI5Ika8YNBkZBD4q": {}, "ggMZixUGCARw9oIw": {}, "0Jm6Oo4CM8KF5fZr": {}}, "serverCustomAttributes": {"bZHISQjg2uvbRXcr": {}, "VjF5DOhTBD2H1PNN": {}, "4pVVPgpElraFfePF": {}}, "slotId": "AoHMRxy42YeNZGT5", "sourceItemId": "ONcOUfLUYRVPxS6s", "tags": ["shiA7xmedYw0n58S", "fhSlQ1GUC0Sm34fB", "zTybAuG8j3bcaZbL"], "type": "yGv41bu4sQraJPRP"}, {"customAttributes": {"8YKAJcD12OqUETkT": {}, "CTRa1m7q1mrwLL3M": {}, "a0Co1JCV92cRVV7b": {}}, "serverCustomAttributes": {"ZFlOiR4KOkKYM3HZ": {}, "hzX0JGAqn2OYBiUL": {}, "CImw8B4MZ4DMcCg1": {}}, "slotId": "r9DNCby7sNuyVMIX", "sourceItemId": "TOy0ACLvbNTvCgXB", "tags": ["zAZstvB4LdWedOT0", "5FN9pdKDqJTxGGsf", "h1PlgUpFOzuapYaz"], "type": "ejumqPsKETqnXZfE"}]' \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'eXf7BosveaHScobA' \
    --namespace $AB_NAMESPACE \
    --userId 'SARBsxesIhzJUHO2' \
    --body '{"customAttributes": {"KKCnwKE3zcJUFbWq": {}, "w7B5k0QNggtKpfqO": {}, "M3i6wfknu8nMESvL": {}}, "qty": 24, "serverCustomAttributes": {"JKemnoevOVgx7T6R": {}, "ODLnF1f9vJisycbf": {}, "0fpdcusK0h7O5GTG": {}}, "slotId": "DXcg2R308ZY1MySh", "slotUsed": 52, "sourceItemId": "cSGo9MYDbzAfjKSR", "tags": ["Vb28wjAmlwruUZMN", "of3i2gxgj2zlo4NJ", "rff5Qx5ntHkER81N"], "type": "52uI6QWt03zG5Jfy"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'S4Hdyg4udX8JL4YJ' \
    --namespace $AB_NAMESPACE \
    --userId 'UlOrxeWVaDnLh54a' \
    --body '[{"slotId": "AQzXjTVkpe1AiokR", "sourceItemId": "TCHEJGpiCdccgN5s"}, {"slotId": "OTI90sHOsIXAAqwN", "sourceItemId": "ojYvKNC7UYy70GE7"}, {"slotId": "Q6QdyHb7ZKCHBEyx", "sourceItemId": "OTiGlh9k61BQAWph"}]' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '7HqgnGrwxLz97TNG' \
    --body '{"customAttributes": {"l1l5vcfbipDyBUUU": {}, "IoQyuldR1xyZFEnt": {}, "kIM9LpWsU3UcIdCw": {}}, "inventoryConfigurationCode": "OVcw2QUGjG11TX0R", "qty": 0, "serverCustomAttributes": {"EEfraSvakufZMMuL": {}, "hgAgRtUV70YHMNMP": {}, "AUIGctEoLQf08fpg": {}}, "slotId": "Gu2FLc9LRQqokV02", "slotUsed": 47, "sourceItemId": "swTXkgiXEQBxHcnD", "tags": ["hOQOzI6RXg6Vte04", "SM0PBiPJCGKNQ0NU", "YmUImLsb4SUE5Nhe"], "type": "Dirc87eMi2vsUXZ4"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'pEeCc8o52mgqycBV' \
    --limit '30' \
    --offset '63' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '21' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '95' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Vm67IRLOg4Yxh1R0' \
    --limit '63' \
    --offset '80' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '5pnSxEQx36jzxszj' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 100, "slotId": "J7ZMc8cMujlFBh07", "sourceItemId": "y18BYhGFvQDRk40f"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'T5CdmuMbcmch5DqG' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '68' \
    --qtyGte '69' \
    --sortBy 'qty:asc' \
    --sourceItemId 'rq9uVvv2jVPq82RU' \
    --tags '0c2gwocHYw4CH6Vk' \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'oCcqJ8HBqq6Tuv6G' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"IUu2rU7yTb1TsNWk": {}, "0YNO5CEYiAqhGPN5": {}, "W0PuQzWijLybG3DB": {}}, "slotId": "LKlbm6RUW3WrWLMw", "sourceItemId": "wJl9aap4vCctuZx7", "tags": ["5UHFp7xUjMDDeTE2", "kn4BqFi8CUEu3Pzp", "2fNED1XC96ZJ3Duu"]}, {"customAttributes": {"vyy1kaEWNgLf3Dke": {}, "1QBR23yMoSKjHdNA": {}, "c8uZi4EqFA9yCHF7": {}}, "slotId": "p3ed9ARXDtU3bIub", "sourceItemId": "mSCniYktP8XPeCMA", "tags": ["JyjloFnwXtKfpYv8", "EU8IVHXdPxyJj0g9", "AOacjbW4Khv5EmUC"]}, {"customAttributes": {"26qSEsagklb1fgdR": {}, "ENhlSbWOZYLyfOgJ": {}, "z5CVAQvftF5Oqwbd": {}}, "slotId": "BfiEa3CmX1UNBDCS", "sourceItemId": "aPUAFQ5OsVpI0hed", "tags": ["C2MvDGsmM176Gkde", "ED0el47JVOMDRnEq", "n0W9tzRZppEIuTUk"]}]' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'EnUCIrBEdh71A9ql' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "4yoQlrHo4r6DkzZH", "sourceItemId": "8mkx4q3KNjf83kPH"}, {"slotId": "j4GQtyQc78hHVNGa", "sourceItemId": "v88lNNJs21ERFPQP"}, {"slotId": "WVkx6NcQZF7KQqvd", "sourceItemId": "qNNzFVmu0UEGQpw9"}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'KjmxhXZ9axlWAGOZ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 7, "slotId": "p7QSHoK9phqVyDqN", "sourceItemId": "doiz5OpyvkKV6o08"}, {"qty": 55, "slotId": "wsHrBZwBNchAlLmi", "sourceItemId": "sq0elJXgTYHitO3E"}, {"qty": 79, "slotId": "d2jSoHnXrY2AxJTN", "sourceItemId": "s9Y6wvxylvIYPz1Q"}], "srcInventoryId": "FoqTH2K12NTYHXJy"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'apgoD8vqIQ1ag23P' \
    --namespace $AB_NAMESPACE \
    --slotId '6asAfvrFtzUUyED0' \
    --sourceItemId 'D0I7xQn4Ks3Kdzpt' \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE