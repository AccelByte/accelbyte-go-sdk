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
    --inventoryConfigurationCode 'TWyTawfJm4QwFBbR' \
    --limit '61' \
    --offset '85' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'hI1XZLSTGsv1T6xQ' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "zJJ059MZvuZ2lJKv", "userId": "TpNa5OK3QyxCDsaq"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '0Qz2XEywH8g63YOv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 've9QJWjl7n9RqaeB' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 84}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NPQ4DZURGYznl70j' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "6K24eI8JT7DYncCT"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'r4eZaw7hYOa9gSah' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '96' \
    --qtyGte '10' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'TM638K6esJB24StG' \
    --tags 'B8py2VJEM8y75A6m' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '03fjBPbIcOKHiMDs' \
    --itemId 'djiMgCy7BTv7dsvf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'NplISbFJ4VhuwdGg' \
    --limit '56' \
    --offset '85' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LX2hEkjYJvdfRDui", "description": "ulRKzy5DidkA0kLa", "initialMaxSlots": 44, "maxInstancesPerUser": 7, "maxUpgradeSlots": 93, "name": "xqcOMakb3Sw9uA53"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'kOvGyeAMy1bicece' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'h7E9iH40d5r20yOL' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lfeARE37OiDqCLXN", "description": "tTpfXZ7M03fRiKrV", "initialMaxSlots": 36, "maxInstancesPerUser": 10, "maxUpgradeSlots": 72, "name": "nuoFvBzGxZVEOAgS"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'V0XI8t6NGGzZulyP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '69' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "tN3Wgf4N50ZCiJ2r"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'JIIrdticiZ0XEFcw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '14' \
    --owner 'xLGNzzexr4z5LZJt' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "j3mwtOrluqzjjU66", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'FyMs0QHRUJGSSHQl' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'CU8H9j2NVRI5XCSV' \
    --namespace $AB_NAMESPACE \
    --userId 'nWWj3mrWGHStbpHB' \
    --body '[{"customAttributes": {"WOO2MSsotqB2akWV": {}, "OzRoF84cQNcBZrzU": {}, "sjcmgTXiDKnr2nO4": {}}, "id": "n44Bzkq9kzL8x9Zu", "serverCustomAttributes": {"EL68GbFrAjRDi1x2": {}, "RytEtrr4TeXTQDMN": {}, "m11OoVk2ixHT1Wfu": {}}, "tags": ["MK7k0xvzMTQ4mjN1", "ePXO816lwbsiSfZb", "tYKp48AfZ51AXPIR"], "type": "SSHMQBklcxylebFn"}, {"customAttributes": {"2Wu5WBEwDylAnAid": {}, "t6GMHNkoibHHhv0O": {}, "KiZIqYZUCbc587CL": {}}, "id": "wXMML5yDcEFbCBLj", "serverCustomAttributes": {"6SiNA3mZ6yfbhC29": {}, "SejBcprcU4PAA5kU": {}, "wPL9OGR6ocQiZDO8": {}}, "tags": ["oQpVpm9wcQAlWRVs", "OYv01ojPIMsZeZUH", "YSMoELnsmg4VHBVi"], "type": "JjteeAC3WNDiyG0Y"}, {"customAttributes": {"CwP8t7hU48ZW7QC3": {}, "X2UgS3p0j8mvoVUl": {}, "iLzg8wI5Ce67rCnx": {}}, "id": "iAV5Is39EnTA8pPF", "serverCustomAttributes": {"CGyjmvWsxyEJ8rHk": {}, "4WJmDwYueJXcu4qg": {}, "zSJwVlp7RI4y2wwr": {}}, "tags": ["7FcGiv5OXtHml56i", "x4CmHN7Bx0aMPsgN", "lWF809YWrx6rhqrb"], "type": "aNLR6T4HJSEnbh1d"}]' \
    > test.out 2>&1
eval_tap $? 20 'AdminBulkUpdateMyItems' test.out

#- 21 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'qOWMscBFz7KLOTGR' \
    --namespace $AB_NAMESPACE \
    --userId 'DiIB7KQ7E8rrTmNr' \
    --body '{"customAttributes": {"OUtu6Sof7HIIrSe4": {}, "eDIZY90f9kzMa0Xk": {}, "qQA0rsPHrQSxd1VG": {}}, "qty": 69, "serverCustomAttributes": {"2X7qYmnR4X3E758r": {}, "OwSs40y7IprS9r7G": {}, "VAj4AojsBJILixUa": {}}, "sourceItemId": "sDTGmuexOL5MUyi4", "tags": ["62FsUyzdBEIseBIo", "xlCLwAavyi16k6uz", "ULXZYKtOO6V3HhIz"], "type": "rGUN0p5xhBvtT3Oj"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSaveItemToInventory' test.out

#- 22 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'ElXYjlMWFrEuOTkW' \
    --namespace $AB_NAMESPACE \
    --userId 'mCpBoGuPVRorm2Uk' \
    --body '{"ids": ["7PItaN6Tty4kkHzh", "UocBZNhBU1vxoiDk", "dK5htKW32gCSnXaa"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkRemoveItems' test.out

#- 23 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'v3pQI1CnXwfOzw0v' \
    --itemId 'RFuFj4QfWGkREbOc' \
    --namespace $AB_NAMESPACE \
    --userId 'TEc2nFwL8tWk1dtT' \
    --body '{"qty": 97}' \
    > test.out 2>&1
eval_tap $? 23 'AdminConsumeUserItem' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Facc1tKB1ZQuT03C' \
    --body '{"customAttributes": {"B7J1zypzT62pT8CH": {}, "axFF9CSAczYZAFNB": {}, "3JKfi8I1fzM90CSH": {}}, "inventoryConfigurationCode": "yZwEGLCtKBFggzww", "qty": 58, "serverCustomAttributes": {"dgkG5zOsdH1bVRbq": {}, "HwkENx4KGj8JDPLY": {}, "QwQwcgwcK0735vBT": {}}, "sourceItemId": "lIj0MiWmcLVruTEt", "tags": ["t8EnINhLGgRvMjpw", "fZkbc373sQSRowXF", "5Enl35pol7fuMrJP"], "type": "eRbDAfMRIuFjUT5O"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'oOj8V3wdRWA9lNqz' \
    --limit '60' \
    --offset '16' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '52' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '86' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'PXsKCoAmKfXEdPX9' \
    --limit '11' \
    --offset '87' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'kWIVL6Uco1gfr6oa' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '82' \
    --qtyGte '94' \
    --sortBy 'updatedAt' \
    --sourceItemId 'oBobCJ2sKGZQt9Nh' \
    --tags 'MIkOK3FZkFHEP6R5' \
    > test.out 2>&1
eval_tap $? 29 'PublicListItems' test.out

#- 30 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'yED29B2m3crT4c78' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"6uayx9Gid3ROelKp": {}, "0X6YjaT1e0cbIXPe": {}, "sTyfUSlkLXYOKMNA": {}}, "id": "864xgqXVIpclSMZi", "tags": ["po239XeWpGycISyZ", "5vlZgbIpV7pZS60x", "1NyY0TTvae8Ox4tn"]}, {"customAttributes": {"6DRFykuU6Nhoj0UG": {}, "TDpp3IcKFTVXGzIa": {}, "EHsIOS3Yq6v6SBHy": {}}, "id": "v8E5206Ly4F3iUyo", "tags": ["irAZGBs0cBJDqB5c", "nZcZTw0aIgB5xSxC", "AgZReGPi1yVZG6E2"]}, {"customAttributes": {"SBY9zU9WKgQthFHd": {}, "9nfxCsuCqetEY9hw": {}, "pdprWC3TTf2L96kW": {}}, "id": "wSxfDa3ng5SlmHUo", "tags": ["2dIxSWvJVR9s6Jhb", "MYmVWb8CleLYVmtA", "EckLhEplNfyPH97b"]}]' \
    > test.out 2>&1
eval_tap $? 30 'PublicBulkUpdateMyItems' test.out

#- 31 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'vBRnVjH8ZmmdNSU4' \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["CflE4yGjI1rmERV5", "ZK0JEfSPYBWTLoIG", "SKeJzei9r7zg3xhw"]}' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkRemoveMyItems' test.out

#- 32 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'DTsKldg85Wc44vyp' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"id": "7stKJvONyMzGUbbD", "qty": 59}, {"id": "2SRZ4q4F0I0MzTue", "qty": 76}, {"id": "yoR5FaA0UFrNBUAI", "qty": 3}], "srcInventoryId": "Q1xMING6xecsoC5F"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicMoveMyItems' test.out

#- 33 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Cj4Mz61hyiJ90BWm' \
    --itemId 'vrGXnooRoFIKwcxR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'PublicGetItem' test.out

#- 34 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '70v59rprPb3yKwgi' \
    --itemId 'aHUn7zzXig8g03i1' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 75}' \
    > test.out 2>&1
eval_tap $? 34 'PublicConsumeMyItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE