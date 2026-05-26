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
    --limit '9' \
    --offset '38' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["DybGr57yr3DE5O52", "lZps4ewZuMDzNPQE", "eedEoQ76rrivt7cg"], "serviceName": "6DFibGvt7oEb5ZzZ", "targetInventoryCode": "L678P0s93LPRvA6e"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId '0rYp3oCeS3cAaMMH' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["TFJTMkRBuyrfcI6t", "cPnO0USRYCXzhVbu", "2eflpPttKW2B0qAe"], "serviceName": "SNv0DYX7Fo5xXXz5", "targetInventoryCode": "MPlQV3cuPZDeFw40"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 't2Uv9p93jqeAICLk' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '0fGZCoNFHSeNj8l4' \
    --limit '42' \
    --offset '93' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'plvRmbX4KuUBpvcA' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "IrEkGdWfpM0Ts0Rz", "userId": "KUHNsMq03eJkcBTD"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'msMgOE4ay0UkBUck' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'c5SJ5JNlbObBM3Qd' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 55}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'AXU0DiGes0j2eJ2O' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "rRb3VgOf6QurIgPj"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'GQa0VhSpQlgJVkYn' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '32' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'R9B5WY8DBxG2pDs7' \
    --tags 'OGDjrTWMJSemA6Yd' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'xYHUFLK1nY5LYjDU' \
    --namespace $AB_NAMESPACE \
    --slotId 'PrNo1Jyl3hQa94Dq' \
    --sourceItemId 'cuDeBQdvuFa3F3Df' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ac0khBb1LLl4K2Pl' \
    --limit '29' \
    --offset '51' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BKgZDEZOjYXIpSgH", "description": "wwrx6Sc0QyHiZkZT", "initialMaxSlots": 58, "maxInstancesPerUser": 66, "maxUpgradeSlots": 69, "name": "C2z8OZN8jNUlXqZ2"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'tdnisN8sQUbU5N66' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'cWdbnGzOeSrA5bSE' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QGxEuquTAKXyOXSE", "description": "JvMt6vYD2TXfT138", "initialMaxSlots": 0, "maxInstancesPerUser": 55, "maxUpgradeSlots": 15, "name": "2fIoKXWbVYg8LuKk"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'GLNKdY7WtdOm8tTm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '64' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "WqcHxmy1fLhBEyG6"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'o0Y0WCExeXOn2FaI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '72' \
    --owner '09Tmw55GWnyXRtNZ' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "rlZmHR1yRkDUAfiS", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'ylOH8wCGgo5XuH7k' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'DKmFqekKEu6AdQ6q' \
    --namespace $AB_NAMESPACE \
    --userId 'H8ybJsbQuycM9e5M' \
    --dateRangeValidation 'KnKTVGct4neBqKCu' \
    --body '{"options": ["Lx2CDiyhQ17Z7QJ3", "eZlPYhbphRav2Rh2", "1k55kjj6RQFrgKBm"], "qty": 28, "slotId": "NIxLHrmDFoXJvnUU", "sourceItemId": "yuKmpSahSA0RpKKH"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'cVfISP4BWY9MWzc1' \
    --namespace $AB_NAMESPACE \
    --userId 'YXymCoVnVwGJHXuj' \
    --body '[{"customAttributes": {"kacRwpbbH6icUu0q": {}, "djxRDQGpupbuOhDe": {}, "NDd6KfQBqY2uBfm2": {}}, "serverCustomAttributes": {"MqjO1rvFq3UOusNl": {}, "dRb7jw3DNLX5O7kc": {}, "R8BecrpaN9yYx1iu": {}}, "slotId": "A0e9flqqu9qxFfsA", "sourceItemId": "SPjKcIRuBwL3Y3Od", "tags": ["eKCmC2W85qei3MNW", "g6g82AqDs24lKx8z", "tOT4xkndH7rrsNoi"], "type": "TlcUPZtInzFQfnmN"}, {"customAttributes": {"oDrVgEklz4FyKjmF": {}, "TlQKmcwDbT04uOY2": {}, "t9UkwncVfeVHgAxL": {}}, "serverCustomAttributes": {"B1DsVJojfO9pLlfa": {}, "JByjei9A2O83jomf": {}, "s1dN52a7TFDvmm8z": {}}, "slotId": "PRKpYDf027r5t6o9", "sourceItemId": "7NcBM27AWyuSvMkR", "tags": ["soHv7Xe6RNDffOQn", "MsFxkglMLDSAwstT", "clzNlOXoDhFtyFP0"], "type": "Yss9qw5qBJQJR7lx"}, {"customAttributes": {"1BiOMbtIcUTa905O": {}, "oZmkVVblF1mw5WLf": {}, "0xbZ61FPRW2aFicV": {}}, "serverCustomAttributes": {"GDqrvpbBR0Vt7ysj": {}, "Yuu2BT9zv3lORn04": {}, "tNlDGxfMqCfWWEkW": {}}, "slotId": "EMHTgYxWsyyQGzdi", "sourceItemId": "FmItqzCbpd9u4PeO", "tags": ["qXs6lciNuhYEUwy7", "Dv859pXWsfoJqvJ7", "4TwmkXnJ1t4z3EFt"], "type": "L6lQ04qdZ2z52q92"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'IrWJdg5wKsNLtpLH' \
    --namespace $AB_NAMESPACE \
    --userId 'wI6757a9iB76Ga8g' \
    --body '{"customAttributes": {"4idEYTlkxYDkUWPp": {}, "yrbUy1Hu4gAkFQAb": {}, "QIRPeKiMOgNqDSGO": {}}, "qty": 68, "serverCustomAttributes": {"A5LeF0Gm0or6g01z": {}, "pW313rJ604H9ngO8": {}, "qVZAt0YjSMHjkxZQ": {}}, "slotId": "bsfwaLcftL6g4csY", "slotUsed": 18, "source": "OTHER", "sourceItemId": "FBsvzpjSQwz7PH86", "tags": ["9pGslAhgAwIRrHs3", "9QstLeQr6krDnYj7", "wkHO7wLLLLcweKuu"], "type": "GGDZQFtniOQrqgkd"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '6kCQiFXaSNfPZW5Q' \
    --namespace $AB_NAMESPACE \
    --userId 'YZ9rNXE8ZllRQjLQ' \
    --body '[{"slotId": "nAwN8VKn0NL0cvvT", "sourceItemId": "JmvOSnmlQZvuK5IC"}, {"slotId": "MzP9Q2D8Z3jkTXzb", "sourceItemId": "qstZDoqBaLgEr0uB"}, {"slotId": "Dm7aOTJeplVSLKPQ", "sourceItemId": "p0IQGa6CKDIBDoxD"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'mNGOalDrKzAP5qbk' \
    --namespace $AB_NAMESPACE \
    --userId 'hh0JHW2xBrVhydgO' \
    --body '[{"customAttributes": {"RSs0cDQFa4OVKP7f": {}, "CrhA3A44DIwiG3z9": {}, "3IjBJEjHAoJG6Dp4": {}}, "qty": 21, "serverCustomAttributes": {"IM5MkU1YzM9HlJ5l": {}, "vm2gOEdUrPZIVTpA": {}, "q4bfMPX3LBtdcALG": {}}, "slotId": "vpO6IPQTsnbzSi3r", "slotUsed": 45, "source": "OTHER", "sourceItemId": "HWhYQ3bsUs1BxSv5", "tags": ["5GjUfqPpA3v1y7GS", "HKFCxvPWUiotUvYR", "iOJAdDCmSS0Z6VQK"], "type": "ai9HOJ1UVG6MKJUI"}, {"customAttributes": {"bSjV4qSoPpNpyq94": {}, "1nOQg29CyXcNwYo8": {}, "IO4D7FOl8LvJO6QS": {}}, "qty": 79, "serverCustomAttributes": {"XIfH2Lcezm10HkMU": {}, "UXEYe74MCeooeKTh": {}, "WLuZhfxxOKDmgG59": {}}, "slotId": "NIw7mEdK8PK7uxEG", "slotUsed": 44, "source": "OTHER", "sourceItemId": "wvjiXu7hPwUe78xO", "tags": ["Bczv6C69s0S8SlXe", "1T6bdWPpVWRM8n6K", "Pk7cYwIz5W8O9d6W"], "type": "d9U2xv8i2AurPlxg"}, {"customAttributes": {"M3IEKtKMaojUeZcw": {}, "5pJspTVyZ5XAdbKO": {}, "NcfZqfrKns9Q4e9k": {}}, "qty": 82, "serverCustomAttributes": {"VEp6ryF0zYAju5l2": {}, "CdycPBhJrtwHLMZg": {}, "SQpCPJv5ieZakHL0": {}}, "slotId": "7UbgFNB9GtAX98Gz", "slotUsed": 75, "source": "OTHER", "sourceItemId": "FomrL2GXxTgnxJd1", "tags": ["7XqY5qOMJ8UqFczR", "VTKNk6NIF6ptvqOU", "4vvVOaZBql0abjTN"], "type": "mYDwTfqtRpmxsyai"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'vDrbkKIsYRthKdiA' \
    --namespace $AB_NAMESPACE \
    --userId 'oo8UrIRY9l2wdliy' \
    --body '{"incMaxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'xUSNwCmjeoXccXF4' \
    --body '{"customAttributes": {"C1KnUrGTe7KJCEJD": {}, "c2aFxqRGB30iJT7S": {}, "jCLnGxeEBJTiUOLQ": {}}, "inventoryConfigurationCode": "2inFw7t4NZZWEzaC", "qty": 48, "serverCustomAttributes": {"zksHVp3m7UCjt5Ff": {}, "FcFNDK1JPSEFIb5h": {}, "M6KOCjGQ3SECXmoN": {}}, "slotId": "g5b1rJCDVP7Ib7jC", "slotUsed": 45, "source": "OTHER", "sourceItemId": "6ARsIENffWuEzbFF", "tags": ["A9ruMoNBAQaQS06R", "BzSKguCTHNXciuBk", "5GLoMo7pmD6pIkLg"], "type": "ipO6pcXkMM91k7JR"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'xr7infBsXdcMRu1m' \
    --body '[{"customAttributes": {"oTg33kTQ3zjMrNpg": {}, "tJzn9fnp6KrjdMaG": {}, "B2MiySZclh9lAb8s": {}}, "inventoryConfigurationCode": "1IMyId3WifLRgV98", "qty": 27, "serverCustomAttributes": {"GWl5x5scOMKTam9i": {}, "Q3m9Tia0e0S1y8Ne": {}, "L4Abh7AJseCWKLNq": {}}, "slotId": "QpKh57kKRcEai1bH", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "oft5ROx70YTJW463", "tags": ["70E0Ka1HMLYftu2R", "z429NeCatq2IoDxW", "K0KFt5wmwmpyS9jv"], "type": "Yt90PKR6scBUYGNT"}, {"customAttributes": {"OZJyFDmyqPPXlDTj": {}, "KczVfdWza5VypJ1h": {}, "daOqAdpinKwNXP7u": {}}, "inventoryConfigurationCode": "nf72fKg2m396358S", "qty": 79, "serverCustomAttributes": {"Wb5jQ4DkUkijwONw": {}, "rvPEWeLdZYttLZTe": {}, "6Yxsw8m4N41nOser": {}}, "slotId": "QoET15WY13kybeNs", "slotUsed": 40, "source": "OTHER", "sourceItemId": "Z1nL3ckqQyeytii0", "tags": ["VPntpUqtjZxF8kRe", "QfTfsO2bRxShN1n9", "6dFdzFGnC8JvbasF"], "type": "9CbNzgRP9LqhORvm"}, {"customAttributes": {"ehLXg8hL9NUBTykk": {}, "ODJxniGxmIQf3Hb8": {}, "FR6l8nfUxCrynQiX": {}}, "inventoryConfigurationCode": "V8q20E0IIMKU5Yku", "qty": 55, "serverCustomAttributes": {"EaAB6Ms0YlRTfQzj": {}, "TtgCFH4hGFG0oc5L": {}, "3EZ7J8HmlDNH4kn2": {}}, "slotId": "ifCkEDhOVge1BHBT", "slotUsed": 0, "source": "ECOMMERCE", "sourceItemId": "8IddI9aLhMqOrQWd", "tags": ["1xfgj6TJd24qJSDW", "hyWWmOfKsKx9y0sb", "dPiIag4vqTYhTLaM"], "type": "yQbBnuZfV4Ba2LOT"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8nr8k6JjUxU4dd4x' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'rQP5QhAwToTHqtbr' \
    --body '{"entitlementType": "ocglKWrPcaFc2vow", "inventoryConfig": {"slotUsed": 60}, "itemId": "SJCTcg3Uvb9Crach", "itemType": "AMdu5XRAOz9MH7MW", "items": [{"bundledQty": 86, "entitlementType": "fMOuN6FGO61OCZIA", "inventoryConfig": {"slotUsed": 26}, "itemId": "mNzoA7c9QtakXL04", "itemType": "L5ZOg7fNAJmFhWOA", "sku": "stBiV9d2bxwDWUkP", "stackable": true, "useCount": 97}, {"bundledQty": 41, "entitlementType": "iGnqw7eMiFKz1svo", "inventoryConfig": {"slotUsed": 83}, "itemId": "5GSzOYd9C0JRVOJX", "itemType": "fMFUElqg89tOvrnp", "sku": "IxKqj2l3qsaS4ItO", "stackable": true, "useCount": 77}, {"bundledQty": 60, "entitlementType": "jTfhPffCpLGGbKUd", "inventoryConfig": {"slotUsed": 92}, "itemId": "hNKbrQ0TW23M1Uyd", "itemType": "KhJFJAIRmT3YfSxt", "sku": "OOs3yBucWn41Igfj", "stackable": false, "useCount": 30}], "quantity": 57, "sku": "j1ym0OBJXzhRlwXG", "stackable": false, "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Aytp7Wrwbk0Hfa3S' \
    --limit '81' \
    --offset '63' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '51' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '21' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'mL4v81PeEVk4sQgT' \
    --limit '71' \
    --offset '38' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'lcHV2a5VE0ijQElv' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["ZtJXiXpJbnh3TstI", "SDvVynXdkNApFv8z", "Pw2s5bpKZvPF8qT3"], "qty": 83, "slotId": "X9nFF7bXMfG4G45M", "sourceItemId": "PftIeMs9HJuDqh4g"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'g3SoikkK895np47K' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '53' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'A7mZryIXecml4N1P' \
    --tags '4UbNSQfqPs0OIzbK' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '60lF85bjD6gOL5pd' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"KNgfPHjgM6fs50WQ": {}, "gIz1lWh4jtVhz3QE": {}, "aOpEp7msy57uLzwj": {}}, "slotId": "9KqieS2Vp8bPjxtL", "sourceItemId": "TRtLM5yrig4U9X2g", "tags": ["wQNvpLp7moezgSw9", "zvTmiUouObA0QRo3", "Uk9u9ugVKx382jWr"]}, {"customAttributes": {"MqmihfQkpUo4rcDw": {}, "MG1JhVsSJEwqXAjJ": {}, "Y6aOFAsYccKF2kFG": {}}, "slotId": "PxMkG6MgA9QN4YiG", "sourceItemId": "aX83OkzsoJQzljeW", "tags": ["hkbSYMWd4pxgrQYI", "QLv4zBspgNv1EZSc", "ZMyX6W6HKlH25hxC"]}, {"customAttributes": {"pYnB54QAbXohWYI3": {}, "Dy2zMgNhmEfbmRLb": {}, "eytffDHXjwI1ais4": {}}, "slotId": "rnaxz0e1a520ip7J", "sourceItemId": "ckiVblvJ4XrQnEte", "tags": ["lcaVIJS0hsm8RzlI", "KicPAIp0pjyz1o3Z", "zuiQBqLDxvULV0he"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'EQB99HBuY8oLXecK' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "QzqqoKoy36uxyp61", "sourceItemId": "ecOQL535ihzykxOh"}, {"slotId": "cc5wcPdL5DtaEeFA", "sourceItemId": "dpxEOGucWjfNHs2B"}, {"slotId": "xpPLJWpq0YIu8iln", "sourceItemId": "02yHJx05hSXUG861"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '4RrWFikhsM5fPY33' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 22, "slotId": "U4DfxL80NGXaGVLH", "sourceItemId": "5p1JUVl631vn5VS9"}, {"qty": 99, "slotId": "ldYLwiotMvSn2QRo", "sourceItemId": "D9YAJ1KqLwxQXwY0"}, {"qty": 21, "slotId": "1dPXVdyc8ORYVZCE", "sourceItemId": "CjRPgL1bxS6yud74"}], "srcInventoryId": "7OqURuTq7UnnSoMP"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'O96uARpCjrtG3Rif' \
    --namespace $AB_NAMESPACE \
    --slotId '3rcAoze60fs7OJ4q' \
    --sourceItemId 'kchEZ1ttN2fSFzXb' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE