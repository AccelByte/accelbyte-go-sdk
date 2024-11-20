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
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "AcsKVnNs0KJmlp2u", "operations": [{"consumeItems": [{"inventoryId": "cd54VXn3PltpwJz0", "options": ["Psces9JoGQmhZzJ8", "4bU7M4bB3DoM9INC", "6ZixUmi0ssURCzMC"], "qty": 10, "slotId": "yWKediD6PLMysO42", "sourceItemId": "DDCpqcCP5hTKrIBO"}, {"inventoryId": "OljS9slaRVXEULIO", "options": ["RlV9M5bIwcEzsmjW", "sQ6SsJiKiSW4xknj", "UuahlpxG8VIVnu98"], "qty": 2, "slotId": "NHDMQUdeuLK9PWzg", "sourceItemId": "G3QCo4eK9yjCD7aw"}, {"inventoryId": "ZDXWMedIWcQLFlVI", "options": ["Ybvj0H0jsTVfj2sT", "9PekttRKK6AFtk0r", "nGV9AhUygYJVq6MD"], "qty": 21, "slotId": "6Yuck3ZYnsxqdtkp", "sourceItemId": "WFNCvFhHT2vCQlVr"}], "createItems": [{"customAttributes": {"Nu3qKYNEYLOEKwJa": {}, "mw0uqU8u0rpf31BU": {}, "wrdjNFM30O8i7pEl": {}}, "inventoryConfigurationCode": "zNFnwodfuuyattC0", "inventoryId": "m2x8bV59wE2Stw8Z", "qty": 70, "serverCustomAttributes": {"OZcyMfBNjtOnPSYS": {}, "XdFxgVK7gMDO7n03": {}, "BSXzXEioQAOU5hfs": {}}, "slotId": "R9xctfKkm1Uy1KWp", "slotUsed": 63, "source": "OTHER", "sourceItemId": "ml1N2R5spxHVVwPC", "tags": ["9lwEjkJToFFNzf7D", "i4YxXzFRRbJTRy25", "JdbUynIQrp2lGltc"], "toSpecificInventory": true, "type": "rBUuvAIB9ExEQBOM"}, {"customAttributes": {"wJqSgsxzuxYbFMr0": {}, "JTmG08nHzoiahmYT": {}, "BGCQe9fIuyS70Q35": {}}, "inventoryConfigurationCode": "deTsZs6fLXbBALKK", "inventoryId": "jbDR1JdGj19SLByq", "qty": 95, "serverCustomAttributes": {"sldoLUyey0OY9zFd": {}, "uNnJNiyJaR8bJbV7": {}, "vxGWDTPfQbQoaJqp": {}}, "slotId": "NvV2eyN4EcMsz4VC", "slotUsed": 75, "source": "OTHER", "sourceItemId": "lfdVNXW5o51nvCTo", "tags": ["P07s197SqBQi34a4", "3Ygc1RFQu0RfboJ6", "y3kxrsXPppltv730"], "toSpecificInventory": true, "type": "rbXt4iOWVHDFMXm5"}, {"customAttributes": {"nwP4q9y21aNP2oqU": {}, "4GvfySgtjcj8fCpn": {}, "3QjjINzllY4nm6u9": {}}, "inventoryConfigurationCode": "Vs7FFg2v3Q4FOcSz", "inventoryId": "AVbFObufbP4VRGLV", "qty": 11, "serverCustomAttributes": {"tGyGcO6guKTcrwvV": {}, "2IRj84SdJVMzBmEA": {}, "eFVnBbDttu3l16G0": {}}, "slotId": "wm3RR8cI8ci1Q2DK", "slotUsed": 86, "source": "ECOMMERCE", "sourceItemId": "va8DBZDJQFWecD6o", "tags": ["iwCYhV90qIlaXZfv", "gkxDnfb4HJfNZmwN", "btPSIMUdjmJmykAx"], "toSpecificInventory": false, "type": "ErfqjWp5Vepn0Uti"}], "removeItems": [{"inventoryId": "FquH2FUu73cvsGDC", "slotId": "ng8yNY5PM4gO3Gvk", "sourceItemId": "SsL3umAwTGNTcuxH"}, {"inventoryId": "BtDcTjalUTQI3HhJ", "slotId": "Q88Md2U0aiuQUSTH", "sourceItemId": "s9SqC4WgtQv5Ql3q"}, {"inventoryId": "t4RL6bZfSVewME7q", "slotId": "DfOH6NUowinLCzJ9", "sourceItemId": "CknC6WmFuK16kX24"}], "targetUserId": "rzukJGhoc16pw7B0", "updateItems": [{"customAttributes": {"4rKCeSuQWz5Nu5ua": {}, "xgPlSmn1WmMuOPtM": {}, "iJkXQ7KSgx0QwRba": {}}, "inventoryId": "dV1p7ilMSHyUowd3", "serverCustomAttributes": {"BqTNsf7cKpy8SG9C": {}, "lPzHa6SsTwRHlaP1": {}, "bmyTH795JDZhpfeF": {}}, "slotId": "Yz1qo1qR4ZoFlxcY", "sourceItemId": "HnqYk7GsP92lBIG4", "tags": ["auQnz0aguMY9xUeS", "8OHCTNPl67iuVEqn", "xkkP972cPK46vm4d"], "type": "5x6zHFhA5igEocNk"}, {"customAttributes": {"MwcHtnzfCAdoaIMs": {}, "q1rN7wSdKkjOxtK8": {}, "4F8gde4yjIb7k3Zq": {}}, "inventoryId": "NQ6osnNFGlfRNB4j", "serverCustomAttributes": {"CEzIVfbV4cvy4Hjw": {}, "3yTx9nfpsGoh9gZY": {}, "KU3KAVQlgsKo4wMA": {}}, "slotId": "QgcKv6ur0sFojtZG", "sourceItemId": "FeCDqVF0AB2xfpkL", "tags": ["7ji2sNO7ptFvacDV", "LnGOHvb6ATJWeUEx", "4qOdm9BZwhWbvFak"], "type": "TGxqspLCJ01P3zzZ"}, {"customAttributes": {"MyGx9mXIfokSK4W0": {}, "PrvC18CUHfaU43Bk": {}, "siFXSC8MtKM7O7y2": {}}, "inventoryId": "an5GcNfqgGpGv6VK", "serverCustomAttributes": {"9C6xGobMBX9CU20D": {}, "zIvYaUUX0ajHbcV9": {}, "kiOdDgvDPdPBo8mo": {}}, "slotId": "B13YpTxnzgDbnjtU", "sourceItemId": "UaUAVhsP8IgKGWKi", "tags": ["heS5q8oLl989WKjT", "HFqH62EepTi8NJ3e", "Hn5Aax3jqRGLpZtE"], "type": "ddFZUoyM7A09WbO5"}]}, {"consumeItems": [{"inventoryId": "5kKXmfPgMwatrBuF", "options": ["f0DmwpmhfrK1qyaU", "g2RaCvny5Ymxa9lF", "OHiVOE9S8FmwVKg1"], "qty": 6, "slotId": "eJ6lYJPBjX3vVVho", "sourceItemId": "5fleCpwUFprsxehd"}, {"inventoryId": "MYtl22t0RbGtzJhd", "options": ["9DOWvAdavZ0eGcR1", "cfMsLDh4RerJNhqg", "gpvEdgxq0WkIWEaL"], "qty": 81, "slotId": "busughpVfRSuZDCf", "sourceItemId": "JlNSq7iVUaVLuoxx"}, {"inventoryId": "T6VwzKhCLLqIbLOi", "options": ["SxfJFTwQ09jBOHfH", "7ywiYI4CQk3wqoJ2", "3INeXLRbVSrOwzgi"], "qty": 59, "slotId": "EtROE1BDImxqmbZY", "sourceItemId": "5W7A6YwqIpxS2yK3"}], "createItems": [{"customAttributes": {"HVjAh6vh9o336jm9": {}, "GMpe9JXf530Gs3Wr": {}, "g7OQFaDvG4NB2Fcl": {}}, "inventoryConfigurationCode": "Dm0dmAYIsQvVNHwb", "inventoryId": "Mv8G9bjZhan5boGu", "qty": 52, "serverCustomAttributes": {"CAPF6hVqT68zfQxv": {}, "c5QwKBOK5CLa3h7d": {}, "1aKYFEQlhgXqJmAm": {}}, "slotId": "njO0fbreU8BWEnb5", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "q926KeOVFRx5Wn5J", "tags": ["0KYPNVwLwaJyczL3", "aD6LP08Lu95uV4Hw", "NNZVh3DtUjSY1w8Q"], "toSpecificInventory": true, "type": "4k2YLCQ0pRPqCRvR"}, {"customAttributes": {"K9HFKqotXuoEJ8DT": {}, "kw6bZJU9HibGTDzj": {}, "v9LijMWYBEcGiZA4": {}}, "inventoryConfigurationCode": "nNNeXHOg7chDSNdm", "inventoryId": "B7gTnBFASJjWdwpQ", "qty": 14, "serverCustomAttributes": {"Aqivdl8TZ07ntGyK": {}, "gf7a37RY5f39PPbQ": {}, "uGoTvUSFbC3rd4YU": {}}, "slotId": "g2KnZqmlVM5mSHJ1", "slotUsed": 68, "source": "OTHER", "sourceItemId": "RiJxTNJJhQBzt46N", "tags": ["IvFSEEWQqtKNAkWI", "NjIspT4uYn0kmZUQ", "ai1czP9UuvcCpY6j"], "toSpecificInventory": false, "type": "K98WqwgYxdtAdWNT"}, {"customAttributes": {"V7BedUpztQkAUDq8": {}, "zD3eFzFG6pkPjIFe": {}, "N9Pk6m4rGwYUiSPo": {}}, "inventoryConfigurationCode": "qS9otFwtnsZo29sf", "inventoryId": "w1j2EXu6Ai2f8t3J", "qty": 33, "serverCustomAttributes": {"CYLuwyuJO4QoeFVi": {}, "GH5mLBMDHQl51ZxV": {}, "a1CQUt5oRnMVAXxN": {}}, "slotId": "ml5kfcUUkx1eImdB", "slotUsed": 98, "source": "ECOMMERCE", "sourceItemId": "o54QFMBaoX5wf717", "tags": ["DyrvmOV4qR2Ny79T", "x9Vf2Z7A4lN7naYc", "FDPJALtmgneqwVog"], "toSpecificInventory": true, "type": "ELf3FVHkLdTPRVly"}], "removeItems": [{"inventoryId": "6vRKthiF3fc76Prw", "slotId": "R2F186javcw61rlS", "sourceItemId": "wzHKaxQK1bjnOrPP"}, {"inventoryId": "CgGK9PLA6RmuRo5s", "slotId": "PbTOpwTSo1HDBhpC", "sourceItemId": "gO6ZGQv0VVMnuvDr"}, {"inventoryId": "eyqNJY4IKz9MT5xT", "slotId": "muSGWuxRgQn9G1Bp", "sourceItemId": "gDolsBovxo4oHgjC"}], "targetUserId": "yhYcmhfjrRVZ4nh1", "updateItems": [{"customAttributes": {"sy01qI4qF8pIPb26": {}, "HDALcUwyLWHCggbY": {}, "DbhyBvGEiA4QTHxV": {}}, "inventoryId": "JE5oVBQJ9Xh4ho7P", "serverCustomAttributes": {"cL7ucZykvkBZOqEP": {}, "ab0XTTvroCsB7zgq": {}, "9zS3njUvmuOgKTr9": {}}, "slotId": "0oN6AdwSIahgzCUz", "sourceItemId": "CkPT7CptbnSNgQK3", "tags": ["rqq7eGcH4PSMy1J6", "mGk7ilYY096QjjNT", "0nWkWIyxRqA0065G"], "type": "PdhVEA4SF5RrvTMz"}, {"customAttributes": {"Ifi0kijQHYutkBgg": {}, "b8naldDG4FMMnjnl": {}, "YuC0DgmmtdfmUSTo": {}}, "inventoryId": "niFcys4VWU8aodiC", "serverCustomAttributes": {"W4lfLcTPq6GMGeiH": {}, "bFPJd9x7vL7To6tq": {}, "Ab81SLXhs1zdNtWQ": {}}, "slotId": "cQ9tPL80FTKG9fEW", "sourceItemId": "jxMcWgzU6HzfrxG1", "tags": ["8j9uS9z8QKv5rpAa", "d3f7BP4fsQXR9JeM", "4SJyeM41GD4qqQKs"], "type": "CL0uUvZVwnBhfsze"}, {"customAttributes": {"yS4p4JQGsvoHNvqw": {}, "oN74z3ikt0rXWPLt": {}, "GCeq3m0J3vUPtUto": {}}, "inventoryId": "kJ7Zm9cquU2hDuMc", "serverCustomAttributes": {"LfW5XNMpB67SMb1f": {}, "ISc7bd6UgYULJL3o": {}, "qgkYYTMWxluSfYrX": {}}, "slotId": "mBJiN8JYyGL5OZqY", "sourceItemId": "8apGA5hwgi9luwzA", "tags": ["WlLBfTDjLLM70Cp9", "GGCscKBeirEW9BxY", "9GfxsuzJMSk3JPgk"], "type": "vHAN0da3TounBAB3"}]}, {"consumeItems": [{"inventoryId": "BGjhHJluikBVwUZL", "options": ["p1FRaR8fpsMrxJCU", "0fR7JBV12HqoxPPo", "r0B4e9YMN5AiNLGT"], "qty": 56, "slotId": "yY0JQrGI9sCMot0r", "sourceItemId": "uHrHw6XU66N6naQu"}, {"inventoryId": "RGIRZYJFN5FKXGCK", "options": ["236KgLMv3XNKxpXy", "PKh9O07Lw67FDjq7", "2J1Sj2Ktn6nsnBka"], "qty": 57, "slotId": "eElRyua6cVI3RlvC", "sourceItemId": "f6clvuGYA2UXWydz"}, {"inventoryId": "PkrZk6iwd9mqiovz", "options": ["f3DL6ZZOBnLttI62", "qRN987feTqGcfNRf", "0sOulaih5epDhf5P"], "qty": 94, "slotId": "CtQhyY9IEJDOEfBL", "sourceItemId": "LN8ocP8BSJ75bVwB"}], "createItems": [{"customAttributes": {"Y8vnQt2fgopbRHrk": {}, "4PhspWb9vzH9zYzO": {}, "276m94ZRuw3LMHxr": {}}, "inventoryConfigurationCode": "JQzjVFPOvqGrEFlg", "inventoryId": "ZHzZXLChmc2CZ1Bm", "qty": 77, "serverCustomAttributes": {"jxMJGYBKrz5sjxFt": {}, "cr8JIFeMYUPH2OHk": {}, "DxRMXHy3WzHlcJ9N": {}}, "slotId": "tWeQQYU6AcvIRhYt", "slotUsed": 29, "source": "OTHER", "sourceItemId": "CSLu7JXAjGedP6Qe", "tags": ["XiwoKocCymf7wGDX", "N5yzMnyo1TMxJ3fe", "Ayo16vmK2z1u7noD"], "toSpecificInventory": true, "type": "CcpBaL3XKjCLMiKm"}, {"customAttributes": {"nb4RReTNg3dkWqsf": {}, "6xXWiNzVJlStpQu3": {}, "gtPBhfrCn9PJRydk": {}}, "inventoryConfigurationCode": "h75d4TkzVi7kCk6l", "inventoryId": "vl5NIp9ttS1JhrAQ", "qty": 56, "serverCustomAttributes": {"LCT1EDqWu4OaJYuF": {}, "oU43dG5j1cFMq8kK": {}, "FFqseBLuYkh4SXQC": {}}, "slotId": "a1GaZTAL2xJJduTZ", "slotUsed": 80, "source": "ECOMMERCE", "sourceItemId": "3go1WVkMXXF0PyE0", "tags": ["65PACZC0Cp4E7jGy", "ERyr5YGCBjOEJ1zo", "dYDSaCI3IqCZAfV9"], "toSpecificInventory": false, "type": "bPyghiub90WwCduP"}, {"customAttributes": {"Dq0UmTeemIS8fYxJ": {}, "NXq3bJrGQs6j2yNk": {}, "BoGfyAUb4vVdkizH": {}}, "inventoryConfigurationCode": "qz7uSJKHnPDtZ7ss", "inventoryId": "o0AYI9KiaU7owWds", "qty": 53, "serverCustomAttributes": {"bB83oJ0ndUUVBFya": {}, "IJSbgbXklOgF9NpK": {}, "DjIvoxbjAhmyK1LW": {}}, "slotId": "SAvYHK1NB7T7Y3YN", "slotUsed": 10, "source": "OTHER", "sourceItemId": "WedDcAWBOQS2pats", "tags": ["vOWgpwF7sTCJwE9p", "37rkwB227nC5HEjL", "OUMFXyogRlTKxCIb"], "toSpecificInventory": true, "type": "5B4ml4lv16mgtKGV"}], "removeItems": [{"inventoryId": "SrHaiqefRnYraey2", "slotId": "GvHmv0fNZTeV83V9", "sourceItemId": "d4zOGCoiPe4uzSTO"}, {"inventoryId": "0TYwNY6U8JFcMPra", "slotId": "GJQ5ZhsU5xKlEnqK", "sourceItemId": "Qx743xINP209qCrM"}, {"inventoryId": "og6bznM6jpwahdDG", "slotId": "szjZ522HXzBo4NnL", "sourceItemId": "QuHlKPrhYO4vYGxW"}], "targetUserId": "HjcgbC6VKZYtViGg", "updateItems": [{"customAttributes": {"XsIHzbe4gWfnwubz": {}, "uETVg45lwYFAlUZE": {}, "ckD1ML06UjPdeDvo": {}}, "inventoryId": "AhE2PUxp8KERVTXs", "serverCustomAttributes": {"LDbeDRu8CimOZa4P": {}, "leVyo12022urwSM8": {}, "BCR11iAZt8rFJfIG": {}}, "slotId": "Zy3FgZa9f5HtgdKF", "sourceItemId": "MUMDNdLHjd8RNEsl", "tags": ["m4JkvBvSKy7SUx2J", "E6vWHBD2TSClMlqP", "gmbpy8BALMCVY1TS"], "type": "dzMhC74LUgJMgvPr"}, {"customAttributes": {"P7amXL2uzt6vP9c8": {}, "jA9IsOgakWwBNLG7": {}, "ndrKQiewAgmsTAey": {}}, "inventoryId": "SL1oiRYx4oJ5YqQH", "serverCustomAttributes": {"jcU2GyIhFhw4erwF": {}, "baNRoiAUFn6bsWhm": {}, "iXLHSF6pCRPnBpDG": {}}, "slotId": "bhG4U6dyrXlng9t1", "sourceItemId": "WWvNIjrzItuKhMcB", "tags": ["gSSZmPF70M37Fk32", "nelaRZvtPzQEUs4h", "uRqZzPRW81uyuEEL"], "type": "ZelOuj5Gik3iXfoU"}, {"customAttributes": {"JJT45bBE7hSFIfyz": {}, "0njbMMhe1QLund4W": {}, "GhfaZ80sMJM3MVRH": {}}, "inventoryId": "xCv0Zo8BL0wGKm6I", "serverCustomAttributes": {"kfucC0kGXV5i0nJG": {}, "Ichjks3SDnwbY9Lv": {}, "6UOO8eX3tBKtDuxG": {}}, "slotId": "GfwtjZG1BiDDiSuY", "sourceItemId": "BtrbtoHXzunjIS6B", "tags": ["wMI3CfFP1cmVW6YO", "Pzc069X2t1UDBcTA", "8F6sCR7OCIvCXz4G"], "type": "6GLVzHYJ9rNzrooM"}]}], "requestId": "R2vHMWKdqJN7Qw59"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '0' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["wvxhVQH1nG7QF0Se", "NjLhnpGyb0tIHxv0", "aTA5tnmFKpzwFwB9"], "serviceName": "TCtC3e9Rthso4krp", "targetInventoryCode": "cUYUnOhZQiw3gzRh"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'l28xxiBggLSUQs47' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["PxAzc70jtusu43qo", "3TiN4GSheT6SGldO", "24Do495a0QRIwAJz"], "serviceName": "VIt9KjAVNuQtT37S", "targetInventoryCode": "xgi8ncopxD4SJUO2"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'IcJogLucHiEOC11c' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ehRZfQ5CwOyfGZ13' \
    --limit '12' \
    --offset '84' \
    --sortBy 'createdAt:asc' \
    --userId 'zcMzlwqdvZdwmCFy' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "xo0eCQ4CvYMbObO3", "userId": "zlQsk4csxPRqTbRK"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'QN2PlvGFiEgYIjdl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'NrM63v8WmuH6FplL' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 42}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '90WQsO2ofT4jkDs5' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "pbKFlOCkgDex6WDz"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '92xW9rqtAwJOju4B' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '14' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'ahL1Tq3PIFGBbFct' \
    --tags 'HNnOhTYYdmXv4yUk' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'PfpbVwqJzLAvXNex' \
    --namespace $AB_NAMESPACE \
    --slotId 'XGkkFUmig8l7XfTU' \
    --sourceItemId 'FuZ7VzHOon4kPXrV' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'I1Xn7Pk0jg7gvCan' \
    --limit '28' \
    --offset '98' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fm3PjkZ0MlDNRFbb", "description": "zMGF9tdJ3ifLCDir", "initialMaxSlots": 7, "maxInstancesPerUser": 21, "maxUpgradeSlots": 6, "name": "nxCdOYnmhwM2Um4J"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Q45HZEqThk7QI9sn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'CT7RQAdfWy0sO0D9' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Uxn9UYJGLna0aMhh", "description": "wyHddior10qOy6tw", "initialMaxSlots": 87, "maxInstancesPerUser": 0, "maxUpgradeSlots": 28, "name": "FcYOuDXhZrHfC44A"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'iGp8WlIJ9tjyewbr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '90' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XIAPmzmYHNx7B6LO"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'XAC4qNuSGIOTUukJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '60' \
    --owner 'o02qQsZtgGimw28J' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "UGgfS6UcQjj8lgkn", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'y2mfu4n2AwsRIPw8' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'TuABbmfVOGMaj00M' \
    --namespace $AB_NAMESPACE \
    --userId 'QGxcFcDC42VySV43' \
    --body '{"options": ["om4kHhNQIxTcqfDn", "dcb28sZf5aM0kAOy", "DphppyUfK3AKk8Mq"], "qty": 46, "slotId": "4TXNnndnRuubuPSl", "sourceItemId": "3lvdKrH4jfUwJ55s"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'EEKKjvAk9jwvfcLC' \
    --namespace $AB_NAMESPACE \
    --userId 'Avwqh9DseAnVjwQc' \
    --body '[{"customAttributes": {"SYPgxZOtFac9Tz0r": {}, "dnMuyzLgi1PtOXkq": {}, "FFT5hfNfbKtv4n0F": {}}, "serverCustomAttributes": {"rFOtG576tKhbg53Q": {}, "KIEKXSktElCkFwsw": {}, "BvIPt7QbrF0BSLJF": {}}, "slotId": "MrJa9E0AWzcQS0uH", "sourceItemId": "g4ROhWGYyNchyNZ6", "tags": ["nPOzfCjlRRL65Y0u", "sYoUNM6KqEUr6qXR", "0cLIsyJkM71l1IbA"], "type": "cqh0q1vQrCjW9dpR"}, {"customAttributes": {"ku9ht5fzKTEDtH1d": {}, "MECz82gp2AYAUeoG": {}, "Mjb3UTOKIZ2MB1pM": {}}, "serverCustomAttributes": {"o6j6Xs3Q7YVPpuL4": {}, "BgHFuzqY0SlBkpXu": {}, "MP72ElmmMUgqIzoK": {}}, "slotId": "6wxz9EVBZkbG2Iui", "sourceItemId": "vb8KRXksJKpW0qyX", "tags": ["uBmz4f85BQBEETfi", "qBmPsC8pBsa0Ei06", "sCsJ5iVO8kNHvKHG"], "type": "06A9KCUCJDwpvVip"}, {"customAttributes": {"n55BOySi4atJTMRA": {}, "GDTrNvsyLaFDWs3N": {}, "xAiHpeqTNZRrwfuv": {}}, "serverCustomAttributes": {"Zd7Km51Zzl7U28LT": {}, "FpJS1BsaftSAqt1d": {}, "HWNkoLp3gTqfqPNV": {}}, "slotId": "TrMtgnYaqKzPFjem", "sourceItemId": "kA5IKizNAHWXXrsU", "tags": ["YpGMN2G03TrmeoBm", "gteGwHweJoxNshWj", "M15KvRyzXXz1Ths2"], "type": "uTR0uX287uUZ4rDY"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'hlSBf5Xh6QpF8PoM' \
    --namespace $AB_NAMESPACE \
    --userId 'JhfksRPqWwuKmNTz' \
    --body '{"customAttributes": {"IGI44iUUs7U0qa6U": {}, "SXCMWnKzD4Qyyp2N": {}, "dNS35ua0uCmKOsjc": {}}, "qty": 82, "serverCustomAttributes": {"P6rSJH9XJKxdyKwK": {}, "7Qlk95eQ7kk5LKC4": {}, "h0zatp7Pqekm6pV5": {}}, "slotId": "SzgxgN80uxuXMfmu", "slotUsed": 37, "source": "OTHER", "sourceItemId": "D7FwbY76YjwnEpkx", "tags": ["rY6IwDSAihCRGwsx", "GYf2zoaTCl3oiEF0", "fxBLd58ZRPKbRvUi"], "type": "ePBs0s2Yr5BkQA5k"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '5vHl1a3TPsDO5zSw' \
    --namespace $AB_NAMESPACE \
    --userId 'h79HPW7U8jafbKgI' \
    --body '[{"slotId": "tZZ2e7sLIfjT0Kli", "sourceItemId": "VrkF5Ao0VYIdGX3Y"}, {"slotId": "PCytLbFGYfOEH5an", "sourceItemId": "71fvmYA369pG50M7"}, {"slotId": "lxoMhHNmrngnY8Ba", "sourceItemId": "TF1rt4kfqGuK33Zt"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId '8TfQmKwVXnKNT9Xv' \
    --namespace $AB_NAMESPACE \
    --userId '5N11WjW9gsaxEs8f' \
    --body '[{"customAttributes": {"NFwKzzscZVlZwNdj": {}, "5VghUgJKbHzIOsKQ": {}, "jDemF09iScN2T9gP": {}}, "qty": 45, "serverCustomAttributes": {"Q6AjQ3akMNhQ3Itj": {}, "jJesMAYMJ74J95z6": {}, "t9En3umpySYHBKrb": {}}, "slotId": "jVwRw6oa1KCfakUi", "slotUsed": 69, "source": "ECOMMERCE", "sourceItemId": "70U3De2P7WY0ZrNk", "tags": ["sWRXXxRoxcdjs73i", "ls3jwhAJ6S888P7b", "6KG48D7YsR0JjM2m"], "type": "QzLhEKUWVsLVUWWO"}, {"customAttributes": {"qxxsqCdGJ6OTqcPV": {}, "fsAXasvtM2QiJHXa": {}, "5uI5TncR9CX2npF8": {}}, "qty": 57, "serverCustomAttributes": {"XbU5seS6oUPCNABI": {}, "Kh49JXIWnyOAuT0n": {}, "YoVVz2z4uf96gMN8": {}}, "slotId": "6FfbhQSmR0jVXzI0", "slotUsed": 78, "source": "ECOMMERCE", "sourceItemId": "XqJGMTqHiNPEZCP4", "tags": ["GxQdUwxSo3VeCnL5", "bMlfWxvc6DIZbiFC", "4OovzfVm8HiMBjX0"], "type": "qGodg4VKI4ySuEJ0"}, {"customAttributes": {"lAbE7u2WSkDCJPeZ": {}, "fSgI6DJXpNMfRYqG": {}, "3al0JOLmcyYFC3iN": {}}, "qty": 90, "serverCustomAttributes": {"lfhc6G7nxUm6hZ6g": {}, "gTSLtOKys4fxuLHN": {}, "ooM4FdWfHxUqaKja": {}}, "slotId": "09RPVW86zpin0ZUt", "slotUsed": 2, "source": "OTHER", "sourceItemId": "ZmjCih3AVZAoGB0Z", "tags": ["F6Pcd7iehbY8cYGO", "rJai7ECLc8blVwxW", "Ekfo4orn7489WQqJ"], "type": "mlP6Tqo9jfblFnoJ"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'naZvTYABA98NlBs9' \
    --namespace $AB_NAMESPACE \
    --userId '9jqfRj1Kh6wEuXWN' \
    --body '{"incMaxSlots": 68}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'kc17V0DCH2EAs3wL' \
    --body '{"customAttributes": {"IPvh7ME91CGF753I": {}, "TYG81DfoNRmW8h5w": {}, "mZvHX7vg0krtV6nm": {}}, "inventoryConfigurationCode": "ckUh4RqxDYsFb2pJ", "qty": 28, "serverCustomAttributes": {"DGAXfevKuH0ndqVh": {}, "fykg4alOw9VReiL0": {}, "awsDzb7ryh3xdYmX": {}}, "slotId": "n7vciK25Ft2y5VKk", "slotUsed": 89, "source": "OTHER", "sourceItemId": "iT0KRAJgK7El3uh8", "tags": ["vQ8Gy2taQXfG9uEw", "jyNHD17T2o1ludEp", "P68ajcNsjjGOuLBe"], "type": "0Coej0pY0xqSHxm2"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'GNIt9B9kykzTK1Oa' \
    --body '[{"customAttributes": {"byzpBPItlmUX7uDm": {}, "OF9xND78uzqWEoAk": {}, "g2OM9VDwwk0ZCdjN": {}}, "inventoryConfigurationCode": "F0gjNkgs9NCTZVDl", "qty": 62, "serverCustomAttributes": {"qnsjhV2BHz1bNbYw": {}, "ypAlTYTXsc9Faw2f": {}, "hkutSgJsc2yRxPwz": {}}, "slotId": "S5lEBg1Y4TRz8O54", "slotUsed": 69, "source": "ECOMMERCE", "sourceItemId": "MGHCRY7Ru4z2pn6M", "tags": ["ts2uEydG17BNKmPa", "UZxLV5JxGDb35khE", "Zb3KtDvqRc5VWfF7"], "type": "TrLOOXVDhT7tEYSu"}, {"customAttributes": {"UcytuWhZXr69BmdB": {}, "Kxf7KgbNRs8i0hfQ": {}, "MhDQniDKJ15IcGbU": {}}, "inventoryConfigurationCode": "rE3qjzARn8TJDKGE", "qty": 35, "serverCustomAttributes": {"4Ww7HLH9fUFd90ql": {}, "d8Tj21lpA1ZGryd0": {}, "74Ik6E0WejSR7MaZ": {}}, "slotId": "6FFfxUdiuovq3Yey", "slotUsed": 33, "source": "OTHER", "sourceItemId": "9xkStrdcokr77Gu1", "tags": ["WU9xbtDXCsSnQiKw", "BV82CIMZtFvf0UWH", "Zhp9ndjKxuy1tY7a"], "type": "jvuGzeky0UgfCbPr"}, {"customAttributes": {"RsuifQndVuM1AAQ6": {}, "utfKccCgZaba7EkN": {}, "PU8b0LV3ulrPeico": {}}, "inventoryConfigurationCode": "2GYLq1h2S9DgQHkw", "qty": 8, "serverCustomAttributes": {"sxNSyR2VL0Fz4iAd": {}, "Z6mHqROby4BBLOxA": {}, "hfFvEQjEwlLmJ6ha": {}}, "slotId": "1ij10BLMestlx2jM", "slotUsed": 16, "source": "OTHER", "sourceItemId": "SzBsOfLZ5N1cMlVn", "tags": ["kYeXSr5M5LgUJpsV", "3aqFqfZGETeHd0Me", "KJ7kIbyEgZh5ttBW"], "type": "iSX1DNZ7sSvrRlZn"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TWMM6zBzeYkMDIRn' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '0m6vty1M8l4ZeXBE' \
    --body '{"entitlementType": "x0M2zKM00x2NklP2", "inventoryConfig": {"slotUsed": 98}, "itemId": "aBQTbHIsN7tzvSlr", "itemType": "74FpvHaJzFsHdYAe", "items": [{"bundledQty": 36, "entitlementType": "xODUIG9g3M47OtTD", "inventoryConfig": {"slotUsed": 67}, "itemId": "j0e8Q9oYBbhDlP4w", "itemType": "EFnJUvDv9gBGpE4d", "sku": "cVln8up3ixiNxSeM", "stackable": true, "useCount": 6}, {"bundledQty": 89, "entitlementType": "mmP5vI4VPjook2yk", "inventoryConfig": {"slotUsed": 91}, "itemId": "v9H4iEsqCy0EdECK", "itemType": "uuHlrBqkiKmGxn3F", "sku": "UdrAGg2jLgduI1B3", "stackable": true, "useCount": 9}, {"bundledQty": 51, "entitlementType": "nUyjn6Q7sWVCXE5K", "inventoryConfig": {"slotUsed": 30}, "itemId": "WHDDU25yj2USecFo", "itemType": "96Y3m2KZo9cP5OCI", "sku": "mWLu6Vchy2OeRgcF", "stackable": true, "useCount": 76}], "quantity": 91, "sku": "Ck9bLbV1b2QwqM0C", "stackable": true, "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'XCxLmmdHa4FEv8nq' \
    --limit '46' \
    --offset '28' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '14' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '25' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '8YVLqbN7OcRStYYU' \
    --limit '71' \
    --offset '24' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'Oeo5UYp84eNYVF2i' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["KPuiecEV2CTvHHvu", "mrzNYb6ladkGYHkS", "AveLvTvLu8cJoVRR"], "qty": 58, "slotId": "YAeXWmS6lWw2MIPy", "sourceItemId": "YOMIbsEpFTsMyVFp"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '0kxQbIG34KjH1kvl' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '98' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 's92DeQ4vJLv4Xk62' \
    --tags 'qArU418XMlpmrYx3' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '0oxOp37gfWZGEgdN' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"CP7cffvYX60EbsKg": {}, "873IZbiHoW59MWWp": {}, "wDTwsPagXDfJqlsT": {}}, "slotId": "Ofp340Vodmrhu0k8", "sourceItemId": "uO6TPIChyHYwfW1A", "tags": ["TACKMarMA6oGv2YB", "qOGup17jbLUu4Ptb", "FLLi4gwEaWDA9ogz"]}, {"customAttributes": {"F7WaPbcLJ1QLMBsv": {}, "A42qehhrxbnipHn1": {}, "75sBfZosPKTiJExy": {}}, "slotId": "JbyjswHFvYwtncbY", "sourceItemId": "4ibdQlBHoGslMFzm", "tags": ["YZafYeUkMV6gdd2V", "pF22Afcd7IVOZPLh", "y1Lm8YR1LWD1znpi"]}, {"customAttributes": {"HxLzp7YskjOB7uce": {}, "4IP16j9TrN1FhGq4": {}, "Ay7IyBbWbHhekSEs": {}}, "slotId": "BCQscFXN5mxHm5Kr", "sourceItemId": "X8mLgYCF7wD3Bni6", "tags": ["V9RsKWslRkj8Zblm", "wG5gzltggyoT8ZVR", "olmlLNZPZT33OAsM"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'M5HepgyFdeKqzAlT' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "bclwMG7N7O81U863", "sourceItemId": "ypNFbvub65KrdsyT"}, {"slotId": "TXPP365ylTsXi5MZ", "sourceItemId": "7dTxTYxDJZOQAEFr"}, {"slotId": "HDg3aJ4UeO7DpyxN", "sourceItemId": "aTbgHhHiRJVyBnRJ"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'ih8cvmg9hjqf1QDH' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 35, "slotId": "yLiM6C0R4Of6zFrh", "sourceItemId": "qpf30Cy3XOUnvXmH"}, {"qty": 86, "slotId": "tdGugWh2Y01aMo7j", "sourceItemId": "jgapw13NPj44DQ5J"}, {"qty": 10, "slotId": "t4YNTqPtmrcsqFF5", "sourceItemId": "Cq7qRBCMEYWQWo6D"}], "srcInventoryId": "HSIKFSGTOdwmBXcv"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'of4dYxpQB2914m7U' \
    --namespace $AB_NAMESPACE \
    --slotId '0lHWUoJWnHauqlfV' \
    --sourceItemId 'oAMIdJJuVMzhUSyR' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE