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
    --body '{"message": "D9zDmpjiWMQZ9HW3", "operations": [{"consumeItems": [{"inventoryId": "wf3zdnS1mRDsWhj0", "qty": 0, "slotId": "t7fvKBTFuZrBcl0N", "sourceItemId": "yjGCQcBXdz2iEn5h"}, {"inventoryId": "QboatDvMEhk6DJTl", "qty": 37, "slotId": "ga1VzR4PvCBLuPJG", "sourceItemId": "AJ8n0ybnA9z4nte1"}, {"inventoryId": "phgbILJheLoGJz1T", "qty": 69, "slotId": "VKqniYhI65AwebFq", "sourceItemId": "h9SDCJyW9Wj9Z0ts"}], "createItems": [{"customAttributes": {"Nf86RvAWzHOqm8xe": {}, "96lViFuZqnAzk8B3": {}, "kIdVtGRW1asSomFB": {}}, "inventoryConfigurationCode": "CiI2Ra2sbXLfCrLx", "inventoryId": "8yHFXbS6Woj5CsAE", "qty": 99, "serverCustomAttributes": {"UyPONqH4SMEBFlKH": {}, "1Xe5bs0DFGrq3y06": {}, "pruXjrtYP3HDN3Ff": {}}, "slotId": "cS2ggwdVC9E6u3qG", "slotUsed": 7, "sourceItemId": "L6fWq8mbjCyWHrIk", "tags": ["yufRFFHAEzFK4IqT", "W8N1nvNoqJZfB2f9", "F4izNTYmGeQHccsp"], "toSpecificInventory": false, "type": "EDZLayBLktwugDaL"}, {"customAttributes": {"LHGooftA86lcEJaJ": {}, "ITe47HLhbdqTYLfs": {}, "8TvjVdlZLjTuMabZ": {}}, "inventoryConfigurationCode": "ML5h1PpcZV1mGhb2", "inventoryId": "kR8fYdj8Tfui7zs2", "qty": 85, "serverCustomAttributes": {"qNtpSk390d1mOFgC": {}, "0wIKNylFVUEH0DbR": {}, "WtfB9T8ehbfHsi06": {}}, "slotId": "qDWsMcytYxnNSKxf", "slotUsed": 93, "sourceItemId": "Mg5bDUWmi9aTVII4", "tags": ["MxLyzkka7Tv1SYmu", "9LsFk1G4SlkWPRLe", "AM7EuLqnLNB5h8XS"], "toSpecificInventory": false, "type": "W007Q5wGbn2bByHB"}, {"customAttributes": {"hPJ2kcIy33jCXFOr": {}, "kcT5c4HwtCbEBbbr": {}, "tfwMXgkwW2S1h2Hq": {}}, "inventoryConfigurationCode": "miOfx8KwxyE8FjKY", "inventoryId": "BZMF1m3LmWMbq7hQ", "qty": 73, "serverCustomAttributes": {"3nVmXSHXAvxjFMm7": {}, "CctGpedLTy9YDyR2": {}, "TCv0NhSFvsmqVHh6": {}}, "slotId": "z0bW2JHzvILSHzLx", "slotUsed": 93, "sourceItemId": "rqVy8UJAZeGJqgGD", "tags": ["Y8gtHKEPDPgJxbzc", "RJRvwcE20q68NJMB", "9U9VMU2ISmyNdAXR"], "toSpecificInventory": false, "type": "QonYW3i2Abf6bDf0"}], "removeItems": [{"inventoryId": "vwSIs67MVgrwmF9o", "slotId": "B9eeEOTCRlRxYLqr", "sourceItemId": "glMYNUyZjyZ2gcdH"}, {"inventoryId": "r1lSbLTE0HAqF8Kv", "slotId": "fzinCPvoqRRueJPm", "sourceItemId": "yklUeYv6rpSeoeps"}, {"inventoryId": "ZZT054YK4dAM1TGG", "slotId": "3TbtlKTOFPRPLmbH", "sourceItemId": "t1aUQkXxijcXtzFM"}], "targetUserId": "LVjx3SfXZqEcfaQI", "updateItems": [{"customAttributes": {"w7PFZDPbgdgKPmfo": {}, "8mqDh28QoGHFXthz": {}, "aDw4haIwL8BYD2Js": {}}, "inventoryId": "T4AdYZocn1lquQfo", "serverCustomAttributes": {"E4NPatRhiJnLvNrU": {}, "7s62kUunpUVYXsFY": {}, "puguhLQGfVGxrWO8": {}}, "slotId": "Bee79RJi0K06w4RJ", "sourceItemId": "zLlvqsBRVL2QiB90", "tags": ["W0XXQrc6QMYYN2tQ", "vCPFRINKlI1dmBed", "acRf7oChqbmtyBbn"], "type": "xiKQmiKvZNKaf6BG"}, {"customAttributes": {"7eSQtJkZZElIgdrM": {}, "8NVFhvwfUX47KWfJ": {}, "3IzPjmAvqGAPzD2p": {}}, "inventoryId": "KYusiwenDHujRjHk", "serverCustomAttributes": {"2UgkCVwMGjvZct4h": {}, "42Pec62EWyZX1OUH": {}, "E12ZWb401UH9k4X9": {}}, "slotId": "Xp2DnD1mO4YWfZA8", "sourceItemId": "XJGk1decVYVveOba", "tags": ["dqJwDIwe0WlWrYIM", "tcrn39NrQIe0HRn1", "ZSpSqV0kpE8f86ub"], "type": "ofTPriI8za3LvIto"}, {"customAttributes": {"4RapBOpDKJKSSo0W": {}, "6aTlPKrji3YJVCeE": {}, "JRzeXWj9TDS44UkZ": {}}, "inventoryId": "msSKCTnoiAHV6skA", "serverCustomAttributes": {"uJKsmDA94mfNHg4J": {}, "p8blNPKSFndT1wHV": {}, "uGWVVt1CFHyz4JQW": {}}, "slotId": "RiPohYn9kQsgV33I", "sourceItemId": "gjm1dNdjcFp66MB7", "tags": ["vRbpQg56UKCrudL3", "62kAJh9lovAfRZnn", "hi2NFuXJL7bnf0Oz"], "type": "v3KbbSvUdCmotzLh"}]}, {"consumeItems": [{"inventoryId": "KeYuKhqbDPBEZKE5", "qty": 23, "slotId": "zS0ZkIPUEYLJto8g", "sourceItemId": "bpF8fbUgC8enXnuw"}, {"inventoryId": "LWxQKOP8vZztanN0", "qty": 85, "slotId": "uza1RnPz0E9KZaDr", "sourceItemId": "ZmonA8NkGTpEJxV7"}, {"inventoryId": "kwf2yxtsZea4wLJP", "qty": 84, "slotId": "rPdk7qIIfSJ8Or92", "sourceItemId": "9AQRAuZZAgtmEYDi"}], "createItems": [{"customAttributes": {"fMbRNhWAW7NXWnlf": {}, "lmvwGUc9DyaxHG1s": {}, "yFwZdBu3Uig4vZDQ": {}}, "inventoryConfigurationCode": "LDSqDmRB23jvsvoR", "inventoryId": "RkBf02IAEwMvo7e8", "qty": 81, "serverCustomAttributes": {"OdIOD2xDzQNLZwPy": {}, "LByizkGmFFaWvINY": {}, "Gp8plYKnxAH5eeBE": {}}, "slotId": "nUd6jcVC52g7wjLD", "slotUsed": 29, "sourceItemId": "BqF9JH52mSxtmd2H", "tags": ["EuHUVzz6TEKS0PZi", "HUeilV50Ghh1RE6c", "CCzsdIbZfeYPRw0B"], "toSpecificInventory": false, "type": "qawWdT9g0DtCR1CD"}, {"customAttributes": {"BBQ1pwKJcKRZ7DEg": {}, "XDguNaMHlbAlHhp5": {}, "LBL9buggo8mRXrir": {}}, "inventoryConfigurationCode": "3kZSOnQjSIWZEOYl", "inventoryId": "7qY2V5VQrl3cMVlW", "qty": 72, "serverCustomAttributes": {"fyvNMIdHVa8uWM9K": {}, "EWG4itGoc7tfkd91": {}, "gk4nnOKgIOQcyey0": {}}, "slotId": "IRcWKFTMppH1MY4v", "slotUsed": 96, "sourceItemId": "mHsHcYhJOwkPRNl2", "tags": ["kj7WUI3y5NQDqMBz", "B8cWaf43Pt9Meean", "bKSyotYt52RhBkA0"], "toSpecificInventory": true, "type": "YOq3N9QHnllb4QdE"}, {"customAttributes": {"GNW5jBQ2V8HBDv4x": {}, "vIq9fyasR9B5baWq": {}, "KHIGEc6ZMl55ZWfD": {}}, "inventoryConfigurationCode": "QZZq7oBdh37kgQ0s", "inventoryId": "JL4zRMdBk9L2owxL", "qty": 92, "serverCustomAttributes": {"pWyqRzXjPWcmO04G": {}, "t0XsDCgAleBfCFVi": {}, "kTVORRGRB9f6melP": {}}, "slotId": "eGGWfavX3AyaWoyi", "slotUsed": 85, "sourceItemId": "XW9UPpmEoV4bgQx5", "tags": ["IKBpgnNppiGZHujV", "zdVzkbcoMqgl5Rat", "GnCti5ny7zy0sHg6"], "toSpecificInventory": true, "type": "Rn8TMDnbKhWBE6Lv"}], "removeItems": [{"inventoryId": "TpDrXtHcv71UBvHI", "slotId": "gWdQ0MDkwauLXkTC", "sourceItemId": "usXuyYEHRGKzxceY"}, {"inventoryId": "1Bich7b8iZgjir3i", "slotId": "oyiItilHroTcpqs1", "sourceItemId": "g5GjUeSitreIlWIh"}, {"inventoryId": "gSjgMWgrK8Bo4tvV", "slotId": "ZZA0VjNhUgH1Ry87", "sourceItemId": "J0QS3jlXdiVjNfkh"}], "targetUserId": "vtTi2sSo1HOardoy", "updateItems": [{"customAttributes": {"tjAsxja2woVHHi2v": {}, "CPOG6W3lfer33j1P": {}, "cLbTOipFyPavZ7l9": {}}, "inventoryId": "86j5GvRz8l1NSHT5", "serverCustomAttributes": {"DPbgmKlm3i4o5nNs": {}, "5aeF6MGw92813IyD": {}, "QHPh6yEpnSuRRS9Z": {}}, "slotId": "GmfQIFmawAXOtd06", "sourceItemId": "MkVx9Krog27E9Y0b", "tags": ["9MMteBy8XStnLpC1", "jWSRxqQMUZJrXIsj", "MGSNFwmrFXJSrrNv"], "type": "yjlL2hjSqV2fgquX"}, {"customAttributes": {"82274pE6dLSRt0Uo": {}, "w5Vpcj42kpmELkrq": {}, "DTBguRqEFkUbPa0E": {}}, "inventoryId": "K9orvhe6lnMXHdsl", "serverCustomAttributes": {"csYgxTYryMXb4fYf": {}, "aRjC6TSA02TVWo8D": {}, "3Pt3Jhw0aW5NYaIC": {}}, "slotId": "YQByayKEsqXHuXrn", "sourceItemId": "egcKinKsLs4R1lb7", "tags": ["I7xpAP5ZcWSFRXa0", "0u9VO5JyAkGW1e5R", "eREIPFLEdolby8Tp"], "type": "XA58z0HWzdIlWqpd"}, {"customAttributes": {"FZOrv4nEt2LhBsOY": {}, "8sCGWih80aDNf4je": {}, "38TypkcR62yUZvW9": {}}, "inventoryId": "4kpJodRMmjLtEN9X", "serverCustomAttributes": {"rG3rW3IUjGfTs9GJ": {}, "k7fEKYvcZcGdy3yG": {}, "ECKjICkMlXWeuzHZ": {}}, "slotId": "68GdQkqMOR53Sutc", "sourceItemId": "6efqFW1Qir5T7jVu", "tags": ["FlsKsWpnJMOdqQ3L", "ntSc5Gm3L7rsHHbN", "qaCxZ0qOCrN0iEWZ"], "type": "BpveQ0KNaTn7kL4A"}]}, {"consumeItems": [{"inventoryId": "FwVlkn6dBypw3Wi2", "qty": 66, "slotId": "X6Sa833cft2YFikj", "sourceItemId": "rsWiowN6iUMyrS0W"}, {"inventoryId": "xsQeOlG5CAOSGtnK", "qty": 74, "slotId": "vD3OJ2Yxd1vpdZje", "sourceItemId": "uEHwGnmaHGQb3UqI"}, {"inventoryId": "xC8lG8DCSp0FtQxG", "qty": 98, "slotId": "43ZTOGcSRQsGd4dr", "sourceItemId": "lZ6f2auO2LoowUqs"}], "createItems": [{"customAttributes": {"8JgMIZWWXasMQoCd": {}, "3ouvwR4rvCt5h6xH": {}, "uM6lMTohLP5Htvxa": {}}, "inventoryConfigurationCode": "2o1mX2uCJjJzq86U", "inventoryId": "kauP7qL7zBG6utjW", "qty": 6, "serverCustomAttributes": {"3tYegMbY5zRS4kis": {}, "oNHE6YkZothwYw4v": {}, "0KlFWsy15OHTOlkD": {}}, "slotId": "Kqow6ToTdj8WW8cD", "slotUsed": 98, "sourceItemId": "txFuSN43qEJJR48U", "tags": ["SUONjSdAuRb2WjZ3", "NYejjxqeaXVy5zuS", "lqfFADf0ly3xUhbd"], "toSpecificInventory": false, "type": "7nQY9mTVySyHyzBi"}, {"customAttributes": {"xQ7uyiKAsOk16ll3": {}, "zVZdFupQCaoY5En9": {}, "RoRqxBK1wYjDYliB": {}}, "inventoryConfigurationCode": "zjR230zbHcddLFlw", "inventoryId": "uHqXgj5uxSfrG6cO", "qty": 87, "serverCustomAttributes": {"ny4w7ou5gOkqCc28": {}, "2fTQ8XY7dS8IUy1w": {}, "IEz43EKZk9MgOoM1": {}}, "slotId": "jfYkdm9WDCsoo9Qo", "slotUsed": 93, "sourceItemId": "yIihU3r3lBybtx01", "tags": ["Jbd8vlFU5fB4uJfx", "mfj3eWTfy0GRw5M5", "DQg39eWsOZkcq8TB"], "toSpecificInventory": false, "type": "9oX8mAGVUSzfD83P"}, {"customAttributes": {"cDM5uzeJTdjgjxh3": {}, "XzOWM0VJ5teDbfEO": {}, "zaFuRbPcnVBeHkEK": {}}, "inventoryConfigurationCode": "RcbneaUjWoJCkKRe", "inventoryId": "0hR5tDXH9t82Zra3", "qty": 62, "serverCustomAttributes": {"mgSm9FgcaIUkdqFi": {}, "lpKVw17bbRHQJbul": {}, "IUKM2Wop2YZy3FZ9": {}}, "slotId": "hiKl9fQFE98Qnzui", "slotUsed": 75, "sourceItemId": "3x54UCnY7r8tIhl7", "tags": ["4TXlOS2GUhcdARR4", "Ay0cl0JdySpZR2on", "sUeuq7SsAsMc3uqE"], "toSpecificInventory": true, "type": "NTgRtzoK3za4MJ2k"}], "removeItems": [{"inventoryId": "iGIZV828UcNpKptr", "slotId": "nJCao0BjkyeyW9EE", "sourceItemId": "nGfftLuDQT0VfndU"}, {"inventoryId": "z3Cj9ZJfZ5EUWXXj", "slotId": "YJgHoQroNKekK4K5", "sourceItemId": "0eGOiLQ1UPJoa1tA"}, {"inventoryId": "4wZIO5LDb9hrGmBk", "slotId": "NYmfBLeHRHewba7P", "sourceItemId": "zSKLgUwsJa8zwxOR"}], "targetUserId": "mGRbzJ8RTvB9QrNd", "updateItems": [{"customAttributes": {"FkYTgAhbJoOxECls": {}, "16mc2w69bhyb8JGq": {}, "oNvEmTnFclMGzyVF": {}}, "inventoryId": "yyCztBeoZKoYoVTP", "serverCustomAttributes": {"VCnL91pRBeTMTnPf": {}, "fXMyh4uS38HoRIVi": {}, "wDazeduPA51ztbk4": {}}, "slotId": "CA798V5UUcXNEEbp", "sourceItemId": "kbDxja74QsZnGrWI", "tags": ["L42MXx0YhYraRU1V", "5A3yaMC2mSQ6Ahse", "ZJ6LguX5Fks8lPkP"], "type": "LXYi17FxGa9tfFC0"}, {"customAttributes": {"C60AJKZLYEE73n8e": {}, "svLC89bpw2eNKsrT": {}, "TzuqQUK9dLJ8jB9y": {}}, "inventoryId": "1a9b5tgbY9lMrtUr", "serverCustomAttributes": {"WPxEsYLUcYagOxPP": {}, "luLkMiQiyWXoJCvj": {}, "crKsP5QwOVNKMSHO": {}}, "slotId": "2VafuZVvG3iUNFye", "sourceItemId": "M3jTxPmOiAjjLui0", "tags": ["aRoEsKKefZLdCUkE", "79eVHmSQASDdNpgr", "pGH9WgEJfgHIw1Cv"], "type": "CDev5nHngos47kiV"}, {"customAttributes": {"OUTgAQ0APkYHxW9d": {}, "YCe59BcYQm2VsW2T": {}, "ANjaGqdnvVVCxjVr": {}}, "inventoryId": "skRB4Cydw3qF1wrr", "serverCustomAttributes": {"ALg7WTxArmpcn5sa": {}, "tGohPSQyMAQAXmFZ": {}, "qi5sG7PgWUJtkDWR": {}}, "slotId": "hn81ZjlTC16QldB5", "sourceItemId": "hPaSUdEmCBzQZZmP", "tags": ["mqyExoUCc3tkRGsC", "RHUFWj7R7bxcJCdx", "EWmsdyXHkfgombRQ"], "type": "iqz0IJd5rlQe59r4"}]}], "requestId": "QzdyMtW4pC0d9aVD"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ONBXdZ7NHvRYtcpE' \
    --limit '52' \
    --offset '34' \
    --sortBy 'createdAt:desc' \
    --userId 'uD05ZqPqWvrXxque' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "yZOUzE3Q09o6KEJM", "userId": "Dnf1CJX8KJxGrZ95"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'Ra58U42iH2IPj1eZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'Qot1cAcff8J5ETgO' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 21}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NRFXmxS1FEu6NyXX' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "KKaG04qzdA3D6O2B"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'F65oPz5xQ0LKqGrW' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '51' \
    --qtyGte '66' \
    --sortBy 'qty:asc' \
    --sourceItemId 'j7IvdsjBHNrsmVny' \
    --tags 'y2fabxZPAb7vF3hU' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'wPcMOt4gjntwnMKK' \
    --namespace $AB_NAMESPACE \
    --slotId '54VayntWnNhmtSpM' \
    --sourceItemId 'vLPUDI5QYpZKuE0F' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kyO1Rq1FjJH3Duib' \
    --limit '10' \
    --offset '15' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PezzH3uWNx0VbUcd", "description": "ZDFmF9QZpesFN8g2", "initialMaxSlots": 48, "maxInstancesPerUser": 80, "maxUpgradeSlots": 28, "name": "xUan2SGEj8pVmmLU"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Vj29stKwxJNKLK5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'pFlu3WkmuiV1HxNw' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4kbtxilhOChVx9Io", "description": "SxvkXzlITqlQuXy0", "initialMaxSlots": 27, "maxInstancesPerUser": 74, "maxUpgradeSlots": 73, "name": "TcpItgEBDbynuJ9a"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'fh4pdWee7w6QY7d5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '16' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Dan1lPDP65GswZnz"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'FpbUVcQSSIAdzEIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '53' \
    --owner '5ifOAzIz456M6Q35' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cKlu3WREbp50ruIG", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'y68S89BR8zt5av8I' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'Ey5hWZxHIdZCvvfE' \
    --namespace $AB_NAMESPACE \
    --userId 'l5lej0kiWRV58w1j' \
    --body '{"qty": 63, "slotId": "MPEjkblx0B4cNDQ1", "sourceItemId": "yM6iOikE0yc2PUNM"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'AOKnIb9PnEWeVb8H' \
    --namespace $AB_NAMESPACE \
    --userId 'fUlS87QKmr6p0DJC' \
    --body '[{"customAttributes": {"pl39IIFQqBFLnjH8": {}, "bhajJ8S2D1n4QDoM": {}, "mWvYHolCBZyKsJ7L": {}}, "serverCustomAttributes": {"hzibbuAWEqRI9CLD": {}, "HZRsxKbheZrB7yBQ": {}, "XUG2tEzFdfyCYgpn": {}}, "slotId": "DV4lb2oBqckghYqb", "sourceItemId": "xUJa4vzorpZzsFXn", "tags": ["d6edQHDTJOQYzm2x", "7StPDkN9eM0bCSft", "vs9Eqw4UgiAdHxHl"], "type": "nqe0ObzkxCJSaqh4"}, {"customAttributes": {"Iu2sYxR39BU7NlYk": {}, "FBcqU3lV4axEIFGR": {}, "CksCjENpXYI3aRD7": {}}, "serverCustomAttributes": {"YqjYMXBMHjnYCAJo": {}, "YGkXG3o5jAj1ESYb": {}, "Wln7tn0whewGeIyF": {}}, "slotId": "NQXVcsPBnjQwWfyQ", "sourceItemId": "nusOybORBG8IW2cr", "tags": ["vAFZbmOW1uwrdkvp", "fDWUylwqCma5YjNL", "wFUpdrHHacKBHD0i"], "type": "t9TYdpj1sRanUkdu"}, {"customAttributes": {"w7hNQsfk46RR5EV0": {}, "7W7xsVi92r1FEWnt": {}, "FrEDTrEC2jp5div1": {}}, "serverCustomAttributes": {"wH5xd2Uw7mVRDPq6": {}, "nCSbXgxpw9DhYuSY": {}, "qYaCgTH3Mq3lJC4G": {}}, "slotId": "CV2juaW6lrXL7jCf", "sourceItemId": "gbMIitb9oqCgZ6ef", "tags": ["C9iKCwEfZExWRhNB", "2ONpHF2m4WOOLfyQ", "HrgxR5Cd2qAcH1ZU"], "type": "NBdkNBrYwjmpg7gY"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'abo1a7zFeFTT9wqs' \
    --namespace $AB_NAMESPACE \
    --userId '3Ndz8H3NVa2xXnrn' \
    --body '{"customAttributes": {"eJsREtaOqi1zsXZy": {}, "AZTL4yGksb5LRPec": {}, "fQxHNrbBkZupg2Tz": {}}, "qty": 60, "serverCustomAttributes": {"EZNP8QQ0GClidwkg": {}, "vNyeNhAOHV8hpEM1": {}, "AySZ8zUpazjcPeyp": {}}, "slotId": "5u8Fp4r58Jn1RPuH", "slotUsed": 72, "sourceItemId": "qqDwssXe9aqzy7SR", "tags": ["as9n049IH2D7GsU3", "kyMAvhPB5bzqiaAb", "8MjoetFWcTSc8W0H"], "type": "UBOjy2DUikyptF9E"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'SKSME3DcGQ8HjuOV' \
    --namespace $AB_NAMESPACE \
    --userId 'ZdHeBuEkoebouzGH' \
    --body '[{"slotId": "2cU1ZTLFVtrBBS9y", "sourceItemId": "KOOOXTZl3k8n7MRP"}, {"slotId": "4RrpQfHLhE2E9wSh", "sourceItemId": "fgGsyVdUOQKucBcf"}, {"slotId": "eCr7jyUIiu3l9oMu", "sourceItemId": "mJi4uedhz89icvfi"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'ormGpfhdtK2RmfjB' \
    --body '{"customAttributes": {"oZkAxS0G6U3yjHG0": {}, "s4q2kTis31iYH5Xp": {}, "ZK3KolVb0uA9L7gK": {}}, "inventoryConfigurationCode": "3Ki1T48rXpD1kmve", "qty": 29, "serverCustomAttributes": {"1NL9iAhSfcunM8h1": {}, "tPGIFjbqAhWAwlo0": {}, "9hP94yIiBRxZOX50": {}}, "slotId": "EfZJ4ii32yS8Bl1m", "slotUsed": 86, "sourceItemId": "vAAu13XaadlSzb1q", "tags": ["1a4Q0mymREbLc0Xz", "ILtoIlijaLeIwh9F", "TakDPOgH2kiSbMac"], "type": "tWhCQBN35CoifHae"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'W1NBXs79uaoZrpNu' \
    --limit '71' \
    --offset '42' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '46' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '88' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '3G8PRDVTFKyH4lNt' \
    --limit '53' \
    --offset '63' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'LjObuCNHTgyodSR9' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 97, "slotId": "bOlzu0M8XbsQoyLg", "sourceItemId": "TjQgTvKwBjof11sz"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'bqpSNPDc6toqN0a0' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '58' \
    --qtyGte '87' \
    --sortBy 'updatedAt' \
    --sourceItemId 'rJbCWWSUACPAOmkr' \
    --tags 'UP9AMl8Y9iUi9oy7' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'WbQhaQRgN3x2PUKX' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"3zVGdf865ZqYdXQq": {}, "PfDR1Z5P8QQ45Cjq": {}, "5hMbW5at97N7Q1Au": {}}, "slotId": "UedVMSwVlIK45eda", "sourceItemId": "WdV2Q0MbcJiGMjSo", "tags": ["qYITz9puQhjcFFUc", "ARe4R2CyVdptK3dm", "lTJs8BFqkAoiYUnw"]}, {"customAttributes": {"cbJ4sRvIhkJ4CvOL": {}, "7LOqKJ6IoEVuhNwV": {}, "3eLu6DygbkN0b5UH": {}}, "slotId": "W5zKPZuLHU7wetKE", "sourceItemId": "lux1tp3ok7lvRLWd", "tags": ["GCsjx2eSA4MWz0cs", "MdeJjWUswoQHTBqX", "UCXB60kPFCm0nf42"]}, {"customAttributes": {"kuopgS3gFmQkCG3N": {}, "H5lgyoF71uGZTlIR": {}, "R0aYJlpp4CSQX2pr": {}}, "slotId": "ht7pAOacJ1fHDk2B", "sourceItemId": "NAcG26TsDhJpawZG", "tags": ["mIFqY9EIBFU1t40X", "p3X9inoDu68olFDs", "nOvE5WkBhwYmnD8e"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'AhiUdiy2q5K1YyGf' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "Laj9gyxKFXxAXkX2", "sourceItemId": "U4Okm9wcGHhIP5Jp"}, {"slotId": "oII6MZyEcujgFDrn", "sourceItemId": "P3GA91OaBxmYws8Z"}, {"slotId": "k4xsPBgxC6esNAWx", "sourceItemId": "58LKMPJxtBqvEOrP"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'ZxKwQdV1Wklb0Igf' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 64, "slotId": "QnH7dJ8HxQCjxQkq", "sourceItemId": "b373MB1lwk4g2Dme"}, {"qty": 59, "slotId": "0q0wvlFCX1sGlGWF", "sourceItemId": "Tcf2ZqElu0r86UjH"}, {"qty": 36, "slotId": "HYa8fOs9yM3sthKD", "sourceItemId": "IPYGTLEI88KXzdx3"}], "srcInventoryId": "uEzychK4ypARQbeu"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Z7uyjFeQD4CcoAMy' \
    --namespace $AB_NAMESPACE \
    --slotId 'pKWXWzJhAkSJZzTv' \
    --sourceItemId 'yi0mKPZ2vxPmLRUi' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE