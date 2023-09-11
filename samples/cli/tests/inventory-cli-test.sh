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
    --inventoryConfigurationCode 'j4LTUsS35dbUkGov' \
    --limit '77' \
    --offset '100' \
    --sortBy 'createdAt:desc' \
    --userId '1vPkaScCBddosdki' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "eEni0xdT8PrqBFKn", "userId": "OcvO5g5ejy5Qa4Kj"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'XMAhFJdYI5NOR1mh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '4jz441s7Neaa3Jh0' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 40}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '3UOeHh6WTGm5Iemy' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "MApj38pTJL6wGuNl"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'EN2SeakoPUk9O9jV' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '8' \
    --qtyGte '49' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'bkTiOUaQkn25VHtw' \
    --tags 'yWQnZj3GuaZqNkUw' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '8JzheTlJwW1gg2ax' \
    --namespace $AB_NAMESPACE \
    --slotId 'GA2FH4ra6cc1eFT6' \
    --sourceItemId '5J4thw4QIUZO0yzh' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'oMJTNCxS6ucPiLIT' \
    --limit '88' \
    --offset '32' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "odsSTw347VllBj1N", "description": "pafXSyjKoHtuvKpt", "initialMaxSlots": 67, "maxInstancesPerUser": 13, "maxUpgradeSlots": 49, "name": "zumty8nnaCfekaal"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'vldsR7rVCySPySKd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'g4WHLGyzUQIxjp8V' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6c2Sv7NHtCHBWAs8", "description": "POSReYHD4WttImow", "initialMaxSlots": 71, "maxInstancesPerUser": 39, "maxUpgradeSlots": 54, "name": "sKihFuvrtS3Z8MIE"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 's7dZTUTZFLWoWVQ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '37' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SzPa7KpNPk20woKj"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'XEd7P5eJ1v76lIU0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '15' \
    --owner '75ZPvF4iErHO29BH' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "H8RBlE3JY85nWcdZ", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'iP5Zh6K4IIDSbdvl' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'ZCWUV3LVY8DgWwAN' \
    --namespace $AB_NAMESPACE \
    --userId 'yhn4Zl3BQ2V8PL0d' \
    --body '{"qty": 17, "slotId": "KdkiFYiFW2LzHaFi", "sourceItemId": "Qgc6TQdZl3wZNhEG"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'QmlYGwIWoTtc8Uvs' \
    --namespace $AB_NAMESPACE \
    --userId 'CjA2J6nhDnd6DFMj' \
    --body '[{"customAttributes": {"meFYvOOWcx7jpbiu": {}, "lAldmrA0LvmyRm0w": {}, "hvy9g0OYOT2ErMJV": {}}, "serverCustomAttributes": {"WOlXqxzH5Lf4NUXy": {}, "7Qy7HbA3MMW9LIdi": {}, "dGePy9G71XxPilna": {}}, "slotId": "YenqgBJrW0qtKrIP", "sourceItemId": "SG4uzJh9JMnIyhxS", "tags": ["De3iEYJ8VawMt1ob", "ZzfDFoxYYm8uOXVE", "fgAanDzSsvlzM6Ja"], "type": "WCRTuJI1gRLaCCSC"}, {"customAttributes": {"iYUxqvQetqsDRieG": {}, "WEkbqkoxiIm0zMYM": {}, "OFDhk1L2Zkdh2I8g": {}}, "serverCustomAttributes": {"gq4BGXfVXH1d0kHO": {}, "MLmH1sjLJW3JBSXU": {}, "HshOBJDQkCOkzx7H": {}}, "slotId": "BTEWb4Ov5ZIiOOyd", "sourceItemId": "PuOosacHTS5yWsIM", "tags": ["16Rkw4BAdyquQpqu", "zF40LJd6vX5tvjEN", "X9YMMXO3XPgufb2S"], "type": "2vnr0dRQXNOOQte9"}, {"customAttributes": {"nxs0AGWWkIJuiOVT": {}, "sFnAnJ6pRFBM2jzG": {}, "iIOdjjcEQZhD1JgU": {}}, "serverCustomAttributes": {"aeK6x9GDU79vJhQi": {}, "Cp6sDf38yvFnRdTo": {}, "SnCxcnH56cQJmH3s": {}}, "slotId": "8ScY2vhhTkwJSRWB", "sourceItemId": "kkQuXs30RWgfb7z0", "tags": ["1jK5mEVVcjfAIGIw", "gLB0HbjsoAYY3Cph", "pLIfRYmRL7AhgPQp"], "type": "hRrcZkcY05PrMPEB"}]' \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'SRfUrZXOAqwTysaP' \
    --namespace $AB_NAMESPACE \
    --userId 'xil7EyAfN1EBnIm5' \
    --body '{"customAttributes": {"z1XtXGz9ofoWoZ7A": {}, "yOWhOS2vvkCy3jYs": {}, "qp595eHEQnEBESoP": {}}, "qty": 72, "serverCustomAttributes": {"rleBO5zBf6RsE4iW": {}, "HKXRNOtJvpwAn3En": {}, "9YciLwT0wkaOkZgR": {}}, "slotId": "L4PrfJ97sXcf7aCN", "slotUsed": 72, "sourceItemId": "tmasNJGWKhLl1lkJ", "tags": ["uKxphYIUS0p30L2L", "yCKSyBnx84L8pjpU", "HS2Awlvn2qkGGfbu"], "type": "z0tNs97v60Rwc2VZ"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '7OAYYDxBYS0aXENo' \
    --namespace $AB_NAMESPACE \
    --userId 'GxNzQqYW169uLpwo' \
    --body '[{"slotId": "dv7owzj54UfoDuKb", "sourceItemId": "jqjABBfbHRETKsXc"}, {"slotId": "e1ZMq506MV7SfuIB", "sourceItemId": "bFp4jnbR0MQ25XlI"}, {"slotId": "aCBV9GpviAoidwCK", "sourceItemId": "nOmncTaCJtko0EVX"}]' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'dk3nOPFE5E3wpo1S' \
    --body '{"customAttributes": {"HOuiFQHjQ9Edafb0": {}, "hlcZJD4UWGI7JSFG": {}, "yTkTZ5Ofn22llqqT": {}}, "inventoryConfigurationCode": "3KaW0ml3Lm8X4HI9", "qty": 15, "serverCustomAttributes": {"UP9c6ILJefG5WJbE": {}, "VVuTuIG5hU92dYxE": {}, "hTwt5zdIQi1ZKGiX": {}}, "slotId": "trKLmnqIBnxc1mzH", "slotUsed": 41, "sourceItemId": "tvo3wvxvpIUmtoJq", "tags": ["uA5Vh3tiDLklBhez", "7CQWkL8lb1eYPTue", "uzpcKNT8j3SqQaNc"], "type": "n04gomwAuh4R7zqG"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'pL0WUwYDWT2igF7Y' \
    --limit '84' \
    --offset '82' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '23' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '6' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '47SUHc4Y19qcdk9I' \
    --limit '76' \
    --offset '13' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'zN3sSnS6FeNQWXgA' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 49, "slotId": "NdRY7WMpMe1Ze7E2", "sourceItemId": "h82lgVb6Qs1r6hOq"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'cYl4YbRmjO7Jkgmv' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '28' \
    --qtyGte '12' \
    --sortBy 'updatedAt' \
    --sourceItemId 'KRwIR6RvPRqVly1e' \
    --tags '2lpFFW6WmpKalp9p' \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'KSJZTF9tdEc2Xlz4' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"ILMX2OSpw9AMw1Mh": {}, "EHXKkvoMVDmtVGIn": {}, "M446tAFseioCQct7": {}}, "slotId": "EXjZM30EjgbqnFuh", "sourceItemId": "vaxSiiGi3HIPJcIh", "tags": ["JhBCr7myrpDHtHxF", "O1UzS2dktUlfJogS", "vswb1Q0YB0Pbj8KO"]}, {"customAttributes": {"89brid9YkCFE5Ih1": {}, "sYA9P6VlnfMaP5IV": {}, "B02CZ6s1DJOAAOaH": {}}, "slotId": "dxXn3hHxB0187yP6", "sourceItemId": "xPNJDTtbwW7GnuRU", "tags": ["vMuDPOkuVL8modKk", "xrKZdV10m9nIAXm9", "nV9F9Jq9uRQ2uyXp"]}, {"customAttributes": {"B55ddLAxa7FBUJ2S": {}, "UbENSQDtJWdXsr1m": {}, "VZUzbyXPD7LGzjPG": {}}, "slotId": "QUWe5A9XzotPwqWR", "sourceItemId": "fL4IJFmXyGkiIAn0", "tags": ["4865CTSATpM1tpjj", "zmWIRzewG3qexfUY", "GPRUhzFt0Mavv4gD"]}]' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'XAjg0nAI4PgyCKWZ' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "u0kjflMHOo8JmHqC", "sourceItemId": "HvBgZvIkc8UM8seT"}, {"slotId": "wIlN3wgb58iNuAWO", "sourceItemId": "AsseVRWPqMdf99ft"}, {"slotId": "mhAjTmOoSQrItxc9", "sourceItemId": "j0d7D5PsY1oduHQ9"}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'mJv0fqIvydxGi0Jk' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 22, "slotId": "Oz5qhdl1JxzNgjxG", "sourceItemId": "swdTvCv3xGkZqYJ5"}, {"qty": 46, "slotId": "M8DndZN7hiSN6Dj7", "sourceItemId": "6Zh0YYqh35zx7INb"}, {"qty": 74, "slotId": "9ZZvXcUP8U6si4Mv", "sourceItemId": "UoFDg39LXkmc9w7b"}], "srcInventoryId": "2GTOMzr8wzd3ya6H"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ZEMR7tBAHjWznW61' \
    --namespace $AB_NAMESPACE \
    --slotId 'kwDlNi7HXyUpKHEd' \
    --sourceItemId 'oUIWvbKWiqPsNTYF' \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE