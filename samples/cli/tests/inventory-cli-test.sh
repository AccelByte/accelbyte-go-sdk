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
    --body '{"message": "j5efDaZiNjYTrbl2", "operations": [{"consumeItems": [{"inventoryId": "PwxE8jITBhrWJ6aB", "qty": 100, "slotId": "Rx9IMRaTq8QNDx5u", "sourceItemId": "zO5Xggsz4V6FuQ39"}, {"inventoryId": "VCrFXXROUxajghwi", "qty": 0, "slotId": "zW2avgyuVJFiTXfH", "sourceItemId": "9OtMBBEnmI7XnQJt"}, {"inventoryId": "21YLu5Oe37BKixht", "qty": 52, "slotId": "o44GhfDLXvuOsjlj", "sourceItemId": "GM1RAmSX9PmrwzWf"}], "createItems": [{"customAttributes": {"te6xKLfHrHKMMMdB": {}, "vPBMinK4urWf5sFo": {}, "tjVWRuVkohIuyYuM": {}}, "inventoryConfigurationCode": "61aujePWz2VkiWSF", "inventoryId": "7esncRiSllalLnfK", "qty": 64, "serverCustomAttributes": {"mzLlSzo9vAUA9vYi": {}, "0tWfJvOTomkZYDI0": {}, "VC5rpvIbUs1dcoab": {}}, "slotId": "OOgyH4Umil1i0L2X", "slotUsed": 71, "sourceItemId": "3gFtE72mGbzcuizv", "tags": ["3L5kuvrwf2wnGJtC", "J7ZdVzfGkpB5eYZv", "cUNd6dJMpQi8pOlq"], "toSpecificInventory": false, "type": "VjXXWGTxVTP91WdX"}, {"customAttributes": {"VBJ5KIcPstERRaM2": {}, "onPnwgXrDGTPlwf7": {}, "nFXCha6iEhZL43tk": {}}, "inventoryConfigurationCode": "PfQaxxtloJietzq7", "inventoryId": "mWqAwkv9WPNv9FdU", "qty": 2, "serverCustomAttributes": {"Zbl5vG5ect01HyvJ": {}, "1dasjYOHCIgw1IyR": {}, "xyNeLZ4M2lE5zvtC": {}}, "slotId": "WzL5dYN3IbUbRPKi", "slotUsed": 26, "sourceItemId": "UWd0ghvGpfUzXng4", "tags": ["AElmmw7lhychFKBT", "PaI3eoBougXwZYsE", "luOJpDaBLeWaeUj4"], "toSpecificInventory": true, "type": "vRqvynGfjtZREC1c"}, {"customAttributes": {"umoxQJx3Y7uFzYCW": {}, "3TWeZcqo2mzObplg": {}, "8ZiMwwMKs3pKPfLK": {}}, "inventoryConfigurationCode": "OgL1ws0OYOCfZwwm", "inventoryId": "X0OFcBOecBC489mO", "qty": 67, "serverCustomAttributes": {"Eb0tTSkZZar7t8PZ": {}, "p141W6mrJ2eZaupr": {}, "ajJA666ntZP0WcZU": {}}, "slotId": "UMTS4DAlMI9dAC2Q", "slotUsed": 65, "sourceItemId": "bSUKI9PROQPUonJf", "tags": ["EizkO9709bDby9pv", "2eu7Xx5N1iSAqVKC", "6bRuCrmOODiPHD6v"], "toSpecificInventory": true, "type": "BQef6MPalbWwO6Op"}], "removeItems": [{"inventoryId": "MDUkqVc31lFbDdSt", "slotId": "gaeuf9Ox86vzzyuc", "sourceItemId": "5JYBgBotuRf9TtqU"}, {"inventoryId": "Vz9pNgwuPPkZzG61", "slotId": "hCYoXuZeH5RAHpUv", "sourceItemId": "z3miXpx0BNwWJcll"}, {"inventoryId": "LmMJVTxT7JzcDjPI", "slotId": "7GYSD3BAWdMLHDsC", "sourceItemId": "i4OPkyf8v3o3LLVQ"}], "targetUserId": "Qtm8FjaNFbBCjiHV", "updateItems": [{"customAttributes": {"6NFn7rWaBEu3ZXcW": {}, "p59UJh3V0Cdbr30S": {}, "uQkFDhUggdCldwZ5": {}}, "inventoryId": "90jxzCQe8zzDWny6", "serverCustomAttributes": {"dGH6RjpvDQDvE7Fs": {}, "T3mSzcIk6ftFZGfH": {}, "WLWQlq5jKw6CeewH": {}}, "slotId": "nXeAbbxWwN9fvmMV", "sourceItemId": "QygPsMbqwOfilsnA", "tags": ["GldwvvJ6etMnUZWm", "JqxQ8i3f2Aq4I0yd", "qIUUY3gRQTea82l4"], "type": "qpz7bw5JeVwDsdBw"}, {"customAttributes": {"ORFlcRKa8HnOlKnn": {}, "EKlGm5ReZrioCvZq": {}, "Keuk0NvPFZYSmXVg": {}}, "inventoryId": "LHvoWr1ie9HLkKBm", "serverCustomAttributes": {"TeqlGUOncuLYhSGy": {}, "9Y11oUPcXwQVbXTs": {}, "pQAdvwFIObYsiEYD": {}}, "slotId": "RmflqxANXWtbLlIl", "sourceItemId": "6JTK56N20loa3WeJ", "tags": ["1tBa8ManfbmCf2W1", "1qfBcKiVeQSjIdOs", "ymEPYUnmm01dLsSz"], "type": "cKtDDCfJ1wyq8Zm7"}, {"customAttributes": {"WKSs49ELWgyKJ7J2": {}, "XIfyZ94fDJvqTabX": {}, "DEbY4CcjXiJXIInr": {}}, "inventoryId": "4mGsSa6xqCKafwxY", "serverCustomAttributes": {"1c5N0CUQZ1EiZiKn": {}, "g4x7RLl09W2GZXOT": {}, "3SOrkaRqj0Ct91OX": {}}, "slotId": "r4CHIOSHIGXFzMwI", "sourceItemId": "PDdCjI7MIrDeGujS", "tags": ["BmGVC7MOsdpP8Eem", "mOlQvm0JttwEZMLW", "YPGw4zdivVsIcAfx"], "type": "A9imoZELraciE4TO"}]}, {"consumeItems": [{"inventoryId": "pzMAgPCzIlPZwpuR", "qty": 15, "slotId": "NBNNwHdQkjGbsgmD", "sourceItemId": "WWKj3pbeNl0vS2RA"}, {"inventoryId": "DMY5VFNJv0O2DWD4", "qty": 25, "slotId": "xoqeMSx73M2a42o2", "sourceItemId": "MbgEPD2qHAOrwZUE"}, {"inventoryId": "EWOmawPqOJdwmWMS", "qty": 35, "slotId": "mzGLM94pJsNmE8Bi", "sourceItemId": "b6glCPs6rPGpNGSR"}], "createItems": [{"customAttributes": {"cyNIggZfjtyStI70": {}, "Y93fZaZ4DiOqu6o7": {}, "5ZGqq3C8BYWHDsFW": {}}, "inventoryConfigurationCode": "pByf1SIRFDUkURk5", "inventoryId": "Wk9ASW7U1tmQStG2", "qty": 76, "serverCustomAttributes": {"d2Em9XYMog5H3T85": {}, "qU8Iy17xEdkjEuId": {}, "5aYbqx2HcMBvoeeP": {}}, "slotId": "jPsviwAIsgdgMxza", "slotUsed": 2, "sourceItemId": "67qpq9hym9VT9k9U", "tags": ["Pc3jjXRh317kJw2I", "k448pv7YEURXfM65", "AEOzxZaXfRHhZtMr"], "toSpecificInventory": true, "type": "Jzp0mWIf27ccfcvd"}, {"customAttributes": {"vASRyNWAh4Kht6j4": {}, "NzKdd2mi51q0F2or": {}, "MZ8Npy2iwoQ9E6DE": {}}, "inventoryConfigurationCode": "PSm52pHvxtUmvLVk", "inventoryId": "0gq6tafBZrcNOxYc", "qty": 96, "serverCustomAttributes": {"D2tMaEvhmg2R7Yfe": {}, "H33DtXA3spf4RYWy": {}, "79x0vHjoduM9sfnl": {}}, "slotId": "Tuibq7ypFuhGnRH9", "slotUsed": 62, "sourceItemId": "nyXbRYDuh1tpbqtH", "tags": ["OA2TP7tFaRZzAMT8", "ZerDpANLJjZcxWos", "UwtcKG0yZmlOStYO"], "toSpecificInventory": true, "type": "mQJYYXibW7bKApGu"}, {"customAttributes": {"aChm4Z101zEmyib0": {}, "war8WchKSeHV1d6M": {}, "1VZAXVBmZAnb9hT3": {}}, "inventoryConfigurationCode": "sioOWoYqgQGENbt3", "inventoryId": "FIGYHpxCgzAwMquA", "qty": 91, "serverCustomAttributes": {"q5rVUwwrr4Ernz9m": {}, "WodmuOP0ofkGbtR6": {}, "qPsgy3HKt7WAOmJn": {}}, "slotId": "7U3hCkNBYEgolQKx", "slotUsed": 73, "sourceItemId": "ZlMnpDVBdMfI4wzF", "tags": ["XOBChTNP1TXQzNkG", "HFAXAmvTmLOU5AdK", "GIruK6xDTXe5yUZr"], "toSpecificInventory": true, "type": "wqezGIZxKxQKILEZ"}], "removeItems": [{"inventoryId": "KmT96IpuBRmOaw8i", "slotId": "SQBLKzk5CvP8zCwS", "sourceItemId": "nlRgXMdQlCkZPQ8F"}, {"inventoryId": "7fUAoIJalG8abzKo", "slotId": "20rEZOx80Zd0UgCw", "sourceItemId": "j0rBCVe1vJAKkxpQ"}, {"inventoryId": "qRvTiCvxaRD8dt44", "slotId": "QaaYsd3ElbA2WXF3", "sourceItemId": "v6jTyuGOR3smOzog"}], "targetUserId": "xgKWmwsbwHB6bewp", "updateItems": [{"customAttributes": {"2e23kdUznfI90NWO": {}, "OSr6GM3z2Qu4OzDR": {}, "excl4doph1Ekxnd3": {}}, "inventoryId": "nNpVZqPVhQwOtaxb", "serverCustomAttributes": {"tPjuBaLflcXcpz1o": {}, "R0LzGwuxUIwe36Ji": {}, "qtQwVg3oKSHSJzT2": {}}, "slotId": "znPT9s0BReEf6g1S", "sourceItemId": "jclyJXg2E3E5e21g", "tags": ["G1bmVAMOy8dotxcQ", "SnGNjqhiLaI7wnad", "i7vzkW1haaCjMasp"], "type": "lIFrJjAGBMEuFXhc"}, {"customAttributes": {"9QOuMxNk6QIeytBB": {}, "iH5wRdIieKTKJILS": {}, "Kzd5a3qQoJKfy2WW": {}}, "inventoryId": "XWiGJQPYyu1ZSLix", "serverCustomAttributes": {"lVXMw0JbVdv0cacd": {}, "TiYUf9u1XYPoboOY": {}, "nu07Gbav30qGPAzK": {}}, "slotId": "OxWr0i7wkU8BQW6f", "sourceItemId": "JjMi7UGzyeBhUoC0", "tags": ["ZcLFtkvFiYqq9n8X", "eUWP5dKKNex3JY7D", "qsJSuedToPfqO46V"], "type": "hoRaEhdRgnY0nnuU"}, {"customAttributes": {"qHE8kWJVloXyji7z": {}, "gE4UWprIxQNzQSiw": {}, "xgdvyN56U2eyecDa": {}}, "inventoryId": "hzZnxFEwEZWEjF6G", "serverCustomAttributes": {"wRbARm3zfnmILHZs": {}, "8rPA6zHq7cfM7C1d": {}, "9CGgPwkWyNPEVq64": {}}, "slotId": "VFjQ6isnY6Xs52LZ", "sourceItemId": "oGfLO9Uj8szcWnoN", "tags": ["VYIRRz5wHN8gq8Y5", "YFhetV0kUVwmVk60", "IcrR3vVgmgLFzHPU"], "type": "vqGiuwtD3K4yXTqA"}]}, {"consumeItems": [{"inventoryId": "LqndQgMM0gNw8bRJ", "qty": 49, "slotId": "syYOpHr3nsPUJXMy", "sourceItemId": "WMtlLGlr2U3rCAOw"}, {"inventoryId": "Y7sQYyNoW4bKrxWj", "qty": 79, "slotId": "jCfYhSsSwwzryO6y", "sourceItemId": "a7mrUzQBCRKqRKpr"}, {"inventoryId": "iG8ZCBKdig0CU1ti", "qty": 94, "slotId": "VqiPKQ0MCwytj5yB", "sourceItemId": "Fx3SU2ieBFKXreIr"}], "createItems": [{"customAttributes": {"KHCgkjTT44wFMdVO": {}, "wRYQphRpROKsAXhc": {}, "Bf9ml6zv7aOAGeHJ": {}}, "inventoryConfigurationCode": "dbVvoLDheEn0WbOi", "inventoryId": "03EMJWqGR11KRYWG", "qty": 28, "serverCustomAttributes": {"ch0rR8zCrK9wNzNC": {}, "Mmn7duQRTBT4WfEt": {}, "pZ9j0ehjW85Z3LDE": {}}, "slotId": "DGvoqFQzMAtYb7dY", "slotUsed": 5, "sourceItemId": "TKDhclFbLQUNtlQ8", "tags": ["9bvAqe48UltC0pzs", "WbcSgaLY8qDxwZrS", "GAoj00nDMDlDCFdt"], "toSpecificInventory": true, "type": "zFE13xMqNZ3zb2Pp"}, {"customAttributes": {"JZsPitbaEodQP0sw": {}, "8UIqW3KBW3ueCiuf": {}, "GyHcezKDuHfcBAFW": {}}, "inventoryConfigurationCode": "5qRAe7TFAdyl8gHa", "inventoryId": "GgsqMGMlqncAO7QR", "qty": 88, "serverCustomAttributes": {"2SKbSS4h8XtCALdb": {}, "Mv13os2ymo2Ub33C": {}, "WwdiziRTJO0izDn4": {}}, "slotId": "rfGJcRT4OB7yptDn", "slotUsed": 22, "sourceItemId": "xe03P3cdPPTqoDzt", "tags": ["4Dth08RqcT1N71mO", "Snod9JBKAExaHDR0", "kOxGn4wdGFrVlzpH"], "toSpecificInventory": false, "type": "8aGmye0IfWnTMdJv"}, {"customAttributes": {"MIdWorC8R0uaWtd4": {}, "E4DjwAK1jAkw5ZEF": {}, "mVh2qYxi5PTVwVnE": {}}, "inventoryConfigurationCode": "PfsYt7222SqxheYi", "inventoryId": "Liilzwk5lBjKGiYa", "qty": 62, "serverCustomAttributes": {"p0vNtjsbKI19vIWt": {}, "6g53lJGdPTQZfxGU": {}, "uZVqVXWf8iYVKvMO": {}}, "slotId": "SxfW4o5QrvPww7wo", "slotUsed": 54, "sourceItemId": "mNllE7JmTOULeuHT", "tags": ["9S2WlyZfPaZwOt4m", "Y7YE8i1lhXxkg8Wn", "Dr66hVDqVe89Dvpf"], "toSpecificInventory": false, "type": "hytpN5sMv9YnMfiK"}], "removeItems": [{"inventoryId": "37t7kYkBCEaz8tkY", "slotId": "6NZjNSmXM4LsZn6V", "sourceItemId": "lgc4thdxoBSZBbyb"}, {"inventoryId": "nUqXNgKMliTyZx1P", "slotId": "6DjaJnhXG33la9wm", "sourceItemId": "0D3x2gzrx1YF5aL5"}, {"inventoryId": "fLtfa8Hinr8cTYPs", "slotId": "raVE38XRYNNSLBk8", "sourceItemId": "J5l1eI6pmavlGNsW"}], "targetUserId": "wI3bSPqNY6bxpMXc", "updateItems": [{"customAttributes": {"BUuVCDyIrK2oqmFK": {}, "BvioXsu2zjNNF9uy": {}, "zZXHbjLDGiwBSXCk": {}}, "inventoryId": "PXeWhcvL9N8wfQkh", "serverCustomAttributes": {"TbIgSYpldl0kBWPO": {}, "U0qfYSfHyOrhbLQS": {}, "l4F3HiWU417aX6vM": {}}, "slotId": "vekdqgwh3WEB17W0", "sourceItemId": "AQlLkpY0LNHjhWkF", "tags": ["7KFBsAb5vdDvDTgs", "ycgXj4e7YnKgvnvi", "vfJHjnd3omh4Q6rs"], "type": "9uOjNtqDPzeMtKiJ"}, {"customAttributes": {"ffI1DCIlECqwoNth": {}, "JO1hNizrCdxA6int": {}, "FC6sW4UR38y9khx7": {}}, "inventoryId": "HxNZEBL3kvDXgBmH", "serverCustomAttributes": {"Ou9CwtSjrSUzOsgK": {}, "O6VSor250UClhLDf": {}, "QhfgyB3o8SBHaVQ6": {}}, "slotId": "WwTvxY2iGVnfYR7Q", "sourceItemId": "BEmrOvsUKuuGwE2v", "tags": ["FU97ZasqrQJkYadM", "itJ8DFLnFL0hwnMM", "joFIFqiNL56myZ63"], "type": "32IFF3Jh1WMMeKMb"}, {"customAttributes": {"3YWVVJ2Dmyt2OQaR": {}, "iuetheVOfFkhokVk": {}, "1gD1pdlDkcAjWbwA": {}}, "inventoryId": "E9KG2hM34BcejLNp", "serverCustomAttributes": {"C3lOVezW26tEiZry": {}, "VHObTCYNT64hcBBE": {}, "VSmdoWsToK99Xfbr": {}}, "slotId": "XL0X2lAsEVOey19N", "sourceItemId": "RgsvWOWzsYmC6CX1", "tags": ["JO42QC0cxu8ueBjO", "0nsujvtlkFLzp7G1", "imBwFCaJ1ZsZOYjQ"], "type": "I6bK78Uflh11GHN0"}]}], "requestId": "ezRiE9MEsSRT741k"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'PPd0aXGqhe4NoMVv' \
    --limit '30' \
    --offset '24' \
    --sortBy 'updatedAt:desc' \
    --userId 'RYrdO8GI5L4SUpJE' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "HPqZatvW8Zm6kCKB", "userId": "WEEe7eDdRJb5dNvR"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'LnCKZlJQ4PNobFv8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'jWft2PuqGrI2EpGO' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 43}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'pS1MhYvBMlaeoH3I' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Ppduur5JWUi9wlPE"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'k3ZU3LjHl8ejfd8R' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '8' \
    --qtyGte '59' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '7dqeJkhDGdN5muz9' \
    --tags '8EWfcVpa8TBgPnTt' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'GNXZe8BohO9QS6N3' \
    --namespace $AB_NAMESPACE \
    --slotId 'cBKJ5pNMRB4ROWBh' \
    --sourceItemId 'bBuevllZ1bkz5HQ9' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'IJdOu0Pkoo3MhHBL' \
    --limit '0' \
    --offset '56' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xNJl6V6SREdqIICI", "description": "ponbMtww8G8XoIux", "initialMaxSlots": 5, "maxInstancesPerUser": 68, "maxUpgradeSlots": 91, "name": "pkajOEu0MGVmfDlv"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'gp6bvUbPg88dfV5W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'TJBrJgRsZ05cgSV6' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XShAQ1oSVtBL8iqh", "description": "8guxsQ3Ylloe1aHh", "initialMaxSlots": 60, "maxInstancesPerUser": 3, "maxUpgradeSlots": 99, "name": "YYIkQfn4vdwSBzcf"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'bApRBJ7JztvE4K4G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '0' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "BZ1EthgAslM2QB1n"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'x4UHlivIO2AeSfom' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '55' \
    --owner 'Qgvh3SyVdXhHkL6s' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Lrm0ZESovPVdhVz3", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'FOTLmElwQGibck3V' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'SyDlQUBzerdVknNT' \
    --namespace $AB_NAMESPACE \
    --userId 'rrI0bTiNFfydy7Kw' \
    --body '{"qty": 84, "slotId": "Upsd0xEGd2BErPM3", "sourceItemId": "ZR9wftcteOa6q7qX"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'ySoUrvFt6wnnhYKq' \
    --namespace $AB_NAMESPACE \
    --userId 'dLDaEa131a4oRmFl' \
    --body '[{"customAttributes": {"bMSAkb5jcXpQQrAy": {}, "aFUJa4wX5Lwlz6VS": {}, "vBRtPgbk3E5FgJYH": {}}, "serverCustomAttributes": {"DeOYUAOWRvJAjbxi": {}, "CwLlKsDcXMuD6mDV": {}, "yulzyJskEDcB06kz": {}}, "slotId": "QV5Q8OhtlEW2AFos", "sourceItemId": "UECd1r9wmtNEDzFT", "tags": ["HNPHeYEWPyEeFckK", "NE4ChWuksPpN6dYq", "7PgrMVVXaWhuYPFP"], "type": "XAfzSc1MwAoi8ToX"}, {"customAttributes": {"Cuv4wCqpUX6fOu5G": {}, "bqlJ7AYfzpVRT91s": {}, "VQ7zmy0YinhlnH96": {}}, "serverCustomAttributes": {"T2Yo4EqU9rgAvoNI": {}, "n1DsbXx23dx6iIKz": {}, "liMtVDagzCwBIF0y": {}}, "slotId": "LWwYqGQsc6QiGufV", "sourceItemId": "kJ5YSqCyI8he4xuZ", "tags": ["XikLDQUCdtEDNwuI", "5qroHXSLqFdlYtpr", "33j0TnnnRjoLBYxQ"], "type": "9TWtkyLskXzaPZ2q"}, {"customAttributes": {"Lc1q3UCmNrFd8bOQ": {}, "fjt6wNrOocLPw8RH": {}, "PnJ2qx7zVQKBjnU7": {}}, "serverCustomAttributes": {"rvv2aAkUF3M3Yy6z": {}, "97q3kTxPC2UZYDNh": {}, "BoBn5x2U8OQFi0p1": {}}, "slotId": "5rumloxjpi4AkTsr", "sourceItemId": "LNk5YQGxFuZGzrsn", "tags": ["PReXGM7r3Km8yOwL", "MYf2nCqpWVuXzupV", "VuCPD2DAN1plUW8R"], "type": "DYUdR7LyKSlJesUN"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'KRv33K0UyJED0rVG' \
    --namespace $AB_NAMESPACE \
    --userId 'VrMfOlKOp2twUB9x' \
    --body '{"customAttributes": {"Tc1uuimrremjr0U0": {}, "Go5e3T9xuZqciIME": {}, "5sYJ1UegXuEIgBAO": {}}, "qty": 15, "serverCustomAttributes": {"s371dhYFGcxwu7S0": {}, "VuPykxW4RzRRyVkd": {}, "d13HtnxWmDmoWAh0": {}}, "slotId": "c7ha1LSCR8lDgUZI", "slotUsed": 90, "sourceItemId": "QGN5JsxA7zV1HHXV", "tags": ["pczzhF3nqMam6kJs", "NvTUH3jkkIj80WmL", "3LX8FwsgZnMXo8Ag"], "type": "2wAitNGPtdWdS1Ua"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'FjGgHJuWwGq2NGAS' \
    --namespace $AB_NAMESPACE \
    --userId 'mlIjJRqbwx6T4LSa' \
    --body '[{"slotId": "OyVhGDKcdMQNciKf", "sourceItemId": "KRXD0U7uBInsQUN0"}, {"slotId": "ySpzKkp498FIaeU4", "sourceItemId": "fEnHVkyMgviECWhU"}, {"slotId": "mkz1KngdEfJMjDa1", "sourceItemId": "VwJZatOIbztJUulZ"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'jNheU0UXw0WhyfQj' \
    --body '{"customAttributes": {"VEjqPwsSMf7ibNHa": {}, "vHjyzhDGg1nLiX8c": {}, "CqxM3znISDz0FEXw": {}}, "inventoryConfigurationCode": "ss9BWqUjW2JCPozS", "qty": 44, "serverCustomAttributes": {"hcUh8SPG2J6AaaHZ": {}, "3pwxYAOXDJRFgOoy": {}, "uqZy32RLkNtnQASQ": {}}, "slotId": "K3448LIm8VF6cTSw", "slotUsed": 0, "sourceItemId": "y5vkDUmsSJVg3s7x", "tags": ["RSQvfzeV5IJ7QjbB", "owsUPUzPyAaPQdUH", "SxsgRzpOTqQJs9QB"], "type": "uuCj0VLuNChUEMmj"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'HqfcTYW63dOHzlsN' \
    --limit '96' \
    --offset '5' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '35' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '0' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Lnzy5C3ebZH7QyGo' \
    --limit '84' \
    --offset '35' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'flg7B4OL2UGHaBJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 65, "slotId": "kB7gCguv2nTdiJLc", "sourceItemId": "CnYciBrQI44LwBfR"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'n1OgJsxLnkvwgGSq' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '34' \
    --qtyGte '61' \
    --sortBy 'qty:desc' \
    --sourceItemId 'kKHqJwc0bPcja22j' \
    --tags 'Dndehg0Gu5UYgeN6' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'uJGUnUb3KwonrSG2' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"Z06RZ5xOA53qfTBp": {}, "ahdCSlaXLjIT8UJt": {}, "ZpGwUbwzbSeHbrbO": {}}, "slotId": "3UWjeASHvx8GKDVq", "sourceItemId": "hM30CK1Y1UuRodsT", "tags": ["9Ro0cMD5BiDh4clV", "GuIXMLGkHvGe7DIc", "VYInqE6sMIc0Uiqs"]}, {"customAttributes": {"li8ouAS11a4Dlogx": {}, "e2B64SkIPWJ93l04": {}, "IGoPQOnie3bqHWes": {}}, "slotId": "jLnimJ3QEYeGm6vz", "sourceItemId": "NdqfnJpfzYgy0JhV", "tags": ["3k6pnHf18XbqHybQ", "q0B7EwcDJL5DKmcx", "GqFv92S4wFYrs76m"]}, {"customAttributes": {"i10GWPJpf05INmfA": {}, "pLo5rC7XuY4YMXoW": {}, "zzTX79X3DgbAXxSm": {}}, "slotId": "ECeA8vrlvHwTlxqZ", "sourceItemId": "jjdgu71rhyCUlUS9", "tags": ["boGFVOCBXwKGl2Bu", "DWjf0ZcIMgCeAzLZ", "KpEJa0rUWcmGwIjL"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'IABz3Gk2oIiK1URU' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "51DGdbG31wSR0leZ", "sourceItemId": "zlLPl1Mj8cvgdfEG"}, {"slotId": "WND1ifGhEuOTMjal", "sourceItemId": "LBmnmoyYSW3sRpfA"}, {"slotId": "Mj0QpJNBnNr0RVAF", "sourceItemId": "s0n1UHKwxHqHthNe"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'cmzzqVrovSPUe1AZ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 88, "slotId": "usYd0VT802VKEzHx", "sourceItemId": "xTNxC4OojwGHlsqv"}, {"qty": 74, "slotId": "fKH66x3RaQiwlwur", "sourceItemId": "jlczMmBcD9V5FLn8"}, {"qty": 49, "slotId": "QnJWjdMHe1e5M9ff", "sourceItemId": "ME2Ra5sXiqKW42NK"}], "srcInventoryId": "N8EyHf1cXhQWJTNT"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'gQh87153jYZ47wmb' \
    --namespace $AB_NAMESPACE \
    --slotId 'G0gLeXQfQkxL0KWd' \
    --sourceItemId 'tTjQFWOPFDnlds7W' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE