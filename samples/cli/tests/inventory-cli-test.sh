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
echo "1..41"

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
    --body '{"message": "fsJjpnM9akaCHtUM", "operations": [{"consumeItems": [{"inventoryId": "GxYioINff0TeEPnt", "qty": 17, "slotId": "tk9nnNp8CY5PUeKN", "sourceItemId": "YIvZTH2H2nNxmf8g"}, {"inventoryId": "hjvC4tAwkck9dLg2", "qty": 55, "slotId": "zufc09dYWPIBuj35", "sourceItemId": "R5ruVAHdoSuZ7BJm"}, {"inventoryId": "LEApLN66EiGLlqrp", "qty": 14, "slotId": "dVaDMRPiTY8nzO5B", "sourceItemId": "kBKyYpaRDG1LZMvu"}], "createItems": [{"customAttributes": {"LqlDEAhz32bYQlOt": {}, "foAhoY3pCr7fwLff": {}, "0ixBP7fHQFirCubO": {}}, "inventoryConfigurationCode": "0y9BITbspGSYLccF", "inventoryId": "5IE2suJQHbndr6jz", "qty": 69, "serverCustomAttributes": {"mPtJwNub0w3THuQp": {}, "7f2Qpz2Nmm2wNyYY": {}, "K8ZqUJe9T69CRTeG": {}}, "slotId": "g0W59gWLTBFoRXVM", "slotUsed": 26, "sourceItemId": "ixKsQ1KEVst3DbOv", "tags": ["QfpapP924fWc8TY8", "p9dX7NOPkv8OWUgT", "5lDTXmFlW2vVr80L"], "toSpecificInventory": false, "type": "QLSxsSRE7Y1OqhgW"}, {"customAttributes": {"hBCeB27vGgooufF0": {}, "G9RdEdbmNDGcQ1iD": {}, "Qn2aCVLPYRmZgitj": {}}, "inventoryConfigurationCode": "F492OKc5bVWArwgy", "inventoryId": "kiB7C3xy4Ci90mGt", "qty": 64, "serverCustomAttributes": {"vOUkJpJng1t8jR1w": {}, "wvMD0zznD60Y1yT7": {}, "LBZlgaSKde4UZaH8": {}}, "slotId": "s25PnSDhyEs1PXYA", "slotUsed": 41, "sourceItemId": "Fn6FqpB3PkF4AbQc", "tags": ["pgMa7kFITsQdQt1t", "uiBfT309nnGi451s", "CtVXD40Os2LF9SEV"], "toSpecificInventory": false, "type": "Co6OVnKtcvZOyxuR"}, {"customAttributes": {"sAZyoG7MmNj4nX7b": {}, "cWqnvuoIiaaRY3fy": {}, "730L1nnMtlfqY3cf": {}}, "inventoryConfigurationCode": "Gjl37N13fEZSMnci", "inventoryId": "hl6JiQWXi5VaIkEc", "qty": 81, "serverCustomAttributes": {"1sFsQdG1vQtGhKtP": {}, "tH3NsXY4gLIMRShR": {}, "UJuVIf8CzSzdHP0Y": {}}, "slotId": "J2vYJ7O2HkZv35mQ", "slotUsed": 14, "sourceItemId": "n8uSAGjUhFwwNZQM", "tags": ["2hft8Qeif22uUFlF", "pZqSvp5KcWDEHRyZ", "BnuA4uAnQefV3425"], "toSpecificInventory": false, "type": "sHCzy2gwPPCKLSW0"}], "removeItems": [{"inventoryId": "ixfCExnR6Vo00Ntm", "slotId": "EHSDhlEnJZNqeOXI", "sourceItemId": "BQQjX6PZjjd4Fvp9"}, {"inventoryId": "1yMckMGiS96E6ilo", "slotId": "y6JUspJkosty9Mpz", "sourceItemId": "CbLJU3f5TFikHWf7"}, {"inventoryId": "zp6NXiSARE7E4unq", "slotId": "q2aDjXrKTpyP5rml", "sourceItemId": "jN3Ka8fisqHWBkDu"}], "targetUserId": "lgi8jguK9y4rqTem", "updateItems": [{"customAttributes": {"9ZJmUZu9N1cxezxR": {}, "rVsZYyskwf2wYPPe": {}, "QpI6RUwF3l0xEYd2": {}}, "inventoryId": "7hnJLKyVaPUwAzpJ", "serverCustomAttributes": {"vAz8ffVZjUlte8Dq": {}, "cvubCG60V0gwSNoU": {}, "xeol8NYYnK8oygJ6": {}}, "slotId": "P4fF014yZHb2HDh5", "sourceItemId": "xBlRhef2li2cBzkG", "tags": ["2OF3Tg0W0AsCg032", "9vbhaqKo1850XYWX", "5JH9nU3OkVLNp8ca"], "type": "TJ59P2UtRVVa6i1O"}, {"customAttributes": {"wksVCKBKe15rtaXM": {}, "PD6imGRJ4FWxL7yI": {}, "BRBQWpANZsjDZqPI": {}}, "inventoryId": "T3EgekwO1BPtLhSu", "serverCustomAttributes": {"7DwRHvwEeTIMGr5Z": {}, "ExyEOOj0kmxNJaAY": {}, "KK2eXkVnAbNwoRAE": {}}, "slotId": "BziLXlr0bcYpYAPa", "sourceItemId": "M5X16XgQpsBXIG5P", "tags": ["WXW6rgtLoXt9O6ZB", "7866Ysuax7rO2uCW", "E9T7WPGccUZjR2Ey"], "type": "lwdmSADWCiSgG19K"}, {"customAttributes": {"YLOMZUXNs9dCERk6": {}, "eqr2OOgOrqIA2f0L": {}, "r7vfdYFHl9e483gm": {}}, "inventoryId": "cX7X9Uhbs3qEaqIs", "serverCustomAttributes": {"X6UJRoAqMuXeMDw9": {}, "Bv5qE3AEvli71Wch": {}, "gPLvGNamrUkeOUpt": {}}, "slotId": "gYGuc71sKoWsjh3v", "sourceItemId": "QETA0H2uEzOE4F0k", "tags": ["bZZMSlT86hwIYd2E", "mLqtucdkeozqTFDw", "KK9ifMYWvkSAqMbL"], "type": "3H0JHPpK8c4hUubb"}]}, {"consumeItems": [{"inventoryId": "x6UY0EitFQ8hBX7w", "qty": 36, "slotId": "QqbM06KPigROeeNk", "sourceItemId": "2LArFCcUDP9rSOci"}, {"inventoryId": "1fytvHLzijRaPpai", "qty": 28, "slotId": "X4GjrVTu8uJMxKLv", "sourceItemId": "Gxb7xFu7NFN5YXE1"}, {"inventoryId": "qSNIsUrHlnYiz3wZ", "qty": 59, "slotId": "neiyEK9uHeeL6V6l", "sourceItemId": "laEIEix93kGDRoqz"}], "createItems": [{"customAttributes": {"Na2cNCPoiBJtmqtV": {}, "bDE7B4s1C4wg6w9k": {}, "TfHzsMWHn4eumtyA": {}}, "inventoryConfigurationCode": "AMaTnqUsrx2mG6m2", "inventoryId": "OKUYGmW3i7YcjEus", "qty": 31, "serverCustomAttributes": {"ZnQOAePW4U4LENyE": {}, "fyO7llbgFw5k5bcg": {}, "LJt2abPayDbzW7A7": {}}, "slotId": "EefAIgvEP5b51530", "slotUsed": 13, "sourceItemId": "0Wso904zKlTp5Yx8", "tags": ["cYpqHUx3OjYSixpt", "MgafOrBPKVaRXblx", "k50Fu0nMFOTzMSEl"], "toSpecificInventory": false, "type": "9maeIVpXJXvVRFIo"}, {"customAttributes": {"eSsHSZa3EGgJAQ5v": {}, "rLHPyDRSc7U6w1Vr": {}, "XvzdD5sgU4BukOvx": {}}, "inventoryConfigurationCode": "HkpPyWJsOUHEzOiY", "inventoryId": "uam4o3R6sWJDkZld", "qty": 42, "serverCustomAttributes": {"XXdkPACyc9dn60Py": {}, "i0A0Y9MsgeOCKtUT": {}, "ZACHHK2e2pW2g1bz": {}}, "slotId": "fVU5PvmbmZFtixdS", "slotUsed": 51, "sourceItemId": "E3wfiDWttdvlucUW", "tags": ["cKuGF37Qk5Si8NuR", "rNYAKdjGFr1sxg8X", "Fh6LW31R3YcYGyS7"], "toSpecificInventory": true, "type": "AcD3tMB3yBZJDBkR"}, {"customAttributes": {"63ULYFsCvxMcd3vt": {}, "bKq9FZkgBLCMZ1uW": {}, "4MZrwcn7iuO6F7ko": {}}, "inventoryConfigurationCode": "ZdAbUYGHhvjHqhPY", "inventoryId": "30kWI9EQcjC1UYub", "qty": 80, "serverCustomAttributes": {"bRZCUQEqrGYfczdM": {}, "WuHP9tGfL7n1wqwk": {}, "XHLhpbCn2akkaUch": {}}, "slotId": "sgJW4GWj03FwP06g", "slotUsed": 17, "sourceItemId": "rqU51xxeuf7zddQH", "tags": ["HNv2fb6e2iTBXW8P", "nBuxE1qmg09hxmBz", "E2pLw1Yjsk1UkXBt"], "toSpecificInventory": false, "type": "Orl3NKn2Ou51AefT"}], "removeItems": [{"inventoryId": "go6LdoZOUuScwkXq", "slotId": "DoOVfZLOnvevgSD0", "sourceItemId": "62v8eTLDNXIgLscI"}, {"inventoryId": "ceqGlfNtHFl3Pouo", "slotId": "n9WIPvQbmCdlUYNj", "sourceItemId": "8aBJrLrnKKR7AmHK"}, {"inventoryId": "xE38iylv8mqgIkaD", "slotId": "ovoyXnPVMLlpWBuU", "sourceItemId": "cGG11wXLbBt9Wigu"}], "targetUserId": "CAJgGDWvBkIO2Fa7", "updateItems": [{"customAttributes": {"Fu7dMNNWjTVC8tAs": {}, "tiRmM01OrzLJLHPT": {}, "I7Fxk9mf1z8AGiTs": {}}, "inventoryId": "GpD0miTzbJ35NIjj", "serverCustomAttributes": {"D88s56ATVqLMSX4I": {}, "BmLNz5CQGYDwZmNk": {}, "zfvDFvXpTGC9YOQG": {}}, "slotId": "yWquaioZqIKti9v8", "sourceItemId": "QOjz6RpEGCUU9FK2", "tags": ["EUlXbWThwU2Ptf6B", "q47mjWNLhONEja9F", "VS8L7XeyZDZsNweR"], "type": "6YxZJOvcYj6g2amV"}, {"customAttributes": {"I0SLYpwyy9ncNzUt": {}, "I9YVCG5AbIaiIDXO": {}, "x1TvegKS0vkfPmfz": {}}, "inventoryId": "2ZkSZqObWoxyTtgo", "serverCustomAttributes": {"X60HHmhRKELLANQZ": {}, "QmaCIPGZaucpTLsf": {}, "YaGvtvQqQEc2bLGV": {}}, "slotId": "QCLzRfiVCCCocs7c", "sourceItemId": "LTpBtMAk3C8uf2WR", "tags": ["PNCERH2glpLaZm1t", "dLuvVjM5Z5vl4U6m", "bj64vIdxhzFDjKlB"], "type": "LWD0GFMzF8Gxdbna"}, {"customAttributes": {"bFbW4fknCmeU1veZ": {}, "KxXFNnWc4BHMK6LT": {}, "8XHbLf7ejyo5wr70": {}}, "inventoryId": "REsKzvh7ydRVyWKG", "serverCustomAttributes": {"2a5mzAaIUGsJj25Q": {}, "JqH5HKeQOLq4QSY2": {}, "39eNlUashhcVdSpb": {}}, "slotId": "P93FEn7b936xLOQe", "sourceItemId": "AbrwgWw2jTRA7N1t", "tags": ["rBw2fpxvAs8kkXVJ", "tBYsxESCP2WOy01U", "QH3SWkvszNnrgMva"], "type": "QGGEzbQnhT9AP22z"}]}, {"consumeItems": [{"inventoryId": "zxrZuSjqBVlstDM9", "qty": 30, "slotId": "hL6eZO4t9sk35sQ5", "sourceItemId": "iwAo4qmBSku4BVK2"}, {"inventoryId": "SUAAQcQaXSYFhs3f", "qty": 10, "slotId": "snVLpLqe1btVqEXn", "sourceItemId": "qwzOHsdl9gjswfNN"}, {"inventoryId": "9bHyXwimhCffegUz", "qty": 98, "slotId": "cTrhQZStYpJHl6bc", "sourceItemId": "GiGdUfjLxgPrekqO"}], "createItems": [{"customAttributes": {"yzUliGirjGvJTuKp": {}, "dcHBJ6iWJ9sVvfLM": {}, "A9yi4So9jSCKKXw7": {}}, "inventoryConfigurationCode": "fCYzdWtljrbfzOI5", "inventoryId": "05LFQb9qJhVpj5CU", "qty": 73, "serverCustomAttributes": {"muHhP9TYq97viNHx": {}, "792KyxMjLkcbFzxn": {}, "MY85nOcbujl6owbK": {}}, "slotId": "lsZJtBEasszHjZRH", "slotUsed": 96, "sourceItemId": "0ddQcPaYWX2bftva", "tags": ["IZ4D1gzzf6scMoQV", "08EFNq4ocKl1WIdx", "FhUGG8LZ1Bh1NOuE"], "toSpecificInventory": true, "type": "3aywENixtuyb5fv2"}, {"customAttributes": {"ADJIgmxdUmuGArUJ": {}, "01nHts3t1e85EVHi": {}, "otJ2c0R7rcFO2md6": {}}, "inventoryConfigurationCode": "HKxWhkudyMa7Dqvz", "inventoryId": "6WaQ3uEkTDFaCYGy", "qty": 35, "serverCustomAttributes": {"7nf8Bh36IfZmSOEJ": {}, "CBEFBolgqhFKxVkS": {}, "iWC2mJm0ZZ3cU4Fg": {}}, "slotId": "mCL924QRMGgxVhRb", "slotUsed": 48, "sourceItemId": "Dd4KuCfPcM1QOqYq", "tags": ["6czVK4qVEbPxnDp6", "OHcsNBjFDbg56OzA", "cHKk5adYoIvMWNHz"], "toSpecificInventory": false, "type": "NRQ5WNdAm4cUKaJx"}, {"customAttributes": {"cldT5eW1iROHsoh6": {}, "5pJP4JnAWzBIhHYy": {}, "MmrXRHXxduAuomjv": {}}, "inventoryConfigurationCode": "KQbgargfaIBF52jJ", "inventoryId": "zJAC3nkeYfOgdcEo", "qty": 92, "serverCustomAttributes": {"zChFvtmHGlcf8QQr": {}, "F75nJODdLN15xkiA": {}, "rEGxC02bfWppPhsH": {}}, "slotId": "MU738yEXsBgkkVV1", "slotUsed": 16, "sourceItemId": "eHVlUS8DdEOAZVoH", "tags": ["BAMXuQENJNs1rFvj", "fmCZaOpon7twP6aT", "g2VScx0JRlAJWkNk"], "toSpecificInventory": false, "type": "4gFd9Gs2YuEFPBco"}], "removeItems": [{"inventoryId": "EeivxWrIABX7pC7O", "slotId": "82S6KYF54Rcs6DF1", "sourceItemId": "U1pFGhfTlshrtjQ8"}, {"inventoryId": "x6UNjXa5Se9wCSSK", "slotId": "e1kmdppoZNbvOG5R", "sourceItemId": "Zqzd7wT8UrWNCUUF"}, {"inventoryId": "IYjAY7CaCepMXdwu", "slotId": "qDsn8ouCyZoOAZoy", "sourceItemId": "WHVxBHg3EquUIOiJ"}], "targetUserId": "DtB6qe2RcEZxAMCx", "updateItems": [{"customAttributes": {"WLEOGISIN285R8O0": {}, "BxzDjFrRoo5XyTGo": {}, "R7AcA5D8lchgpXXU": {}}, "inventoryId": "dilySzVc5aJndQak", "serverCustomAttributes": {"Mnt0MQZ67qRAPHf3": {}, "hknSrgjDuAGZ7bVz": {}, "byyJTZw2aZyTn8LF": {}}, "slotId": "DWbyiWf79YFcB7i6", "sourceItemId": "lRq1hiOxy7snOVuq", "tags": ["3f9sQMjTPUepuUxv", "ntAsoLxCwYBuka0G", "x3kVHW2d6cEJmZHL"], "type": "InSZwmnHDQWmLp45"}, {"customAttributes": {"I0ViboreEZlkD5YW": {}, "jtLmvYTsiK5CG2kJ": {}, "bPRf57jZIurtuKKt": {}}, "inventoryId": "Erf7UAtYj0PmZJ4Z", "serverCustomAttributes": {"1eln73OjFucEOjGF": {}, "YzoV2MKf2UptWWeI": {}, "5VXHv7s168weuPk3": {}}, "slotId": "019YN7EQgD0IajKt", "sourceItemId": "QJRK2lxk3k0ZqDlJ", "tags": ["pucxgKlxWhhaPMEq", "jOxx4NJwzOZG4dAU", "u1jlJxuKbUuEYLFv"], "type": "RgeehqVjaaEgWLuA"}, {"customAttributes": {"IirnvBDYfWnKHl8j": {}, "CezKR2qs6d0EgzIU": {}, "AbNg7vyeW68ZEZBl": {}}, "inventoryId": "JpXSDOXBsNBsgCXe", "serverCustomAttributes": {"Eq6O1wVGJFPtG2jG": {}, "KQbIiYIV31pI3ISQ": {}, "EhWqj7VWTGZCMCxI": {}}, "slotId": "KSk76nEdSWxKSEfg", "sourceItemId": "PV6EtqAZnKcGkYxj", "tags": ["IjFszkg0qLvy1Wdt", "h5VIFo15mhb98j42", "2hpTybZ95WSPZrGh"], "type": "mensQtvFDR5Iu1eg"}]}], "requestId": "nXsldcfGbABhOQsi"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '32' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["WvWiKEe1w6X6wamd", "GHOVdLEpi55mEcj6", "GSisUKa3dgQP2zyg"], "serviceName": "AataskPxWfupqV5t", "targetInventoryCode": "xwNyIJkZKvKN5S81"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'Ialh12VmJ37fTEm3' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["SaD2pqnbyuVcBIfd", "V0a7CAiCSTX24diI", "pcFI7wHNbLnrNmdo"], "serviceName": "GQlx04xR1lnM7Vyv", "targetInventoryCode": "jVeSzJr0TafOVTFT"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'XyZbieEYEg9rOEki' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'VW2GFJXwIpJuV6K1' \
    --limit '67' \
    --offset '13' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'VE1734Xsomt65ac8' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "dNVsVYFSMSkFIXBd", "userId": "dRF0r1PkD73DfM6o"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'mjssvxISRdQblyF9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '9U2KO54oFEs91faD' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 87}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NwnRqLPUB9g0Gkxk' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "WOGe2U3O7dasGDqE"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'XxbdAv64rgMagVhZ' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '71' \
    --qtyGte '34' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'MO3FF149gNkH6W6j' \
    --tags 'snYDX38hqWEnAO4E' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'RR6eqcQ98hJeg7nN' \
    --namespace $AB_NAMESPACE \
    --slotId 'h9mDNRHecVh8Mj64' \
    --sourceItemId 'fOFgx0N1qKEd1X13' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kAtyFjafkTPAm0fr' \
    --limit '37' \
    --offset '59' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qepbAcTxazuZtGjb", "description": "NtaBiALF0P4ubOsE", "initialMaxSlots": 98, "maxInstancesPerUser": 57, "maxUpgradeSlots": 72, "name": "lImtpcLfKtSrVg4O"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'S75303oQwNGi39dO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'D7dIZOrx57Uj0uPO' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KoMHJrEmjRSvmVp8", "description": "PkKg3W35VURUj3er", "initialMaxSlots": 7, "maxInstancesPerUser": 36, "maxUpgradeSlots": 36, "name": "tDIuiryjWMJMeQ90"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'BG4imA5WepQSLONX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '55' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "yahrCdiEZNGuB8oe"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'H0oPb96KeI6YrRYR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '2' \
    --owner '46u4jhgaxlMrRthp' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "We0aQrGVkXxOCh0R", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'Ao8pBd85wKG7PoVz' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'ZujPl8nRwELn2umZ' \
    --namespace $AB_NAMESPACE \
    --userId '0HXYa1YwsrKmUWRs' \
    --body '{"qty": 10, "slotId": "OjBCblDltI9E7JmJ", "sourceItemId": "3WAlAfYvL63H3ky0"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'AhzNijKstyWLjoAs' \
    --namespace $AB_NAMESPACE \
    --userId 'Ix68h98Pm7zTckqI' \
    --body '[{"customAttributes": {"y6b2X9XBu5VniCqP": {}, "QGqTC5Y20Hd122CW": {}, "1HMLVkCzlgolS7ku": {}}, "serverCustomAttributes": {"920i1YC3BJjtQvAg": {}, "hu6uqDA8KxVwMTV5": {}, "Uh7Cp4tKVVHCRnYp": {}}, "slotId": "4LEBg2h80qsus7Km", "sourceItemId": "Q31JwRfg3f7VyLRt", "tags": ["prlS8uT8OEYKs8oV", "W8eb6NwxQqWtwsUI", "nbCV9XP9K1L0oekc"], "type": "oYj1Wv0s5JDqlHcK"}, {"customAttributes": {"OgjyW4yz8HG5dqZG": {}, "AX0v7DIIXvtEA4Dg": {}, "gVSpyKtXXNp7oIOx": {}}, "serverCustomAttributes": {"lGmh92BEq4IBL04R": {}, "TQHUOCe8Sn3xj9SQ": {}, "grRCBWW1C7kFD1Fm": {}}, "slotId": "Pp94C8knG4rpWluw", "sourceItemId": "ljHGgLixVFH15y3O", "tags": ["4H2r4AhPXYestI4M", "PLepjeKOpbxv94Ii", "Y4QexuRc4xT4SCfZ"], "type": "GxQFh9lFaKvZMn3s"}, {"customAttributes": {"GUBLiUH5gfdf8HMH": {}, "fJjxamHI2OUb3cOD": {}, "fnHbSsbqgin0g087": {}}, "serverCustomAttributes": {"VCKVRfR2g7KrDLwN": {}, "k5oFhsb7xQkAyZUi": {}, "iSpxYf71Zqa0DVZJ": {}}, "slotId": "OYeq3fvbdRd7h1IB", "sourceItemId": "y3jVdr6iUM8mtbfg", "tags": ["IWIBvHB5TwttIiwd", "7Cf9GkHdfecjLjpj", "zCFlJHuvz7LMJ5fV"], "type": "HA98R4oUm2XjkuqZ"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'DDOR6CDu7ScXPihA' \
    --namespace $AB_NAMESPACE \
    --userId 'WjOOJunDGofaWvIh' \
    --body '{"customAttributes": {"PCTdMrix57Hx8jd9": {}, "SsQ9pbKD3AKMBed1": {}, "biLCwyhLP4DGUmCC": {}}, "qty": 53, "serverCustomAttributes": {"OzD6OGZPZpVXt73F": {}, "ziusAd8zeWTg718S": {}, "ipjm0Fj5WGE1jd2b": {}}, "slotId": "pNLKzpOSbOGS3E8r", "slotUsed": 74, "source": "OTHER", "sourceItemId": "MHHvIW6P7OHrwXEl", "tags": ["KTcJKM0VNwUOb6UV", "jAiI6UZSbxZXMq7J", "Gb3M7vdiIhTFlaTO"], "type": "HqU9SowXk7vQeGaS"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'u78zgmSFiLyy6168' \
    --namespace $AB_NAMESPACE \
    --userId 'IjkOOvkyRoEzsSyz' \
    --body '[{"slotId": "fiLPhxNAjkefJoH5", "sourceItemId": "bDfr1pR4tsMFAy0U"}, {"slotId": "RaFZDA97ho9Lxo3c", "sourceItemId": "Y8lFmgCzpCKlUZmU"}, {"slotId": "aA1XvdLfwsGS9fNi", "sourceItemId": "glvrPdeeSjkXedG2"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '9bff5atItkk9AQgZ' \
    --body '{"customAttributes": {"vzR8TiHhshLeaCc2": {}, "5jVRaNvzStY1PsBY": {}, "B9fNyX4ION73NCyE": {}}, "inventoryConfigurationCode": "cUXzBZRGaM9DC5t2", "qty": 94, "serverCustomAttributes": {"iSezyWK9rGNxFRlK": {}, "rUEp5lmEy6JfbiNK": {}, "WwVlJlKNJyOrwoy4": {}}, "slotId": "5ewrb6wpWJdn7Yf8", "slotUsed": 91, "source": "OTHER", "sourceItemId": "7VJWYNzQvdOytif7", "tags": ["6hEK8upwbttcypx9", "icmCtAiZDEnPL34G", "59HZFAvBW0mdidYw"], "type": "74jBakcaCwPI9jQ7"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hgTPdNg52pDZQRtS' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'JQNfxUNpbj8Ph2p9' \
    --body '{"entitlementType": "NC74V7JpOb76Ns2k", "inventoryConfig": {"slotUsed": 35}, "itemId": "dNMIukjkpwgnAubX", "itemType": "7EN5JLgVqIML3yYg", "items": [{"bundledQty": 43, "entitlementType": "psZDwQ7eh57Q4qAG", "inventoryConfig": {"slotUsed": 71}, "itemId": "6hWDy4uzgKAqafmd", "itemType": "qgw2SiCxZx4JceE4", "sku": "uFn9oLW0X3ZmwwNj", "useCount": 66}, {"bundledQty": 31, "entitlementType": "XrWlWyXgk8690O13", "inventoryConfig": {"slotUsed": 29}, "itemId": "Y8bVBRFmIiv2zqwW", "itemType": "XcbUJd20xPqr55vl", "sku": "fYN26j5oyOZqRgie", "useCount": 69}, {"bundledQty": 49, "entitlementType": "ReFFxSwVYzGGWtl8", "inventoryConfig": {"slotUsed": 3}, "itemId": "dSyl3zZ2UV8afujc", "itemType": "IkcF03D4Q3N7wqY2", "sku": "upONtgentOw4aLfJ", "useCount": 63}], "quantity": 69, "sku": "FbZh7pcgR7ZnN1PP", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ozvYphBwOYXF5ug3' \
    --limit '100' \
    --offset '98' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '23' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '100' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ABNRTg4HC7sHOWaC' \
    --limit '86' \
    --offset '56' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'LYigtGswyvI3ED9I' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 61, "slotId": "mv9ylp4kp8GDm4xn", "sourceItemId": "Vk2Dsq80pvFH4j6m"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'oSlVfp6dgJLqpqZo' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '28' \
    --qtyGte '10' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'jM3ildiS797yGpSo' \
    --tags 'D65veYrfEQQSqRC9' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'F0x33Ogbf2eRXxZw' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"ph2MitrXKangggH3": {}, "NICnrTYC83WdIzOX": {}, "vIouja34RxdN3hZH": {}}, "slotId": "qJUYlKLrZdTHycUk", "sourceItemId": "lSMvdxZ3ajKQLzMU", "tags": ["KwPCrN29wk8Bqg6w", "kl0IcEnCu80yhMMy", "5uYOK9d1H5sxBjvM"]}, {"customAttributes": {"rbxXhkEOgTWelsZN": {}, "0TwFves7uT5grezS": {}, "6Y8tRZawGnBnX0x3": {}}, "slotId": "OYCvU7o6rxSqikQj", "sourceItemId": "INGSqkJcaJNIFcmF", "tags": ["c2KkKq9IWv0cXlox", "3MCB9fDel1M0Vnhy", "yK9OwZXuVlgqj3Lt"]}, {"customAttributes": {"pYXQmjDtXXWtjjxn": {}, "xQdQxWonBO1v3A7B": {}, "ZcTURq2Q3k50mA3R": {}}, "slotId": "fN9geFkUSRr0Jw18", "sourceItemId": "EnoqneLnQF3ZbNNP", "tags": ["nwHkT4ZrH7jkCafK", "ZeYQglQjYXu7OQoW", "SMABsy7dFSQBwqsB"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'TscHGgtW4OfnVje2' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "QsSdmbfzFJmg4n6t", "sourceItemId": "N5flGtJqqzf7keN8"}, {"slotId": "S8LER5htJyWYJgrK", "sourceItemId": "97nbRXxve0arebzs"}, {"slotId": "E8ex4iBbMmr6Nz4I", "sourceItemId": "rFMcxtlEHVAt3cKJ"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'IIaDKh7KKT5PPGfh' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 79, "slotId": "WxeKjc9zukrp71L2", "sourceItemId": "7CbtBRQGQSKD8Wnp"}, {"qty": 22, "slotId": "kU6LW4jjlGNLCZRg", "sourceItemId": "oBXwvOfUphDi31Hj"}, {"qty": 86, "slotId": "PAJCv2zhbelTpWgZ", "sourceItemId": "4RTpbmHeVib0JWZe"}], "srcInventoryId": "2yzE7cABixwGCbdA"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'WfVWiqGxSBjnkFqI' \
    --namespace $AB_NAMESPACE \
    --slotId 'JTdTAzhLgTZX9vp2' \
    --sourceItemId 'PfbVswOiQnywtuto' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE