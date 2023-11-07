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
    --body '{"message": "JuQRCbIvhAjUg4Qc", "operations": [{"consumeItems": [{"inventoryId": "sMeanYgP7l6BakTq", "qty": 58, "slotId": "ocO4ECONMmSRKCfJ", "sourceItemId": "Rq9IaRH1QiuoD3a9"}, {"inventoryId": "85Xsy3v4yJBzllh0", "qty": 96, "slotId": "73APItI37OF0bH83", "sourceItemId": "DsCjBLslvv1ILaG0"}, {"inventoryId": "65RZ6OnpwF1FsVbX", "qty": 69, "slotId": "XoVb5S4CjYBgiNGK", "sourceItemId": "jWQiapE8V97pl04d"}], "createItems": [{"customAttributes": {"GNRHqChHmONQtyKn": {}, "TsuXMgIW6LTvs3kK": {}, "GbSeS6ZDwJslO8Ez": {}}, "inventoryConfigurationCode": "UDQQZqXo6cqdaWMy", "inventoryId": "p1tSToNAZ6B3t8iY", "qty": 28, "serverCustomAttributes": {"DVIuzUaf8tkstT6s": {}, "3q35zqsQHjvKlVgP": {}, "qKRjr799S3x9z1cJ": {}}, "slotId": "s1ovsA8U80eOUQbw", "slotUsed": 99, "sourceItemId": "KPpaoCf4IgvS8bKh", "tags": ["6T14Ha457feTPrWU", "8VU0PWDWKDiznQRI", "7OBobCd0EFUEhE2N"], "toSpecificInventory": true, "type": "mn1UeukraW9ZZJGy"}, {"customAttributes": {"ikH5xVu1h7CeKA6L": {}, "GmX3zOxTQXXWrn91": {}, "9DW3YjSGclAG3i8G": {}}, "inventoryConfigurationCode": "JitUf9KwvwIQW3jn", "inventoryId": "VvAAOulejTCempvv", "qty": 20, "serverCustomAttributes": {"tTZi83KvUggIiF9W": {}, "Wl4791PQDOW3once": {}, "ChDshc3WIOyBrOho": {}}, "slotId": "rjfNIgatfPPKcVnY", "slotUsed": 41, "sourceItemId": "ps1VVZxVMrZ0ZWvx", "tags": ["kg050keFDgtoWYrY", "H71p3HDcuNW9oFM4", "xMYnpbZZOYH2oXHF"], "toSpecificInventory": false, "type": "yikLwWNQIrLBc8x3"}, {"customAttributes": {"eoMA17bjy5TbiUfA": {}, "ZooYJEcvCDC48Jf7": {}, "hioQXB6vuO23VU8m": {}}, "inventoryConfigurationCode": "3U5JrgRE305F2JIA", "inventoryId": "NP2y457YOx73tvuW", "qty": 31, "serverCustomAttributes": {"MEKvZlEMsRog68pL": {}, "CaGFRa460CiM4Dhg": {}, "wPRuxsy9OYL8tx6R": {}}, "slotId": "y9eYgXfs9cE9chON", "slotUsed": 96, "sourceItemId": "OMUOZVbelxvbTgkv", "tags": ["klCYhZ01pTgceRB4", "40DhZVJpzt6PjxhS", "jjHKgh0mTt7lMHfx"], "toSpecificInventory": true, "type": "K7RRfqg6RfjxM5KM"}], "removeItems": [{"inventoryId": "8XEnPxy7AIYbvajY", "slotId": "INiP0pK9v59jOivP", "sourceItemId": "9JCVgZr5ARszhMZ4"}, {"inventoryId": "c9DQ5qDLfSi2Q0pV", "slotId": "BSv4u7ySqbkPubfG", "sourceItemId": "T7rRe0oWHGEa6SL3"}, {"inventoryId": "3N2v6u30KbSGxsHr", "slotId": "xAm0PlrBsO69seDq", "sourceItemId": "jlku1YBbjEc7kN5w"}], "targetUserId": "0eFHkm5LYEtEuEaT", "updateItems": [{"customAttributes": {"94BhjL1pXTLTQZIK": {}, "sqyDaHy3jYiQB4gc": {}, "2CDrG5ki0a6kz1Ig": {}}, "inventoryId": "y4a0jzQqWtiJpp06", "serverCustomAttributes": {"0zbekjpK6qmRoYDo": {}, "zcvBYycqQ1QvYuUS": {}, "aFKmw9A9KIYXLKV0": {}}, "slotId": "r9PVwIBFlzLI9REk", "sourceItemId": "xdDv0V9aibYL4f1B", "tags": ["6jxzMlJFRw2xPoiF", "2lcT7X3s11JwHYvX", "sqGBiXOQJ4w9wpPL"], "type": "S6t1llVKJAREsayy"}, {"customAttributes": {"mrvQUuy5sRdeC6AD": {}, "RLlDz4HuxdGxhydK": {}, "14mUJpJIDk2igghH": {}}, "inventoryId": "glX9ceCGFdMVIgB1", "serverCustomAttributes": {"zONKtfxwhG0msLk1": {}, "PFKD2mIheCTQzqdb": {}, "uoWe1YIgSab684Dr": {}}, "slotId": "gdGPq89E0bD0RcWz", "sourceItemId": "kr71zWDww7k9X7Rw", "tags": ["DhBkrFhKcXSeR8zO", "Qcu7rF4vRvSpIpkz", "FCDyS7GNUAoGuiBf"], "type": "Rox4xmHdW7ZjIfVW"}, {"customAttributes": {"rtDmaiJtWBIUjKjw": {}, "vo66OmdHtFJhV83i": {}, "L2x41iyQQucU2vH8": {}}, "inventoryId": "QSIFfzPlh5jy5pnJ", "serverCustomAttributes": {"vQNrUio94ITzsVBq": {}, "rARFHjvFtWPRmmFD": {}, "jdE2kC8hSdEYhKQo": {}}, "slotId": "X8WUUGTKMXS6oNVe", "sourceItemId": "C5cqzXYWmia2N1eg", "tags": ["4oJ3xhfnmqvCXdRw", "l656QWOTGcWLuICs", "Y25V9UIpKDFmNAAF"], "type": "Chn2dbD6lCu30nyr"}]}, {"consumeItems": [{"inventoryId": "NAky2tZepbhfsbCb", "qty": 76, "slotId": "JaBtzL9OBYz29vXA", "sourceItemId": "DE8HwhgUQ4tkw5gJ"}, {"inventoryId": "ooE0JW8Mueb8Fizy", "qty": 57, "slotId": "DG06rJ5U9ET7Ezyg", "sourceItemId": "pNwRLafKiAQPQwke"}, {"inventoryId": "nMsCSBpITQsYOuFh", "qty": 43, "slotId": "mBTkmHnwF2ZmAXFC", "sourceItemId": "0FCtayfi4B9pwWyX"}], "createItems": [{"customAttributes": {"2dJaYOcdHTC1K7S2": {}, "53gx4XhN70fds0lr": {}, "UcSacQt5WYKSxqP0": {}}, "inventoryConfigurationCode": "doZv9Uh4kNRseBI7", "inventoryId": "VsUuitfemzrTXrfn", "qty": 91, "serverCustomAttributes": {"rOUhmLXheVhU1TmO": {}, "fgrWyvO3recX1TQr": {}, "mOrqxKDG54XOT97x": {}}, "slotId": "2jt5rLAGygQRNQFg", "slotUsed": 86, "sourceItemId": "bvptna7o5jm0nMwE", "tags": ["tt0RBFKYAJtrxXZI", "ONIUzXxaT0EYZBJI", "AEtYjjida8TYPR26"], "toSpecificInventory": true, "type": "kW5Oid1RoGiev96w"}, {"customAttributes": {"bh6YYIYJ3ocs1Liz": {}, "8LN5RcaDkRe8qYOb": {}, "c4PQrMrnpKJACajH": {}}, "inventoryConfigurationCode": "RCX6g7GvQ7O91u0f", "inventoryId": "GtGNj3TyszY5szzP", "qty": 75, "serverCustomAttributes": {"MeBrklV8mlvaheuB": {}, "Cw87xKuoffRJbwrS": {}, "c3ynmxBPykcMFzCi": {}}, "slotId": "16Dvu8sqikb3iunU", "slotUsed": 62, "sourceItemId": "Mx4AtQaoAYV7mGkU", "tags": ["ozgeiWbb8bE8v0ar", "E7tRKOIsUytpftX6", "m41LBinrkgGfjpVU"], "toSpecificInventory": false, "type": "43JdCj96rwwmHZPJ"}, {"customAttributes": {"vAQikgG0mBQEA3qy": {}, "qlkkMhmhZd1gjzUZ": {}, "nQrU79exJ1Gg7Fhw": {}}, "inventoryConfigurationCode": "Z0hExrpzpyvYO8LQ", "inventoryId": "3LiArh9ngg09Nsdk", "qty": 61, "serverCustomAttributes": {"qvMIHqUtSzMMP8OV": {}, "vQj9TzccS0EusQKz": {}, "FJCP3Bcd5z6asJIU": {}}, "slotId": "fQGpcScynwkkR2xe", "slotUsed": 10, "sourceItemId": "z307GIg6sNogGDM3", "tags": ["46ZeAllqQKLTb9bD", "WxXQ6tyF42O8itE7", "aRa4khYuOa7VtyyB"], "toSpecificInventory": false, "type": "LySymetVa5agMboT"}], "removeItems": [{"inventoryId": "f1aQ4HartmNUearc", "slotId": "CyanEbCJdeFrbEhj", "sourceItemId": "0rYaGfZa6f5Sbqk1"}, {"inventoryId": "njvM8RkfRtC6xBtw", "slotId": "iVS9teJeeKTq5sZ4", "sourceItemId": "z5oc1eYzhpQ95SfS"}, {"inventoryId": "P3rJwLzfpS3hcJqr", "slotId": "zfp1tJWwMIrad1Uy", "sourceItemId": "0qIbWK5G7W2z1H7q"}], "targetUserId": "mOl2E9kZCTzGT6qR", "updateItems": [{"customAttributes": {"iOSLol5yXH5Fz4Uo": {}, "mHXanXTHrAx0Iy1g": {}, "2pbtynbjUaYJLKUa": {}}, "inventoryId": "QOSuCUpQAdhCp2yj", "serverCustomAttributes": {"U2n6rhBGsVIlzYZR": {}, "2L3noS5Lnzj3BFzS": {}, "ZmetV3ssojawO5Ox": {}}, "slotId": "qQiLOoGR60gtWfyL", "sourceItemId": "tf5M5QdwZo3tyBy9", "tags": ["g84Rp0j1B74ov2C2", "Eb3em4RuQYP9ldDt", "MJh8NwkgovvdlqnL"], "type": "q88wy4BfB5iyUzUX"}, {"customAttributes": {"bCCZNzzVCMQpSGbP": {}, "A0rZdbfv81tXiXhm": {}, "RG5uEA9QTA9ZjI7L": {}}, "inventoryId": "g6JLh5jQhsCqa5Xz", "serverCustomAttributes": {"TqY6CIuxBRIm3N7q": {}, "BJUfVNH9kUHviWTd": {}, "YtyhgGuU4sP7iwBi": {}}, "slotId": "sFrqMP9eVJRZIfgQ", "sourceItemId": "hG8STMl9J216NgV4", "tags": ["iTmHFqOZy7LdwpXA", "YUxDY5CpLjiH7tT5", "JoMK4L7gOcOoeCCz"], "type": "296VilEIVHnNKhHZ"}, {"customAttributes": {"iyXX8hZDaGI09Dqc": {}, "XfKIDVXx4tP6jctJ": {}, "K4lwY6vCqZacVse8": {}}, "inventoryId": "1bDxcIf8i5pvuCol", "serverCustomAttributes": {"6RDWc3NVZS00RnTJ": {}, "SLcH15J7ydKiNSen": {}, "wpuguAMT3SzhIG8O": {}}, "slotId": "tFMpZUMkIfntpn4m", "sourceItemId": "3jQuEC1UsyoV0FPv", "tags": ["HoFNSDY0FQLHYLJp", "S1ozt3lwljXhqScG", "aicOW9OjgYpQjmsM"], "type": "SQuJi4DtGcyATN2E"}]}, {"consumeItems": [{"inventoryId": "doPT4j2iiczqm8uN", "qty": 7, "slotId": "cAAPhz72ax3dwfBn", "sourceItemId": "snhS4U89LFbQMaVu"}, {"inventoryId": "vfBawrDWO9Ggdfls", "qty": 67, "slotId": "UD4vNyZJSJ9kvx3B", "sourceItemId": "XlNvhPEkCevCXG53"}, {"inventoryId": "p6yv3pldVk3XGwGu", "qty": 98, "slotId": "WDFodD4VLHQnlb4b", "sourceItemId": "14DQsXMLBbLvnZUP"}], "createItems": [{"customAttributes": {"apmToHLfXSCE8Dei": {}, "7YsqjIt83T5kabXW": {}, "3LpiNfSYZ1hlSBTM": {}}, "inventoryConfigurationCode": "3MHmUpbppLPdmlZC", "inventoryId": "NqyD55u3TL07QpJd", "qty": 100, "serverCustomAttributes": {"SjkuzQKbygpJIaew": {}, "VrIgHCz3GcmqVNxg": {}, "p43pXntaARArg1q9": {}}, "slotId": "TkRZ5YnfCpbmLLab", "slotUsed": 81, "sourceItemId": "fVxinktu9ZqBwFFy", "tags": ["18uPAWLqlCK8CxNG", "M50qo4Ii1T4p6xGr", "TGPQNMvLWVSmnFrC"], "toSpecificInventory": false, "type": "PCh8WanbRE1AHUn3"}, {"customAttributes": {"c9TlwfjMWqtscbZU": {}, "QkcywNKPCdMlFBqV": {}, "bUdGH9wUjBUemAjM": {}}, "inventoryConfigurationCode": "C90D63XHPmk3AGQG", "inventoryId": "1o6gMBS3dFG6A4qk", "qty": 79, "serverCustomAttributes": {"kVaUZSd46lIZj044": {}, "KCBmOEI9WRF27d1f": {}, "YaUkABKRG3gNcrGZ": {}}, "slotId": "kCO2ePqO8e4lM2I7", "slotUsed": 25, "sourceItemId": "R8cJzUUoqKtIHgBh", "tags": ["bgn2lOtLUgjkYA3V", "neREVxIUpyBhmC22", "jLaWOoXDs6WacXZk"], "toSpecificInventory": false, "type": "StPsVzBbyzXPWRhg"}, {"customAttributes": {"OMfemBqkYv6UYdyg": {}, "ByT3GFLUanQPUnZN": {}, "9GYFiRRLXuhcZ3B0": {}}, "inventoryConfigurationCode": "QgaZz4VrzuEFQLv7", "inventoryId": "JfovQZtxtCg7eZfp", "qty": 2, "serverCustomAttributes": {"Sdw6z8Xh5rDBtzAG": {}, "f3OmIm9nwjChmKL3": {}, "tAooio1iSs3zxJSh": {}}, "slotId": "Hcz4vSed2JmWpCIT", "slotUsed": 79, "sourceItemId": "OPornshludul55Rb", "tags": ["DO6GiDp36PvYzTmk", "Ra9Mcp1Jj82GVXeJ", "FDf2KnRTZRmqRaH9"], "toSpecificInventory": true, "type": "NUf5VghBfN9X3nxg"}], "removeItems": [{"inventoryId": "zMInGjqFvZTyQYTW", "slotId": "PF9tXfnqZpKE8eXy", "sourceItemId": "PFOSHhHsNtd272pD"}, {"inventoryId": "YBN9JRfRLMmz368b", "slotId": "uplXziTBkBk90W6Z", "sourceItemId": "ubU5frca3hWyFMOR"}, {"inventoryId": "gZgycAT7eAx4UCmT", "slotId": "fPz1ABUAz9Klrgln", "sourceItemId": "YAuiwGVfGFP2ehiH"}], "targetUserId": "Ub6EEdjuVPnNOTiW", "updateItems": [{"customAttributes": {"o33nsls8sL9qQqo9": {}, "KVMHhiAGjQSMemUv": {}, "2zqlEIuzTVTvaMmJ": {}}, "inventoryId": "t3j6N2xbbQfkdwDO", "serverCustomAttributes": {"gj8F91apdJ8PEESQ": {}, "63eN6qtOVI4iSu9V": {}, "hZC6ZtvskrnyJGga": {}}, "slotId": "cl6Bd6UHdhJjzs3G", "sourceItemId": "0l9Zj6lPc5MJFc1Q", "tags": ["5rSEESgGirwjdR6S", "GOww1ZUWfz8pHvmf", "yJM66doW800mhwmW"], "type": "PTTd8APZ64vPuGbm"}, {"customAttributes": {"qGQp8PkrQ7UTCAYh": {}, "ZlNSmWFziig5lT5s": {}, "47dpWsv0ZDbws2er": {}}, "inventoryId": "qKHx9jW4s62OrPdu", "serverCustomAttributes": {"ztnilE9yx5gjkpfL": {}, "XUyotBU6Mgv1uScR": {}, "A8WnfGIgJqOC1PKO": {}}, "slotId": "PBobBZm80ZDfJ09n", "sourceItemId": "YS8KGJZq6TUZFfMb", "tags": ["1Q8sdjyZ6Xhjl0z3", "DLNferOH28JJqoop", "tbMBkvPvmKAxJLpT"], "type": "Nuu5JPrOvdXCnQIJ"}, {"customAttributes": {"Inj524z9F8FdNewN": {}, "B9ANoAkQyN6OQ6ix": {}, "GAfsTVvh13YWErNs": {}}, "inventoryId": "5zbn1otK6TgQd2Ho", "serverCustomAttributes": {"faDfMdSqYJn8Ft0f": {}, "lb29hKhVBuqo6Ntt": {}, "MUvMjBoUJTQJqivn": {}}, "slotId": "G0k5NYs6vUw8rhzw", "sourceItemId": "MlPVzelzCf8szwSB", "tags": ["vny1ZlPbwEmzR4BJ", "yBRwOYtWUxwIulCO", "di4cdAceEUvi1AJi"], "type": "iDp3kfGADVEeGrlY"}]}], "requestId": "V6waIVf1CQg088uH"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Cm5CnWE11dggEuEJ' \
    --limit '91' \
    --offset '1' \
    --sortBy 'updatedAt' \
    --userId 'HaSejLkg6BGQplaT' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "7mRb6q6tTnHAMw8c", "userId": "HCXxUrOC3wCZfrud"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'SGMSsmY6nuDjBzdE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'c595tyzHOxmWXByB' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 86}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NsMpCzlMfkPNSCHZ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "nVFehsxhF5FvHFyK"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Yt5fLQQVNlmdBbHB' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '37' \
    --qtyGte '74' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'vRLuhblFLLwFOOP1' \
    --tags 'hw07rWNtlQPrdFFZ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'YpGWptLchNNtxk70' \
    --namespace $AB_NAMESPACE \
    --slotId 'gIPTG1g6bVFlqUQz' \
    --sourceItemId 'O3PtGy6yjJAqsdvL' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'KBoKT2Ocz9LbxC1P' \
    --limit '96' \
    --offset '85' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xEBdMP2RWUT17aj5", "description": "esh412ERTFKkrsqW", "initialMaxSlots": 100, "maxInstancesPerUser": 72, "maxUpgradeSlots": 15, "name": "8HXCfvUqtmYIJk0t"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '9ue6UkgSAXtqIHfU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '6IKUINxWPvN3TxPY' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tkmtft9xBM4qT8gz", "description": "ffJgSiei0WJBQj9q", "initialMaxSlots": 13, "maxInstancesPerUser": 97, "maxUpgradeSlots": 10, "name": "OvID8927E8h1KPHA"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'PNmYAHiI96QSNYBJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '42' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "R1aNRzhKCmIwMPBG"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'F5f1IsztExnfEprK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '26' \
    --owner 'z8lphSBaidsz9gMY' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sHgG0NAGREuZsrno", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '3HKOBeKLOJdPy76t' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'CeR0moJdfNzuRUbr' \
    --namespace $AB_NAMESPACE \
    --userId '31zMATuOIOIOfBSp' \
    --body '{"qty": 76, "slotId": "A5rBxEIwthpU57pO", "sourceItemId": "MLfF9u62B05CeTIA"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'b1Ya8agRlki6rp0P' \
    --namespace $AB_NAMESPACE \
    --userId 'GwLYIu1eRTnI4MTQ' \
    --body '[{"customAttributes": {"efDoEOTHtUwzFhyF": {}, "RJh3UZpd72fQo5Pz": {}, "OWufPbmeATZ0w9kW": {}}, "serverCustomAttributes": {"FiVwQw7zQJNRrenS": {}, "MElzIP3AyoMWQ9yZ": {}, "O3YVMBHU6nVq5aDO": {}}, "slotId": "milGMDu59GHHflg0", "sourceItemId": "ZzT9xbZxq0JtUswV", "tags": ["cTlxvE6lkirIDIoV", "apRyEmMF4FL69t94", "LYvMqAyEoWZA9R9I"], "type": "r4ptRLGJ4SJzrvdN"}, {"customAttributes": {"ATCU8I4TFLUeK0us": {}, "bEZFZtB9h5YKfHE1": {}, "wLxAuq0ZXBqYCkPL": {}}, "serverCustomAttributes": {"MkrN3MDaJvKC4btr": {}, "N5erzwKxBfHPvhWD": {}, "HW1yOXbFXPDgBhc3": {}}, "slotId": "TcM0maJMgqlqgLfg", "sourceItemId": "U5F1e5l5gDB4mlfu", "tags": ["XJUp5ZaiW9uUxmLT", "rYBTp0eN3yRJ4grw", "NjbU8nEyJmQvJwP6"], "type": "hwvetROgCQ2390RR"}, {"customAttributes": {"vDl78p1pmbOGhFkG": {}, "IvuHeuMiK8B9MecG": {}, "pwRNfJ1rbyOobiZl": {}}, "serverCustomAttributes": {"bdPZ15xBN14QMfFG": {}, "VmGbt2NoHnwt2Zi4": {}, "GZ2bQvzBoGSr8dxk": {}}, "slotId": "R9bXnN3G3euAm7Dy", "sourceItemId": "AUJXbWPH4fPTZLCr", "tags": ["WcrfU0dHk9DNYDgT", "mwzEeEaTw8in1VWi", "ujRk3dC5gR1EnkcB"], "type": "cx6CqYeiMyN7J4r9"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'iYeidkwONVbuRAtL' \
    --namespace $AB_NAMESPACE \
    --userId 'WCmoKRhNxVPXJS9j' \
    --body '{"customAttributes": {"MbqkUqALxDVon4wj": {}, "tKBWgqSM20rLLGNS": {}, "RQZEQl6b2BLNSspY": {}}, "qty": 41, "serverCustomAttributes": {"X7rii05uOFAzKqaD": {}, "m3paFYIGUAekIaRF": {}, "WdTtCp8t5B8UVdxa": {}}, "slotId": "uZ7roQaKupIWYBkM", "slotUsed": 29, "sourceItemId": "BtHtZgkzNTrtQ8Di", "tags": ["dOvVhk7DeLs0NKD7", "XdjJj62SwPAsbVzu", "N8Wt0GkXRZGrYtxx"], "type": "XAzK7Zoy2EGWRppA"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'hOfdaCibWop57StT' \
    --namespace $AB_NAMESPACE \
    --userId 'QWhONvI5KUWp4ogw' \
    --body '[{"slotId": "hIXgDxEvo1ApRJya", "sourceItemId": "vuue7UgHXRjsTLLL"}, {"slotId": "zQtXKyqCM4TocoLj", "sourceItemId": "LUvZt6zmGecTMZW2"}, {"slotId": "hyoRePaeJP0VvC8B", "sourceItemId": "DigFYB8XtW0ym3WM"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'rVEG93xLSBw2YJ8U' \
    --body '{"customAttributes": {"n2PXWWCkelq2XjSD": {}, "TEPQLet72rUvtC3Z": {}, "zgboLubRVbVvNHbJ": {}}, "inventoryConfigurationCode": "mpGsqE0RiPcGy12u", "qty": 44, "serverCustomAttributes": {"UXCPiqlVRfFoniDV": {}, "g1K1ZW99YjGO7yEB": {}, "L3XGvyYNhjzZCm9E": {}}, "slotId": "w4htiIzEjo8tsXap", "slotUsed": 75, "sourceItemId": "5UgxxzBlTwWR592F", "tags": ["op5Snzvzuy2oMVj2", "vsVEtkH7I8pp3sLF", "xbduXgSa83mT3Uhm"], "type": "7FFdfsLY7h9aY3MY"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'UqvJ9gfio3TMNYUA' \
    --limit '54' \
    --offset '0' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '97' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '72' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'B3NgHhMGBze8bBs8' \
    --limit '9' \
    --offset '58' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'HMWDe9C5X00XHU9o' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 99, "slotId": "ejjf4pUOUguFJQDd", "sourceItemId": "gUC0Yz4rgWGi6miy"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'R8wOFCdONZ0Yaatb' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '85' \
    --qtyGte '53' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'iuTc7wRDbfHvykZN' \
    --tags '7DX7zQcjbvqqZKcD' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'd9LDWkyyOnarGcl5' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"BWKWMUKu311wFZKG": {}, "ioyMY5AwgLs9fvI7": {}, "EW7RjkCl4wsoJ7O8": {}}, "slotId": "AVCxEfuWuUybyDZu", "sourceItemId": "mxBSbZOBavyg3jCz", "tags": ["YjfxWQT07oABEoYM", "up3ViVNRCOFn9a4O", "BOgj6NoIOM7pjaTS"]}, {"customAttributes": {"ZAvzYh8rkOGckKmt": {}, "3vr0nrgTMqiCOLMN": {}, "83Dvzy3E6oWLIFLe": {}}, "slotId": "E4sOwGkniAkKrpEE", "sourceItemId": "NDEZvw92Dm33aXfR", "tags": ["ajFJIpddbUWdasp4", "LTFrGDP7P5b2tKFa", "OBNSIQcfILjxnUug"]}, {"customAttributes": {"x4xtvbilO9kA8EOW": {}, "imgFaOg9bjdNlxLA": {}, "WBWIwBc8aAhafRhY": {}}, "slotId": "zJkMkmr6EdUOJ1Me", "sourceItemId": "ZaKTQzzzcMPzXCxD", "tags": ["NYMNDo6Nrls3ksXs", "nhO3YNsmybbVDLBn", "3ThBG6R1vv9QKMEv"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'MHsECYr2G648990k' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "stji5ugFNvhMSr74", "sourceItemId": "DJ6SAV9OTzSYvIcr"}, {"slotId": "D1KQBTT66lN4rZz1", "sourceItemId": "gVzeZdPoUJFnBOMW"}, {"slotId": "PK5cMS0N1oYwUh19", "sourceItemId": "Vc02mVhYrSvz2nrW"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'RjZLQNN3E2WYHQPV' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 24, "slotId": "LrSKF6jJbPWfDTf3", "sourceItemId": "ev1v0MVYTihAggh5"}, {"qty": 87, "slotId": "adE2guOH8AYmiDy5", "sourceItemId": "j0csoN4EzK9ESNOd"}, {"qty": 71, "slotId": "Uj5Rc946lOJbMWRJ", "sourceItemId": "ZPTK8so7tkeoQFaP"}], "srcInventoryId": "IljdYUGFYS36c2zR"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'qoyhvOyNrKagPxSz' \
    --namespace $AB_NAMESPACE \
    --slotId 'sqTLzCjAD3ubtnD7' \
    --sourceItemId 'j28eVxiPVjI2q0xu' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE