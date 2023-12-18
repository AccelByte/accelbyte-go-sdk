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
    --body '{"message": "iNtvqPG1r3eq5tc9", "operations": [{"consumeItems": [{"inventoryId": "7Uja7LN5JOz2Mibk", "qty": 64, "slotId": "87IkPyLgr9qBk8gl", "sourceItemId": "vVEvQ6YZw1Ny030j"}, {"inventoryId": "YcCMQhvkBKS5Mf4G", "qty": 33, "slotId": "mB39wQfQnCLUb7rw", "sourceItemId": "aUy2oNSSDMKUu71J"}, {"inventoryId": "IQXUp0PEC55TgcIN", "qty": 6, "slotId": "XeIQCEmRhdG2Y8JF", "sourceItemId": "Ba3OHN84nX9eiXER"}], "createItems": [{"customAttributes": {"pTJMYhjOCkvp7pnk": {}, "ejTLo3CVRGrO3wr6": {}, "hDSwiwjrKkowHdkT": {}}, "inventoryConfigurationCode": "vFfs8NWcDk3OoMBF", "inventoryId": "b7EJet4s5VRYgfY7", "qty": 56, "serverCustomAttributes": {"Mlc9pcNWguEEbmT8": {}, "RckqCSl50eU92WDG": {}, "WcujXd41YrPfAhRc": {}}, "slotId": "2vPiSYTFSYvWKtOX", "slotUsed": 64, "sourceItemId": "NpZOhS5GxGsjm4n6", "tags": ["iQlO1nOhBZ2u1NaS", "INaQVs50LNy47h1J", "ptCe6yJaA8YdHxOg"], "toSpecificInventory": false, "type": "0bDi3T807TV8c3rl"}, {"customAttributes": {"H3gOFLLcTU9Gq87B": {}, "QNmZA29TvzsKxGrW": {}, "8Sz8P8NXP0Qvly0h": {}}, "inventoryConfigurationCode": "7UhqLRXf9saNzHmw", "inventoryId": "Y3AoReQtPxsnYRQ9", "qty": 55, "serverCustomAttributes": {"v0meY7MSDAtPBUxK": {}, "GozwJJUxxrvuBOwP": {}, "WKvLynCSkmRzSZ9N": {}}, "slotId": "YbA3jtioCpq3Nfpr", "slotUsed": 37, "sourceItemId": "XVmZb2KtmhrF2oPm", "tags": ["YgSrz9jkczUmBlvj", "mn3pYKPNUQzfGyEP", "TeGtphvU5baZNHgG"], "toSpecificInventory": true, "type": "grnsTeo02Fj9KAQW"}, {"customAttributes": {"0gPIcXFPrb7MIt6h": {}, "m9B8jNltffvSPaoU": {}, "YptuQwTK3l2TNABA": {}}, "inventoryConfigurationCode": "KYwCB0A75i0vcjV0", "inventoryId": "yX2pPjUsNmUpgiY9", "qty": 2, "serverCustomAttributes": {"SdBtOumzMU1tPfI2": {}, "QT12b782fAY8yJjE": {}, "MBHPeojhyuEOAdqH": {}}, "slotId": "bZfSHZk3G4bz0eMt", "slotUsed": 93, "sourceItemId": "awFpmzJt2xW5IhsT", "tags": ["JTTzwA9eLrMiuE7J", "MqrOkB6ce7P28ng3", "lkvPR79cBZ4175Kr"], "toSpecificInventory": false, "type": "5XDqKkWZt4N0h7Wu"}], "removeItems": [{"inventoryId": "BwxoOBQzMue1yJUM", "slotId": "tOjwGrGywaO62TXq", "sourceItemId": "mcT5RSQWasQkSRyk"}, {"inventoryId": "IgWQcFMhy5iRc135", "slotId": "8GzZkDo2gBmOtEgP", "sourceItemId": "DvhRQaqbv3ZpmLYC"}, {"inventoryId": "ptH58nSBJnMxY3yq", "slotId": "J3IsDL4wrLgV2Gax", "sourceItemId": "Fus8cihxFFYqS6rv"}], "targetUserId": "rGbeVEsYjK5kJg6c", "updateItems": [{"customAttributes": {"EZ8DC3U1PIcXbfCh": {}, "KDBoYn8zWmCCv48S": {}, "YAkVhp2fiPR95IhB": {}}, "inventoryId": "lbnySoCqS1josy4y", "serverCustomAttributes": {"9cpniWS1bx0mAuaF": {}, "UKoB1MF7DCV9CEvG": {}, "kmixIB1K3uGQmO2l": {}}, "slotId": "1WsEqJgUrIaxftLN", "sourceItemId": "c3pLaKTynNnbPwaf", "tags": ["2JFtR2z2wOoSHUGT", "2U1wkctFQdN7fJoj", "DqAiHqqiknMtQWdh"], "type": "mjdg7Gty0cOdBtoe"}, {"customAttributes": {"7uOszTRsiuW7JRd7": {}, "PMRMzt7YDxhtp2Aa": {}, "ZcIblbqYxNPF38Ge": {}}, "inventoryId": "AyAZHexfoV6ZxRBP", "serverCustomAttributes": {"wG4o1DVEjAHbGAzd": {}, "aweTYDIksDcHE4yg": {}, "G0iaZENAaDmVvjjv": {}}, "slotId": "mhdW4Oov3efNWZt8", "sourceItemId": "4A6tB6OSkUPvHwvs", "tags": ["DQjHCseVxo44J68h", "feOOnqIybLxAgudp", "ZsLscTDnElT4NIog"], "type": "mtHveW6unJKnyP3l"}, {"customAttributes": {"c5xO8r6B8YOnFMDI": {}, "pbtXvSIYHayFLEuu": {}, "QZYWfS2EtDIbVg5Q": {}}, "inventoryId": "g06OtDMn5Bfgo4ZW", "serverCustomAttributes": {"wlbEgQDKZjEgkrqy": {}, "mpNXmGEc5MC9fBEg": {}, "VETzJtlNDy5uEODN": {}}, "slotId": "yen4Ws1UC6moRVuI", "sourceItemId": "0A8zI34m8N8w9Of5", "tags": ["5x6MbHatHROh5nMN", "6XFyuwKryBio9i3U", "EWKjKMErivId9cRX"], "type": "8xQYDyhRxv78nbkJ"}]}, {"consumeItems": [{"inventoryId": "yHz6WddHbxTomShn", "qty": 30, "slotId": "8h9KnRbTMThALM7S", "sourceItemId": "aB53PYCfbif7gvUK"}, {"inventoryId": "jJQbKZxDJMFAmJzr", "qty": 54, "slotId": "0RfdBb9QmBipHJ7I", "sourceItemId": "hU18m8BhNGOUOSuX"}, {"inventoryId": "FIfSykYszLIvOnxu", "qty": 27, "slotId": "fGzcodWL4P242QJ6", "sourceItemId": "4zzdZ7HY2XeQG2q7"}], "createItems": [{"customAttributes": {"zjH7J7ngxR4DtObi": {}, "tfLTEp7ElLzRG4Az": {}, "RiLAnfh2gVWfTfh2": {}}, "inventoryConfigurationCode": "VuYQDFmfibJ0Kozw", "inventoryId": "2Q6SSts5o3T5um4Q", "qty": 22, "serverCustomAttributes": {"y8cOsbH5gu7CEm9I": {}, "IhbntcTolw06R49H": {}, "nA6f1M18803Qgare": {}}, "slotId": "9riYfip1D62Uuzpe", "slotUsed": 85, "sourceItemId": "ZoyrwdeLyy2reR5A", "tags": ["9EuSTMmt2miwfEbI", "wwpgft6xnXxfYyNX", "GtC2BQJRa68Iga22"], "toSpecificInventory": false, "type": "y694gYWpywB2Sevl"}, {"customAttributes": {"O0lQwScbJ5REC9mA": {}, "Hl4eZYAwUApAR1A0": {}, "dWVYBc4cODLOy7GG": {}}, "inventoryConfigurationCode": "6gafAv7tg5lWpAj5", "inventoryId": "VUQyslrTGbAb09Mo", "qty": 1, "serverCustomAttributes": {"aaf9sbmToR7utRUY": {}, "UTbQBTzEHEzTY3h3": {}, "xQqT0XWvRAET4P5W": {}}, "slotId": "4FLCBEsi0Tnv7Wrh", "slotUsed": 45, "sourceItemId": "GftnZK0WwNK3wGwe", "tags": ["IZaJ6JAnw4qY3y4Q", "r3bcvVjS87ef1LXE", "TgMpuyBahWtyKQgm"], "toSpecificInventory": false, "type": "LipgoKWO2to2XCAx"}, {"customAttributes": {"tn7zDPSzDcvE9BCy": {}, "lZqVo6tb2fsV5LQZ": {}, "3X7CilgeKMvBUuC3": {}}, "inventoryConfigurationCode": "8uEV9WB9np5w4UxC", "inventoryId": "XPYoH88fv3kK7ewh", "qty": 60, "serverCustomAttributes": {"mBujumsfQvVC8x2Z": {}, "koB3md30i17ePS9A": {}, "uYRgdQE0XgBFmFaf": {}}, "slotId": "cqiBp6aYOe8mg0Aq", "slotUsed": 60, "sourceItemId": "aP16Tv1khPysXleU", "tags": ["K9Vi7KaXW51X0GpA", "UlxzcH5kHKaFS4Un", "7HkliXhzml8yyaQm"], "toSpecificInventory": false, "type": "s9rU66crTHfeHr3V"}], "removeItems": [{"inventoryId": "MGToDjPtzjodS4os", "slotId": "8UzRJItK9oIWGwDs", "sourceItemId": "JbxE3ZQj9frbuI0y"}, {"inventoryId": "0KjImSkOtWJ90eNQ", "slotId": "CxWv8qguyykbcidv", "sourceItemId": "pYcGAMJS8JJl6TAE"}, {"inventoryId": "ljOdsF3SYwaGUUCO", "slotId": "yryYW3oNZfY2G17Y", "sourceItemId": "dboQXDtJ615p3xhw"}], "targetUserId": "BXx4HMLTZwiTf8Ix", "updateItems": [{"customAttributes": {"0OhnZY9G1I3tW4hC": {}, "hdIOppqDh0KNpjtL": {}, "ZHFwNCg7ulriopOs": {}}, "inventoryId": "1Zq16lJT7OvpgzXI", "serverCustomAttributes": {"3o1fz021DK4k2Hni": {}, "Lh7NjUzwKnAtEvqu": {}, "QyscFYXB6QJlYxXx": {}}, "slotId": "smNwjeMgjTkajn3t", "sourceItemId": "JUn2u4L1jVauwbxs", "tags": ["dhArYF9U1iBB97XX", "vrpc5jazwR5SUH8G", "d6XJlEXAkLSFzDEP"], "type": "ZWJnXZ0i8Xn1Sxd1"}, {"customAttributes": {"jBsKB6sNyjwMKL2W": {}, "piHUPSQ9EKJpRFIM": {}, "KYaZKliIznlYKqfy": {}}, "inventoryId": "IXetsZJ9HNA4ZHeH", "serverCustomAttributes": {"nmbD0Cerm3hrW5nJ": {}, "mee6mc5WjB4cBpLh": {}, "cxfWZ3SBNtYtCS3l": {}}, "slotId": "qSF8vA4B7EQz6fRD", "sourceItemId": "bopimuOyay2EP0Eo", "tags": ["x5fgfICSzY2vD1Kp", "HZuxGbYQpYWljIXR", "BlY9Dx0YYBmVa5Sl"], "type": "vItgcuqx1RDvdja5"}, {"customAttributes": {"gVWbj2Cg1QiR5pG8": {}, "pNeQbtvd05tvDFzf": {}, "7GplVmJAVPh4legK": {}}, "inventoryId": "SIQXM17lm37hDQEn", "serverCustomAttributes": {"2jjc8dh5tOrn8vdU": {}, "xTtAWZT6TSMQ6Fly": {}, "DY7R18ZRAVFZCzyp": {}}, "slotId": "JDof83LG5DrPTojJ", "sourceItemId": "TTuntvjYoLxhzGvn", "tags": ["aWErg9QqgfSabfLq", "85QBc9BWX1hDVzFt", "oeTrXuXsf5k8Hpii"], "type": "5dp4duyRJIyWzwUM"}]}, {"consumeItems": [{"inventoryId": "7JzC904VTSSRJPp3", "qty": 11, "slotId": "pjPVzZ0DUbv4VjMK", "sourceItemId": "jhw1BcjtrbHAVay6"}, {"inventoryId": "zssF1bwi6H86xIZE", "qty": 73, "slotId": "9YigITsPAIwWF6yH", "sourceItemId": "u48mqrq20rI8eSAN"}, {"inventoryId": "UXPHjPcFJjR8ccZk", "qty": 73, "slotId": "EWgJrW6JQCgalidi", "sourceItemId": "hAjQz6r3a78bRFv5"}], "createItems": [{"customAttributes": {"Zo0QVP79FYzP5yIk": {}, "0dwdM07lAgdvoNmT": {}, "fzyHje9AEsz0bugy": {}}, "inventoryConfigurationCode": "11a1mPDbr9JPnax9", "inventoryId": "YfqPSnCBJmebQNFC", "qty": 22, "serverCustomAttributes": {"dDw55jBDUYA8Pry1": {}, "UJ69iHx54cSEbDyo": {}, "rAR4Xk61iShUUeI0": {}}, "slotId": "P4CgOArUEQVE0iBm", "slotUsed": 22, "sourceItemId": "dssDjLoe3QvTrcDE", "tags": ["p75vXVlelRUTgjwO", "fsnKptmSB0GIPfJv", "ZP119MjYayUp8Uwc"], "toSpecificInventory": true, "type": "smkocRmhRBtt4VBJ"}, {"customAttributes": {"bFK7WBELxX5Tsb0S": {}, "yZqDnmWPZFYGX8vs": {}, "5DXLQ4IZ8WhJsVZA": {}}, "inventoryConfigurationCode": "lKUJv3mGc6GNETR4", "inventoryId": "ZfkVeIF8kRqsNWMa", "qty": 46, "serverCustomAttributes": {"lrAHvL6sFGsPDimN": {}, "VE3BRFF7WHU4vMJL": {}, "LLCyTPbG6SscJSGc": {}}, "slotId": "stb1ffGZ8d5ml7p1", "slotUsed": 23, "sourceItemId": "QBo9KcBiMH0diruS", "tags": ["afukj3E005XVniB5", "Oofr48k5z1R9ZrWB", "CS4dRyR5PkdoThcn"], "toSpecificInventory": false, "type": "FDuuHLrqMtNi7JI7"}, {"customAttributes": {"dN8g9xZ15gpySmjL": {}, "43woKHLfG7HlWweh": {}, "NpZfhbxTXQqt2ziu": {}}, "inventoryConfigurationCode": "23CuDVRtie3i8xfT", "inventoryId": "IUgFlTk5eIQR1XbU", "qty": 77, "serverCustomAttributes": {"OW1gTbVAmZMaPcpx": {}, "aOtyKV76xvi4sgam": {}, "YxXHYDz3YObItbh7": {}}, "slotId": "bQpMUQyDE7GTttal", "slotUsed": 50, "sourceItemId": "5zb2yPngzmwyP0Xi", "tags": ["BjORNDIgJ9CRXgAp", "xwgHzE0LMwtDcOc2", "NYC0qEflyU5nZlxh"], "toSpecificInventory": true, "type": "m2MaHeyT0pm5e0e0"}], "removeItems": [{"inventoryId": "OI7zZtvQho3J3PFR", "slotId": "yzuGEC8U6lSwSJjM", "sourceItemId": "Mmi0yih0iU0Bykav"}, {"inventoryId": "JCnMKnqnrf2mmK5V", "slotId": "ceEidfSfVHZzZk1y", "sourceItemId": "thmwU5SqtMF02c0C"}, {"inventoryId": "m06MZfiKclLAzwhB", "slotId": "8abbxP7ZWCltPoAr", "sourceItemId": "lxcoaQHlXntpD48Z"}], "targetUserId": "rcqltcKlP6H1mxcI", "updateItems": [{"customAttributes": {"TlpxyUAkNQizfwwt": {}, "mWkWqwLUpTNoO3Yz": {}, "ksS60oh7TKUDTniY": {}}, "inventoryId": "WuxETiDZuyKf5S4z", "serverCustomAttributes": {"sbMrexLeVurbqTx8": {}, "dUbmgT1GrskXr8WF": {}, "dZ2fRbQVUjS3wajQ": {}}, "slotId": "uIKpAoRLMmatWIuQ", "sourceItemId": "9kzPUt7Vno4kNcKa", "tags": ["J0yYTAkOW2gVpKku", "D9wGc4Q6Yc8CDs4t", "52jrI8DEW2lqei5f"], "type": "z5ao8LDDCJxZyqFj"}, {"customAttributes": {"a16j3N62DZWsPkh0": {}, "WptAuCCEHpFutENH": {}, "luKEnwOAqx803Slx": {}}, "inventoryId": "ICgO1KXxxV2SQfax", "serverCustomAttributes": {"zU5zfEdgjSAdVyRV": {}, "wW7hUXo7FGxF4p9X": {}, "Y7WnGx6qnlBC64ps": {}}, "slotId": "dTd2iHmmCMe8vq73", "sourceItemId": "JRVS44IEbY7JeLSw", "tags": ["bXbu7LuPhXKSH6Zs", "gi88pkzamcM7MfgA", "C8FXMI5x71sfVcqZ"], "type": "6nBR3qI0ucpTq9bw"}, {"customAttributes": {"AMv6BqjSzLLQJOdh": {}, "j0ObdVRD7PHcGVPd": {}, "0mnhswvrwjl5UECx": {}}, "inventoryId": "IpbofZuqYdtRXpLG", "serverCustomAttributes": {"BV0VguuJ0DjiLtdg": {}, "Fx8abkgXsZbOkHeV": {}, "6X5nJv5rN1dmoCPF": {}}, "slotId": "tXhJCQamaWrQrlcd", "sourceItemId": "p6SzKVUijPUzpswB", "tags": ["hq3E0zcJXyFJePQb", "iR9mcVTqrdlb13Hi", "M4KoSU3ZunPPTLo6"], "type": "gsCF8WsGyFqLNiH7"}]}], "requestId": "G8ws6g6F0DXqJec7"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'hO26T0iiXroPSQ4Q' \
    --limit '5' \
    --offset '34' \
    --sortBy 'createdAt' \
    --userId 'iOpFNQbgYCLhfmT9' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "bEZGoEryT38RldGg", "userId": "oPeiUai9nyJGZwAU"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'hdKZthaujLlalgNH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'ZiIDXvSI7OEs0yuh' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 99}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'YfUJjzUOZp2fjBYQ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "BtgBBVlbz1rn0Uwq"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'iuv7KN8UkODwBSoH' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '89' \
    --qtyGte '10' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'jL4MAv5Q8c9soQQH' \
    --tags 'SVXAF9YPisHVmL68' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'Fz90yHBOH2ZBFnlS' \
    --namespace $AB_NAMESPACE \
    --slotId 'eM8ATIe1aOiU7E4V' \
    --sourceItemId 'YZiRBvCOBlweziwA' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'aijdRD5I3FF6uv20' \
    --limit '55' \
    --offset '44' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KI8Puu7qhzkgku9h", "description": "UulYPRzEUPu2o69O", "initialMaxSlots": 66, "maxInstancesPerUser": 55, "maxUpgradeSlots": 46, "name": "4pltpZ5PPZ4KJLQr"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'ao1mUQ0a1prY9M8I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'q9LUrw26gFQj7Hf7' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ccfvfzpIoM1rAADQ", "description": "FSU6F13T3KZzyCE6", "initialMaxSlots": 17, "maxInstancesPerUser": 38, "maxUpgradeSlots": 98, "name": "OTAimkMpRAIgyxCq"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'QsPop8k8hRwst5eq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '20' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9sGVd8hBWcO3jiZ0"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'VsSNUKGTqsfWGjYA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '73' \
    --owner 'gBe1ys5rhjM9Lpp4' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Y3qxsU0yNwajUjVz", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'YplqiNCvhtJVhY4c' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'JeDYatulY1p7luNa' \
    --namespace $AB_NAMESPACE \
    --userId '4cP0Ii2bxw6xrMn6' \
    --body '{"qty": 25, "slotId": "OlRoGbAEoH0InkQI", "sourceItemId": "517xUyEu3S7IpHK7"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'jQuiqF4Xl9ichUWq' \
    --namespace $AB_NAMESPACE \
    --userId 'yWTfbkhBegyOT0EL' \
    --body '[{"customAttributes": {"D8MBE9CgEWtrQhlI": {}, "qgXWmG2edAN0iYsd": {}, "r0w3PrmfR3JbtHZJ": {}}, "serverCustomAttributes": {"EFTmxWatVKbqKA13": {}, "UgvTU4xA8E4dP8bV": {}, "YR4xyuCPHureOuRG": {}}, "slotId": "o1wYug1dEebdbbah", "sourceItemId": "7osn2GkUD3lgat18", "tags": ["eVWu77dBe7qb8bpz", "5J2LkuTVPmuN6PEG", "NvxZwPGgVPPrk9v4"], "type": "vHClbV9TVg88NUbZ"}, {"customAttributes": {"iR5Yk5FkkPZn7uKe": {}, "qG9EhSKTTIwCEnl9": {}, "wJI4mahvI3ohN1Lc": {}}, "serverCustomAttributes": {"T6i8wKIOytXVHS8E": {}, "CxkpvodribiQT5Cn": {}, "ujyJKA6lGO8pGMX7": {}}, "slotId": "Ug1qIJQNTNprx9CF", "sourceItemId": "VrXwteoee1OW56Mc", "tags": ["1o1MLWZkHRFPIyN9", "evYR2uPutTR8dT3N", "pkLhikent2T39ofZ"], "type": "kaIziUYPsSa9BqkY"}, {"customAttributes": {"Bak8sE1wDvTUywW0": {}, "Vy9H5yU4ahRSH2Zw": {}, "2XPLmeS6cICwHoJ2": {}}, "serverCustomAttributes": {"AfQ09X7esqEyaw9l": {}, "49ZoWfEVt7B7LQte": {}, "QxVz49aolu9gdu49": {}}, "slotId": "GkB88dAbzzyu8mwE", "sourceItemId": "DPFu3zBOJLaFlQUZ", "tags": ["zsEH5ikQmV4VokDf", "YNg4tTwZ5A34Ngrd", "CA9VVaIDHyFmH7S3"], "type": "ECFbYFaT6U6c2n8Q"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'jxScK7DKXgSsD5zG' \
    --namespace $AB_NAMESPACE \
    --userId 'uVoHJrH285Om3bDQ' \
    --body '{"customAttributes": {"m3Pl7TcMzTXjnxQc": {}, "VSgaWYODEAVmoGCO": {}, "FpjBUx76lPo62IvC": {}}, "qty": 63, "serverCustomAttributes": {"O4CVQzhhFgk32gD7": {}, "udOYzOKWz4QLqwVq": {}, "3TBwoQiJ9uFrfxdI": {}}, "slotId": "91ARUOu02lFauuG9", "slotUsed": 72, "sourceItemId": "bZJoBsAcUsIhL2Tr", "tags": ["vFCwwi8qOIaWp3Ld", "46h6z98rB0hfxyLn", "8nfpcVPQ4VOAsEVC"], "type": "2rQ0HFkjZQcxmmHZ"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'CIs3gGelv6Ui3fwR' \
    --namespace $AB_NAMESPACE \
    --userId 'IED8cCBAjK1iyVrZ' \
    --body '[{"slotId": "LDDQnkbkW8o68vQl", "sourceItemId": "lll0sW4FUNnDSVUZ"}, {"slotId": "yQa38Gsq9WEsHphA", "sourceItemId": "lOgKd8rRlm0uN9vZ"}, {"slotId": "S9iJTefrzjqWmHCT", "sourceItemId": "fAmJFbfiVqNRgQKo"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '98rb079apcK6Xk1h' \
    --body '{"customAttributes": {"yEYCtBsEx1P9ac8z": {}, "J4T9y7Qw7rQEUGIS": {}, "JXPD8EN3ZBUvHVr2": {}}, "inventoryConfigurationCode": "ER14Ti7JLVuuiKP7", "qty": 53, "serverCustomAttributes": {"e7jQh9N5uWfA8n5g": {}, "Aki9rwTgthy47aIU": {}, "kkv8j0cU0dD2dfHf": {}}, "slotId": "hm5vozhAgUfSyPZR", "slotUsed": 70, "sourceItemId": "Cy7CGOiKpfFCR0x4", "tags": ["3r76wOhuWOufP5k3", "ao7nPJYNnVWzWBZ9", "EKL9iWdeuoBa0Luf"], "type": "HP7oAX5CLYZvBkbt"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'FNlNUDhOtxkffAZd' \
    --limit '9' \
    --offset '51' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '79' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '75' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'EgmAnTFN7qeWwLIm' \
    --limit '52' \
    --offset '19' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'fRzy7Tf6yReuFVVG' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 35, "slotId": "RGN7F6QTip0oAu1N", "sourceItemId": "scQFmNjqmFHSnec0"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '05BRSKN7egzaMFx6' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '59' \
    --qtyGte '4' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'vPe7wykKhRGD7rub' \
    --tags 'FBE9qipQ86BHQ8Sl' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'sRkj5tO9bOFza00z' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"SpHyc0ucBiL0VXlo": {}, "ZgLBnA9eLQtYhHtL": {}, "QjfGtYLBKRhcycJ8": {}}, "slotId": "clo3PqbtSGksyMyX", "sourceItemId": "aofCf0MC3D33Gawk", "tags": ["UzAH4azJAbyJWXmd", "Vsimm8UrMLnnNVWp", "Nds7dJKufT4sNyWw"]}, {"customAttributes": {"lAoLf7Gc8hTn0cQQ": {}, "uDCvBZyTQmRMb0kG": {}, "3tDBKNI0jFoiEJFh": {}}, "slotId": "LNwQ4v92IF8sQbLe", "sourceItemId": "G2oNLFW7NOKely7L", "tags": ["G9zPgDXXgMJ7vuzT", "scOwpjHbNj0biN7Q", "5OIyJoS7EeFQ2Apv"]}, {"customAttributes": {"cJcfIWBL2LoGubCZ": {}, "Zlj9ozsXVryMwbAC": {}, "4du2RQreXpiy0Ydv": {}}, "slotId": "QDH58x7RvjHlwPKf", "sourceItemId": "2DRoi7ziRyG8h80a", "tags": ["0tHjHPac2fIEvaFU", "dGWQx3pGU2zI1ivo", "5Ebhuut4iIDD3a2Z"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'SWEZL7H5rU89TfP3' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "VWEyycHQyftinVAe", "sourceItemId": "vlzf1XHWSb3Ug3U1"}, {"slotId": "XQl96HGLvU35xQOQ", "sourceItemId": "UuNpLN6wqdJe9u8S"}, {"slotId": "hTSwLMmDFs5rhJSh", "sourceItemId": "AYt0eXxpCe0ZRxCt"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'YYeX431qHMFN2JiL' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 15, "slotId": "9zMXdjpOkgK1KhZE", "sourceItemId": "OUg5xpjOYBL8beKy"}, {"qty": 88, "slotId": "ckKUSixiqLvC5vXP", "sourceItemId": "JpFwmnGxS1wXdkWz"}, {"qty": 86, "slotId": "iiJa0R3ok1zoJc3w", "sourceItemId": "rvvmjQBy5r9Xp6Nh"}], "srcInventoryId": "9PBqVLDMZW7jzFSO"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'CtotVNX3im1zaBWa' \
    --namespace $AB_NAMESPACE \
    --slotId 'W3LWbjYquF4pR8x7' \
    --sourceItemId '1mbWAXwoXmJg9YAY' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE