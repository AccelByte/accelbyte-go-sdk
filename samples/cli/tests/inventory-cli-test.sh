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
    --body '{"message": "HK4mt04KsM3rjD6v", "operations": [{"consumeItems": [{"inventoryId": "5UTT0R5DfdFfuGG4", "qty": 86, "slotId": "LcPwaTjZnEf8CJVz", "sourceItemId": "gAI5tFMjMBpKYXhb"}, {"inventoryId": "HRR3C44rxxG9mLkw", "qty": 47, "slotId": "2yxB1K3JFCsqWZ8E", "sourceItemId": "GgQNktLU2O5QSqFd"}, {"inventoryId": "KJcXopTmA4d69VXV", "qty": 12, "slotId": "ggW6Dj2YvUWCLUtF", "sourceItemId": "jFgpJ0rUiadSWh7E"}], "createItems": [{"customAttributes": {"2NtdOYVgLKa1qVz4": {}, "C8YgR34s3Fq75BKQ": {}, "eBScPcIGkgAnL9hA": {}}, "inventoryConfigurationCode": "btS91HntkPKksxjb", "inventoryId": "8XVdBIwyNYaKunO0", "qty": 70, "serverCustomAttributes": {"lQjlW2pcJcwi4Ib7": {}, "r6d9vKNoKgdZ92Oi": {}, "XEayBNcbZUEUstow": {}}, "slotId": "ojmPSNptwqgKqqFU", "slotUsed": 16, "sourceItemId": "4CRhbcRA587bg6tb", "tags": ["IXDMtaL1WkbeDyRd", "d1Qr3iktWigPFOEM", "Nl4W9nL2rtuB3dlV"], "toSpecificInventory": false, "type": "udNmgg9MFj7BUP6R"}, {"customAttributes": {"W1ydFIQUHhIksy3y": {}, "AhEL5aGswTmopIvE": {}, "aZBz3sC9VzZaiKPU": {}}, "inventoryConfigurationCode": "flmJJQy4Xyu9WDft", "inventoryId": "fjTCGdQtk04T5IJl", "qty": 18, "serverCustomAttributes": {"8eb0mDBAg2awvoyb": {}, "RHBgrlsjMXki3Dvq": {}, "V6VsBEgCmpSsaRoz": {}}, "slotId": "0hNLwGBpUGqLG5F1", "slotUsed": 42, "sourceItemId": "8gZEtmfNmUlyGppw", "tags": ["jnesJHBV0wzxztFD", "wjwDJS1LHKIf4Wdp", "oBHE1yDgYLceCrWp"], "toSpecificInventory": true, "type": "DGad8t3BlXA6D0eg"}, {"customAttributes": {"buc4Nr5OIbNUHVrq": {}, "fUC0q55fJycrXmo5": {}, "aotLLiMQjJZwrGOQ": {}}, "inventoryConfigurationCode": "WvZ8fdspIb1XbcyV", "inventoryId": "CfygvuKY0vWfE4Tu", "qty": 33, "serverCustomAttributes": {"t8wBRn2wbLh7IyCu": {}, "IBQ5E7wxzhpmEB4g": {}, "Ox3pBCsVV3we5IHK": {}}, "slotId": "HUZbvPCW5dNT5cXa", "slotUsed": 30, "sourceItemId": "zNdSnXe0JVfTPFxT", "tags": ["ntn4Sa2RnkSVDbtw", "VWSVfyd38kUrDccq", "UmlZhPZWrQfmfgzq"], "toSpecificInventory": true, "type": "ePZQHiB2tCaEG4VR"}], "removeItems": [{"inventoryId": "ZOMgyiPTT00eXPMq", "slotId": "aia82Ecx5PXcEjQX", "sourceItemId": "gMkgdLWMYnLF7jwZ"}, {"inventoryId": "pIBt0b9H41yjQLOl", "slotId": "TJLP7rHuwaRCCNMn", "sourceItemId": "0ylcxEHNGlvvgAST"}, {"inventoryId": "5Km7Q6aFzgNfKfga", "slotId": "CBWOwj4NiE1vMU52", "sourceItemId": "NZjPZN8YYhVpUgq7"}], "targetUserId": "YDeeNOCghOtIAtvl", "updateItems": [{"customAttributes": {"nfxeFUdr7PXzdLP2": {}, "wGmHYKnih9uK4cfH": {}, "a8XIeKG4fPlpw5Mt": {}}, "inventoryId": "sTQdCN2XuSMcFaEx", "serverCustomAttributes": {"8XxDAbw0mRIkX9kZ": {}, "LWCdbMsnkmfwp4vZ": {}, "h7dUKNZO0VZDvWTP": {}}, "slotId": "bHeUxdcgUD2gtHkd", "sourceItemId": "nQ9EkN3SH4bUOqkp", "tags": ["LcuzdCQSNPf3A0a1", "IsKKQtatyGLk86xt", "Sj9tpv2mdlSgkjGY"], "type": "h3IHSLKqjfkfMPQ3"}, {"customAttributes": {"xUe6tqVtIHY4ZosZ": {}, "PvydghhJCx77fcmj": {}, "MnJ6qO2dJo0SKULB": {}}, "inventoryId": "IocNcJ01MUIfY8jX", "serverCustomAttributes": {"nw1RoFj9lSWzt3wQ": {}, "Kq4CCayzFGBe58xQ": {}, "MbrR797tdbQxzG0v": {}}, "slotId": "2NDpXCuLDNzcXnRP", "sourceItemId": "v363Dxob5syn42y7", "tags": ["2zEbx3UTtbBLTZDN", "ipIKpY9lwc2YkoSX", "r5RdPiquteS0IwHH"], "type": "Q8k1npA65roiRgSE"}, {"customAttributes": {"ZCUArYN6RHYNO0LJ": {}, "CEOj3yMIE4GbPy0Y": {}, "MrK4G6UkWztfey8m": {}}, "inventoryId": "HTbuBv4oMfNnyDrv", "serverCustomAttributes": {"cB0inerz33Y7Hfkw": {}, "s8LRF3m398pRjNYM": {}, "2iD1YYYUt4yTs6NB": {}}, "slotId": "YdGwZtqMbVnILMgB", "sourceItemId": "7YHGbRfeETHosKNJ", "tags": ["28JW9eGaMwNJ01wQ", "1AW9LagJIvF1kbf7", "5r1QlF5oDunRZAI8"], "type": "lzA4q8FFdX7VGwpI"}]}, {"consumeItems": [{"inventoryId": "OjRGQP6ENHor5K8L", "qty": 44, "slotId": "JbqDP4KPXpPwxRKJ", "sourceItemId": "kZ9liBv07XIP8zJP"}, {"inventoryId": "kF2adoyCFjjIQG3Q", "qty": 9, "slotId": "n6a6HloZ26IwUPdx", "sourceItemId": "tZEjpRcbvlvT1T2h"}, {"inventoryId": "UgNJ3MRlxeN2lI4B", "qty": 90, "slotId": "tkuYs45qBGQ7vevn", "sourceItemId": "1iaLsbwa95sNTfhi"}], "createItems": [{"customAttributes": {"5s6KllTAvY7FtOWg": {}, "vK9fLKUKYyqOUxKn": {}, "inixPBVCSrou8beb": {}}, "inventoryConfigurationCode": "Wrathxl90iG3mfVt", "inventoryId": "5gXMFRWwDSNlow1h", "qty": 43, "serverCustomAttributes": {"5JYMP1abpXxOSGAY": {}, "9N0T3Y2jcpz5v2dG": {}, "LRy7IMlpq8YNSuDh": {}}, "slotId": "1iLRj9TyKJm8wV5Z", "slotUsed": 94, "sourceItemId": "dMDlhsNkr33QUKtl", "tags": ["p0FurgV4Gqovu2QR", "us7okcTUVWmc8xBE", "hhxuu0cCYOIVa4tB"], "toSpecificInventory": true, "type": "QlrV9nUKrGIDFcaY"}, {"customAttributes": {"roAAlQkWNmz6aCiO": {}, "uF0uPMvY2ps2dOys": {}, "2j7gvdjyU14pocFT": {}}, "inventoryConfigurationCode": "EeuQZZXBjEhH4sHH", "inventoryId": "EOZm7MQSIz3OIpOk", "qty": 90, "serverCustomAttributes": {"z1flMsEVAXH5Jz3F": {}, "Znh2TBOT2QHfQy01": {}, "tMW0iChg0bnxQ3RQ": {}}, "slotId": "AsLkxwVE9w7yFChb", "slotUsed": 91, "sourceItemId": "j1GH00ZYLnuy1cNF", "tags": ["5lZs7j8XKpn8cNix", "QZlbYuwV37dMBuQw", "VehPOv2HdkrUz6Vq"], "toSpecificInventory": true, "type": "GcnARLChwm6BVhiF"}, {"customAttributes": {"EP7RkPw503sjbht4": {}, "2VP9R9jXnFPJKzek": {}, "WAshpc22n9BCg2yq": {}}, "inventoryConfigurationCode": "gUUWIYQBt2e09QG9", "inventoryId": "mHySqTr8jd3sqh3J", "qty": 37, "serverCustomAttributes": {"PSWnoVxfoZAqSfWI": {}, "IWD9Zoz3p5gY4ngj": {}, "oR0F2DwSL0HvVr3M": {}}, "slotId": "YE7FlvN5VKksLyG0", "slotUsed": 6, "sourceItemId": "ElRn4CNuBuMwBzuN", "tags": ["A6Tb7qC4cSWApb9Y", "1GDmCrdNVJfs0Ynv", "GRcAyi8GqbH4iOzj"], "toSpecificInventory": false, "type": "972WQJeOWDuzZ1B9"}], "removeItems": [{"inventoryId": "88JKNwq42QrPu7fV", "slotId": "8pUB52OjxidQh4ml", "sourceItemId": "UzLjv3dbb9zZnX1A"}, {"inventoryId": "4ghBXoiJuS937hWt", "slotId": "2Lxql8fz5GmliM4i", "sourceItemId": "kzC0aTMlPVLhNmvs"}, {"inventoryId": "InYTM6kJ0d0CB7lh", "slotId": "H4lAO6tU1TKYVuqR", "sourceItemId": "4WJf4RTtTSwyvSl2"}], "targetUserId": "SFcx5EPtU5ssSpC5", "updateItems": [{"customAttributes": {"xsWc6YbpaGEgZNyS": {}, "vTF5Xkr9MPMc4ULI": {}, "fEAHG1XsR1rm2dUV": {}}, "inventoryId": "BMndgj90bYoiXrKu", "serverCustomAttributes": {"YtxVCdJ3wRszYXLD": {}, "thTTdoiFIY0y24J7": {}, "PQzu7XFj99fYqcgB": {}}, "slotId": "zSGPAtH83FSCdJ4v", "sourceItemId": "5kX5kuS3bc1NXTvT", "tags": ["m0tSjrZnnHaYSSwe", "ME36i649VuXDFXXL", "TcFDF1XyU4apU2OX"], "type": "L0TBN0KsrNP6IB8U"}, {"customAttributes": {"iO3iDJqQdWvSUQWt": {}, "ISqBJ7102BXfgY2f": {}, "9TnChftezoSHshsD": {}}, "inventoryId": "ZjX85paGioHBC8tf", "serverCustomAttributes": {"K6p6BxNlb8p5kLDw": {}, "1L5niUDTbWLjrWPr": {}, "bGvGVhmoCIJNdFPN": {}}, "slotId": "W0gy4oR1HamuY3zr", "sourceItemId": "pZg0eGipDTlQGvSf", "tags": ["AAxCBWCXOFIg5jRR", "PP8xqEyZlR5gMmFf", "EIEVx8E7uTIB38NB"], "type": "2OeoGZtuR4VrUV4n"}, {"customAttributes": {"mBy0HYzEVWoKsecU": {}, "Ql7ZXtQYTL6zxw87": {}, "G3Jqql3f2NjqJ8GW": {}}, "inventoryId": "DtLq6Qgr9m367bfj", "serverCustomAttributes": {"TBx5mgCJixUrLih9": {}, "QOaMvfClz0avvz8G": {}, "1leGSTdw4X9T2Eyw": {}}, "slotId": "LYmURK20tLNViuUj", "sourceItemId": "6hcrUYPZjLbWwwfS", "tags": ["7xh2zEysRg6RTotm", "rwmCGaZnaHzOgQFC", "zrZlet4JRlrZEpuM"], "type": "lCouGCkr7TqI6MoY"}]}, {"consumeItems": [{"inventoryId": "C2XPbzzpqaiWdrD7", "qty": 14, "slotId": "FdoNAbWNNpnhw8HZ", "sourceItemId": "LAuHuV7wJ3Qdjyw8"}, {"inventoryId": "TKiG9FpjL4REQ9B1", "qty": 59, "slotId": "YaFMhn2H0YKheum5", "sourceItemId": "Kj8Q1TOS9ehVMf4H"}, {"inventoryId": "cRTO8bpVju6lyypq", "qty": 6, "slotId": "zyRafvJZNKleMYUr", "sourceItemId": "KJ45w4AdBr4OFlK1"}], "createItems": [{"customAttributes": {"9VWovkvIwCOUSWCz": {}, "fpkLfcNCrafgiMj8": {}, "QpEZ8CpVUiupQA6T": {}}, "inventoryConfigurationCode": "PvlGhIHoqkYITNS1", "inventoryId": "I7KAENjwVlqfNzTU", "qty": 75, "serverCustomAttributes": {"a0XCrrboyS2oYLx3": {}, "TSFWt7RTkK9MKcwT": {}, "XDCopO9zMhk0nWkX": {}}, "slotId": "KXplRhrzykTtmN4H", "slotUsed": 59, "sourceItemId": "SLUKMGs6UGToFICy", "tags": ["fAot1uAMP0srgEtE", "2IrgyJ7T94wHqKrn", "XFrLamRIfQiVsMSy"], "toSpecificInventory": false, "type": "K38CFVZIs26HO3ZO"}, {"customAttributes": {"fKf7fIu4xXlfD4Y2": {}, "0hV8oH8NJC0a728S": {}, "OQtSF4vsr2Aesp0b": {}}, "inventoryConfigurationCode": "F2hVyEpQiFlftp9l", "inventoryId": "JLrIl1NypJ4jH32O", "qty": 99, "serverCustomAttributes": {"vCZPg198B6jn3aKx": {}, "bx9uKb6sLuW74TnL": {}, "pM4aJg9Sq3qZHR9R": {}}, "slotId": "H5cm4uKJlGPrx8ih", "slotUsed": 15, "sourceItemId": "V9ruAP7t7YtH0PYk", "tags": ["ncADtlgfaNBpjy2Y", "mtn4FKMKi80HqNtH", "LNtjYCQridwAPwrw"], "toSpecificInventory": false, "type": "vrgWMiz8Nqy7DnaJ"}, {"customAttributes": {"DmVJTOOxR41LjiCl": {}, "qZLDvzAAlxI61H4i": {}, "BTlf0ddJMwD4pp6D": {}}, "inventoryConfigurationCode": "aK0KY0Ue2Zntp53v", "inventoryId": "8t4YxXCnMrwFgcH0", "qty": 65, "serverCustomAttributes": {"8kiqX2anmvdvYcKT": {}, "ovpcvZ5iVz1eiNQ6": {}, "R1ZpvinG0LfPW6U4": {}}, "slotId": "BCPO7vB1ZzTKuBza", "slotUsed": 77, "sourceItemId": "0gTtOSYazdltiddS", "tags": ["QIoWDnPsyA9PCfsU", "HCkJSesF6XGcFpfs", "meJGGyuttCaKT8Jx"], "toSpecificInventory": false, "type": "i2gbqxRYBbIFNwN5"}], "removeItems": [{"inventoryId": "dB5xYmsI414hyhTW", "slotId": "xSznKcHvfU4mp9gd", "sourceItemId": "rFof7G19T8OqVFlQ"}, {"inventoryId": "QCysK7AJhP8zBefW", "slotId": "ffH5nxD6xJf3mQEV", "sourceItemId": "eA655M9c4EcpBUlp"}, {"inventoryId": "drSqjBO5nJT6rrJm", "slotId": "3Am3pyIuZEnhTiIs", "sourceItemId": "MtcyuyjyZkrzUxIb"}], "targetUserId": "UbFzKSXAQ3mXCrsu", "updateItems": [{"customAttributes": {"m5pMj4IGji2rg7Nr": {}, "egyimRmT45whI4p2": {}, "2S8QPkaoa9uwk3tb": {}}, "inventoryId": "D2bt5BZtjbG1d1J5", "serverCustomAttributes": {"lWN5kB7etatVAuk0": {}, "R1m3jeFKBlvUEPp2": {}, "m700Y31kflGpWvxL": {}}, "slotId": "EDalm0tM2L5ImGh5", "sourceItemId": "7kw53g9TchRBfEAY", "tags": ["b3FSVd6LD7fAjX7q", "2vBTzNRJTyFAEjbx", "1KQocFN9V4GJ7n4Q"], "type": "toUytZfKGvmUeY08"}, {"customAttributes": {"tvYeyu2qT1dCqouN": {}, "5bakbQl4EUBSXrou": {}, "kE5NXYJrVyK3jxvx": {}}, "inventoryId": "VU1wGdD6BVtZzhBS", "serverCustomAttributes": {"VxA5eAnjvb0J0808": {}, "LDESiWjPLkAda07y": {}, "jJplu7wV2YFlB9hI": {}}, "slotId": "bT5P4Gd5GpYNLXid", "sourceItemId": "2qgj8ivQTYtkNx6b", "tags": ["aZh9WhiGuz8R5ZkL", "M3GiguiNOPPvU8fY", "4dbYomhJg1WFkb7U"], "type": "smfXbGyDJ5DRjXKg"}, {"customAttributes": {"EpQJqU3Pgk9fsuC5": {}, "hUPxpXlJcBRgjn7A": {}, "mscWG0TkC6QpcliU": {}}, "inventoryId": "tfKZFL8TVYPs9hL5", "serverCustomAttributes": {"KFyQD2T15vif9oD6": {}, "RlASFwmMsQ4pmCJc": {}, "BMaY3vpYoVqePGPl": {}}, "slotId": "B8vJ8y3lwd4qKBZO", "sourceItemId": "KGNmHBmAUdqVs8dK", "tags": ["k2lZrvTjD8W0eyZX", "hrGoBXS31QaeHE6F", "7j5rPvLsu3tvYEj3"], "type": "uEWTkt9VK2ujz1Y2"}]}], "requestId": "QImHAGYudO5YD7st"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Lii0UulO8nMMsocb' \
    --limit '15' \
    --offset '28' \
    --sortBy 'inventoryConfigurationCode:asc' \
    --userId 'CQpUkhMhxyHDamus' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "9K9p6pd2K3fpSctS", "userId": "GWK2NRcCYhXHSIu7"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'ddi8QZSPxcrWgaSY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '87zuaxdm69LsE7BG' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 53}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'N9yFdVievEuagNrX' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "5jXn6Ao84HU1bPVs"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'xKPk8kJbRzcoUwOZ' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '68' \
    --qtyGte '50' \
    --sortBy 'createdAt' \
    --sourceItemId 'NGl4TOLGkoW59Mwa' \
    --tags '9JDvFTdRhkrihjcg' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'kpD8Pn0kt5qGEnkh' \
    --namespace $AB_NAMESPACE \
    --slotId 'rVmY6uoduVTYzmPd' \
    --sourceItemId 'tc5ecdeTPiimtIXy' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ijfcWf0MuIK9vpPs' \
    --limit '16' \
    --offset '76' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "a5BnMQjRw52KwWHm", "description": "Olq1iM6X372c5AiZ", "initialMaxSlots": 64, "maxInstancesPerUser": 30, "maxUpgradeSlots": 53, "name": "n3IinYatLloKAgGO"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'NmKC1t3i6FNJKedB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '8ezqTA8s22Cd0eu9' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ggx42zAfg3hJMaRK", "description": "RVBGmLABiSL1OXCm", "initialMaxSlots": 97, "maxInstancesPerUser": 70, "maxUpgradeSlots": 72, "name": "DY3faX84CpPjAjyx"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'qsKokUAv7TkGfhwp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '14' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cLTnhdFFRBJNnKlE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'Cw53GvejRx3QvhFw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '12' \
    --owner 'vvoorBVWhxzBYkRv' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PjmD2BE46IUHgixd", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'BJs7e6s3XW0yA2RK' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'c2kOPChdyJ3IUN0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'WcXL3kSIhWWDaAzp' \
    --body '{"qty": 7, "slotId": "JKJ3IYwFB9VLSuio", "sourceItemId": "7om9VkalWIN3YOO0"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '5uy4xHOmrkeWIMmD' \
    --namespace $AB_NAMESPACE \
    --userId '0yrFjq6sjVWv2UBz' \
    --body '[{"customAttributes": {"1IXFVj03Kv6oRvD8": {}, "VD1aiu5WxpUvmnyH": {}, "I8jMsUl0RXYgFt0P": {}}, "serverCustomAttributes": {"4ZHDv796M7jjbvi5": {}, "QqaccJnTKMnM0KoF": {}, "QM6Dx2yC64MU6dzn": {}}, "slotId": "OixHAqrFang584ti", "sourceItemId": "e59Ef86H06DBychT", "tags": ["hENO7NDGsWVwOAJW", "wFjIRTHZ6AVSH1sZ", "CZGgf64UqfqXvuAK"], "type": "IkHnZDrtiusB1hT5"}, {"customAttributes": {"Base7AOdZb14540j": {}, "Hjma2jWHWOhQgXgf": {}, "T05cKDqxa8yhjgR3": {}}, "serverCustomAttributes": {"Vn06bI31je5z5tzv": {}, "zudGSwGUP2hzTpvW": {}, "5MZZIPuoP2uUq593": {}}, "slotId": "LaBh7AVAM9CG9CXo", "sourceItemId": "GDxlRFEoUl7z0FCR", "tags": ["j6oaJw6tOJegimIX", "9RaG0KANRBS8hsbz", "vBka8puwNC1tNbpG"], "type": "F4BgZSWjwOk99owP"}, {"customAttributes": {"RjO1HjeBe7OmQxuK": {}, "MpZNPOxZeyqvItiM": {}, "67JzA0ZQ8VePyHLe": {}}, "serverCustomAttributes": {"yyEZjjbAyeZxAxD7": {}, "bKsDpYLNUDelkr5R": {}, "l3hNFgyj4K3APeth": {}}, "slotId": "ygIk4jLekukb2q65", "sourceItemId": "16dlsI5URJTl41Xn", "tags": ["jK3CuWODznIiNHAz", "Fh5f6ReI8VCU09Qm", "WdWm7WGlI9MIL0Fs"], "type": "GhCJF9DUSqRvybai"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'vYLmSsFLkpNF9uGP' \
    --namespace $AB_NAMESPACE \
    --userId '5WWd6dirpUP9ylVv' \
    --body '{"customAttributes": {"etfzHJN7mgA2kk3D": {}, "toXgABR61Py7mBrh": {}, "JxlRaQVvJxmjWYZE": {}}, "qty": 87, "serverCustomAttributes": {"r1uWijyXyhPPwByx": {}, "NSaSUO0bSGDdF4fX": {}, "k3PSJKZS5rL82RwR": {}}, "slotId": "saLEiobeZ6wF6zlY", "slotUsed": 6, "sourceItemId": "DSng97QzNhiZZVxb", "tags": ["cz9ZmIzqtdwZTaq6", "DfoscpRyPdJ7w1k3", "OxmILhUHiPTdWkXs"], "type": "3WBbS1omqYLocIte"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'MDTtmNs7SG0QKNoT' \
    --namespace $AB_NAMESPACE \
    --userId 'i2hoa8HFxKjPROSb' \
    --body '[{"slotId": "RJMGYDEvUShizi3i", "sourceItemId": "xk5cywEvfSPXlXSy"}, {"slotId": "ToRSPLlAsK9Tkzrj", "sourceItemId": "xBL565nQmLfagSjZ"}, {"slotId": "qDPzRHq64p8FaCs8", "sourceItemId": "IAlPaE9a1ig4Usbs"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Rco2civbbd2qk54p' \
    --body '{"customAttributes": {"DpGqqEVMYuMGw5hj": {}, "0ixdOmQaH0JJEjtL": {}, "fd6UnPQP0ZPSr3j8": {}}, "inventoryConfigurationCode": "n8thm8LBetUCYU5n", "qty": 79, "serverCustomAttributes": {"krXotZkRO7G8Vfz7": {}, "e2Yb29p6prMmipyW": {}, "3NqR5VSzMMlNAO3O": {}}, "slotId": "88ODrebkPTGpARhR", "slotUsed": 78, "sourceItemId": "p8QzPN86Pf4sZfyZ", "tags": ["heU7qcaAWAemQNg7", "iD9jiKy66ki8awgR", "RyiyP3dqtU1mgeZo"], "type": "Aw5Qlq3Gs6dUMGRg"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ZtkNp924YfTU04vu' \
    --limit '67' \
    --offset '91' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '46' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '23' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Ca9ZOQT9dI0DP9O4' \
    --limit '57' \
    --offset '13' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'qv1R1SH9npsZ9ECW' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 10, "slotId": "k5LGEmAYnvpeHqla", "sourceItemId": "59OOZx10d6ewK3pe"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'LOcXySOu0hnDbKR5' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '38' \
    --qtyGte '61' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'cUWJUeywIpzcIKUO' \
    --tags 'SjdhEbxnvMKxcsbK' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'OzMg6agUcBPaHYb1' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"EWI8O1kC5Q22o0gB": {}, "zXa4OMnRd5xHJq2K": {}, "2Yhjv6MW8XECRV88": {}}, "slotId": "IjJKfSAIU2tyzEWN", "sourceItemId": "Uh4zfEa16ylCL3dP", "tags": ["Pnx0hesBIzslnN50", "KOtQDJ8ututOSPrm", "H32KmzRzWoOFYuc1"]}, {"customAttributes": {"U1ed9dMevwSfNqK2": {}, "ooRGaIwJdyY7WKnv": {}, "YFfTxWBw7xcEbw2V": {}}, "slotId": "ectldAQdy2g7Kf0i", "sourceItemId": "YZfMS7gLiIII2M7U", "tags": ["dxLHFgG6xtmBr0uf", "As8YTqa58GpJjPF3", "BDjsiIIWE4icU8I8"]}, {"customAttributes": {"LJzrNxJ7cVFSxGUU": {}, "ngeVDwJuEYBGSqmD": {}, "moJNwCDd9hw9QoFq": {}}, "slotId": "oe5YTgSyCYgdICxX", "sourceItemId": "CZMOgljeUXXVGM9x", "tags": ["zyKfhdhtyo4A10dj", "6SGDcOdBaiMnJgnN", "M4z6Q7T5RNj3VjQu"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'OjBuNY6X36uBHalh' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "M3Elfgh990UrFW2q", "sourceItemId": "SwzpXbMEPp1007OP"}, {"slotId": "rD5kuJR9tfqjWK4J", "sourceItemId": "Nggi96OemTftseeT"}, {"slotId": "8i8oSGwio62IaNEx", "sourceItemId": "P715wo4vzJ2y0d0E"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'ZmR09MbZxw2dOR9w' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 39, "slotId": "OAdbm1gWboUPvqCv", "sourceItemId": "Y2hQ5ZWDoWdmGp4T"}, {"qty": 23, "slotId": "gTU1ruMQjoVZNf84", "sourceItemId": "7hjyTdxlVU83lurR"}, {"qty": 17, "slotId": "xlh7uBSXPiuOUfNi", "sourceItemId": "K7SCpLOFhninpUTR"}], "srcInventoryId": "U9k64CRRcMjW3tYS"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'LeCzetZgO98BarMp' \
    --namespace $AB_NAMESPACE \
    --slotId '5Mkef3SHuOcC1mGr' \
    --sourceItemId '4W0KeP8qPEPr5cKx' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE