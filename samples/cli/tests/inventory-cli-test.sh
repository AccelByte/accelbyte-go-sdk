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
echo "1..35"

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
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "G46d0WAtKzPG8YXY", "operations": [{"consumeItems": [{"inventoryId": "SAtHqho95KN6Ftlc", "qty": 26, "slotId": "0Vfk1A1IkQWQqJva", "sourceItemId": "K8Zcxx1OFmG2Cn51"}, {"inventoryId": "KcZHOppWW70u0HaH", "qty": 24, "slotId": "JoVG5vOQtzgbSDOK", "sourceItemId": "4pkJ0cs0BHYy7kJZ"}, {"inventoryId": "uszugPtE63nwpkEu", "qty": 13, "slotId": "sKvIBNvrgbGQyptB", "sourceItemId": "OLfqMOqxiHogkWeV"}], "createItems": [{"customAttributes": {"yYM5bp6lqkljDdtS": {}, "ydP2rtPaDy29EXdW": {}, "6VKrpHCDJvclNIKg": {}}, "inventoryConfigurationCode": "Cy86dChfnAxTdY9F", "inventoryId": "W61X7lSDK7uIQMQ8", "qty": 85, "serverCustomAttributes": {"UiexJI75Z0mKfmF1": {}, "CWS1WBM7CasT6uQo": {}, "xaWGKWmXClipIAbw": {}}, "slotId": "NdeiSd5PjS2YjFMP", "slotUsed": 66, "sourceItemId": "c3i6X7mfVVSZ8S2i", "tags": ["CsLJDPa0avtezOw6", "DjLBBKk67VoDxHmN", "XVrXlv1jJAXa9OzR"], "toSpecificInventory": true, "type": "bOHrkemV6V01DAbU"}, {"customAttributes": {"FNRdpUMsWhOzAWZt": {}, "vCQKEqarUuq90P9u": {}, "k6zDKj7GUN4X2cKn": {}}, "inventoryConfigurationCode": "zPbD5f7Anh8uiX6i", "inventoryId": "b5SFIfJlbDqcfnl1", "qty": 42, "serverCustomAttributes": {"H026pWx7uAYCWZkD": {}, "C8yrDP9N6AziruCi": {}, "S8egrdEqsMSoLMzK": {}}, "slotId": "PdX2iooxYhwyoZS6", "slotUsed": 76, "sourceItemId": "1kwYfU5D1fyV4tLd", "tags": ["UXmm2JsSUamWPgnh", "XDvgRoSz9s3NhfNo", "IOXotkxLTqWoQ0X5"], "toSpecificInventory": false, "type": "bM0R0WE0JwnZrLUJ"}, {"customAttributes": {"NXNNl9e8SyHnOEDb": {}, "CoCxOMt78e3hSZB1": {}, "HiD35S8dzFBVUVge": {}}, "inventoryConfigurationCode": "dm5tPohssrCslZgi", "inventoryId": "aU5xGAyqJrLbhqeY", "qty": 5, "serverCustomAttributes": {"eIALtfSbkzOa96uS": {}, "IULyjm7I7ZkYmlLA": {}, "shY5XVBJUisEKdkg": {}}, "slotId": "yJRB3BonvhsQM9hL", "slotUsed": 28, "sourceItemId": "zXOjnkJkqeTxF1kY", "tags": ["SMt9voIoxs45Wf05", "qRn1zAOCU9iDVBq1", "V4d5XQH8q6eNm0VS"], "toSpecificInventory": false, "type": "iS0uIYbtRMF6kXFQ"}], "removeItems": [{"inventoryId": "GKYiLFgmUpjwBByZ", "slotId": "flWiJXdBBHdtggt1", "sourceItemId": "QAPVmdsS7TdWyxLR"}, {"inventoryId": "olQGzprB6uUxxiNr", "slotId": "EiEEiZUxIZg2UIY5", "sourceItemId": "MMljZh8HnsCR8LFD"}, {"inventoryId": "m8mdpCgwmqPlxsvQ", "slotId": "msWuIwN1x21E363n", "sourceItemId": "cQ4yERTMrvUG8dIl"}], "targetUserId": "O8fBoc24hFwySOET", "updateItems": [{"customAttributes": {"f1I8Jq8tlrivkku9": {}, "9LBJvKz5Ay45ID7l": {}, "zl4vdZgPXRDOJGxu": {}}, "inventoryId": "2knP7W16jFjHJE2p", "serverCustomAttributes": {"PFBetu5fUNVqQD1F": {}, "NDGssmTH5FpFPasw": {}, "ZOzGU67UN3PuY7yM": {}}, "slotId": "2ikxIo8XnmTzBCPr", "sourceItemId": "YPiJ2flUXIjF3Xeq", "tags": ["FkX6iEBzZhAPuuOe", "Rbaa86tLChNIW23y", "buEa5uebHHqmtyA6"], "type": "GpccyfinJi3kTjII"}, {"customAttributes": {"3Qszw79jrNqlITVt": {}, "YhZAJwZErb9vDCOe": {}, "N13jgbHAty9zZmFW": {}}, "inventoryId": "wdXxUMimfswei8kE", "serverCustomAttributes": {"9C60HxLrqZDNWTY3": {}, "5LZ6cKMFN9Yxm6Ea": {}, "61Z4XyY4l7CuIuUJ": {}}, "slotId": "iy2LJ50O9kVcsfh5", "sourceItemId": "IzcZFpjrjBCUCSXj", "tags": ["ORvXtheQIY6YdvuC", "tArvH4XK9pojzSB2", "38xVlKOcMuYnRHLf"], "type": "F4LOuLn4GCbN5dmx"}, {"customAttributes": {"X8piru9GNa18vynY": {}, "hHJ2GjSXz3nMbZwL": {}, "KCzRaaP4B3z10p7c": {}}, "inventoryId": "NvR0bfhfGhOCGEt5", "serverCustomAttributes": {"bDPxUgkjxwzA4CMD": {}, "S8WyET3IPbR4IY2e": {}, "kRIBKvCZjkWQjnLd": {}}, "slotId": "2yFjHjp235ZbIToU", "sourceItemId": "CXKxltESwBfT5w1B", "tags": ["Jx0m2ewFIH6KYxWR", "5AOKKOhREKZSUr0H", "nUFbjcMMacKvxDPN"], "type": "JiN7IFvG8f2XsZgU"}]}, {"consumeItems": [{"inventoryId": "CTCFRkFuEAPonG25", "qty": 12, "slotId": "Da4ERjRYJWFsiCJz", "sourceItemId": "Z2sR1GDbbxz9rI3l"}, {"inventoryId": "GEHNS2Q8ctKac52e", "qty": 77, "slotId": "HEt3hoR8jb4oe22e", "sourceItemId": "qdlJjxlMng7OX7qr"}, {"inventoryId": "aSOuL4fzqrYZdx4L", "qty": 0, "slotId": "LW4zNXO6gXr6PZKH", "sourceItemId": "KRICGj2V0sKcEddW"}], "createItems": [{"customAttributes": {"etER08i52qUcLmS3": {}, "01yWApdW1NRFbDvb": {}, "hgyARBAceFluqPoZ": {}}, "inventoryConfigurationCode": "FKoCehedaKMLGPA0", "inventoryId": "ZiTRhRKVWbAEyCy2", "qty": 57, "serverCustomAttributes": {"P6O9B6i9MlaFRKX2": {}, "Jj3jAXq6sJAMSYBj": {}, "3rrhZRUmMrWa4lEx": {}}, "slotId": "pttgfavNOUYuQB8G", "slotUsed": 51, "sourceItemId": "NlGY1I7hxYtQ0IfZ", "tags": ["noNFoSgk2xA46jZK", "xELOm15fBcRvPhpl", "WnELIELfumLh3bDY"], "toSpecificInventory": true, "type": "VnrFuK2ug0A3Jm67"}, {"customAttributes": {"rwQ0id0C53kbAEKM": {}, "AvztorGFBl0JXmoW": {}, "58ds2z1T94PA5SzY": {}}, "inventoryConfigurationCode": "U764yhSpfZpDCecn", "inventoryId": "FMai1j348Klmm78R", "qty": 54, "serverCustomAttributes": {"u9DhFAbWExw7kj4y": {}, "K8YEOnVX4uhYt038": {}, "Km27VDrzwrSDaAot": {}}, "slotId": "4Cbd3zKswdDBFL45", "slotUsed": 0, "sourceItemId": "U1Vp7YjB9Xo0sVOu", "tags": ["1NXLtP2RjVMx1wme", "uQgA74R9Ap6tWoyR", "scuTVwFfIbsp6PXP"], "toSpecificInventory": true, "type": "sCSr05e5WP87SQBf"}, {"customAttributes": {"ZbKEJ1g7jPe59fbN": {}, "q4Y9AOrMp5fT9KeI": {}, "PP2P2kUUvkmyH9Lr": {}}, "inventoryConfigurationCode": "hV7YcoFk6c46xkpr", "inventoryId": "BTzQzDj0TP4n1lIH", "qty": 34, "serverCustomAttributes": {"tVgM9NXO1dCf0tBm": {}, "dxlZ1FLuXYmrmtVc": {}, "Gk4onRn84Fe95VXs": {}}, "slotId": "QaUJRWDC16yiZOVW", "slotUsed": 86, "sourceItemId": "c5MXNb2WUv8erLpe", "tags": ["mNb1x9D80HJxVW3x", "rm6A3wdiUaPAwWsl", "aGsldYR5dsXfFopC"], "toSpecificInventory": false, "type": "C1f74nqMk04X5m8U"}], "removeItems": [{"inventoryId": "rXm6KFt8nJzSSavV", "slotId": "oYH2OpgTf7rIXoQf", "sourceItemId": "7ySL2X0GDFl1PWHC"}, {"inventoryId": "3B5GWdvD1yiSYo6P", "slotId": "ye4up9CjmepdDfbV", "sourceItemId": "aKcCgOKz17d5IGFe"}, {"inventoryId": "UTMfhDhh9Ft11r8k", "slotId": "FBPd2XwTFz27hqCM", "sourceItemId": "WmlOQ61ESY6SnLIs"}], "targetUserId": "9u3n28V7ydYbncSS", "updateItems": [{"customAttributes": {"3ZZovzcLgFygRlsc": {}, "knGh7zRs0VdmRalk": {}, "mq8eAN7oVJPXnfXW": {}}, "inventoryId": "R7zRVAdxL51uxzz5", "serverCustomAttributes": {"SOJYwUSKd6jO8j8y": {}, "OS0VqKpx10HXzr6V": {}, "CcqOjM0Gq4Lw0qdO": {}}, "slotId": "17OQgYugKBt2KvvM", "sourceItemId": "U5AS5yobn9mFBrzt", "tags": ["ovb8YNEtuuJBqgho", "6KGgQEctu4XcbIZy", "KqDh087RZj1cRsVq"], "type": "eOXnuedmQs3U4MZY"}, {"customAttributes": {"Xaw1Z5sB1THxD2Xk": {}, "ZMPwyKQkos5qENXV": {}, "RuORm1LOHbsyqHft": {}}, "inventoryId": "gD2u5DbV0oonMU7R", "serverCustomAttributes": {"SogwY98i3ilZWEb4": {}, "yMHNbFp2LfB2UavZ": {}, "tw63qrSwdxoCt621": {}}, "slotId": "uyj0OLZoVqyWmvLp", "sourceItemId": "7N7ufGuKif8DL3Ll", "tags": ["mEsPZP6vvJkjWJvu", "6dT1CLM9jVYdqOe4", "onwvYH7fOpI3RG7c"], "type": "3yBQRhc45hxEvyBu"}, {"customAttributes": {"0aZDgpGDVkrRPt1d": {}, "eQLMXRsNBTN8n1oU": {}, "W1YhCstUvgRAaUyh": {}}, "inventoryId": "UeAV6WHTFUXhmjP7", "serverCustomAttributes": {"9Hx1Yl9ZUFLqEHZK": {}, "2qPHkQCyoBfP0Eof": {}, "rBKgT3qEaGlANz0B": {}}, "slotId": "MzjwGmVTkrU7SlXU", "sourceItemId": "gR9UeMw8Py2JnyDD", "tags": ["YjFdDGfLM2hhvCeg", "r3D2U0wZw4sJOpQC", "Wit4plxUwNAOtFcl"], "type": "lTniac0yhJAogVxy"}]}, {"consumeItems": [{"inventoryId": "mEZyAP9nUjgj6hZi", "qty": 11, "slotId": "8X1QSN05fiE1Dbl6", "sourceItemId": "2iaO9D9l9PdOgYyQ"}, {"inventoryId": "9SJHI18a0Q62oW4w", "qty": 76, "slotId": "LrnWNdZ14rQ2NYMT", "sourceItemId": "iwAMv1tgyQe4EHkk"}, {"inventoryId": "CCQ1Q1Y9nVbwBlAH", "qty": 8, "slotId": "zeszxGfAvckQ3GGN", "sourceItemId": "Okc3MsuqVyeXXP8V"}], "createItems": [{"customAttributes": {"S2tItSjFUoLDECXC": {}, "ZgXkZ2Ot62kTonC2": {}, "3hPzkVJVQKgrhZD6": {}}, "inventoryConfigurationCode": "IbCD6C7xrkfdU9UH", "inventoryId": "k71kUBIDusW7EMdk", "qty": 34, "serverCustomAttributes": {"OSsSU3birkhWP8nx": {}, "uj2xBzVDVTLQ7c8X": {}, "HgrCHFn9v4sakThO": {}}, "slotId": "wyulM2Mfz1UGQi6T", "slotUsed": 32, "sourceItemId": "mA2BslHHQDrFwPAa", "tags": ["sBzfwkjuFJ2urAm1", "Rx6UOyVJWxvItUay", "x2zFx1NzUAnHgvSh"], "toSpecificInventory": true, "type": "AmFoOZPjuTFsDifb"}, {"customAttributes": {"LAbqxBSia6yasS8u": {}, "j8o4cOgYRkC5LmCs": {}, "RZ2woapdJPMu3G3S": {}}, "inventoryConfigurationCode": "qEb5OM4wjQhpeYGs", "inventoryId": "zsPf8JbSlk0HNmiE", "qty": 77, "serverCustomAttributes": {"ke36PgkUyLVpSLxV": {}, "mtkClrKjoFBTUr7F": {}, "fiWyAj3OPHd7B6i3": {}}, "slotId": "0QnUiUu4hBoeZ1Gn", "slotUsed": 23, "sourceItemId": "zERsl76jWZB5xc7T", "tags": ["ress1NejRnBecPS0", "2iIDU6jZRpjS7Og8", "XOZnUoqPbJ8l8rgK"], "toSpecificInventory": true, "type": "gmCsHWkuZozNkGqh"}, {"customAttributes": {"IYRg5EVrw2mq3qID": {}, "zcDRFi9rDX8VQ0l1": {}, "FHCVGi9yaonh2Rtr": {}}, "inventoryConfigurationCode": "qjPxcE5HlDIs5y4Q", "inventoryId": "fRywGzyi6AoTCNKf", "qty": 61, "serverCustomAttributes": {"1jOROrfpPoIy3135": {}, "3YOVPiHOctHLVtlv": {}, "GrfpAFZMehyfGiXw": {}}, "slotId": "sXi6qnrbc67rm5zL", "slotUsed": 55, "sourceItemId": "9tcXDy0Fbw5MXNUZ", "tags": ["tet9l2UDjr0vJeOJ", "LIgb4y9NCSzi6Jlx", "ZaBeURPAKFX8arhX"], "toSpecificInventory": true, "type": "3WJjSevs5M5LzTy2"}], "removeItems": [{"inventoryId": "nrKSwXKPMeayK6lb", "slotId": "sUOlQyS03XZizdO8", "sourceItemId": "b1CzeiLh17gmkd53"}, {"inventoryId": "SMpOK3IiyoXjrK8l", "slotId": "azPIF9EIYOF5RKnb", "sourceItemId": "unrOnPGF2KvImWhM"}, {"inventoryId": "g0nTi09wcIhFmrwB", "slotId": "mqS0JWNk0EZl6Fz6", "sourceItemId": "CeBELejRWH4PGayC"}], "targetUserId": "vbQ1o0ydMWhtF1pI", "updateItems": [{"customAttributes": {"aeU357Yn0LL3RTuQ": {}, "o8F7IivGyfoMaPrD": {}, "6gq8Fa6DE6bIOIRo": {}}, "inventoryId": "dJpy5eJeB5L0ZADr", "serverCustomAttributes": {"QGHhYlE9d8nuSKh8": {}, "Z1P6YKHkhxg9MVkc": {}, "VSgIu7LMvMzocZov": {}}, "slotId": "A0TuprckgojxDBPy", "sourceItemId": "inZ3ztK0U1nW8HCq", "tags": ["fhNql7AvCEMrcBXR", "nzGwxlhP2nDp8JMa", "IVzRa7vY7XdQ9jMF"], "type": "CbdDfEM2oGPgeLcz"}, {"customAttributes": {"adn3NRW3nOEXjoHH": {}, "u6M8Th9QHCdPojN4": {}, "5w1XpsHLZTiLGi0T": {}}, "inventoryId": "zcrdyN8cyb0yJyeT", "serverCustomAttributes": {"okdSlUGSInSGJS3o": {}, "C3KugkJdA9MAfyK7": {}, "QAC6oLIO6bCvucFP": {}}, "slotId": "XluTqziKj4gsIjOb", "sourceItemId": "4wutmDxM9uU00271", "tags": ["zTUCE5BIRnZPtMCk", "wn8upQgPgHJbVv6H", "heyxTdNlxvhncdqh"], "type": "tadm51wqv6YzIOsf"}, {"customAttributes": {"TrOyZozMUhIOLZK4": {}, "Z17CUExZqmHHdbKr": {}, "qhf22ssO7CuXvICb": {}}, "inventoryId": "J7XjYlq2lSa2cOFS", "serverCustomAttributes": {"DHSoghrJs187V4p3": {}, "ODYcfby6jpggIyKJ": {}, "2r5Zv5qztqqAVeiC": {}}, "slotId": "2yuAMajrkR4iSLcJ", "sourceItemId": "Mp71clekG1sZlTWv", "tags": ["uzdw0pOb1WCsm1qb", "nNzo2G8t7dKyvpZm", "bkzEF4GpcHSZai2i"], "type": "O4hFG8FsuUw1nt3c"}]}], "requestId": "540Du4mkzW0xLDc8"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'xTzqwOJu1Z1kb9jZ' \
    --limit '84' \
    --offset '24' \
    --sortBy 'updatedAt' \
    --userId 'sT30Bxr8sXetwFxQ' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "uxJxR24qFGQnZJp9", "userId": "VnxUBySQ3sV9qyBD"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'fJ7Z2q6sYrddtj6w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'VhFvj3EQEeb5waGV' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 87}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'xVq5sx2yLcNGVtqG' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "dDgNGHntQxp423Cj"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '2lRpULQEphpq2lIQ' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '1' \
    --qtyGte '8' \
    --sortBy 'qty:asc' \
    --sourceItemId 'DDXUJbU9Rms1LSLp' \
    --tags '0I3JLo2xGVANeRi1' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'etBgRA7Vb0GHXGjI' \
    --namespace $AB_NAMESPACE \
    --slotId '6hiwOxBcvOUuJDd1' \
    --sourceItemId 'pVO6sgjBIogA1n2f' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'rGR92hZaLaRJfqvQ' \
    --limit '14' \
    --offset '85' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dlbZpT8aPlFUCvUf", "description": "y9XumLnBkBEcvvYh", "initialMaxSlots": 54, "maxInstancesPerUser": 77, "maxUpgradeSlots": 13, "name": "DxYjZKFrzaM1SSPW"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'MSGgue3ADEZlDHW1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'nmyAItvGaG9j7Ecc' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JRR44b1kkRUYyGzU", "description": "T9cFZVYYUbNHbZvA", "initialMaxSlots": 83, "maxInstancesPerUser": 16, "maxUpgradeSlots": 59, "name": "QfezlCASkidNK8O4"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'nebiKrkoS3vI5Mgz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '6' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "LU42YtbsgmxYv4JV"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'lzs14ykL1ut5tqzs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '81' \
    --owner '41fhLOQcltczHlxM' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "MJBRC6fCjiAjBJCD", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'EEooh2YUATpOpRue' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'I5Y5nLSf1nvbmVGY' \
    --namespace $AB_NAMESPACE \
    --userId '9lI1A3PFdjBFM6uW' \
    --body '{"qty": 65, "slotId": "jrererkg4I3NMBEz", "sourceItemId": "T97sci52yq3bB0rf"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'fqeQqlOp2Mf2PmQu' \
    --namespace $AB_NAMESPACE \
    --userId 'xivReNgAmxRuZbY0' \
    --body '[{"customAttributes": {"nDt5UuQ4FEXmO6rO": {}, "aZ8W59mo1yualOi1": {}, "qqiYx25f3zKzpbgv": {}}, "serverCustomAttributes": {"xMj2JLjbFitzI8QK": {}, "0OXAoIDFAlNs4frB": {}, "ePgOLkmvRSlbh3xu": {}}, "slotId": "MRAQRL32kefH38fm", "sourceItemId": "0mKScmdrBxDq7E5z", "tags": ["AsqQJOoyqIhtu4aR", "TjgMZUpkRX62IcLU", "QtFsAHzX7EsvSRFZ"], "type": "x1oFv0jIdvE8p8Cc"}, {"customAttributes": {"YUX8LaLPaUAM7klV": {}, "WONbrgYQMTZYPFMv": {}, "PKP5FKloC91tHeee": {}}, "serverCustomAttributes": {"ktROmdQIu2MlQXyX": {}, "FW1HIihDL66tvC7B": {}, "AFhfEcjZaBJXolwz": {}}, "slotId": "0YBgsejiu0xt9qrO", "sourceItemId": "KfXLzY3gym5vKElS", "tags": ["DhalLD4AKPmX4XML", "qmdCSQwEPaTzBGUY", "QMdxNVxO2zxexdCv"], "type": "fPdMQbFaOz8rrI90"}, {"customAttributes": {"2BPPTTnv9RNtsj2Y": {}, "dzzBtMekDk2b4ZYW": {}, "f2v7YxD42Cz5EYqg": {}}, "serverCustomAttributes": {"EQeprqeka2tSXmtH": {}, "iC01Vrj70QEwnR81": {}, "rgrLjFnRyMhyGIvO": {}}, "slotId": "mk6s9050jZ8JqjFW", "sourceItemId": "IiniTpzxLD0pTZqG", "tags": ["XwQSdJQqWjyB3KU8", "fBdArZV1hqECnzEo", "eChfIqJX2xu0ZtZQ"], "type": "YqXkCcrRvXWvNCGZ"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '8KXjFL8HKBnuiDSW' \
    --namespace $AB_NAMESPACE \
    --userId 'bCAaPPcGSO5Vw0l0' \
    --body '{"customAttributes": {"BSC7KWNsESBAiaVN": {}, "HqR9J4sjc6Lv4TAf": {}, "UVlFSHZ4ECq53X88": {}}, "qty": 48, "serverCustomAttributes": {"PjZ5WkvCPulzBO3l": {}, "SB5mt8rVjjyJatmo": {}, "awwN01l9oMJUBNwx": {}}, "slotId": "QankLEZ2iOc614mU", "slotUsed": 30, "sourceItemId": "AVv6j9krN2KaogQF", "tags": ["2LaaAdZbtgtqtpms", "RkTdYiCSfDuAr0gF", "kDzpGotWVIES8UiD"], "type": "cJpX24keKupwlbSM"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'vbBt1kj6AkMFZVPi' \
    --namespace $AB_NAMESPACE \
    --userId 'bf6kPOhvNx3r2HmV' \
    --body '[{"slotId": "OG4oy0X2dNFTQV1r", "sourceItemId": "zWnwfaMgrkasosso"}, {"slotId": "AKnhEcbmvz6jl0R6", "sourceItemId": "8oVro9aVvbpBXJwv"}, {"slotId": "B3vY6dgu0xNNkBIE", "sourceItemId": "Be0hjJeLM6C7AgEu"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'C7PIIFxdnv5eHO8e' \
    --body '{"customAttributes": {"rSPl3AAaxxxEmWcC": {}, "MRosMjGU9fGT9HiE": {}, "ZgitzQUMIuUtAFMf": {}}, "inventoryConfigurationCode": "phhKnT618buNfPNO", "qty": 82, "serverCustomAttributes": {"qalb1tLRuBAlSO3k": {}, "YXPGrrmTjhxb0EcU": {}, "7IPAfIY9orxSFKDD": {}}, "slotId": "9D3YWe07L44TzmRQ", "slotUsed": 72, "sourceItemId": "sbPeLqDdUmGZw1WI", "tags": ["9KhIiC6FtdrTziym", "IIDIxuivXSw8cFld", "11kn15UWQlLgpiPg"], "type": "s44grccJjGJSlQuo"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'dj7IiFVwZ8WS2E8p' \
    --limit '42' \
    --offset '2' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '17' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '27' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'OiZHSRGdfMKz3Bs9' \
    --limit '36' \
    --offset '18' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'guxoEQJkHVDSWXXQ' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 89, "slotId": "sqjIroNVhcuAQ3CY", "sourceItemId": "y4pK9aS7VzyELUhD"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'hQdgNAW0FED3K8LE' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '95' \
    --qtyGte '56' \
    --sortBy 'updatedAt' \
    --sourceItemId 'S2sTNrGZTEz2gqj3' \
    --tags 'hT6BLk70fJPaHYY7' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '1T5Up2CVr4r2ZxVG' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"WGcr4hOtfufw6roE": {}, "HHeaN4AFuINdWAS3": {}, "bk9oIMEyxjjrDkZ9": {}}, "slotId": "5apBUEYADYXu2LWy", "sourceItemId": "e4Op9YyngwPDvztC", "tags": ["d5ZN3rn0iBiOCDQm", "72G8fkTz2FySV6dE", "Pn17pbGOcIyrWUKT"]}, {"customAttributes": {"RCli8Ov4QVXL12m4": {}, "bJXyc8uo4aIdDhuW": {}, "p5hTtTAOb3sNxQMC": {}}, "slotId": "VlTqtMHYFmELi7Ee", "sourceItemId": "wICAJEI81VS5GJts", "tags": ["aMFRDMXzpFLe5PTg", "xMY7ZcPt3mIUxcqn", "Y52dvFxdE4br4Zkv"]}, {"customAttributes": {"AOC95g1d3JRPx58i": {}, "i3w9MXxc9wtO1bbU": {}, "MXpYd9h3gzcJtcqo": {}}, "slotId": "iJlOy7egCoqNizHC", "sourceItemId": "viGjvwMPkp1vVb7J", "tags": ["i3YLw9oA0L4wnjxB", "uWPA2FhBd2suN8YZ", "g98Yk7WHhGN4dBSR"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 's6bpHk2AWewBaP3M' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "p21cu7bhV6oBU08y", "sourceItemId": "ceBR5Qu6vvHoVTQX"}, {"slotId": "M0JgL5G4dKqtH0FW", "sourceItemId": "oZFJ3fvwWtI66PX5"}, {"slotId": "LBSon1mUTEgML17A", "sourceItemId": "8zNb8BIhR7uZP69Q"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '3Pa9E6HKkCMeNQD8' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 4, "slotId": "w6To9f0YZERSGTeg", "sourceItemId": "PNwRuYy3ZiWKRVf3"}, {"qty": 4, "slotId": "3LZOFqvf1iR7JawG", "sourceItemId": "jrq6psaOHFLzd8Ib"}, {"qty": 73, "slotId": "3giC1PW2oG0GiYT9", "sourceItemId": "txBQyDvAX7KQPcp5"}], "srcInventoryId": "cayLQc47Divd7oYX"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '8PIuY3V8H9D2N0ee' \
    --namespace $AB_NAMESPACE \
    --slotId 'sv1zDcpaIPA6PaKF' \
    --sourceItemId 'cVlZPuvIqK4XcyLl' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE