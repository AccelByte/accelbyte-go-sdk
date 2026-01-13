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
    --body '{"message": "X2ipU6bNolhjdaVh", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "2UcpxJ9QUBOaFb3G", "options": ["SJWBmYp45skvAlaL", "H8cqSrlLqDTjtEy8", "skgGXBF4jnuZJNmL"], "qty": 81, "slotId": "xeDE4XhDsWw6K88i", "sourceItemId": "ykffzGnxODMKeYOr"}, {"dateRangeValidation": false, "inventoryId": "qfqQdDdu4X33MKuS", "options": ["rrH7TOfRKlNHY2Yz", "P7aNPKfyTNXa76O3", "e4uQg8hXnGaXoQry"], "qty": 50, "slotId": "kz63FC2g4rIWlpZd", "sourceItemId": "cWC3GdgbA8asHNQy"}, {"dateRangeValidation": false, "inventoryId": "SzxP4IGUHBb3xo2m", "options": ["8w2xtNO8JNDa57dY", "PDrgvzXwCAwoALch", "mKg7PegG8bhwSRNG"], "qty": 80, "slotId": "kWB3m4fGnocteYX3", "sourceItemId": "cGZX35ZR4JoQVGfZ"}], "createItems": [{"customAttributes": {"wXLelEF8yKUttByG": {}, "iXmR6hwIeYCAVlni": {}, "aXdGwZzoV9M2iTB4": {}}, "inventoryConfigurationCode": "KTNlWFAuTwDG6J40", "inventoryId": "hKB41MJAfvgK9Ps2", "qty": 53, "serverCustomAttributes": {"Nqrf4LfbopB55AGz": {}, "CAkKTmnjLLyuJAs6": {}, "ZO4oQaozXoGthH4y": {}}, "slotId": "KeSiKdA20bhW6mv7", "slotUsed": 80, "source": "OTHER", "sourceItemId": "mFCxm6jiizYX4qoe", "tags": ["gvJxVy7LlAgVmybg", "mStHaKYFFANamcst", "xwd2qz9PWhflyLX7"], "toSpecificInventory": false, "type": "5tzP1TSBjVJlo35J"}, {"customAttributes": {"M4UGvXlM5yiHvard": {}, "ySNdyvbLPV6kebEH": {}, "ctPIwCwhrRaPNmhq": {}}, "inventoryConfigurationCode": "JSCbWKB1Z2qyPBtK", "inventoryId": "LqOvK96qFoN4rnJX", "qty": 4, "serverCustomAttributes": {"GND25ok97Mm9o5bs": {}, "NTfjd1vzJECD0iFe": {}, "gbokMcd0tTkH9OJf": {}}, "slotId": "M3NfXFjAHDzzmSTn", "slotUsed": 35, "source": "ECOMMERCE", "sourceItemId": "ks6sQDuExSf074uy", "tags": ["OPvt8T3r21IS9u0c", "crn0BUfJPfGKlz8m", "8K3WI2W3AZH1rBpi"], "toSpecificInventory": false, "type": "D6DRwZfhmde13dOm"}, {"customAttributes": {"3b1uGrXYN0cHkjoE": {}, "dA18aBX3tXAtQx3U": {}, "TuxtetuEAi4dJ8lk": {}}, "inventoryConfigurationCode": "5kKjcMyxa163pkds", "inventoryId": "OXet2teZnBRzjTU0", "qty": 96, "serverCustomAttributes": {"gD7uyJK8wBE6yPow": {}, "DMU6pDtnpMRujeX8": {}, "ZvOKqKICoOk58AHy": {}}, "slotId": "MAIGodfsVsL7HZH1", "slotUsed": 81, "source": "OTHER", "sourceItemId": "GhPKkn986J81PT5A", "tags": ["mL22fhvUg631g1iS", "reDP75ZKCuO2FUUm", "XX4MClqdfrie9giY"], "toSpecificInventory": true, "type": "lUuzBMWznxJtlWom"}], "removeItems": [{"inventoryId": "OZ902vntObymmud2", "slotId": "0bYpkXd5zlIQ2mIN", "sourceItemId": "Bqg8uR85n2hbwa82"}, {"inventoryId": "cSgjp8aBLWQl3MJ5", "slotId": "F2xdJOz86TXmHUTL", "sourceItemId": "TfdGErne5z9TZqgI"}, {"inventoryId": "FSKUeP6VvuVHSPmL", "slotId": "EtpwVrGHwtzu9EFz", "sourceItemId": "84tLFSQpEEHRYHpE"}], "targetUserId": "GaL7I6BhOgcB9WKN", "updateItems": [{"customAttributes": {"PZL999AYoDw5jOQm": {}, "7J6jBc6mCVVDS9lH": {}, "xeidgcI5Fjs6bacd": {}}, "inventoryId": "NnmWsM2c7gqO78G8", "serverCustomAttributes": {"3a1blfj5xaCgrwhP": {}, "Up1BHMMfdZKlRmcF": {}, "ldglDTWGun0hha0h": {}}, "slotId": "b1FmNESFTMzuxRtz", "sourceItemId": "on8zGBDBdEqS5Gvx", "tags": ["IiWeheJhSnLjH6bQ", "A3mNWG4eDKjHGg8Q", "BqMM7bENd3Nmh7p7"], "type": "nc1g4OJdFizFO28T"}, {"customAttributes": {"FmbKDSN6N4xtIuiO": {}, "8wcqSTeFwcujtgWq": {}, "ntlf2LeNGXtZsmYW": {}}, "inventoryId": "uGqLYDVD5HVwA1ja", "serverCustomAttributes": {"YSjWNOSMQySn8aVf": {}, "VBn3zXPiUbk7VRcX": {}, "UqviDd7eNKrsW3ME": {}}, "slotId": "qKr1503EuBAeiJvx", "sourceItemId": "YVZLTrAX1YJaZyGe", "tags": ["rOVbhScOQmC7s40q", "BME1EWahn4HcczKY", "QWjJPuoNXCxVtxxi"], "type": "zqtwX6s4wCZw3hSV"}, {"customAttributes": {"Wo4jRRa5clGbOEgs": {}, "ArBq40G8cnd3ljG2": {}, "MAnBk4QX5e2ltFGL": {}}, "inventoryId": "jK5b3QdDjL7huPn2", "serverCustomAttributes": {"Uy82hwWeMmm4L2n2": {}, "IrN7dOHFJcdLxuRe": {}, "Yaet1AahuJ5aG6VL": {}}, "slotId": "tXURReBtd2MYgNa0", "sourceItemId": "fs6NzrNj9K9mQPWO", "tags": ["bG2Kh8o8YppdA9dn", "38l0hVyGhfGgAFzH", "5wOFTktqNQkp1dEO"], "type": "wmruNgEfS4DDDkAv"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "7PrmO3JSFcHj1qaw", "options": ["QlzgPSVY2qYwGdHU", "4Q92rU4CjwrpqYeH", "DciL5wYre2zdehrE"], "qty": 52, "slotId": "SVJlpuNORYVRGD6b", "sourceItemId": "z9xrqn1vfvWxWIDz"}, {"dateRangeValidation": false, "inventoryId": "6EXN1CKMoKrWSrBo", "options": ["DnNb3quVFgvzuZkw", "lMtNxoxJHTJxk9lZ", "H3QNSqkomPs95D58"], "qty": 41, "slotId": "LrxUKPWQJ8TYvP83", "sourceItemId": "LHWl0FqpaOmFXzZJ"}, {"dateRangeValidation": false, "inventoryId": "YeIPxc13If4UB0w7", "options": ["WfwXlULrv4L9uFR0", "xLSzmuBLBRhhwQuQ", "oQ0Dv1im98V4ZCUj"], "qty": 58, "slotId": "5ZfVXqPeaICkGlKA", "sourceItemId": "hefGbpcPyHI3GsDk"}], "createItems": [{"customAttributes": {"pM7LvrEvJwO7sFVY": {}, "AaJSPsj2p64u5jyG": {}, "Bfm8PSMaoGkGbmMD": {}}, "inventoryConfigurationCode": "1mX1DkkJJfxpmJDO", "inventoryId": "Im2AmQSLX4P2scCa", "qty": 89, "serverCustomAttributes": {"eoweWEBKf2UZ8wbR": {}, "hL10B1Sb59FZXPFP": {}, "dlBg6jmEYalfrj7g": {}}, "slotId": "3i6b1PCVt2twStSd", "slotUsed": 35, "source": "ECOMMERCE", "sourceItemId": "qzvwXrCroRvOUtMh", "tags": ["MgRiVqkLazUvEQJT", "dQUf5AQodiW6J8k1", "I4OWG2TwYKIDEk9Q"], "toSpecificInventory": false, "type": "mFAC1upv5IbIA1bV"}, {"customAttributes": {"yLNBjhLvroyeNDi6": {}, "F7AJ7EkOu8DnObif": {}, "CXOCgs33YDApMvWP": {}}, "inventoryConfigurationCode": "SpCQ5LygxudpRJZ5", "inventoryId": "7wyK1QlpoJMOf02W", "qty": 3, "serverCustomAttributes": {"r8q1MxwLCubwtxWR": {}, "eWcZPEIiIC64peEM": {}, "YenobbWDT2V3D4YS": {}}, "slotId": "S8kYRiE92EAinxef", "slotUsed": 63, "source": "ECOMMERCE", "sourceItemId": "tkA8nD08vIZDNgav", "tags": ["Yei6zgiVjakml3e4", "lxNLO0cv52XhaKlA", "Tw8WwlFaiQWO0BML"], "toSpecificInventory": true, "type": "uL3TdheQZImS7P1z"}, {"customAttributes": {"ma0iWUyn66Kr3IQ5": {}, "esnC6b4MZxcgeXVk": {}, "ePMA7DSgb2q5IiCH": {}}, "inventoryConfigurationCode": "80GAwtNxzpYuRC95", "inventoryId": "dYfLKXmU0dZRDeAc", "qty": 80, "serverCustomAttributes": {"laER0IHin65QClkf": {}, "tZgjDvBvFeXfgfdu": {}, "IpJ2iJbF1N6UNoJV": {}}, "slotId": "wvaSlcIGNHfLWxVD", "slotUsed": 93, "source": "OTHER", "sourceItemId": "HB52WBOmqbNFrJsp", "tags": ["0I83jLMJDwXFNhUa", "pMrtz9cELYNFFNjB", "ZPgaSw0Ccgadnh5k"], "toSpecificInventory": true, "type": "ilfraaO3Tc5nw6pa"}], "removeItems": [{"inventoryId": "29m0kSpE5VCrCYS7", "slotId": "Ljgfrc3K9o3o3FNn", "sourceItemId": "b1eQ3sICXIYeRTLn"}, {"inventoryId": "yT2k8Y08LK6oS6rh", "slotId": "sVOZXgrDLkPlwIBo", "sourceItemId": "tstyvivFYUlV4st6"}, {"inventoryId": "CB5b7Hes8qxreT9Q", "slotId": "EmNnzA5kWPjK2vma", "sourceItemId": "M054L6MJSFDUG62b"}], "targetUserId": "Ol3lDvI5UgUhswbs", "updateItems": [{"customAttributes": {"NYgKwC8tFxlWgjJ6": {}, "dm2rHWhUTbnBCfad": {}, "0Ea2qhOt86mjTtWD": {}}, "inventoryId": "3RGU2T7Evvi4OVaB", "serverCustomAttributes": {"QytaXraVpZhulyd4": {}, "FYJ0gLMUN6Ys5CdH": {}, "oh9lBzwzfGz37Mmm": {}}, "slotId": "lQ3SkZZ1PjUbnoLl", "sourceItemId": "d0uBqPEyGzQAJ3xI", "tags": ["BpNmjQm66D5f1Dj1", "mT8idXENQKSAlw07", "MZ7nAAQ70emEXgVG"], "type": "0haM1bAZTcsNihS4"}, {"customAttributes": {"Gn6sc222eOlFlrXe": {}, "YSUdPOWFDvX6sNlq": {}, "6TbQKS1ftwu2QDjH": {}}, "inventoryId": "Tu2JdO0ogfZiUgqQ", "serverCustomAttributes": {"Eeb2k9rAao24e566": {}, "4HkMt4Z3bW1F2lvb": {}, "xO7G8eDQwUJbdz1J": {}}, "slotId": "asDANBOxC0ml2S0m", "sourceItemId": "fyD2GlfIX9K1a0ab", "tags": ["jh0myT6DSgnbY8Do", "lX40nA7Te4GrC4cb", "TcDNFkyLgQvdyzad"], "type": "R2HIiafMg2iWdXgM"}, {"customAttributes": {"5VJzkKTORHyScNzt": {}, "zOhMdufxi0AhoCtY": {}, "eFOiSM8lxb1PnZNh": {}}, "inventoryId": "d9lZdnzzuuhCSaIN", "serverCustomAttributes": {"ptOCSrOzCxOGCINg": {}, "I1PQAmNik0EAEoJo": {}, "h1cpmwgSwLyPieO6": {}}, "slotId": "ZGo0E7vLWrTcbMKV", "sourceItemId": "iTUxEJphJmO2FH1g", "tags": ["kCZhzgXhitErfOmI", "bDAp264r5brLuHnM", "imOI3gxYfJZfZr3E"], "type": "o8Kbj5QBy5gCVOS5"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "i1dyDCrnJn5mLDSi", "options": ["45KYdLbvUGbGGeha", "zWRiovLzn9LrIk88", "0JwhriFp1PKU4iH0"], "qty": 17, "slotId": "bkL4khanubWhrJuT", "sourceItemId": "th7UKnVrHzg3oQv7"}, {"dateRangeValidation": true, "inventoryId": "AxjN28J3nd3P3wnf", "options": ["XylG5St6sZCQkyrV", "HoBG3YqwUqaJegX1", "tTaNaZizD04I8r1t"], "qty": 82, "slotId": "YlriZzG9oiijHUAe", "sourceItemId": "RvYx7mjH6q1JTOKQ"}, {"dateRangeValidation": false, "inventoryId": "tZYDN9XgS1WEX8hv", "options": ["a0hJ2FlwEm4PlNAH", "uR3ZUSWqCBptB1Gh", "rwOmARgfJYmtwIu6"], "qty": 78, "slotId": "F8GateLlJ1fIXtiE", "sourceItemId": "iEdZgkPnH4bkfC3z"}], "createItems": [{"customAttributes": {"2lQJ5hCA0HAkt8V9": {}, "KrpFeRk7311ECHLQ": {}, "Pso8JPjtIUsqw9xT": {}}, "inventoryConfigurationCode": "w2HETN5F7VuJMKUH", "inventoryId": "bImHNQqbhs4fAsmF", "qty": 48, "serverCustomAttributes": {"iOODfDmzcFBb3Sko": {}, "EKvMf04HifDPNvr2": {}, "OBRUhpGD97Yt2orY": {}}, "slotId": "vQmq2zARyu8WHFQY", "slotUsed": 78, "source": "OTHER", "sourceItemId": "HlRKd36ERLucwvyg", "tags": ["wTCjFgDlDT6jFWKB", "OCoVjUoWJLOdeYkg", "Lb0vsEs8Tj9yHHi2"], "toSpecificInventory": true, "type": "V3S4VLdqj75FDKVZ"}, {"customAttributes": {"ycbH6xCRvS6zj7DS": {}, "SxRFRPTBKNMQhJvX": {}, "39BsfvO8nStSs3OV": {}}, "inventoryConfigurationCode": "SqCvlSBjcQYeNeLj", "inventoryId": "k9btP0yE6R42Fkns", "qty": 95, "serverCustomAttributes": {"CUUegDbKRncRMb8n": {}, "36ACQNlIx3l7VNpL": {}, "DT4xMbzQIpKzgp4r": {}}, "slotId": "EFAivKezCxRkFDSt", "slotUsed": 93, "source": "OTHER", "sourceItemId": "BxrLJZXaZkidvGHK", "tags": ["vYsOGz3BmNTkqLTz", "Yuo8d3e0KWzXN8zA", "1hZ2LdlROgVAs1ow"], "toSpecificInventory": false, "type": "jo14V4FR2TGVJrXq"}, {"customAttributes": {"aDCvUfse4BHw1wgm": {}, "wWA5RQQIpGxPNTGI": {}, "Ky8RT6RAVGfdwmlE": {}}, "inventoryConfigurationCode": "VBoymufk9qVKlKOL", "inventoryId": "OI9TM0tUwi72pPNu", "qty": 36, "serverCustomAttributes": {"RcYSvcMXKP1q4lms": {}, "qWvJMuIP0W77Q6ZX": {}, "gXqZRp9wUm0HjSg3": {}}, "slotId": "vKL2dFhvQiFmqWZb", "slotUsed": 93, "source": "ECOMMERCE", "sourceItemId": "25qK9Ir1guxwZzX3", "tags": ["Lt6eRqqWTP6Bf03C", "fkFhoOSBOHjGyN5e", "WWF7SJ51Jz4fGdNV"], "toSpecificInventory": false, "type": "zKObpdGTrL6o34Ic"}], "removeItems": [{"inventoryId": "JpLyWFJ0phSGR5Qr", "slotId": "mrdB5PKFvIK6emNl", "sourceItemId": "3Ufi2zsQeSAZSrml"}, {"inventoryId": "tEULIL7VxyOeMtpr", "slotId": "ZrCL9MNwDJuDfF3R", "sourceItemId": "53kHI9sir1KitmaT"}, {"inventoryId": "0j7htw6qHJsg2h3w", "slotId": "72N36DDkyutJrRUh", "sourceItemId": "oSIock0UaZ3Xp3CO"}], "targetUserId": "PbczQB0CA2f4lfDe", "updateItems": [{"customAttributes": {"s6zLn1kZ75xkzg5w": {}, "776kvo7lhnChWRF6": {}, "nDFv2f5GWoi9WDrM": {}}, "inventoryId": "jafIkohhkQXoL123", "serverCustomAttributes": {"nh4zqh0VzDHtdGtq": {}, "o2iEk1nTZrt2d0HV": {}, "eTmU4y1iyHq05xu3": {}}, "slotId": "TRMw4dWKq79Y3Z7u", "sourceItemId": "6Pmi4DCbJpVzf8Dc", "tags": ["ijLDdwQbeiKRj4oz", "DpVWlwrccQc3RFg4", "Rc0clxjJKDtySrUM"], "type": "Pa4OFl67ke8WyDMG"}, {"customAttributes": {"qbvY7YlPTn9A92eu": {}, "v7dDvVcuQ9g6c9R1": {}, "hoz5KaT5MfyfBVqv": {}}, "inventoryId": "kxxjmqAhgVj2yEDv", "serverCustomAttributes": {"1PsU3y1GoIb30lV0": {}, "LVrF70WvvWz6GsFm": {}, "YIq1jkTsba9XaKSB": {}}, "slotId": "L3UejNRekFFhSAGC", "sourceItemId": "UQmKgv00u42TDk4D", "tags": ["D1BLILmUv7rtFbuP", "AJw4HXDCtG5G9Mrc", "kSkmPLZDoFaZaB0Z"], "type": "JGZ2RQxP9Q2Ia40R"}, {"customAttributes": {"otVRSr91mJczU7OD": {}, "PVV1OQ371Z42LMev": {}, "LkU5lTAmdkO0GAe0": {}}, "inventoryId": "DObD7fTM05VzYulj", "serverCustomAttributes": {"hGgjnXYanR71o1vX": {}, "iZm8dgzAZ3Kb6vyz": {}, "AWJamdON5LCIHbyO": {}}, "slotId": "H9vPG5NUoWmRqp6F", "sourceItemId": "4oNTqYZF9QEL6Jls", "tags": ["qGNjNkcfJJ4F5XQj", "Ibgg7E0zpQLHfCYz", "8juHbBIqGt7Yi7RD"], "type": "ER84HyMOfPXapkG4"}]}], "requestId": "GHyTIXBaWnjuDBoG"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '11' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["sGLBTPQKEHBqeHhf", "kTNF3gWxcQl0iKR9", "QyITgZTrucSNhmGI"], "serviceName": "MAo5rCztNEkFoyjc", "targetInventoryCode": "3QBEJX4qmQQMP4Tm"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'DZ7soO9mwwhrjkK4' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["F3HpB7Xjvvjr21Nw", "aKjcXNe9lRuSw5xv", "MQAdzMwXqoIwfi4j"], "serviceName": "GKltnmJWJFyIjdVl", "targetInventoryCode": "EZb8h8IeKQrireNO"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'NYKpX733irHmY5IL' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '5f1hMNFyQ1zpDyHb' \
    --limit '16' \
    --offset '57' \
    --sortBy 'createdAt:asc' \
    --userId 'LwyPnZeL7gnBDqV6' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "UJhuzRWL6zrYO9mW", "userId": "15C3FFeyfC1ra3P0"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '475rLY52Y2vs4C3H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'kV7ZHBdxvemyYeB1' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 20}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Fik28kqxsnfw3LKu' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NAGGswKtCo6WAIwB"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'T1emW8ApjN1lbUap' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '11' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'SNwJfTLBAJQjJ3yO' \
    --tags '5xntlZSLIVDBQNfK' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'vtjc14PlMmN1EaKE' \
    --namespace $AB_NAMESPACE \
    --slotId 'EzdjIFExBFo9OGoH' \
    --sourceItemId 'XBRXdOSrwbnzLX4S' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'xxV8gNNasLrbhGgR' \
    --limit '74' \
    --offset '20' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7chf6q0GW54u6x4g", "description": "gI4dyZJ0YKN6Tces", "initialMaxSlots": 38, "maxInstancesPerUser": 66, "maxUpgradeSlots": 92, "name": "cEfZ1ofurrC16MAc"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'AZGnjNnPHalXSMlT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'OTmLbA8uNrT4gNDl' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Nd9T6GUqqRvl0Z1M", "description": "QyxyiP9ErfDOOeFs", "initialMaxSlots": 65, "maxInstancesPerUser": 49, "maxUpgradeSlots": 7, "name": "LrseByjmUwE9BWDO"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '5t0VGca5qe9Gmqmh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '33' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OQmyiZp8BDeuZCb1"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'dxpX2lh2DiSiJPOM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '96' \
    --owner 'gK9F4Mqx9ASGIPE4' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "uBLDVWb29LWHVfFx", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'CDRcLdCHOybtfyT9' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'lGIJHFU0LGbRiFhZ' \
    --namespace $AB_NAMESPACE \
    --userId '58McdBK3KECETeTi' \
    --dateRangeValidation '8DCNrliFYKEn9qyK' \
    --body '{"options": ["3J2RXPK2jt8KmQnA", "PfKnt16hHNKNiF06", "HFl6q6LL6OUWL7FS"], "qty": 77, "slotId": "WJwvXWqxfy7vP9iL", "sourceItemId": "CNhMvZGpGLD5qQKc"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'CujRVAn6LLuhNDxv' \
    --namespace $AB_NAMESPACE \
    --userId 'lWWa5Lsb1AAkk089' \
    --body '[{"customAttributes": {"9AXYuzzaJkfKI9Qx": {}, "IcdVXvvNMr0AIRI3": {}, "NybmgqbwFMsn59k7": {}}, "serverCustomAttributes": {"IH5x9QoWGIVl7VeB": {}, "Xyhs8UqTi7ufwb9U": {}, "1rD2CcGozoRNIZDR": {}}, "slotId": "WuutAfqXkkvckecx", "sourceItemId": "JOTNiOi20Z2T0G9f", "tags": ["f0UgClRHyWU4LXeM", "XPkJcN5iVelMDeIm", "CwtayLlRoTVjQdAy"], "type": "BNUJ95Ch5aZGDkLv"}, {"customAttributes": {"okK51rg3OT1xjvHt": {}, "AbOdPjrgaGozVEXF": {}, "JDP9BBL1jqRuIOKG": {}}, "serverCustomAttributes": {"pXgxQV6k4iPoQAoF": {}, "j1K73geaqlXotuQO": {}, "RZNNKu3v8dTMBBdk": {}}, "slotId": "xfoWjErjMbUo740q", "sourceItemId": "kEHPEBHbkxg4VH4b", "tags": ["40CcEIUaQPNl83Qt", "tAWGrBZkvzUiOIZt", "3AxVu1mcI3WSR6sj"], "type": "5qYAf63b3aVgJELe"}, {"customAttributes": {"xAc0FYMxfGSupEhZ": {}, "Hprq3jfq9fb2N2mX": {}, "xS1DOGwUJocJBdEW": {}}, "serverCustomAttributes": {"8QsT5lY3bvWGLwj0": {}, "vlsHuLrs7ozkR5am": {}, "hxif7MTi7KEhVqyT": {}}, "slotId": "BLtHZYFZmlN0UrZH", "sourceItemId": "u29Q26y3k53v40As", "tags": ["iBCevdj82KSpYmYM", "E63LRG0rX9QkoRi9", "GmbZEX1sesngvH40"], "type": "KIGkqngGrfdpfDQa"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'tI1w14GVvyQJp2QQ' \
    --namespace $AB_NAMESPACE \
    --userId 'JhAfgByld71lF7SH' \
    --body '{"customAttributes": {"dShThUnHgw26TVKe": {}, "wA86XcBDN4iNt8r9": {}, "EdzzlM0JHAJokhrK": {}}, "qty": 58, "serverCustomAttributes": {"4YQhKsQ0W2XsLgDK": {}, "zbzROWSBUMDFuuRL": {}, "TvxgkFpMeTTQ20y1": {}}, "slotId": "NmPSijzhLKTHLuhv", "slotUsed": 46, "source": "ECOMMERCE", "sourceItemId": "MFoVTC5pLKtR2vtO", "tags": ["JprztpHJo6qeXie6", "T4vnaFBxaEId4ooF", "Qt6HwNjB9arvkyoP"], "type": "Tr6hHojoL1Wb8UGm"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '6W4koUMxZcybRKQf' \
    --namespace $AB_NAMESPACE \
    --userId 'jaVnVpHd8kep1Ddw' \
    --body '[{"slotId": "iNUcBPjHHsZwUNv5", "sourceItemId": "Kcm3Ss7vkUwXX4jA"}, {"slotId": "bNQ9xjpIQq74O47p", "sourceItemId": "3yLK8bKnRZsgf2rk"}, {"slotId": "x9urvVULTI1n7QC9", "sourceItemId": "bKELmwobfZmXrCTV"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'ZXnW3lZwxwwRjxnh' \
    --namespace $AB_NAMESPACE \
    --userId 'A6N4DowUIPV9TqpL' \
    --body '[{"customAttributes": {"MQoQH9fdANy6IKLn": {}, "RgAokG2arVDGxMhQ": {}, "V5sakqLswjP1sUVN": {}}, "qty": 8, "serverCustomAttributes": {"uIeM9km7ZfMG7Tos": {}, "2yi8EkUhavFvDGsI": {}, "mSElOmI86WGFHtAK": {}}, "slotId": "M8tlzx7aNkJcMuFE", "slotUsed": 40, "source": "OTHER", "sourceItemId": "gNlmeQ3VfkpF0qVT", "tags": ["09MNKtwmDQRRi41k", "pmWqcFVULIeX9AAt", "Ee5OwXGWbDf4XuII"], "type": "sY0R5AR2whaGfJN1"}, {"customAttributes": {"hRdX6ISaKEdEdQbQ": {}, "0WRGm8giD4w6Rinv": {}, "0XRHUC6zBAmjzwqj": {}}, "qty": 76, "serverCustomAttributes": {"YBDRDstzG1KlHWrm": {}, "AD7ZkGC3HlOKrU6q": {}, "uLZu0QH8Cq1hMkuG": {}}, "slotId": "z9iUar1JSTgfcDOk", "slotUsed": 66, "source": "ECOMMERCE", "sourceItemId": "XGf10WEVGYGR7lP2", "tags": ["apC500Pz72Wlyx79", "lQFiwDJ2mbgeQ0ZX", "QuqIEsA9IqJuhM2l"], "type": "1oOaaUINFRji2v3e"}, {"customAttributes": {"CaPS3quFM15kHtTE": {}, "0TTitDIplc3fxJJU": {}, "DtXAUrDWLCLHI2vB": {}}, "qty": 46, "serverCustomAttributes": {"Xa0dRYtduRy7JMtM": {}, "4ArF3IM8H5WTJ7hR": {}, "aYHk06ww7e30Mp3p": {}}, "slotId": "V7Z4zd5RFPEdtJFO", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "SlMaNZHCImaGmj8F", "tags": ["k0vgYIku9YJVjtTH", "1U9JpPQk049k2GcD", "Fvs1zQvDFMuOiQwq"], "type": "Pt3ABYsWdE2sESrj"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'U5uBQjdh2qmY7JmJ' \
    --namespace $AB_NAMESPACE \
    --userId 'RuzmteRmtxEc8RCO' \
    --body '{"incMaxSlots": 49}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'wGlw4aY5UEVJ83i0' \
    --body '{"customAttributes": {"SS5Gld6r7kSk7pTn": {}, "pPOxbmKVebxfkRtB": {}, "lAdKGQQkE96ORkrC": {}}, "inventoryConfigurationCode": "ks0UFaPFRAwlNOQs", "qty": 65, "serverCustomAttributes": {"ohv4qMrfbcxuOzjP": {}, "wuxn2CDZuiVlaBRd": {}, "defMevyZGLDJGda5": {}}, "slotId": "WGYSGcuIrjnaRszi", "slotUsed": 5, "source": "OTHER", "sourceItemId": "3z5Vit2JkEBnYi48", "tags": ["jjzHOx065bA1PvJP", "2QBSTIkf9B7eDnSY", "LlbuMMGFxVRnIn5U"], "type": "TlAa0hzhwcY94OY3"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'lmKTwTfduMTPcKn3' \
    --body '[{"customAttributes": {"eX9mSb0ETQanErus": {}, "OJDQuMEfRb4e478p": {}, "E2wun8oD2J8jARej": {}}, "inventoryConfigurationCode": "0vw5vDswxvd8Bga1", "qty": 96, "serverCustomAttributes": {"arG7SZRK6sTPyQvD": {}, "Qm2pP8n8uSjVLjh6": {}, "SmVdLsCBT3g57hSH": {}}, "slotId": "tat4wvOPWN368l6J", "slotUsed": 72, "source": "ECOMMERCE", "sourceItemId": "pXwFPhfDtyLiSjD8", "tags": ["vBkpZ8BE1pNjgqCJ", "cTd0ZSd9kwEOKLkd", "889N0dQeCxg4uP8w"], "type": "zeTHIz7Ak7u9sfCv"}, {"customAttributes": {"aTzs7gKl5L7RR0Su": {}, "qq4KVhgBfGw87dx3": {}, "w34HLRvulgy2dGKQ": {}}, "inventoryConfigurationCode": "6TiEdQgT5PV6Yj2q", "qty": 12, "serverCustomAttributes": {"H8zw84RRZmaUxiKL": {}, "JhGLRdmLD8wvQIRK": {}, "tNvrUL6Dt69FrQYG": {}}, "slotId": "C3y6igh9wR7sNaij", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "6UlcRhHg0xa3Fk5F", "tags": ["WzKJWfl5EheY7vrc", "86SiHoNnsY4AOj45", "bhIJqBEIHoXVHxER"], "type": "EUkNlyHI2EDP1AQt"}, {"customAttributes": {"Nwg7j68Yhf7vIa6W": {}, "TlBZAjVNQ9YGiYe3": {}, "wTXOq45NSAv0yMyH": {}}, "inventoryConfigurationCode": "tOzntuk2qHhWgZS8", "qty": 55, "serverCustomAttributes": {"j5BLcYj4MTS1LL75": {}, "c473qBYB0EldoYMo": {}, "LQbYQPGAdrVfyCLA": {}}, "slotId": "och53KKqWjmmpFnA", "slotUsed": 25, "source": "OTHER", "sourceItemId": "jdvo35IndAfhML2E", "tags": ["xRBjHwFut3NN5nWy", "XMFNLls6lyKe7IGo", "FKf0LqTkM3yALC3t"], "type": "oAuQlW1Gl5IgjmHY"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TqxfsXvGpHjb4num' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'mezc8cezR0eOKSob' \
    --body '{"entitlementType": "jCSWnEuZdjooKJ16", "inventoryConfig": {"slotUsed": 76}, "itemId": "nOSRSr3VKe3oDPty", "itemType": "T5HnXE6Uht0jXKUf", "items": [{"bundledQty": 49, "entitlementType": "lRiGMsMQtnwrhWbe", "inventoryConfig": {"slotUsed": 29}, "itemId": "gldiYD74qmEt99NV", "itemType": "ZIPLtzdKoVzd4ddl", "sku": "UGg82NQEkvMvBzHw", "stackable": false, "useCount": 67}, {"bundledQty": 12, "entitlementType": "vDLxvNrEUx7piEWw", "inventoryConfig": {"slotUsed": 71}, "itemId": "NljnNDVYRMUaMA1q", "itemType": "ytFKGQv74PEKxgFi", "sku": "2vHbBnq1qnUDVtvF", "stackable": false, "useCount": 14}, {"bundledQty": 52, "entitlementType": "ZL4c8TeuaBRUvMgt", "inventoryConfig": {"slotUsed": 81}, "itemId": "i9ZuqLC72zTeEtZT", "itemType": "lAbyGrs1Fu2GSt2y", "sku": "ML6v1JXCHIPbhScg", "stackable": true, "useCount": 19}], "quantity": 9, "sku": "6Y72mbHpEJj8qjVh", "stackable": true, "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '8xdMOoHMzafxWAfx' \
    --limit '21' \
    --offset '60' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '70' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '88' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '4SrCbyVIC9USouX6' \
    --limit '7' \
    --offset '79' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'uPyAF9lBnAeXsqYn' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["tGYEv8rH0RrNNTMU", "VvfSbTHB1mFGZhpq", "COvvzwbpOyzVRrgW"], "qty": 10, "slotId": "3k3MmykPGbJkqyIE", "sourceItemId": "kVDYASu7vKMDyZTp"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'rdTghakOes1u3fF3' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '37' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '59nMTYTdUQoFPhIe' \
    --tags '2AKGkVZA5ezqf8h2' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'dqbkmSh3L2QOHyUM' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"I4ASwMQsL9b8ZCEh": {}, "ZmPA4SSQgftZJOUv": {}, "Jh3hnzJIXHXBqeir": {}}, "slotId": "jaecfsFsC83bmWqm", "sourceItemId": "PsZSE4pQgLv3Ujfa", "tags": ["9zpHu4tOzp4fZPFB", "HseemTeSEJDz1yru", "sXh5TBxfcTHDBMox"]}, {"customAttributes": {"A8m9bbLyO0jRccCK": {}, "JjARl8tF1HiMmIUR": {}, "hJpxD4Ap1twPuT5E": {}}, "slotId": "xXMYHQN08jAuUWL3", "sourceItemId": "tBXtDiHUO7DrfJ5g", "tags": ["xu8v5MbvNVPVN50d", "gmf22uymp4ocNPGi", "SFgXVBtd3AjijyY6"]}, {"customAttributes": {"UsifCYGT5oupdpfu": {}, "p8SApminFcTik4jl": {}, "jaCeeaBCrIwvW3bV": {}}, "slotId": "y2zDtI8EAogiUlwb", "sourceItemId": "oWNwFjKxiuXdoijy", "tags": ["8Uu01UwYz5yHLlSK", "nbUbUVAgxJGT5a8b", "RDc7SaWkeYdIM40Z"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'zPVEse1NK3fKeRmr' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "9yNTPOgm3MBhODcO", "sourceItemId": "HhtGuaf7UhZyrk7G"}, {"slotId": "cw7kduyAQB77Tkyk", "sourceItemId": "DGEFrhWrv5HJU1Y9"}, {"slotId": "LLXEvJRu0kLwjPc0", "sourceItemId": "kXU65RpPp2gwncDj"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'i0sE9j7fjvFaqwsl' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 10, "slotId": "w4c0p2jMy2Q9NwUo", "sourceItemId": "u3qyQE9Ibf0l33py"}, {"qty": 94, "slotId": "nnNlY1ea0UaaGWcv", "sourceItemId": "s6pQF65RO1xEWU0q"}, {"qty": 94, "slotId": "m2tsCGrTS3lLFlkc", "sourceItemId": "zgoeKzz1OKZEhH6x"}], "srcInventoryId": "EHrQKgTcqVQZrZQP"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'dadnuZ6AEGr4MSTt' \
    --namespace $AB_NAMESPACE \
    --slotId 'X1gBJSLjDupMRK0P' \
    --sourceItemId 'E0uwtPBReAla7R0d' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE