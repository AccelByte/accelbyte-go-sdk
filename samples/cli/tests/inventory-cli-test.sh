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
    --inventoryConfigurationCode 'ENoUIObmdEBwCw3x' \
    --limit '7' \
    --offset '6' \
    --sortBy 'updatedAt' \
    --userId 'JvMf8USdfIOrxgcR' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "sIxKD1rgCYyPd5h8", "userId": "7nZPFeao4k0bRns7"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'Lnn9dyAaUhepRI5k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'WlhJ5FkZ1Vz0bBo3' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 15}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NSPCH3NvQx1kv07A' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "eqJRCrX3jNvloe93"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'YXhdx23XmBMQ8RTq' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '56' \
    --qtyGte '12' \
    --sortBy 'createdAt' \
    --sourceItemId 'dCcxdKb8ok98gyye' \
    --tags '5cKEsDNLgYjedtSX' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '4dEnxaLkA7TZErr5' \
    --namespace $AB_NAMESPACE \
    --slotId 'Yvr9rPzxwkwB5TDl' \
    --sourceItemId 'pSlr57rpuj0amd0C' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Z1lIdNGT5CMgHKJi' \
    --limit '51' \
    --offset '72' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sEnOkv0ed84ATTT5", "description": "dDHWDwUDDJRyVTqo", "initialMaxSlots": 82, "maxInstancesPerUser": 40, "maxUpgradeSlots": 55, "name": "G1o0DDOUSaZetrfu"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '0aQ3pdryxoUdVXes' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'QqSnmWcHcIlWGys7' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kNSvYkpJgVzxkqTl", "description": "zJvBtehGY4JRkvMC", "initialMaxSlots": 70, "maxInstancesPerUser": 86, "maxUpgradeSlots": 68, "name": "ih7sEBe9MiokLVUy"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'hEM0yh9yghjFfZ47' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '16' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "joJl9Y14MmkxglOc"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'O9qMapLkkd0YDhqH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '52' \
    --owner 'OasS4H8CX59HDjqA' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "tzJ6s2mLFQQ7GY50", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'wWiJSXlncnSOuekC' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '5NCzd6wG1wEM3rgz' \
    --namespace $AB_NAMESPACE \
    --userId '9ztGTqTogRYvi8Ra' \
    --body '{"qty": 67, "slotId": "pyxZdKTGLHwfov58", "sourceItemId": "MiTvPJ9DDHfsgOGu"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'l4n2uVmDZJLg0N89' \
    --namespace $AB_NAMESPACE \
    --userId 'zIQczXnhb73tZMOY' \
    --body '[{"customAttributes": {"h7HGMunTSh70Y1y0": {}, "HH1HqeKDDflV3DvU": {}, "CMol1xwygQhQIvKK": {}}, "serverCustomAttributes": {"9ae1XvJwBuM16uDv": {}, "T3g6HsFq32IFU40G": {}, "mpGJyGuPoV4NswRr": {}}, "slotId": "SfBDcMyRNOUh9Qtm", "sourceItemId": "SUITTAziwNUJryF1", "tags": ["HkT2dOW0dtZGRee1", "6PvKs4AkuV8609jX", "9GCCF6OEeKxEszX1"], "type": "3fO9rZJJoP7XDoh2"}, {"customAttributes": {"8bqu1SP3YoLrnEVp": {}, "VqZr1VbOwTtmQpgP": {}, "2iooEFEfl2SMeoyH": {}}, "serverCustomAttributes": {"NAHNrTPvWOESGNpu": {}, "SRkar3UBZ2XAk27H": {}, "J71dXNZ3qiqQcYGr": {}}, "slotId": "TfzrrrU2yqJBvuSm", "sourceItemId": "dKwC6Q8f8XbtnYds", "tags": ["QSHxcB4iKfrxMfyA", "ssV9fIgjHlwu0hyW", "GoMdjE1n6ozz6d9j"], "type": "jNgCCm8RIjDb0f7A"}, {"customAttributes": {"yDrkRtJtLjSB504s": {}, "fmxRju9T6Zrs4m4Q": {}, "wnqq4t6zBOFxgpNQ": {}}, "serverCustomAttributes": {"Np9We45WWYdRAZEO": {}, "DzEIbaithZrxs82l": {}, "jxqv6tCgQ7PYuvVC": {}}, "slotId": "uIXhcKP5i0t3dj0s", "sourceItemId": "H8TT7KETdm2n087a", "tags": ["MOz7VgBDVJjzOGt3", "dVIqidiUfpJ3XxXe", "rsLI1wVAxaEkBZKy"], "type": "VRZwkphwxaMnemfJ"}]' \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'o7iaERmgp0Oa1Oza' \
    --namespace $AB_NAMESPACE \
    --userId 'JHqcUBIIGWDAZ56M' \
    --body '{"customAttributes": {"EwGJEcxrp8D0DlwD": {}, "DJrnkNFxZbIZI9iv": {}, "dK370smv5xklUwb0": {}}, "qty": 56, "serverCustomAttributes": {"4y6IsTvWcQrL1hG2": {}, "ud3g5rA3RLcy17Dm": {}, "KiMg6QZVcv4Ty7Ei": {}}, "slotId": "fEvwZ7iv0y3klQy5", "slotUsed": 15, "sourceItemId": "sGG3Vl55y2P9S3KC", "tags": ["trhGGk5hti3bZj9p", "HSH1zEZ8JzCilSsi", "x91763yAlNRbUYmu"], "type": "3HcJBbVz0VVJZuXY"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'OBKktE0U7IFyrjOg' \
    --namespace $AB_NAMESPACE \
    --userId 'RpSLyEIPqZQQDWD3' \
    --body '[{"slotId": "5Byb1OqcUebixr8o", "sourceItemId": "86v89tYEYCV4xWpS"}, {"slotId": "QCSMgdvxASM8NEgg", "sourceItemId": "M4L3oJuo7dkRoHLx"}, {"slotId": "T9gKKyqBmUuwVIyd", "sourceItemId": "CMSj8m6C78z6rjha"}]' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Fw5RR7YgR8Wri7ug' \
    --body '{"customAttributes": {"hEZ4htRzcu3uGVjV": {}, "IiWzhxPSlo0fV8Gr": {}, "RFlAOebEtXTaCF9a": {}}, "inventoryConfigurationCode": "XsCBJF0mPiA8utCM", "qty": 48, "serverCustomAttributes": {"YjQ27zLDHcWoqNOc": {}, "CowMeIbbnnM4aRzx": {}, "yRlo0PjENuqotPOk": {}}, "slotId": "L6XZAu2yEYfUkzL1", "slotUsed": 72, "sourceItemId": "amoamApE4wqdVAOo", "tags": ["Gius2rB74PcXkQY3", "QrRfuGGoKBN0ANZP", "uiz6PC3us4QvsuuZ"], "type": "iR66UU5DGXZ8ogEW"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'UaAf7oH5QZ7WOeTj' \
    --limit '23' \
    --offset '62' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '15' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '52' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '5ytWHoJplI1weP6T' \
    --limit '57' \
    --offset '88' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'XeDZzWivMtv0smAr' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 83, "slotId": "VV2AdTb4X4xSriRF", "sourceItemId": "SIsYKT59pDkHW3R3"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'p8UyGIEox8UfC1G9' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '38' \
    --qtyGte '19' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'FwOCeEUj3pBZFWw5' \
    --tags 'D7RLreSXFDCybael' \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Sqe7ICwH07wBuIg6' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"BkGBKgNaiKNCYVnU": {}, "sKF8vkWkxqeoioCB": {}, "aVzlJ46HPC5SYiM1": {}}, "slotId": "hUhPUbC5OY6MmGNR", "sourceItemId": "t8aeovv13lyhx2ib", "tags": ["d6bc2tGxP5cRwruv", "FeRaIRL4Pu55JlC4", "MZiMJIPKAzwHx8eg"]}, {"customAttributes": {"FXR9zUpKE2TvaFV4": {}, "NNVn5XkpK6MdbbyH": {}, "sTEB4aAvtE2bFATz": {}}, "slotId": "1LVkKjX7RFG06zEr", "sourceItemId": "NYR0207qZJ8G3j4X", "tags": ["1w6dRfeEoO2JrdUG", "fzEgduBMViDSI6Fn", "9MU2rUS5O22IbgjE"]}, {"customAttributes": {"bhSmLcJGBRQgt7R4": {}, "kIpjAwqB9Qzqem3M": {}, "mxZHni6NJaGwWLf5": {}}, "slotId": "QTQWGxAlPzEEi7Nm", "sourceItemId": "3dy9LrK5WgDmu9bL", "tags": ["iU0EtxW0Bt6x2Mto", "Wxz7W3x5VodwpOKT", "y2oC9v6P48H6nzuE"]}]' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'TocPSfLVzdVD4UI1' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "I2mgmRGyO5rDPV3f", "sourceItemId": "TuaKrGlWlijz5AV8"}, {"slotId": "4oSJ3r2oNShK47PM", "sourceItemId": "ZDj3q9ZKe474HGOQ"}, {"slotId": "9sqElikeJeKzaVMf", "sourceItemId": "3iweqhqne7ly1jdp"}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'IiGPjrHAe0AH0BW0' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 24, "slotId": "hWK5R8W9hjGqkI3U", "sourceItemId": "kL2zQ18lacVHqSGE"}, {"qty": 21, "slotId": "Ts21tJxE8xsPXPtI", "sourceItemId": "uA47GjwcGxZmEaHR"}, {"qty": 67, "slotId": "9uBi4L4slG4RsSFK", "sourceItemId": "9RS2Wrxn14GkiVZl"}], "srcInventoryId": "KoS4sXjBKmycAwsf"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Cs7AShtrK7sLDtLi' \
    --namespace $AB_NAMESPACE \
    --slotId 'v1Kal1esIKFlGGie' \
    --sourceItemId 'ja2f5uuXjwBbyf6q' \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE