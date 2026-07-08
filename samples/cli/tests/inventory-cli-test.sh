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
echo "1..44"

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

#- 2 AdminCreateChainingOperations
eval_tap 0 2 'AdminCreateChainingOperations # SKIP deprecated' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["LA4LFItKm4crOFRc", "34ivY5SL4ZUOFga1", "omhN6GyHdJEvMKo0"], "serviceName": "HQISuqC8vnrrvjOH", "targetInventoryCode": "8lrzbiZODnqDry5k"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'DWc6D09o89QL8Pn2' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["DgwDZL9qfWJNnuZO", "LhW5RMwAGkrgoQBi", "rkCVRO5OzdkqCLc2"], "serviceName": "dJPJxawmpIYlE1AI", "targetInventoryCode": "zQHzibI4DXYASP5v"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'kofrYRDLoHfTlnMm' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'l4u1Y6wtkAbkNZNz' \
    --limit '73' \
    --offset '3' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'dgnKOzTlDiIllcic' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "zTnFa3ZdWz30MtbE", "userId": "ChJpRAdKCNMBqIg5"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '1T0zkoaEYWEcKP3e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'z4FqZcaHCr7gD26S' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 17}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'xYjTwvBGhvbsoCvP' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "9L8mVWfFmTMNtOHM"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '6aJTnjTXYbiyOEbx' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '10' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'NrC260QfmVzVWgoq' \
    --tags 'LlwXKcUowamTFVTK' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'rd0sTLNsXqrftPUV' \
    --namespace $AB_NAMESPACE \
    --slotId '4jedi2ElXuQVce3i' \
    --sourceItemId '9SUrtGxIIESdYFBb' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'bKnjjxlbpy6Simky' \
    --limit '33' \
    --offset '25' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qtfqU7LhclJOAMj4", "description": "zynTOvllenAoSRrs", "initialMaxSlots": 88, "maxInstancesPerUser": 3, "maxUpgradeSlots": 85, "name": "6UY2SfIwlT7wRUMW"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'IsFbmEVy1nS2sDeG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'lfJ8pNHB0TDqFGmV' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9AD9zEbRo6YF432p", "description": "hNcBZYtbioJJR1Id", "initialMaxSlots": 39, "maxInstancesPerUser": 99, "maxUpgradeSlots": 86, "name": "IFPc6nKBPQAyNQsq"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'hP7NYK1aHvFEPafB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '6' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PDABj6nzzZMhKsxt"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'X8pIwHl7oSd6DNvY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '53' \
    --owner 'aoMZZ0VlGu0zEzzn' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GgjTAwk9cENBm8OB", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'VRRFD3LJxu6EmJKq' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'X04ongns9CM10epN' \
    --namespace $AB_NAMESPACE \
    --userId 'KgUpcGhRgZFkWgVc' \
    --dateRangeValidation 'b454wRX6vFiP837O' \
    --body '{"options": ["ro2Xb5rIg32iyvUL", "B2gL6yOyt5O3pkr8", "s4II6WqVe7wVXIRR"], "qty": 59, "slotId": "66TBNZN5chEjzl9P", "sourceItemId": "aRh8xISFMLmR5Vr1"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'bV9IHLePjiRse36v' \
    --namespace $AB_NAMESPACE \
    --userId 'TywMoWAGG12aYR9d' \
    --body '[{"customAttributes": {"PMfsCxFpzUwIh7AX": {}, "ovr9LclKNFF8uqWI": {}, "zQLe9p0cmWcY1sVc": {}}, "serverCustomAttributes": {"CLE7yj6q1LcX2z46": {}, "j2igyKxY5mBQ5leC": {}, "UzUkbZrBsmuBHnOj": {}}, "slotId": "WzQbavyDad38kSAK", "sourceItemId": "rIicZjfp48XG9Xay", "tags": ["SeZvaGZ1i8iVrA6g", "kbkF7fNnYsLGEwM6", "btwfUsHfSpSqEGua"], "type": "LYrzBYWRGAFwUsri"}, {"customAttributes": {"sMHfw6DvXzE5MUWg": {}, "GMSRhdccOWqljdTR": {}, "8CD4ZwdzjqOCTyxu": {}}, "serverCustomAttributes": {"TtwFYDiYOlXiOsKX": {}, "Cel5sePG9UVhkpvr": {}, "lKQLHqrxnfBXKbQ0": {}}, "slotId": "SVndn0fxIvtYhWdv", "sourceItemId": "Sn9aj3qNO4DJmVDk", "tags": ["rmemtVmiDwkm3e41", "cFkYbcl2Lva8CllZ", "KJxyCf70LXohW9Ie"], "type": "vYTalwQb51KOv81m"}, {"customAttributes": {"qWBatuk4tSipoC1a": {}, "1LN9McRkzGocYbFI": {}, "AKOcg2bsBQZRbOR6": {}}, "serverCustomAttributes": {"Rcoeiky26ghzxxeo": {}, "io8empZ1Pyufciyz": {}, "PCb84zSR2XGQp3nc": {}}, "slotId": "RDf0sNqQmUvz0KCi", "sourceItemId": "Ip9IdQW1uFrqIskM", "tags": ["peeETlq7naCId6lA", "ZK2s64Dta7NiXbAO", "BcOsm9Okj9fwLRam"], "type": "644hdvzHQzzg0pzV"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'f10qY2eMVCjE8IvN' \
    --namespace $AB_NAMESPACE \
    --userId 'YJ293X39gk0z3b1h' \
    --body '{"customAttributes": {"3A7H1Eywg1hpkr7b": {}, "3pEtWzvKhZteqHTg": {}, "x1RWwUkyAK7G9OwP": {}}, "qty": 44, "serverCustomAttributes": {"n1IXxWU2kRZ6Bdmc": {}, "fWIVzW4cGpuxFFqa": {}, "HWSAqF652lK1UzYs": {}}, "slotId": "RnL8P5FnMjveJdwb", "slotUsed": 16, "source": "ECOMMERCE", "sourceItemId": "sXb0qg0vX2u7fFRW", "tags": ["eFvKuR0bcqCAVho6", "ZD0QymSfVj0WB9bD", "wf83wyxMzOciaZI8"], "type": "qvtiG8XF40pVErqT"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'OIhC8UeOJTaZPwQC' \
    --namespace $AB_NAMESPACE \
    --userId '0gPee9VslZyXZSP5' \
    --body '[{"slotId": "0Ek83Q3z06QRsRLc", "sourceItemId": "t5WCeBqzBiG9aWVM"}, {"slotId": "uxxwInftC87mEEF5", "sourceItemId": "JSFuC1iGo9RjPLFs"}, {"slotId": "oG0BA8hL47pGRY40", "sourceItemId": "EaCYZf0P6CYOrd5Y"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'jj1jZ1wn7brxGrcC' \
    --namespace $AB_NAMESPACE \
    --userId 'gy50Hufnyd4n2NtU' \
    --body '[{"customAttributes": {"GDUddjx33qCnF5qb": {}, "Ki2mn92XuSrB6hzY": {}, "KdqIp3zxCkfOsVCX": {}}, "qty": 4, "serverCustomAttributes": {"qIz9TuB8TtBhuDEj": {}, "AEmVIEq5R5efkLZb": {}, "efhCqyCGie3tGoj0": {}}, "slotId": "H5U2ruhJm4b4OxNX", "slotUsed": 13, "source": "OTHER", "sourceItemId": "1xqAr9Y7k02KnilC", "tags": ["ga0eErZTiuwrrf4z", "pomfLxNJJRPdQY4G", "29IrkWy0vUEMs5aQ"], "type": "dj7mr348tkIgXyLk"}, {"customAttributes": {"GvSTlNJ5xSCm5Lni": {}, "CZg1pIntQQbyG5uU": {}, "u2owVZWLQXAo9Hw0": {}}, "qty": 11, "serverCustomAttributes": {"euieAF8wk6g3Prsn": {}, "4JooabJn1eNkLNqs": {}, "xdZVbDsy0WThIU7s": {}}, "slotId": "qMeFzwgzenzyIOtz", "slotUsed": 31, "source": "OTHER", "sourceItemId": "F3qgikCY9TvhdGRC", "tags": ["KQdGzI81ciNaD0PC", "7ScBxbUcBP8oAOFx", "Zz5z6RbokspISWqx"], "type": "mNpvfcmRSRB9ezZw"}, {"customAttributes": {"zA5pmspKLSgJeOpW": {}, "mHgbvwxktlnsNQXP": {}, "f1JuBVRse4vFDBE7": {}}, "qty": 54, "serverCustomAttributes": {"9uPDSsAyTxSoWiUu": {}, "pg8TxznolSnU9jt8": {}, "rfX7MuhRoDdoZogd": {}}, "slotId": "gmBcBZWlurnqEeIU", "slotUsed": 99, "source": "ECOMMERCE", "sourceItemId": "BusZSgEeM7d6rcyw", "tags": ["egFzXcaoDfoleufJ", "g40bnNkDWBb41fnL", "ZZ7w6FY833FaN4hT"], "type": "PytrFd7JdiJdSlgU"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'fMIECHMpwhJJc9GY' \
    --namespace $AB_NAMESPACE \
    --userId 'RZLzDKueWyjlZrc7' \
    --body '{"incMaxSlots": 32}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'g3eCAqrpmck9wQGH' \
    --body '{"customAttributes": {"JwrtmvQ1XfSkbZno": {}, "jemEAYFs4G8WGVcA": {}, "XQg1ovD3WW6VMMwR": {}}, "inventoryConfigurationCode": "e8kAXizqEZQM95MC", "qty": 64, "serverCustomAttributes": {"6TcOWhJMrHPz4MGL": {}, "JP6na2hUMboTC9PK": {}, "brDayULf1eVxWGwz": {}}, "slotId": "FoteOWVzc6HxHhOV", "slotUsed": 84, "source": "ECOMMERCE", "sourceItemId": "sCJJVp5h5trCwbPK", "tags": ["F4HHfuPxmRkhHx8v", "nOXmnUpTmlmMuA8y", "dxb4AJrqV0GQEUGj"], "type": "AyPPrcHjluMAHyGJ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Z9q0PziA5xDVHUZX' \
    --body '[{"customAttributes": {"gORu23ETRB6AA7Gz": {}, "X2psLZFah9mh2YWy": {}, "OZxMNB0ZgEtCl8rM": {}}, "inventoryConfigurationCode": "QHms0yMOidA81aBs", "qty": 40, "serverCustomAttributes": {"EH7b9rF6Ko3nwQE7": {}, "hR7Y5S0geH1NkGar": {}, "i5ClUsX2avuA3uLL": {}}, "slotId": "2cBRsB3sGg4lVz9o", "slotUsed": 23, "source": "OTHER", "sourceItemId": "CYdhYm00pgtUqDEU", "tags": ["pLjI8QUYNdAhI2lw", "TRP9mwiEXr7sW5e1", "D5K2qsTfkVc0Nbeo"], "type": "3oH8Auw9l7IiuHdO"}, {"customAttributes": {"HwOk1Hne2bdJmAt6": {}, "cbHzKhbZAbjuHazX": {}, "u08WUZVcA7cim92x": {}}, "inventoryConfigurationCode": "3BDRFnfywem3I1hB", "qty": 61, "serverCustomAttributes": {"Ha5WB8Vi54dUN4gV": {}, "BLvzekpgdbOUH3cO": {}, "OOXtzKlW7B4oPw6S": {}}, "slotId": "hVsjFPp8YsBBNbbH", "slotUsed": 14, "source": "OTHER", "sourceItemId": "JBTVCQjM0TeQrOwF", "tags": ["rK2OXX0oHOynDAH8", "YLpHJxysHE9s8XTu", "TFLzL5cylQ7HaFn6"], "type": "TO6s8gLleyc1yiEL"}, {"customAttributes": {"BrUShJ31wKzQa2tU": {}, "knBNodLhNd5zadp7": {}, "eauWAg5evFENoRnD": {}}, "inventoryConfigurationCode": "xEOkyqjcEnILqWcj", "qty": 17, "serverCustomAttributes": {"QdPKZCZ3cp41Gzw5": {}, "OEBrFOL4u5rKiQ2x": {}, "giEbVZbuKcvQz6sm": {}}, "slotId": "extbzC5hVmgBOy8k", "slotUsed": 19, "source": "OTHER", "sourceItemId": "8Kb1zzp7ZwMuVxBt", "tags": ["fe6RVlKsmf79VFI2", "oNfJiB0D5c96Qzos", "HrMAWZ4pbWmgVWDd"], "type": "jr2jh4I1lw5qI2Tt"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RPTmMfWM8HTSUtLz' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'YabXKFt3SQBcs8Mz' \
    --body '{"entitlementType": "zdmVRWzh4XuxUEKs", "inventoryConfig": {"slotUsed": 39}, "itemId": "yW1Ifuimv2jj9FMs", "itemType": "AjdQeBdgEzWxvhFE", "items": [{"bundledQty": 86, "entitlementType": "GQ5gfICyYCzS2Hb5", "inventoryConfig": {"slotUsed": 64}, "itemId": "7WD2ka5hk08fZsSi", "itemType": "MNH0RnXjp9GzqOzh", "sku": "z5ZzyzkTI0xyUXA6", "stackable": true, "useCount": 69}, {"bundledQty": 10, "entitlementType": "k4dLbVJvmjtUFOY8", "inventoryConfig": {"slotUsed": 67}, "itemId": "4nlbCNYVMzF0hIKG", "itemType": "3dxaFKEVGSgUkmQY", "sku": "ncd49YSPZ2MzWDiU", "stackable": true, "useCount": 2}, {"bundledQty": 56, "entitlementType": "OU45h1uVkX75LROX", "inventoryConfig": {"slotUsed": 27}, "itemId": "sDsPpBPjLO1g0dqo", "itemType": "xevCmwVmfGNBjcit", "sku": "WgoZWRvZqBAI4DFd", "stackable": true, "useCount": 67}], "quantity": 22, "sku": "QoNjxOSn2PVSdNBq", "stackable": false, "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'jmHXMNqiSpd7MRJ6' \
    --limit '91' \
    --offset '66' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '22' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '18' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'tCqfDZ7NePGRghUa' \
    --limit '66' \
    --offset '22' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '2zlDH2W4NDWLdeTs' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["BguVolV1FVFx8CzV", "9QB2LUyvkfCpuD0T", "k4gNprOqm0OEqGtM"], "qty": 55, "slotId": "ZdfszrRRXOMGLGtQ", "sourceItemId": "sZShgYIVSii4kYIR"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'i5L3DtHu9GDH78st' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '76' \
    --sortBy 'updatedAt' \
    --sourceItemId 'i5AiuFUMhcmkHdtK' \
    --tags '7ucc7LXbGtVq5HMW' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'a8mx2U9N8XpawpIf' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"REG79Yj4tYwbd4cY": {}, "tKu5E6ZiHfss3xia": {}, "7fOf7SqHfmEKEwqy": {}}, "slotId": "Qb7zpN8VDrcLyvxF", "sourceItemId": "Cu1dmHVESKqgoZ3u", "tags": ["HT5aQQYrl6J28BmY", "l5iNS7kzcYgknSVH", "CXbnYo9O1tx8NVjl"]}, {"customAttributes": {"SJ1zMaUZQE67vW35": {}, "5eCuh1GPGC5hP8SW": {}, "1glPtLLg93Vzu5fK": {}}, "slotId": "IcnYFLEZGK0gdym9", "sourceItemId": "kybEDi7mEtXemlPt", "tags": ["2BT3NQT8bPzq7ia3", "ElGVXsDz3YXfUCd0", "MR3rVSqeEHDsumXN"]}, {"customAttributes": {"uLDH8xoKr5jJj7OX": {}, "4WlGmRTTjDMn66a1": {}, "ZmSgKhevhXRqSfFp": {}}, "slotId": "CRmPlRVJ3eSJmWgy", "sourceItemId": "xcjdfsUj0WqxR6cX", "tags": ["MafEuppHcTXNvwqZ", "POEHsJ7kK0r8iHk8", "6AzXDIjBXXB3xV5A"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'R2s1KbnTbHzQg4YG' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "cwEf8k4lNsQD1g5v", "sourceItemId": "UNU49HdEaxYB0IVF"}, {"slotId": "g0vRoRf4V45jNh4q", "sourceItemId": "Tq6s7al4clACYnQv"}, {"slotId": "aN4WNYbfaTIlD2eR", "sourceItemId": "iepWrwJQE1C03lOx"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '0mMGf4MnzsNyGWgr' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 16, "slotId": "m91AoTUvxNKtEr6W", "sourceItemId": "kN3XjyjtBElk69SP"}, {"qty": 49, "slotId": "yNosJRxECG9bQczY", "sourceItemId": "tgCwouS6iRV213r6"}, {"qty": 87, "slotId": "kJqtThFGSgRA8CjR", "sourceItemId": "tYueKopLfBlp31mg"}], "srcInventoryId": "1uTzO640UHiBZPPk"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'tzaWk3hAatGu4Fe5' \
    --namespace $AB_NAMESPACE \
    --slotId 'H7ru8fUKwwBBMHu9' \
    --sourceItemId '9K9dICW937C1nZlv' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE