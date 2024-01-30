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
    --body '{"message": "wAsOa0pf3759V13p", "operations": [{"consumeItems": [{"inventoryId": "1BxsAcSYJZE2ioUt", "qty": 22, "slotId": "OUSDR7ybMLeoAsuI", "sourceItemId": "EhHf3Bglhu7SMXPp"}, {"inventoryId": "GHimE2vT5kwA719m", "qty": 28, "slotId": "0NnvlVFTGr6um07v", "sourceItemId": "TtmUe5nyvtjcM3z9"}, {"inventoryId": "rLCtetvRZQ4e5s5k", "qty": 76, "slotId": "2RJLIeiHBIIYzmCR", "sourceItemId": "vIWJCduzQZYCSJMT"}], "createItems": [{"customAttributes": {"ofBOdFbRB0ahrb67": {}, "FV7SbkIVkXusR6R7": {}, "ATSUaCk835I2ZPCc": {}}, "inventoryConfigurationCode": "y5PAm5yGV15rKbix", "inventoryId": "KtqDa5XldQda9RrD", "qty": 88, "serverCustomAttributes": {"AGxP0qeYbpWMavr4": {}, "WQXvLmwGlRby0fAg": {}, "lO6hWSDjrrYyHKKL": {}}, "slotId": "Fip8D300Hii9NUaP", "slotUsed": 13, "sourceItemId": "2LuKxC1AvGJ6uhlv", "tags": ["VKjv5FipCNddLkj1", "MqMgM28LA96W0Qkv", "699v3JS94O6QjDFr"], "toSpecificInventory": true, "type": "IzD4wcOyqJddAJ9C"}, {"customAttributes": {"hKzUEYIDxRHyBWx8": {}, "5MlGQVgv2hMDG6sK": {}, "HKGyqbnOlY83UPky": {}}, "inventoryConfigurationCode": "8lrGLa2tjdj2ua2n", "inventoryId": "HbtHpBXj6uJpAm3l", "qty": 59, "serverCustomAttributes": {"T24u87RZCjMTw8Je": {}, "pt20zQJvMT5vDj3H": {}, "2atRaH0eid9Wsu68": {}}, "slotId": "eBQn00Rs3hbVDkum", "slotUsed": 88, "sourceItemId": "GBQxL1mqRkvMkGne", "tags": ["LcC0ps4u1ht6Da2x", "TQxruw4j3cazRHm3", "bEvcVVcqJgXImhkb"], "toSpecificInventory": false, "type": "Fh3OOtctkqlDFg8C"}, {"customAttributes": {"eNaUcU9wKgnl7Smf": {}, "qGR6UQsAt6iDdg8G": {}, "BvSPscFubKXpd1Rh": {}}, "inventoryConfigurationCode": "2aYo5Z8PIyouXzMr", "inventoryId": "V86eOJsIb7xryXBx", "qty": 97, "serverCustomAttributes": {"VjtKxD8Fcd8HdInq": {}, "nMon4lKLXsDfdCA1": {}, "Wb4axbe4i3M7vFpM": {}}, "slotId": "MKxgnsoSzkwEATTi", "slotUsed": 99, "sourceItemId": "HWheVXzNPtQbJRUy", "tags": ["HXFjuX8hpCEXkXY3", "923S7VRbK8ZHXYHW", "83OhzLUTs9IgqKCG"], "toSpecificInventory": false, "type": "3c2AMMNBXXKdclvx"}], "removeItems": [{"inventoryId": "32rILOa6RJa6yj3Z", "slotId": "RXDziQPziIpsWTsW", "sourceItemId": "FZBisDz4SVETucbl"}, {"inventoryId": "yrzURmXtHJxNMkam", "slotId": "tNXJV0mYsf4FutuN", "sourceItemId": "DbdeRFRgRwarUHwO"}, {"inventoryId": "wDpsgrjelAYpx1bm", "slotId": "Bn3uvJsYNqkBrjsO", "sourceItemId": "6kwxoH6HyhVStToe"}], "targetUserId": "epeZw3amllJhRhWR", "updateItems": [{"customAttributes": {"Fdgstft16ikqKjFc": {}, "cOqlnTInml8G9HSC": {}, "zA2N9tRqgioEAfJ2": {}}, "inventoryId": "EEDerPTHFSUQyuzf", "serverCustomAttributes": {"FpxxLrwfyo871mKN": {}, "MzlggRj4xfl161u1": {}, "9Xkve3j4jM5aznyY": {}}, "slotId": "XXs1CAx44SfRk2nz", "sourceItemId": "7HPGJ9lkOakjnLUS", "tags": ["JPi1c5kMp9t0BrET", "GO7cVSwSrT7udv7o", "ph4YYFnhYQmbxxJR"], "type": "KxACKTLIRU2J1t2S"}, {"customAttributes": {"MZQIKq8IhtwJTwvA": {}, "iJ8eweUeDirzf89F": {}, "UNBmKYRsbQJV4Ytz": {}}, "inventoryId": "Xm470yEoIhrQQO7h", "serverCustomAttributes": {"IBf0qyIhgykRvsgT": {}, "egaWNEkOYaPsRrN7": {}, "IrxB9zFagWkV960J": {}}, "slotId": "bXjKAkDc58PIWIWr", "sourceItemId": "Tv3Da5LTy7qdU8IV", "tags": ["XAjYLojjTLTKTqZC", "CzQUYdVhSbH0KgZj", "2oLrP1n5D4xfgEg2"], "type": "FW25l83xtX7bFILr"}, {"customAttributes": {"i7zP4cR8cxOBf43N": {}, "2WNzTMKGXydKiBue": {}, "SdWuSXBIzPF7XFk4": {}}, "inventoryId": "FtiWnlFnVPFEsWif", "serverCustomAttributes": {"O3A24jOCQKrQ0R2E": {}, "HJHKuBXCGNcr5XmU": {}, "EkWLDKKByintxoLs": {}}, "slotId": "Hws33ErA3htKLFsV", "sourceItemId": "Wol9eCuRuljyG5e1", "tags": ["XT2m6X1XxlT0Djtq", "4LvMYYzwBNJIwHof", "RbF2oIH3kScihpD5"], "type": "JRye4QzZAwxDcsoY"}]}, {"consumeItems": [{"inventoryId": "uuggWSzoYjQuSLtP", "qty": 1, "slotId": "vWQXkDSAHNYgJpfX", "sourceItemId": "q02kJb1zk0edmbEq"}, {"inventoryId": "1cqmIb6ewnFR69CB", "qty": 52, "slotId": "xhN8cJOnGXwRpB2W", "sourceItemId": "yqdyVYM3AVlQxRAh"}, {"inventoryId": "fywQf3gKVb30bETD", "qty": 74, "slotId": "zsyaGpls1S6WVkmi", "sourceItemId": "bVaVfhRrs9RcTiGe"}], "createItems": [{"customAttributes": {"faQtmTdzjQS04tK2": {}, "kIy65jD4DCE0WsB4": {}, "HzUjA9INe54xzX7B": {}}, "inventoryConfigurationCode": "Jm9OmOGxfNhILk2H", "inventoryId": "pGRh0PDGCKDDnLsA", "qty": 88, "serverCustomAttributes": {"ealHGsNVM6bUop4G": {}, "fFewXNP3S81GGmR9": {}, "msFHx0Ogftp5uGkk": {}}, "slotId": "kA282rf18tJMhTVv", "slotUsed": 6, "sourceItemId": "kcp23W556mtxpy3N", "tags": ["hus8aXdrE3X0zjYe", "vi3D6lm3RY6m0ymS", "9FsvQsx9JUwJya2N"], "toSpecificInventory": false, "type": "uDrsVe20QIh28Fnn"}, {"customAttributes": {"ku2O1ysSU2eOnGus": {}, "hgU4r3Anmdxf5NWS": {}, "VvfgP2V1QxQNIqsM": {}}, "inventoryConfigurationCode": "OajSCShSAAFQumHR", "inventoryId": "IwwWOJQiqKz7Js0c", "qty": 38, "serverCustomAttributes": {"NWS2awgUs0Koh4nn": {}, "gdLy4qb6xfGhideo": {}, "4DY6GLUuIx5bUNYQ": {}}, "slotId": "6JhplZ4mAPxwEBm4", "slotUsed": 66, "sourceItemId": "JEMnk412Bm5P2NWx", "tags": ["bJTKtBUvcPsu04wD", "prKGx8XKk6duWYeP", "QiGPFIXAPWxztKwu"], "toSpecificInventory": false, "type": "sMu2ldDI3GcdQD5M"}, {"customAttributes": {"RHsYQPshUvnZ9ywU": {}, "oBHZvXAShtu1RJIZ": {}, "4AwGopoMt67RgqyG": {}}, "inventoryConfigurationCode": "cirETanG3Q5dhOzc", "inventoryId": "snf4HYw0HUxx9sOH", "qty": 29, "serverCustomAttributes": {"vemQ1zcuPNKRRBlg": {}, "VPHlGyv0c2g2zSy5": {}, "ezIhPT09BysjRaFd": {}}, "slotId": "5XDoafYQWKWBF1ii", "slotUsed": 80, "sourceItemId": "nQcda2OhHU9uBbJU", "tags": ["reQz8A8MpXkDwKmD", "8mhzl8Wlq0tC9uBH", "T8fDBZxuwnee13Vy"], "toSpecificInventory": false, "type": "KrBsx9zriHDiDcIG"}], "removeItems": [{"inventoryId": "VnudH8hdYG4ToktD", "slotId": "9UUqSPpJQzVHMIa1", "sourceItemId": "ExjUGguEzwXuSA2v"}, {"inventoryId": "8yXmOEwDXIEiepEs", "slotId": "3sOCHyUgeZ4mgisj", "sourceItemId": "ZUyndXpwb69s9VMP"}, {"inventoryId": "QBhfRMeQyY8kIbV1", "slotId": "yd76AlLAi8QVTqQB", "sourceItemId": "8jI819p4TXcffCKU"}], "targetUserId": "2XGsZuF958TmVP53", "updateItems": [{"customAttributes": {"6kvyDKUwbrh8StT9": {}, "e0hV72Pw6YdL9Wyx": {}, "PmXtzAJ0TK4oQ8jk": {}}, "inventoryId": "D8993TGMZHJCHk7c", "serverCustomAttributes": {"GaSOSYwaEZE1i9Eg": {}, "YNwMdu7gIS4WKbGK": {}, "2Cebr8brw8VxRkrj": {}}, "slotId": "1bc5UR0Q9LscPKcq", "sourceItemId": "HAQnFudZcfqfyHOs", "tags": ["f5iYYw3BOY5UYuFd", "VFSqAPtVZyvU4osx", "r4pcUlo82LgE7ofU"], "type": "9F3zuRmHEu6sCyEm"}, {"customAttributes": {"tPX6EWrMulFcPNGh": {}, "fra1dTs6GtxLfQES": {}, "6uL6m4Su3HT4YUWT": {}}, "inventoryId": "6YVrWJQBEmugYKiM", "serverCustomAttributes": {"5pNNhIRF4y4jOpYt": {}, "gnSlCPdNvKk223xJ": {}, "ijsnNmxp3Fxg3y7x": {}}, "slotId": "ilnFG6BgFetIUYDM", "sourceItemId": "H98lP9Fxt1bCm7Jg", "tags": ["qBB7to2uVZws1s3E", "kDScX6NKZIcJe5ig", "LXAOFvM3GeU9bnWP"], "type": "MGnQWO3tpPQEjJgj"}, {"customAttributes": {"EwkhFAsK690kVEwZ": {}, "pyBW6YNs8XM6wWFE": {}, "XYkcX8m0G3C4Qmjn": {}}, "inventoryId": "HkLLXHUCLytR3rd7", "serverCustomAttributes": {"2lsLyQsfD9uad9gO": {}, "keOJ5lg0IPBliyF4": {}, "hsZ0oHJmluYZH6sE": {}}, "slotId": "pDBSqSukttlSBvX1", "sourceItemId": "rZXr3IcclJ1Xz34i", "tags": ["1otXQDAeGhWMmIsS", "8Gso5CFkrCN75wB1", "znySVKaNdQtgw41c"], "type": "j5qKsZkFZlXo6J7N"}]}, {"consumeItems": [{"inventoryId": "1ZQ60ddsUUcgwMkk", "qty": 30, "slotId": "kPmufWS9Y5j6bByb", "sourceItemId": "7qJp7Mjg06BRkt1O"}, {"inventoryId": "w3qfbjHK65vblHds", "qty": 64, "slotId": "LNOZ1WFFSaFwUKIi", "sourceItemId": "VGJYyN7onyurmVyt"}, {"inventoryId": "vB7RNNg4ohKdmtTo", "qty": 22, "slotId": "C8OTwqdhSYWoR5fL", "sourceItemId": "CDQpUTzgLrpTuili"}], "createItems": [{"customAttributes": {"akbtbl5jstyOZaF8": {}, "umn6JUW3nVans8gA": {}, "BTGmyTpGtGiuKJmx": {}}, "inventoryConfigurationCode": "Zxmau2C7yWxTKbvo", "inventoryId": "ao5OUKMU5XcWYuCu", "qty": 38, "serverCustomAttributes": {"LVOcPCqNqwcpMC9T": {}, "3Su5VDbIxkVibXk1": {}, "V3GyyWpM2BYPj0aV": {}}, "slotId": "JCYwZGTEl28FeeZT", "slotUsed": 93, "sourceItemId": "7g553nZYWbMyJvnA", "tags": ["hIosNUATcEuCqe1B", "NFdEeLfPdx3PqGw0", "HIjCXAnTgKNEHtJ0"], "toSpecificInventory": true, "type": "oZ2iGEIrK3hgS2bW"}, {"customAttributes": {"yGoQvHVEfNs6RFo0": {}, "44pzr6DfBwri9NO5": {}, "haVaysoMGdbUOfE3": {}}, "inventoryConfigurationCode": "90MzEsl9THpYH0VS", "inventoryId": "LZH83LO9VW7XsvSS", "qty": 86, "serverCustomAttributes": {"J3uCqImdoPEql6mp": {}, "paPcyapGgUrvjygB": {}, "zvy5m3UcnfADLuVP": {}}, "slotId": "QNXNXLREevkwxjQt", "slotUsed": 94, "sourceItemId": "DArcZmrjRyHIgYev", "tags": ["JJUHZIOpA4kW2V38", "FtkbEnUuqaeAHimB", "54W5arSuyiy3X9u0"], "toSpecificInventory": false, "type": "lcSZcNcn3voB7BVu"}, {"customAttributes": {"6X1GjlvCKEZhQI1o": {}, "uvNh2gR627b35WHL": {}, "1oChd71jvCR4uBu5": {}}, "inventoryConfigurationCode": "Btw3kmfw3vzLo2DN", "inventoryId": "yGPMnYDMGFtPbLx5", "qty": 92, "serverCustomAttributes": {"JBL5utJbeuKlWrf8": {}, "yWc11vBTBHPQcDB1": {}, "QxFKFCoZzED878Jn": {}}, "slotId": "8mdwBSv5oBMfcpex", "slotUsed": 76, "sourceItemId": "TXMahbY8G9CTAoPD", "tags": ["dR0t2iOZtiUBgaLv", "Uuyrg8u3UNsbzs3N", "tsaaQWyvwZmlNlIb"], "toSpecificInventory": false, "type": "zvGFV2jiG27b5CJM"}], "removeItems": [{"inventoryId": "2gvtKJslVsMuoXdu", "slotId": "fWYGnMEhhFakQ2dD", "sourceItemId": "HuSPregWCeeRiB0B"}, {"inventoryId": "geHKdMYXPw79b1wA", "slotId": "EqrF0krVbgN78BCS", "sourceItemId": "Ms4OgUOd4AA7bRtf"}, {"inventoryId": "nrzcGUzjcDE1HAea", "slotId": "LGSGHpJ3lKsKVHxQ", "sourceItemId": "F2WR1UMexrYb4T0o"}], "targetUserId": "iZbv7WN7XMn3Ypmc", "updateItems": [{"customAttributes": {"YoM6szCOGAtcbhpE": {}, "HZDLK5WOncfRcfCJ": {}, "MxjrMr1OXpPiNfzs": {}}, "inventoryId": "JAiDQvOh6v0Nhg4z", "serverCustomAttributes": {"pSEzkoOvK9RQB6Oz": {}, "hlEX8cbDpXh40tOt": {}, "UgZ4txZQ5r8x9voK": {}}, "slotId": "2zU9KE7PBTHxWZNp", "sourceItemId": "Wdoxrfx5QySTn1vB", "tags": ["IqNjvKyvrUCat63c", "2AP3RyDExZ6OILto", "qxlqFShRpub74ybK"], "type": "aRViuODfiyD6oLDW"}, {"customAttributes": {"THK9Jg7F19c95THZ": {}, "mejE53MhdiPLLA4y": {}, "NX1akuq2KdvPCUiJ": {}}, "inventoryId": "NGSFLfZn8wBFcKSq", "serverCustomAttributes": {"lkwpkECGcuzxZrgC": {}, "mQcZRTaDofWdW9NM": {}, "fcxvz4UIHdwHyTuj": {}}, "slotId": "cues1Nax74OOAkZ0", "sourceItemId": "q7VXSgG1biJJ2wWo", "tags": ["3Zm9l5U6L9ic8LZA", "4d4thM0TrQ9TY9Ne", "Q0VBCb81y4jONU0N"], "type": "AONzHsD9C5m24sJL"}, {"customAttributes": {"EgwHgvVb7ukKLnZE": {}, "MnuqtW2hoj9J2DXn": {}, "iwn3kTIOv4q8IqL2": {}}, "inventoryId": "nTJO5Nc4TjS9Rue4", "serverCustomAttributes": {"zRa3W1sIG18jOv7U": {}, "yzT9qdlz84OzQbVv": {}, "Zit2tkA2L0TrxWso": {}}, "slotId": "RwDDvhoyj1m69Qfr", "sourceItemId": "bgrYULiKPdox2yNT", "tags": ["anAEY2ciVOmC2iBS", "tkKFsWfONjsFCXuo", "eQ5eQ2xsOLRFIYZQ"], "type": "eNY0FMVAQGvGLJ9u"}]}], "requestId": "wJ1k0azUH0cDnxyT"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ZR6FlrOtegVABVNS' \
    --limit '72' \
    --offset '97' \
    --sortBy 'updatedAt:asc' \
    --userId 'f2ueZ3yP5kJLYXYq' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "4IWbAlO6Gy0AoExc", "userId": "fwanz8q7aKcUDL0c"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'D84LePgHbQfQi2V3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'sPqDPTX9Xr2oGhuW' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 12}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'DkI1koSOzuewQ2Nw' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "llHLoUPEJyKQsI7z"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '9xa70DS9pcx2YE4H' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '93' \
    --qtyGte '58' \
    --sortBy 'qty:desc' \
    --sourceItemId '1ULVHgqZ930yGsUX' \
    --tags '3V6J3PxxhyoQZndr' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'KU5VGCkKfJxSbzDc' \
    --namespace $AB_NAMESPACE \
    --slotId 'QlNvqffihwLpqiZm' \
    --sourceItemId '5CYHrTHZvtofN98d' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'CR060lVOzhDDVzHF' \
    --limit '42' \
    --offset '48' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BwIwS3E5yekIRuSF", "description": "cUIhmrj2Sa0igaSl", "initialMaxSlots": 61, "maxInstancesPerUser": 20, "maxUpgradeSlots": 52, "name": "HCCIK3cMPHNO7jqQ"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'QfiS9sn15ZRmGQPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'zBfVRwfMVbMnCW5j' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Jg66cozF8SCR49wc", "description": "AI5ajo5bBvOrFbYF", "initialMaxSlots": 30, "maxInstancesPerUser": 70, "maxUpgradeSlots": 54, "name": "LJtQnGIMrj1YOnjz"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'V11KAOojpc8nTdxV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '38' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "yqPdcsjagdjxrXRT"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'zzLBeS79QlZxQVC7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '2' \
    --owner 'eTpqgdzy4aiWfuGi' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OsAteWHpQhF1SGDJ", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'mtgMB9myR8JmGRq0' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'JKKSK01Qvmvk83Wj' \
    --namespace $AB_NAMESPACE \
    --userId 'F18MgePPchF91cmP' \
    --body '{"qty": 72, "slotId": "X6bSd87FFJ0w73y8", "sourceItemId": "89IXKUY9G38mAkpr"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'dzFGDPwrFGfniXQd' \
    --namespace $AB_NAMESPACE \
    --userId 'zbk93awkiThPiRrS' \
    --body '[{"customAttributes": {"I1q3qseu6QornejN": {}, "Sg4QOXibDOTRVDmn": {}, "yds7qLZ2xc2e2afw": {}}, "serverCustomAttributes": {"YinQ0pLhvqIRDHAf": {}, "QIKrAkan1dZHFNB8": {}, "ghh4qsKKyXkQxVWq": {}}, "slotId": "SMjAzGbL9GicRYyf", "sourceItemId": "C87gzAESCsNKxQpZ", "tags": ["343vU8xwRzSLrXS7", "jnAwB1H42gjO8Wrj", "nfDBhXmcuGzo9qqd"], "type": "w87kwN6cXreTvN3B"}, {"customAttributes": {"yKZDtnnXRvXvN71Y": {}, "Kna8rPZVe1MUsAfh": {}, "Gxgluxn4KU16oDEX": {}}, "serverCustomAttributes": {"PePYtAwSHhdcbROk": {}, "S9Yll0PRihhojEJS": {}, "jmQ2im5tc0T45XqB": {}}, "slotId": "1ILk61E4ajKr6WOS", "sourceItemId": "jMoaatfW2I8TfVOb", "tags": ["2wzyTvTdn1rvDAEA", "Km87bxynBQduIhU0", "Eh55WzwvnhDNWFoZ"], "type": "CNTNzVPcJI3LljCI"}, {"customAttributes": {"Zj93dPRpkv0nWKcM": {}, "eeizLV4WoQ6CZV1Q": {}, "jy3FOKEt04suBRjk": {}}, "serverCustomAttributes": {"ggVgcASLEtVuv6kD": {}, "bN3Tqt6TbUW0SgzA": {}, "RFYJbPKlDECWxhsr": {}}, "slotId": "L8AoyZbnImryYeLU", "sourceItemId": "u3Y5Qonp6GG8V1zt", "tags": ["LHeIQQVW3wmYZJPo", "qk0nsPuCgP5KWQsg", "VVclAbjmoKiwGw5n"], "type": "Prvi7rDJSfmrTquw"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'hf2lG1Iy2bCxNyPB' \
    --namespace $AB_NAMESPACE \
    --userId 'o5fe7J0ro8vxAQtn' \
    --body '{"customAttributes": {"cW7PL2LnIOShY5LM": {}, "jDitMqtBCBxI2fsQ": {}, "DzF8HocRz0OezGWq": {}}, "qty": 47, "serverCustomAttributes": {"2QixhfPzkXyOj626": {}, "8g3dgsTWIsPRVldJ": {}, "IST0d3ZObUC8gfJ2": {}}, "slotId": "p6UBmSfY33dGj949", "slotUsed": 61, "sourceItemId": "297giTlaTnUJLhXC", "tags": ["8F9tM3cEtFDPekhF", "6CZ8F5OiCsmNvCiK", "yDKhlX2IMcpbroMh"], "type": "uPrFWQ02tFeKOamS"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'k6ws3DmOP5DxkYhC' \
    --namespace $AB_NAMESPACE \
    --userId 'SqTDw5hfLWFwPpJf' \
    --body '[{"slotId": "cy4CJayxXCGw5F4g", "sourceItemId": "PbjpiVIa7nsEBJfS"}, {"slotId": "0XVADJPfAN1cqoOH", "sourceItemId": "yUwmPwPGn0nVOiNb"}, {"slotId": "w2Qsw2XKhSgngMvE", "sourceItemId": "jgxRNYc01nBQm0Bj"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'khDzL6biz8ZHwwnH' \
    --body '{"customAttributes": {"4s8KrfFhaYFof2XD": {}, "Oxm94S7Ln8yobHLD": {}, "1XUcjqlGVfm6Zzm0": {}}, "inventoryConfigurationCode": "axyYMhvjCaLItnLi", "qty": 63, "serverCustomAttributes": {"0J3dcB3AzxGYv8Xb": {}, "PH76GYXuRaOkYT2j": {}, "ZwTe90okMJm1XdSV": {}}, "slotId": "ZR0Pwx6JX1RXXETl", "slotUsed": 44, "sourceItemId": "nvl8BZIEKI9cyujI", "tags": ["uB2ny0MemHvPC9SO", "WIRdm7SgInY854U7", "NTn8Pngint0zASuA"], "type": "jKd8EAviD4lLTUnM"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'q84xnuwRYWadMOKK' \
    --limit '75' \
    --offset '60' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '7' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '50' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'FLhOsrZiw1PrLzvP' \
    --limit '59' \
    --offset '68' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'SAOnEKwKELFKjVhX' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 10, "slotId": "1KIZtGmdJry6ZtDN", "sourceItemId": "KjEzCsDKkETw73Jj"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'ltNyOCGlcJFTbhGG' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '48' \
    --qtyGte '65' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'u8bhb2shS2GjPXdb' \
    --tags 'mn0A6oJhGZbU1ckW' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'O2rD2QPl7ua7k9wh' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"nWHRoTgWKF9kj8n3": {}, "sZuCmbW3VMV4iiLD": {}, "lqJGknxHeoDpEWnE": {}}, "slotId": "Pg7Yf6qfpaNlbC5a", "sourceItemId": "Fl281FsflJKAm4Gs", "tags": ["dJHnxmcmhQitVjD7", "ClSLzxffQp08IFzm", "BvTADpGYOjwDtvvA"]}, {"customAttributes": {"EQPYP6aS5TpzQJX8": {}, "RDaHFvRi6Jaf9L17": {}, "uuGoX5Itp3yAtTYf": {}}, "slotId": "lwmJlAsR7tA3bgDC", "sourceItemId": "9JfXPhnUqqeQQd8I", "tags": ["p2UI88kYqyqVSFP6", "qXght30tkSm7cWKh", "wF5s7xal1WxqVHA4"]}, {"customAttributes": {"qtbIBQhOnPKQFRlI": {}, "7iwat7RSbzcIFsiU": {}, "B8xz48sNulY8abd7": {}}, "slotId": "02gnGWF0Vo2DcJnI", "sourceItemId": "oBgIJMK07QdMWDWP", "tags": ["tDIT5gZGz1zlE9lh", "KTxJQIMIJQgGAEFE", "3AvPEMa0E7jo8rAR"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'W7BfOzWLkR3SDcdi' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "F8T8B3H78AgO50vh", "sourceItemId": "2wPhJXO84T9Jmd1X"}, {"slotId": "QAFmANuskQPW8SU8", "sourceItemId": "dtWxb1DXR3TW9z16"}, {"slotId": "tYlZmKn0yT3CQB1v", "sourceItemId": "kVisyQino7SYkdDE"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'bSRarbIZKYWiqNB6' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 68, "slotId": "kTeTk5H0eN9jYywM", "sourceItemId": "MetolTsIsdVi7PTO"}, {"qty": 70, "slotId": "NnysdeFXMO077vQV", "sourceItemId": "qBW2fAYS867IAjBq"}, {"qty": 45, "slotId": "NAWAH1ulKgElAUGx", "sourceItemId": "oOSDwtDCko8FKetQ"}], "srcInventoryId": "7eB89vmanEXzzSp7"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'fylfWReIRbvMtBVF' \
    --namespace $AB_NAMESPACE \
    --slotId 'H6ZSsS0xW72MYcbz' \
    --sourceItemId 't62siZotFuzBKCln' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE