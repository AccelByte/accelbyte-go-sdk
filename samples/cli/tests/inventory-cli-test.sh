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
    --body '{"message": "7zwxUe5h6eF9Cj18", "operations": [{"consumeItems": [{"inventoryId": "Vd0Fkv70qTcJoVDW", "qty": 11, "slotId": "taRVSMA3tziRJcBM", "sourceItemId": "8UxHJbQ962t3tjsy"}, {"inventoryId": "QHKlnydz8qCtJncW", "qty": 4, "slotId": "YkbgypQvedSPFf1I", "sourceItemId": "Gg1dkvQPj97POWoa"}, {"inventoryId": "XQwTSs3UzfdytKpo", "qty": 62, "slotId": "NJ2nO9HA3WrQnhky", "sourceItemId": "jxo5DO5GYHj5aFWv"}], "createItems": [{"customAttributes": {"EAguBktmqtbV2BOH": {}, "RWg1pYRvVjbDx4Th": {}, "wqqIUZfVIPPjGy6g": {}}, "inventoryConfigurationCode": "Ag6DEqcDVgPDmDRb", "inventoryId": "NYo8uBnFWvLtQfeE", "qty": 96, "serverCustomAttributes": {"FvMnaUWPDp8UXkLl": {}, "jLliLMq978m2ft9A": {}, "0RylVPI5hJPGjQGN": {}}, "slotId": "xTUpiOAEj6SVuab4", "slotUsed": 44, "sourceItemId": "le42gFn9A0tzeWXd", "tags": ["tofg5hGBUlPqPURO", "rUVW02vfr0midOye", "lrMAlsbl67oor2mE"], "toSpecificInventory": false, "type": "z9JdbGKV1Y5U3Hay"}, {"customAttributes": {"sjq7G4uqLap5r8AR": {}, "pfaRyDe76Zg2nEsY": {}, "kWil7r8dSIFNswKj": {}}, "inventoryConfigurationCode": "H1CYg12ji6UBFDTX", "inventoryId": "T9cynveomxg6kOU3", "qty": 19, "serverCustomAttributes": {"JoMjpUk7yxeVFJXA": {}, "WdvIKfvUwWBVZNFM": {}, "5wxrn7aJMesAmCeS": {}}, "slotId": "ppdMQRqozwFKyvIB", "slotUsed": 81, "sourceItemId": "bNjO8K499qTVZaws", "tags": ["O0hoYjZHTFFPvUFJ", "qdPKJJLAaHclG6SF", "WycnNWnPeJbJDYxa"], "toSpecificInventory": false, "type": "lBrBFprDMhep3fZ6"}, {"customAttributes": {"kWVuKuS2k2TQxl0g": {}, "jmRfQKhPOzQKUrxc": {}, "yUd80fkmU2k8S58L": {}}, "inventoryConfigurationCode": "x7DFza3Q0hX39hN7", "inventoryId": "YPrQZCEjyBlCcgHF", "qty": 96, "serverCustomAttributes": {"hWth4dr1GNzxtgtt": {}, "VLxxvM3awvJ9ymLu": {}, "attyizkOVlaDT59y": {}}, "slotId": "vomaMcGoo6k1sdiW", "slotUsed": 94, "sourceItemId": "A8xlK686UaQUSBTM", "tags": ["1Awsr4q4aJnvwBLi", "HEblHVhz28uzlTki", "W7wgCuqPX8mMOpt6"], "toSpecificInventory": true, "type": "alFQR8AQTVHu2bbe"}], "removeItems": [{"inventoryId": "OyxbpJQmFMa6IlcK", "slotId": "nNP5JcOEqxzE74JU", "sourceItemId": "pOXvrSVJfBbivl9X"}, {"inventoryId": "5wY8JFpEyXZtZAsu", "slotId": "B2tG04ClIIDPqgSG", "sourceItemId": "khB12Qv6kzCBkp8x"}, {"inventoryId": "VZoGapPKdpXdpuIP", "slotId": "nn8HHyisTbqmgRM5", "sourceItemId": "9sA5VJ8jlH4Qzr5D"}], "targetUserId": "ccwe757OhFPauIBl", "updateItems": [{"customAttributes": {"IX9q0EyGayCnd6hP": {}, "CwLtZZ284AHQj8kK": {}, "EjViXnzbxkgoxazz": {}}, "inventoryId": "D9VsAD11taIvs9RZ", "serverCustomAttributes": {"29bIH3V4LZJuSFZE": {}, "0onXEPlNnPIBKIln": {}, "wNudkU5oPnUf0dhX": {}}, "slotId": "cN6mcwVXioPzn7Kj", "sourceItemId": "kke6YIGwh0vgudTn", "tags": ["H77XjQjscppVR2Ka", "p34lvZGh5sdMWYpZ", "ew2LSek6ixDsxRUa"], "type": "wbJFd3DtFWj9HP0T"}, {"customAttributes": {"wyEjoyf9x5nLQQXg": {}, "lROq1ZMjdSWvSSGo": {}, "I8gjlamN3CPmvFem": {}}, "inventoryId": "BFP5DBMrbRV4ctZe", "serverCustomAttributes": {"wY5UX8wru2bR5e6K": {}, "LExw8VQLE3ll2ZaA": {}, "dC9uKbfgREVWRRsC": {}}, "slotId": "nRlw1sebR11Spu0g", "sourceItemId": "jeChA4oJVvqpD5N7", "tags": ["s8TV0jfIxEAk79Mw", "h35Vf4L48QrrEa5D", "m7JLW86MoKoYqnRk"], "type": "isUyjlKxJveZUFvi"}, {"customAttributes": {"vn9z8aOSlVLY30Gc": {}, "TUevjeFinn0QBWdW": {}, "VDFoU8DsF5yhHRPi": {}}, "inventoryId": "oPrpvWLMFLQfYf2G", "serverCustomAttributes": {"FjdmcMY0be6I8Ada": {}, "JXEDoUD636CyDJFL": {}, "eIiEnNERWH1TYJUf": {}}, "slotId": "uCajvd8Yf3EE4ugm", "sourceItemId": "hwdMvikzejza40oW", "tags": ["CUySjcbz3YdrHXNj", "mLT2InjX1n9A39oP", "4edDIw78N4CnyQgL"], "type": "5ylYYG2idgEu0DMA"}]}, {"consumeItems": [{"inventoryId": "YHrUgBKdr2YMk26z", "qty": 44, "slotId": "96AzQmJsR3vmEpoa", "sourceItemId": "d7GSncjsgASdR5Wm"}, {"inventoryId": "M2QyF6hsRmXmBeTb", "qty": 8, "slotId": "F7uzmb7K6AQyVLcP", "sourceItemId": "KqL0NYPpCdvdviRa"}, {"inventoryId": "tBkx8SCqCJJVS9lp", "qty": 20, "slotId": "j8dm9sv5bkuKQRTs", "sourceItemId": "gFmnsL8sfQvJaMQz"}], "createItems": [{"customAttributes": {"lhNjpFWbFMECcHZQ": {}, "nrRQlPmtpDuQ5alC": {}, "PluW152mF5P0OOlH": {}}, "inventoryConfigurationCode": "fCttp8QXdaD4iEmR", "inventoryId": "oGgJkDzQz28pasEW", "qty": 84, "serverCustomAttributes": {"cdfi7itZUdGFRecZ": {}, "nXZKF0k9TejGXFXH": {}, "jt6gjTUXQo37aBwo": {}}, "slotId": "HwoWWyxz8Vxn4vrl", "slotUsed": 97, "sourceItemId": "1Q0FhEyxcwxdO508", "tags": ["WspaAQTtPPToJ7GG", "ZWTFJ6ixPILSr6FN", "kzem9fyCmGlpZl3y"], "toSpecificInventory": false, "type": "0BLD81jp4luoSwZ7"}, {"customAttributes": {"rMxxad68WUFTLkZI": {}, "72na7cf37EBrl6hh": {}, "74N1Z9tT4dUGZy44": {}}, "inventoryConfigurationCode": "jXb1YcLSFUtrNwTR", "inventoryId": "LqyabCPocCGFxz9Q", "qty": 76, "serverCustomAttributes": {"uHJBIpsi9mnnaLsK": {}, "29oH2Uw9ChLvklZ0": {}, "Zi32QGDQTetNMIO2": {}}, "slotId": "bCSMJ0qSGa6kmhmn", "slotUsed": 68, "sourceItemId": "LfDIiIX4QHKV9afJ", "tags": ["mYyWq6Z7bfjYcDf9", "cj8XkCu8ivEbR7yP", "Iww619xAcnPx0QzK"], "toSpecificInventory": true, "type": "DOFmEeZqsVmOh8xO"}, {"customAttributes": {"SuTed7p5jnZ7ttrY": {}, "9pYsqUFxMRkm2ibE": {}, "XqzGbIrMxLry2IYC": {}}, "inventoryConfigurationCode": "ysFi7b1pcMqZsSQe", "inventoryId": "dIGqA5Bmdkgw18Vr", "qty": 73, "serverCustomAttributes": {"6FS0L2EdZpzXssTN": {}, "sbjDEAZAhx2FSLQ1": {}, "jQYWlw2uAzUuwkHp": {}}, "slotId": "yfMcdinHkKqYwR3R", "slotUsed": 45, "sourceItemId": "ILgr7w8PDcu5mwiK", "tags": ["gdmkEktXp8DZWJnq", "iK4Jdlwz3upOjOy7", "ujoREDI4JmIzSK0z"], "toSpecificInventory": false, "type": "v4m9rWTk4tlSp5WY"}], "removeItems": [{"inventoryId": "jAuqAcWebSsPZb8U", "slotId": "74f3uZviuxNzfI7G", "sourceItemId": "HnemSfXEqa26SFow"}, {"inventoryId": "JuWXOWEqa1GQ5C2a", "slotId": "gAIVNOCkmrXQcYTY", "sourceItemId": "zEhDG6kaigwg5zIT"}, {"inventoryId": "4DbmMba50m1X0pZz", "slotId": "nYJP5vtu0YN61GYO", "sourceItemId": "i1xnogQbT5ZcqpxZ"}], "targetUserId": "AY8fam6To7NcfvKB", "updateItems": [{"customAttributes": {"cGflTMwwqDiTgR60": {}, "f4SSDm5ti8LfiFkD": {}, "VEf4Ptvnv1zWk24S": {}}, "inventoryId": "auzQdpSx90abXx8x", "serverCustomAttributes": {"C0FCYrt30Q4SwLMw": {}, "hyEa4hQL7VcHh9Q1": {}, "txsJOhkYIldFS7FI": {}}, "slotId": "IczDf4QtCzn7jH2Y", "sourceItemId": "1jGbI0tCgKUjr8ok", "tags": ["cqK7rpnSxfPK4hzQ", "joWWhwWF5AzQfJNj", "6rf8ZpUsesm4xKiR"], "type": "Fv69rEc3vbMTVCOs"}, {"customAttributes": {"jaVhfvXXgqxjPDQM": {}, "C43gjRVRbdhdEAL9": {}, "vwiFvEXRJPlEiiGe": {}}, "inventoryId": "QipMHBteAghKFQwA", "serverCustomAttributes": {"CLmXfekQFVxauP0M": {}, "bOfGDqOmew1mw239": {}, "qk4WRpNSSWwjQqWS": {}}, "slotId": "EIFTnH4jLGv3N1BY", "sourceItemId": "VeH1koSSUz0RB95U", "tags": ["lsHpflIakU6HsjVj", "tYUbwADyjtPXAtmJ", "lSNEdr3Ygzp40Zpr"], "type": "FCclPpZnb13IYHG5"}, {"customAttributes": {"EEAgKGfDqWk6W5R7": {}, "Ap8x0yqfp8I216Sf": {}, "6eqzkB3pfie955Fe": {}}, "inventoryId": "878MZ1kDmpHZBKZ1", "serverCustomAttributes": {"pgxkTBdAzUfBmHqo": {}, "c49ajJFrTFmhxQ1Q": {}, "0nRk2JUpgeceWB47": {}}, "slotId": "CyWyprNPvUfhYkfa", "sourceItemId": "JboEsVNf43RFJ3TF", "tags": ["dZrIvJPXPT8OIJIc", "WuW1oryrJbURySso", "pmgsYLlAePdwReBx"], "type": "dDWSGiNndb2VHzaj"}]}, {"consumeItems": [{"inventoryId": "vLPZk8hdadz7zglb", "qty": 88, "slotId": "vffnceC4LJDVbJzk", "sourceItemId": "zuzwGlt0T5jT5bGz"}, {"inventoryId": "kGqNyaMWxmJZwlDb", "qty": 11, "slotId": "91BBSGi3QRQrwh5K", "sourceItemId": "7LnNatcuk7kfXiTk"}, {"inventoryId": "o8rNGSbeziUaUHNF", "qty": 5, "slotId": "89R4fC076ph7pgQR", "sourceItemId": "qpSZpM1xOV2SLrbL"}], "createItems": [{"customAttributes": {"6eLagIL1cv0js4oi": {}, "1N7PfoWDc35o9rkW": {}, "MNuzYwj2sSj1WvEw": {}}, "inventoryConfigurationCode": "PmGXKa5BgJ41Qg2K", "inventoryId": "qo4UWVYkFLhYI8Ht", "qty": 2, "serverCustomAttributes": {"X6QlEdNHawwtOi7t": {}, "JNlGWUl0TqBuUgxX": {}, "bwm8F1xl7E6VTe8j": {}}, "slotId": "Tv7T8uayM4mjwDro", "slotUsed": 97, "sourceItemId": "J8pVwjxnR0IqL1Nl", "tags": ["VHPKZAsBGnkfBZFx", "vSHrchQcxUENvyh5", "qIkKaQvpv61DKu9I"], "toSpecificInventory": false, "type": "8iuE9NinirFtiT8x"}, {"customAttributes": {"jndcjirmo3uS8Kip": {}, "5GHNRJK34kj6xVwu": {}, "Fd3TVl8fvrHObfU6": {}}, "inventoryConfigurationCode": "OlUvCQkul3FP1ZSY", "inventoryId": "AfaRIBK7jn5UU5kI", "qty": 28, "serverCustomAttributes": {"wTAYbTTUh6eqoOS6": {}, "SsmF9Zbj4b1xPI1m": {}, "1UVEFsHPfJoseifk": {}}, "slotId": "iwVDUe9MadK6mDT1", "slotUsed": 100, "sourceItemId": "J85qQUksQFyMj0dW", "tags": ["vB8yCbK7NTckmkBX", "4LMbDuQVBb1Mcrbv", "l2f2z3igZz7WQ99w"], "toSpecificInventory": true, "type": "RtfzwCuGD340zF9g"}, {"customAttributes": {"D2XETX3qnR9x2YRa": {}, "WuEpTY4RVvUqcp0c": {}, "Bfc7XHpJooYvkqqC": {}}, "inventoryConfigurationCode": "ZqgFDz4XLlBR4T85", "inventoryId": "eNojgLZm7qIA07vr", "qty": 70, "serverCustomAttributes": {"0ykE3M2ZBpQlM1O0": {}, "3CNC4vmeczv4mVth": {}, "kcqMMswqvGPZnYoR": {}}, "slotId": "S7CqnhP5NSXXnpxd", "slotUsed": 32, "sourceItemId": "nOupKzdDSsLOR3NO", "tags": ["8xgljCaYS3bhBTTP", "7M6ouvB8hjwwg8Ub", "fi4AZtVYyN4RIY2h"], "toSpecificInventory": false, "type": "zgEMPVZWiJqRz2Eh"}], "removeItems": [{"inventoryId": "rA4HqAoCnPgfkkpF", "slotId": "dGBoCzrS4Ry20JDD", "sourceItemId": "gSayphLGSoMa9yxs"}, {"inventoryId": "4zCpTXfvh7TewZqa", "slotId": "1SbPiIyxdX5g8YBF", "sourceItemId": "MnMfjrcCcwPQOykz"}, {"inventoryId": "4GVu3YYotUi2Wxf0", "slotId": "TNU25gwSEsytBWIA", "sourceItemId": "t7ctiVmWTUbtKy8Y"}], "targetUserId": "iWu5xPJrCewNB7Vy", "updateItems": [{"customAttributes": {"0N1749fLm1SOYyXk": {}, "tdrqdshOt7IyY7WA": {}, "PXczgIQNDKl6c1CH": {}}, "inventoryId": "LU101eJ65PxK69SU", "serverCustomAttributes": {"V3tVx5OCGjv8IohB": {}, "X5BsbGIWX6aaU4Dh": {}, "efXyha1lMkTIRJIz": {}}, "slotId": "nARTPAHWS8D0SUSs", "sourceItemId": "jiOjKY13NgOSl4Fl", "tags": ["4LzAfNpSSuYu2gy3", "VHsZMVxR9Y5g0GMB", "MjQBnEMzmiykXu7m"], "type": "9kgHSRI3KMBc5q2q"}, {"customAttributes": {"SZE5g7ovDCVpO7HB": {}, "aKe4RQ0TEQMXcwJI": {}, "7A780Zvk6MLO4OFY": {}}, "inventoryId": "BySrK16Rm0zXn3ok", "serverCustomAttributes": {"5dTWtZqVz0PGtHzk": {}, "UyR1QYWtytBim1vD": {}, "4SHDOgbIE4sjGAPi": {}}, "slotId": "htOX53CUZQi74vtU", "sourceItemId": "LTSCThcpJCOsZbXP", "tags": ["H7YJRNob4kBsHZNs", "mE0s9tGhxGHM2Sdd", "OcN44pn24qHa8iF7"], "type": "fO9RdGhjjcIz74c2"}, {"customAttributes": {"eursrmOoT0EK8ZEE": {}, "6QWASfNk7dwYWz4P": {}, "Rp5nde0vFVJATZvh": {}}, "inventoryId": "NEcZx3I239vG7yfI", "serverCustomAttributes": {"i8Lg5VEuLcgaE5f4": {}, "CEAaRaIGlhvMlYUF": {}, "TLUeFPeLgiqen7JV": {}}, "slotId": "HRytwfG6lsbGR1dk", "sourceItemId": "aKfmuyPDTj0epfuJ", "tags": ["DgUURIkxBpQTCc6d", "cuJU46SqKOT3N8YF", "UQxjn104B1q7BA94"], "type": "6vZPfnFB4BgGqq0d"}]}], "requestId": "GNAWEikyiNjzlXuR"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'pcMfvbLVQvHocl1v' \
    --limit '78' \
    --offset '16' \
    --sortBy 'updatedAt:asc' \
    --userId 'xjMiOUZB80vSryWm' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "1OkvvH5xyn7B8CRI", "userId": "FkXKs1dL8puR3fIK"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'Mzl348IPhoHripM9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'TaUPyR7E3fZRtC9d' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 67}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '5ZhalU2lCKSNuBVh' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "b5uAU9eAT3YCBfNF"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'HuDPwfChhXNsggbc' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '84' \
    --qtyGte '92' \
    --sortBy 'qty:desc' \
    --sourceItemId 'ZsZR4QM5Dy4oKLEF' \
    --tags 'TEBc3EnrnRiRkZoX' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'JPkxt7CdUystprLg' \
    --namespace $AB_NAMESPACE \
    --slotId 'lMTjbQatJz9O61Zq' \
    --sourceItemId 'tjdjvCBo5t0g1XTM' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'cx2tHD1Y2WWdrhJh' \
    --limit '40' \
    --offset '2' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Z0qdpKd0iLCw8UhV", "description": "GnGYsG0e061MxEmb", "initialMaxSlots": 75, "maxInstancesPerUser": 46, "maxUpgradeSlots": 75, "name": "4ErajofQtZVVYDxr"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'RJD82B66h5ZvQ5Ry' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '7g4oT1FKEIAPUqbT' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mahaEpZ4KRdFsEuP", "description": "RuTBxkkg9zglLlpa", "initialMaxSlots": 18, "maxInstancesPerUser": 90, "maxUpgradeSlots": 38, "name": "q4lAiamg5Q7YQRLf"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'gHOAWFmv7fLcUksY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '14' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AqdhmRaj1mdnaN0W"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'kZUvpGy9izcQF4Zq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '81' \
    --owner 'DZXYkjMIDBf3cgJK' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "wZpWNGWdaw0l1I2C", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'hvnpVmXt0cDQvTNk' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'mMOC7GxLjZDDD6Rh' \
    --namespace $AB_NAMESPACE \
    --userId 'aTwfoIlw9T2lZ5Ri' \
    --body '{"qty": 55, "slotId": "qTUkvG5Q5D7O6bPj", "sourceItemId": "GHtxuWDJ09mWJl1C"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'FQWVjNXIKg1IclDI' \
    --namespace $AB_NAMESPACE \
    --userId 'h0dSAmMSHOfHHy1I' \
    --body '[{"customAttributes": {"3S2xPMnaaXAqqOZb": {}, "QG2aJUZEinR6E6zQ": {}, "UekdwsDu2RfoQqgw": {}}, "serverCustomAttributes": {"02jg2XwUTwKmSQuW": {}, "BBFrHEZg7wHD7dLg": {}, "wgHvjOFiz0vAsGGU": {}}, "slotId": "La74WQqJ1Qlh7nAa", "sourceItemId": "10gdyD0F2CzcZ2K9", "tags": ["ViT8fJYCOZDkQ1uc", "Tox9FjckSRBBTbmt", "QTqxwSK1rxZaJOS4"], "type": "9Ecw6nCuDxoJM6AH"}, {"customAttributes": {"wmDLSPXFC69JZDOY": {}, "RcQKQ35gOcNovAqb": {}, "oDtOOnXHxsQasgrV": {}}, "serverCustomAttributes": {"rPLSwd0JDikdUfjD": {}, "uQTnEIKkkWZFgV3W": {}, "FYkf4sRfZDWQX9FZ": {}}, "slotId": "FKJi7ojZsNj3cPcW", "sourceItemId": "vtE1ejNCxwU7bxoN", "tags": ["ehflAmDbJgPLZtjz", "hQPUH2z8LNs2Emao", "wP3nrclxEJjxFjWz"], "type": "a58PHdGRBZyGT9C5"}, {"customAttributes": {"Ygllo0KDi992y57a": {}, "5H8bR67SQvVM0PYS": {}, "LKEFwo9WWdP0v67I": {}}, "serverCustomAttributes": {"3sEx6hxqLuXU1TfU": {}, "LPvBqfxo529upC5S": {}, "B0LyFmHAuAPvXy2l": {}}, "slotId": "YQHL4lC2kqD2a2xB", "sourceItemId": "SdKV1SJL8JKMzk8S", "tags": ["Bk7wgqIDQd70ctHt", "nKwFWpFwOP5u1yWz", "G88niaulOusG70pM"], "type": "E64L6Uf0ral6yuGC"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'T3q5R5D04EVWf21T' \
    --namespace $AB_NAMESPACE \
    --userId '7sWCYO2cxFegQ2t7' \
    --body '{"customAttributes": {"0eSjxk835rMxCnwy": {}, "kKKcZVdnJszDETF0": {}, "46gvczSrbWRYDNHs": {}}, "qty": 97, "serverCustomAttributes": {"GZjzoTr5kYOyrWxn": {}, "6pm1EyKX1SJ4NAni": {}, "oZ4ONh6vdHTEyi68": {}}, "slotId": "Jx9orI4ZHy4yfvVX", "slotUsed": 9, "sourceItemId": "dZnPNZopZrSSfqVv", "tags": ["VvYGU8FeyVmVF5Ge", "E39eTrFl0WTX1NBQ", "jKwaSHWc3Z2YfliT"], "type": "7KHH17ppL2bE77Ww"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'VoOrDeMdgu1Lw6V1' \
    --namespace $AB_NAMESPACE \
    --userId 'regyS8HLwPy4vhNE' \
    --body '[{"slotId": "TULSo3jjFfD1FEyg", "sourceItemId": "f2kp93AVKMU3hKKW"}, {"slotId": "zEmaURxhsy8ycmqr", "sourceItemId": "9AsjaQxV0qjqeSqD"}, {"slotId": "G5Uf8WwWrScnsYOo", "sourceItemId": "HCD0ql7xAYdtYFZS"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Mz1ZGL9JSCDD313O' \
    --body '{"customAttributes": {"Og2MzVrt4WtRNb40": {}, "fTbCXZReZaZIOUSz": {}, "CwbxVU9QYpredu39": {}}, "inventoryConfigurationCode": "KvEm1RzCFAaJ4J50", "qty": 96, "serverCustomAttributes": {"gXlA9FzDfIeOObMT": {}, "9GLjGuChBgH68hlH": {}, "Cxkjfb4MpBWAyW9y": {}}, "slotId": "mFJBKt4RsnaNadU1", "slotUsed": 75, "sourceItemId": "WgmnN0EvezCMPGO4", "tags": ["Q2iMHwiyhp5v4enV", "adW4PyDWzgqmdsmw", "zyVOXmVc6UzqJb7s"], "type": "a5aCygR0Ru7A2L6F"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'DaNbZFjPnBv7mlns' \
    --limit '12' \
    --offset '37' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '95' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '77' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'LkNyZQm1kRAP0K6s' \
    --limit '28' \
    --offset '38' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'lalKMcrNGF5yzcGi' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 94, "slotId": "pRsud4nlkU7SabuK", "sourceItemId": "QfHnxTQhsCqefkRb"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'uxXxmel6s2eeaTiq' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '3' \
    --qtyGte '95' \
    --sortBy 'qty:desc' \
    --sourceItemId 'OkBLkYqFNcuUyc6L' \
    --tags 'sHdfzVeZuznPBVec' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'jV1jgI1WxSFiZ5Nt' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"997sDbpYj27gZcCg": {}, "J4KHE2Nx1A6sbMCn": {}, "oS6F3Ssas3TCuidi": {}}, "slotId": "mP95s6zaPSCFqhu4", "sourceItemId": "3Hyk0A7WNchxbDXz", "tags": ["L5iXbt16kNb50ihB", "nRY8peXv2xNliWhx", "qg9yDaIMCs0jVKyg"]}, {"customAttributes": {"d18Qn8xiNBe5v5wy": {}, "wKcCFRPzYMFC38k9": {}, "9zTd7cCX6Axtujku": {}}, "slotId": "11HiaD62g1MXgphN", "sourceItemId": "ZboFwCXa53JONooE", "tags": ["Pamyy0BJTtkiz2vZ", "ICZNmNJvPSKmQHba", "2uqJVqja96sBoVIC"]}, {"customAttributes": {"2QRUg7omAFGzIIEi": {}, "f6D92ZvmphDnvWTv": {}, "9hhrs4Igr2HsC1Oj": {}}, "slotId": "Vk7GcKimNXb4Moum", "sourceItemId": "bXyCfcnf5KgdorFG", "tags": ["kvP6rWlUOocv28cm", "5j4O4Nj5k7CgAMff", "Z8bWy38HWL4HANtz"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'karm9SyzKQNJipS1' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "vLegFxDQeV5SrZcn", "sourceItemId": "fzugLMEfqJxP1Peh"}, {"slotId": "SJjcMUD6LZo93zsC", "sourceItemId": "8xULqI6fTSDaeOrC"}, {"slotId": "KClPM73DOWjJa0Ey", "sourceItemId": "fo4f55U1j5O6VVsE"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'G6oMYIijRef7Mani' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 86, "slotId": "kCBVaIwrZvBbhgmC", "sourceItemId": "VN9tXpv8cJLQpaMA"}, {"qty": 84, "slotId": "y7tjYJRUc6QsHTT6", "sourceItemId": "pIJv9GG7YpQnZGJK"}, {"qty": 33, "slotId": "VaZTCjbbmrAgqQnH", "sourceItemId": "zgHHnzWNx4u2s9y8"}], "srcInventoryId": "2sdUit1WBKJWYZ3z"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'oSmgeGugxhxtN6om' \
    --namespace $AB_NAMESPACE \
    --slotId '0trmeQh8u3kQLKrc' \
    --sourceItemId 'HUwHI1Gwt6OC1jkK' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE