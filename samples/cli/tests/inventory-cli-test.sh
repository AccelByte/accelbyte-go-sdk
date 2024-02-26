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
    --body '{"message": "rEFaTCsq8JgK1mNr", "operations": [{"consumeItems": [{"inventoryId": "j8wYvx9x2taJK6RC", "qty": 31, "slotId": "1qV5pAMCDZq2Iyx8", "sourceItemId": "FTPja8LnmAYUEMh2"}, {"inventoryId": "VQ6T0nm8KveWrtJV", "qty": 79, "slotId": "m4JH69JOiNv9QVIW", "sourceItemId": "OUNu3nq9Lc0hogJn"}, {"inventoryId": "ybIY0tECjt0Nwdul", "qty": 85, "slotId": "OH61RduHZLbbB1rC", "sourceItemId": "MOrZfXj7Du3Y1YRB"}], "createItems": [{"customAttributes": {"jg5KLcASRM8lgXPq": {}, "phjjG52fpqzMocCA": {}, "rQnf3xLJqEWYIj05": {}}, "inventoryConfigurationCode": "KYZ4XWtQF2JdGv3j", "inventoryId": "nJ2YseHMEdtGhRKU", "qty": 22, "serverCustomAttributes": {"Emw0vOTzSbiNIStQ": {}, "1pB5qY0cbBKZn7z7": {}, "yPkN8CaJmTc0mqOi": {}}, "slotId": "Qe3L7ybVknzajLgk", "slotUsed": 92, "sourceItemId": "B65qgW1iC8UjucAf", "tags": ["7oPH4Dg42wf3S6Oo", "YaoHVUVJh86jCBcG", "lqd7GYxYlJcrtWFv"], "toSpecificInventory": true, "type": "L7yD6Wa7PcCqi2gp"}, {"customAttributes": {"WKEiCfhgeVQsSxEP": {}, "0NYzlHhwadNYELbt": {}, "HbPne9xr78cvlAI5": {}}, "inventoryConfigurationCode": "RHHULpY7BDCxF5Jw", "inventoryId": "4uhnpRYY3T7CN8tK", "qty": 88, "serverCustomAttributes": {"NG79jlh5gNuCHMqB": {}, "V2mfRKTg0y9W5BKV": {}, "NEfKCWlxrbjP0Xkj": {}}, "slotId": "sGdfE1Q0Gyik5AhX", "slotUsed": 90, "sourceItemId": "EBgZPkkDvQEoyz5A", "tags": ["okhduklmQ0fpkiis", "t6QjKhT78Kc8G6Xh", "fZBq4b9XxAU8jXSn"], "toSpecificInventory": false, "type": "lg14KQoGALxsRK8w"}, {"customAttributes": {"vS0jjZuDmobaN4As": {}, "4c7NRCmfFGxMT0JK": {}, "RtVv5QEnuuodFVdb": {}}, "inventoryConfigurationCode": "8sO1ql8voZuQN3cs", "inventoryId": "PoyUsgpaLMu5KbTQ", "qty": 60, "serverCustomAttributes": {"OfgpgGo8DKIMxWkP": {}, "YQREIU0TPG4z6C9h": {}, "OmOEkHEnk3PIwCMO": {}}, "slotId": "MtrgZOID7FuxeIqF", "slotUsed": 39, "sourceItemId": "iv1xJmUeRf0rAhbn", "tags": ["440lk7yq7MbxjREf", "a9BP7ij4liCc81ni", "DvXveRgdGJzcpgb0"], "toSpecificInventory": true, "type": "8QsxaWb1ns2RrPbf"}], "removeItems": [{"inventoryId": "aKDH3iO7LOJ5oJh9", "slotId": "KKO3FVCGlFBa8B74", "sourceItemId": "ZzgelGt20Rsjftof"}, {"inventoryId": "FSuGkjBq1Ri1XsDQ", "slotId": "HBwHXoFRVJTKXbCL", "sourceItemId": "Nqu01HApDCyJgQul"}, {"inventoryId": "CYptYQo602jGH95W", "slotId": "l1hTDmxqd3bXsicv", "sourceItemId": "woEPLYRdLMIrIo3f"}], "targetUserId": "4be0RIUw08vtgybG", "updateItems": [{"customAttributes": {"KaKgbicN9lqdl0VY": {}, "zGK7Tik5bjAdjsAD": {}, "26Rl47kYka5qlhXU": {}}, "inventoryId": "UMpCh0rNtmjXmzQS", "serverCustomAttributes": {"YQlrMIJlV0xBTHGJ": {}, "fcAjaU30TSFr4Efv": {}, "dVOd1wzm0cvmmNcP": {}}, "slotId": "e9TLPEfldxWjMjkL", "sourceItemId": "fPv7mL8bDeDdnPSW", "tags": ["OXp8GSAQeQW5zhg6", "SAXQfkL5nFscMvjY", "QUnFeSIWAuDgFhYo"], "type": "mBWBuVKs89Gb5n6O"}, {"customAttributes": {"fm7OX6DdKVnX0nfx": {}, "UhyUsDHB0CdK4mMi": {}, "14jZzOND2DPKaERb": {}}, "inventoryId": "oP0syUlFccnLqmUz", "serverCustomAttributes": {"eFc9neBXNNVhInFp": {}, "CZSc8DdoUf6AFKV2": {}, "58CKYXrJIHa5VIQv": {}}, "slotId": "AVbq8kACogWKNjnH", "sourceItemId": "lo60qeMMm4iwMNKV", "tags": ["gYaszrwvqQVpAdXp", "1mpO1laUQNrBUfrN", "fJahovF13Z5d0EjD"], "type": "dpa8X4KRMP88UKk0"}, {"customAttributes": {"cLGPoStsCd5RAnXg": {}, "wqi63Ejq19ikBR3v": {}, "m1qBO6p3fsSSkwkf": {}}, "inventoryId": "cmyMOGCv47fScNl2", "serverCustomAttributes": {"7MVgyho1LfetbxdO": {}, "d5YPXEHTlrV9jH7u": {}, "4pK62L0wEI9GFzY2": {}}, "slotId": "QCfoDI4eq2kDkHEk", "sourceItemId": "LXRoAe5GNgD4njNJ", "tags": ["0aP4skwP8K28LKYs", "DmDmJ3uQepCOohdr", "umd74bbGyu8Fpkpv"], "type": "ikCOX3MnGzjJhXcI"}]}, {"consumeItems": [{"inventoryId": "g9jtDQSgIJIVeaJ7", "qty": 78, "slotId": "tviynE1j8NK1mAZ9", "sourceItemId": "MAgqepyXqsD1ev6C"}, {"inventoryId": "UV7qO9F5gmkrX1vS", "qty": 80, "slotId": "VXQPoHFN4Id5hjCL", "sourceItemId": "hsqdeoYsMZv16unN"}, {"inventoryId": "GxTxBls418cz62J4", "qty": 9, "slotId": "A9rc1qBBiudHEgsT", "sourceItemId": "wWTsAh1o7j2s16rn"}], "createItems": [{"customAttributes": {"sC09WSet1BvYtWSJ": {}, "Uaer7mY0Tjog8Xc2": {}, "Dst9SFirM6vdZKio": {}}, "inventoryConfigurationCode": "InCwRSaSShrfgT2U", "inventoryId": "FfSwMpXDTWpwLld3", "qty": 100, "serverCustomAttributes": {"yhm42AgPNmxBNhUE": {}, "Jg0eZ3LBnesxFR45": {}, "kIcvbl7DDnFOWcCV": {}}, "slotId": "vMchuiBjNvXnZNHZ", "slotUsed": 51, "sourceItemId": "we4V8HKNeObayOo4", "tags": ["78Aexh2t0bnz7SAa", "G1mgyanyrSSJrVbD", "QsAbDmZIio0t82q0"], "toSpecificInventory": true, "type": "LlM6G7fysiScBbzq"}, {"customAttributes": {"b14ZpvZLBUPbj19O": {}, "BDkKzzY1YJawCtDu": {}, "lCtMbWIaYxmugUgj": {}}, "inventoryConfigurationCode": "ScOUHGipUhwC8Q9p", "inventoryId": "p3HWp4qlMqFizZs8", "qty": 38, "serverCustomAttributes": {"cY7LLKbInWKzj3ns": {}, "SRqKnVyUhRL3XX8A": {}, "dWyZS2jiw0vBic7I": {}}, "slotId": "Fw66HjKVgkFOjjFR", "slotUsed": 12, "sourceItemId": "YvZSWYJNkfegX6Cg", "tags": ["YJZO3BASOK94oTME", "36layGPfbfnuYec7", "M8m6ePRy9VH6vXQo"], "toSpecificInventory": false, "type": "oodbk40CGNSIuMeP"}, {"customAttributes": {"XlziHkpzG6kKaDzJ": {}, "w55WY6UiFcTPEQeK": {}, "XkBH4xYew8OT9odG": {}}, "inventoryConfigurationCode": "zbBTlZOF3sf2AgCC", "inventoryId": "bQ5Bxtd4ia5EbibW", "qty": 50, "serverCustomAttributes": {"Uep5Okv2bfwiVub3": {}, "xgH8SAUFzpSiikuD": {}, "JiBrWRA1l3ox9oZg": {}}, "slotId": "qdyy7lFitCyUmImY", "slotUsed": 46, "sourceItemId": "yAxEEzlzHAyw3f3N", "tags": ["jreY3sd3X4NXMLz8", "AnFRvXOzi9SG44K4", "rPgoynnOWAC8gmBT"], "toSpecificInventory": false, "type": "aoewOVsvsgFbH8vK"}], "removeItems": [{"inventoryId": "nHvKUJohZ1cE9r4s", "slotId": "0mf4MPEUgASxlWbE", "sourceItemId": "jnK7dVZ6BAdoImnQ"}, {"inventoryId": "RpXTdLrEyEagtSeZ", "slotId": "Fb40MilFoRuSVHSC", "sourceItemId": "7rENlEw0XCCpXcaF"}, {"inventoryId": "4OaxTNZcIX2dI8hV", "slotId": "yXbkjuQle62oEKck", "sourceItemId": "A52UFhdBN1aEDbjq"}], "targetUserId": "AI2mVQRCTFJaAHZw", "updateItems": [{"customAttributes": {"bNweSG3AzECg4mLg": {}, "ldHFHE8uwA4X4La5": {}, "46UDgmApCYcR5A9R": {}}, "inventoryId": "55sh3gCs5J4wMrbv", "serverCustomAttributes": {"j4xQnrVv9hApCIap": {}, "bvf9FMw0LpN3HuRK": {}, "ABWHcSTVMXqLLNPW": {}}, "slotId": "TikR9EblHVdonKeh", "sourceItemId": "h7fm2wbuRxszZoLw", "tags": ["F1hHI4qt2GuW55Jc", "0A5xIAwGs4bOLpX1", "622WHgOf9FeedIbs"], "type": "YjYHs2xYV9Bj4Asz"}, {"customAttributes": {"P1wGZ3NySrS84JjP": {}, "wAB5Ao6q6FKlpwSM": {}, "JRkRcaJGoyyIUccA": {}}, "inventoryId": "GuZ9Nr1jUKbLAOMv", "serverCustomAttributes": {"mYg8jCos13Y2msqz": {}, "JACD1cXEjovnqHm7": {}, "Ju8t0ZkPUytTIUlb": {}}, "slotId": "nv5LaypJPod65itT", "sourceItemId": "xl8xtJ5Zy4ObE0AI", "tags": ["ody29xIkf6sHeXh2", "OnWFrDCK8RzhjnSE", "zynCkHC1Xgvi5rKv"], "type": "L37bM1xnX5x0YE2C"}, {"customAttributes": {"Ymkv62XWSQmk4Ika": {}, "LyuCeeCXDeKDzHSB": {}, "8GvNa1Qxk5VmL0v0": {}}, "inventoryId": "Ny8hM8BYkVoENexQ", "serverCustomAttributes": {"ebLoTb47iv5zwI8F": {}, "rZnjzperq7RoJvoi": {}, "Qvygbeqk4QvwRIN4": {}}, "slotId": "bRQ6oaZzOTYGAYQt", "sourceItemId": "YlyRrO82L6wdLqfO", "tags": ["yR9vsTZ1UMw62jGN", "rXl4aTdBlCS4zBIq", "Y6j2ktdsD01rHH79"], "type": "iUs1BdqRstLkmDSx"}]}, {"consumeItems": [{"inventoryId": "lo5weNBxNCp2CcJR", "qty": 52, "slotId": "cuzaG7rwt2z4L0Wq", "sourceItemId": "IoOBTR0udGhixkGY"}, {"inventoryId": "YA9Vs9PNeUNXKjH8", "qty": 67, "slotId": "fmj4jE197IxRYsnG", "sourceItemId": "XWkF3F814l415PBh"}, {"inventoryId": "tngEAGdtuBkwAtsS", "qty": 65, "slotId": "RVcNL93uRFDUeApJ", "sourceItemId": "N3AYi5kSgrizxlLa"}], "createItems": [{"customAttributes": {"pyxBYI2wkCEpYVrC": {}, "LPG2FHSbKXlVGQ2C": {}, "IEmTaaQ2DShrcfbo": {}}, "inventoryConfigurationCode": "Pz4QFxPwQK8lnaV2", "inventoryId": "GabwdW0CYVq39XQS", "qty": 13, "serverCustomAttributes": {"cczgocaHrQuvYqbC": {}, "t5LrXGoQJhdvUqkG": {}, "rsNpNoBQZKe2Faaz": {}}, "slotId": "m0AAxqRo3iEKHGnz", "slotUsed": 83, "sourceItemId": "7P9leU8le8t5iYXi", "tags": ["ois9HQQbzOurJO3U", "KcbXM61mGmSlw5pG", "PDSs6FQSoxtn94S1"], "toSpecificInventory": false, "type": "i26EI3IJ9oQQleYh"}, {"customAttributes": {"OVxEIl3Gl3VhdvXz": {}, "MUVL6DkmSRLtXEx1": {}, "heIuVbG6dI7IgWLt": {}}, "inventoryConfigurationCode": "EKTmKO2jY0nEGDH6", "inventoryId": "kz0uUP8PgUA2389n", "qty": 68, "serverCustomAttributes": {"dx27eMZsZwJ2vthf": {}, "wTFpQHlMj8dTdSiI": {}, "RE0AffHrnDFig5WF": {}}, "slotId": "yKF3VFcuHnSK3Rfl", "slotUsed": 23, "sourceItemId": "Q9p6Sjem6HUvjBc5", "tags": ["1yBjgrZSSQN0H8qB", "fh962W7KVeRcHZjN", "frhRxN1QgdCPEhVv"], "toSpecificInventory": false, "type": "myDsH5dTK20nNqa7"}, {"customAttributes": {"waCJyYY7ddpRHamW": {}, "AP7MOmQqzOIuu8Qg": {}, "oC71sbyhThpPtlq3": {}}, "inventoryConfigurationCode": "Qoo3BIZ5TmKxErss", "inventoryId": "NN53dP66C8TBN8ss", "qty": 28, "serverCustomAttributes": {"d6d8SrXS3J3cFOgy": {}, "4c1tUJTdJi8BRMSy": {}, "obgMfrJWzipqWVK3": {}}, "slotId": "vU4MENE5FsCPOGoc", "slotUsed": 2, "sourceItemId": "xSzbSp8cR5sl0SJV", "tags": ["hWHh7wguTbgdqwRK", "WyuJ1NzIOcQFz0On", "mzIuoGFrkga2NEt3"], "toSpecificInventory": true, "type": "1sxSRTtxYiZu03J7"}], "removeItems": [{"inventoryId": "15IuMqbAO0OeOtck", "slotId": "YviobzfcOS9B7SOK", "sourceItemId": "hu9ADItGDFUTcn6P"}, {"inventoryId": "4Uo60BlguVMugfXi", "slotId": "kEMSiazQHMM5GZU5", "sourceItemId": "RMqmrZNWAHn05EcB"}, {"inventoryId": "DGRGfkua2lua43QQ", "slotId": "rb92a2Os7omtePoM", "sourceItemId": "9uXC9ocL9BWu8B80"}], "targetUserId": "KrD1hLmoHmi5qx3g", "updateItems": [{"customAttributes": {"KVvH1fEUoJ1CqW82": {}, "PjP7sEmT8iuC6S3D": {}, "TtdFXkzoDqXN4YSY": {}}, "inventoryId": "ouHOIXUmAx9DMtWm", "serverCustomAttributes": {"g1ka24ZgJEPTurCd": {}, "qgLqzlgEoeES6hmn": {}, "cBT0WzsotTsk4J7C": {}}, "slotId": "cKcLmit9M1vb8xzg", "sourceItemId": "szow4EIA8wOoI6E2", "tags": ["BXIgC7jyxBzLGIf7", "63WyWofdCpjGvkIZ", "LuLkDBlv7zqgROC0"], "type": "3GsxLok3RLLxgPd9"}, {"customAttributes": {"OCaqqyYs9XVg1Bhw": {}, "UrHZOXtlvd1pJV3X": {}, "2ZW9OcVIC2wbSehG": {}}, "inventoryId": "wJtZpAkpa2rs6CES", "serverCustomAttributes": {"t72RZj9qMrxN8ReV": {}, "WOohstNSfzEi6fyy": {}, "JautXyX0xd8CouVB": {}}, "slotId": "4HCh0lNFwkv65VBD", "sourceItemId": "QDbmOru1dkV60x5F", "tags": ["U8T0Bh020CwoLuvT", "DzXIcQPf9Y83rXRC", "3f4msT2sfL7XKEsj"], "type": "Yj3HSaHVgoMM6S9u"}, {"customAttributes": {"hoKZ1A0oS3OfrLDv": {}, "UCxXydxqGEB7VPFh": {}, "1yubphtPK9meYqlk": {}}, "inventoryId": "u99TtG0yfHc43aFU", "serverCustomAttributes": {"sPlpRruRXMoFPVZJ": {}, "EUfE26YQhSQ3QPPN": {}, "Gq1yRBa6dImDvHGT": {}}, "slotId": "Fcw67w903P15B7Gg", "sourceItemId": "El7f5zp8FJ9n8YA3", "tags": ["Bew7NnzvhxzDtwuL", "lc1cSZW5i7919MJU", "98qMP4BEHNtRS92J"], "type": "gme3EnPltSEP0mcG"}]}], "requestId": "G5q1F1yob296hW2f"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'FLVmr1XQG2OVd7oO' \
    --limit '67' \
    --offset '28' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'CsjyFVnMTkfrVG4d' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "wruoghuorupk0q8n", "userId": "XmTJUaACNQR9jWQk"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'Y7xflpOmHYvZnqch' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'XroFr2yaxqtJRe71' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 23}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'I80rAyNViUpZhT4l' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "6Uy4Ys9Hu6SPYszO"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'mCtDGEumomrMme7W' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '41' \
    --qtyGte '74' \
    --sortBy 'updatedAt' \
    --sourceItemId 'e4UFDXEln37yfldz' \
    --tags '8gLfsY6Ge1BA77pQ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '4GquGaSZBsFKP4Kh' \
    --namespace $AB_NAMESPACE \
    --slotId 'PzEU9WOpkYAXoCLy' \
    --sourceItemId 'HW4a7RZuGSLIw4Wp' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'wj7sadQLYbGoWUBx' \
    --limit '66' \
    --offset '83' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LisVdM5VnbdxrbQO", "description": "zDZCCUSKChFWgoSF", "initialMaxSlots": 46, "maxInstancesPerUser": 54, "maxUpgradeSlots": 70, "name": "rc6ykVd9HKY4t8Nn"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'sG0fv8y2GDMjWhlJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'Iwg5vkuimQZENtt0' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Io07ou030kTEw3cD", "description": "yE58htaLaS3OZTPo", "initialMaxSlots": 95, "maxInstancesPerUser": 78, "maxUpgradeSlots": 64, "name": "Z7BgIPvAMQRozySM"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '83RouH48rC5z6WCP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '33' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Gs5M1vNt6DGcPGzN"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'oUr2IRL4Q1PXxbUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '43' \
    --owner 'hGlIGGxJFSP7Bp7T' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GPm3o0NqpXcjoHWW", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '9NGct0Vcda8ZTZJz' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'mcPcqoq8jjle0IKn' \
    --namespace $AB_NAMESPACE \
    --userId 'upPIuMjUGhMgcp0Q' \
    --body '{"qty": 9, "slotId": "3lp3SIOuKvXlbuA1", "sourceItemId": "pW0hbcsMgBLDoCYn"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '1r3SnJlKAgDxL02k' \
    --namespace $AB_NAMESPACE \
    --userId 'AYUlwL1I5ap0kM28' \
    --body '[{"customAttributes": {"UwlxbK99qIFZPMPe": {}, "59Z1kSc4khVIvX7y": {}, "EjOXhpthiUgy3OVN": {}}, "serverCustomAttributes": {"FtOwU2W0wyZdBdDJ": {}, "Fz1PZKfByk9pj01F": {}, "ORN6kJOwNjvmaS3C": {}}, "slotId": "6SQxvF59NtecXjKx", "sourceItemId": "0BudK3vfMQLcT9FY", "tags": ["8mdI3PB8DkjX5G5f", "TPovLLOZN1EYBopN", "vHujqtbTgE3Kdngb"], "type": "NAMKRCsqrCaGE04N"}, {"customAttributes": {"HXtHiz15oia14kU6": {}, "etyQ1EUl5BhB9rYh": {}, "KYw1RLxQ6z3uYqSS": {}}, "serverCustomAttributes": {"NCyr7caBRQuaIfef": {}, "cxGQWnS06YH57AE7": {}, "zPWdcZX8mqf5BSVn": {}}, "slotId": "Y9f4zw7AoAcnzdMM", "sourceItemId": "4lcTeJHxxp4p09Ys", "tags": ["k0q8ncLTtbnCTuAI", "9OYFkJuqoovJxDnZ", "dh48PMSkm9uR2GTD"], "type": "HlRK3iXEiHZHz161"}, {"customAttributes": {"Z4X4f6IsFTqrtkMu": {}, "D9GLi5VLt4s6bhg1": {}, "ddZz7e20FqTIUzxR": {}}, "serverCustomAttributes": {"aIhIUgdeyzGltMtc": {}, "4IJqyrDUvaCUzF5Y": {}, "hxBMjuBUDdnYTa4q": {}}, "slotId": "1UX904m5Bj1h5vMs", "sourceItemId": "i4tjv1BS8DoGG4FP", "tags": ["S2uJ0Uqmf4NuvyVR", "mlavYeVJUOmXw0tP", "kXuyPPruuGbW8llz"], "type": "l7F2edN9ohaDR5BL"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'VSnaW3AuMuWLfTsX' \
    --namespace $AB_NAMESPACE \
    --userId 'Uh5xw1otGYsh45be' \
    --body '{"customAttributes": {"z0BZXc5VpBuIXB60": {}, "vRDZWZ7u8wkariKX": {}, "xOfMdjUHZqVkTtB8": {}}, "qty": 72, "serverCustomAttributes": {"70F5FKaVusYQliFG": {}, "DRKPWNSJEK66nQ1C": {}, "DmG5eHO33okn6hZG": {}}, "slotId": "Lz1kvGOHb2fXWD25", "slotUsed": 73, "sourceItemId": "94CmtbIZFQMsQFpP", "tags": ["6QcuD920FI1dGa8k", "A5vlUa9RaAEoE8uj", "B38oBZBYurq2e5C5"], "type": "G3mACOO7cJaIoR8e"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 's65osoHC9ekbaB0M' \
    --namespace $AB_NAMESPACE \
    --userId '6uT56GnQpFVIBPzF' \
    --body '[{"slotId": "0HrL3LIFvNgnf3M1", "sourceItemId": "YlqAtkUUU3NdNcxO"}, {"slotId": "F5Htm9sCxUUN6UKx", "sourceItemId": "bE2HZFF2C2vOQ0I7"}, {"slotId": "kU0ylLinkR9cd9f3", "sourceItemId": "vF5rF954D63c229H"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '1vuTTGOvQiPEvrxu' \
    --body '{"customAttributes": {"ZvWkhDlWTXF1Rkix": {}, "Wu6mCcBLGcJKq21J": {}, "ME7XyqK5egwwOIzR": {}}, "inventoryConfigurationCode": "j1du8J8FjCVjGmoX", "qty": 0, "serverCustomAttributes": {"O4HcMAvF9vsKHpTx": {}, "Fadz9Y1vMO6JpfK2": {}, "WhWm0ehdDOo3iidm": {}}, "slotId": "4Z5YFMwKyS8zhO24", "slotUsed": 92, "sourceItemId": "rAMHvKVHivjSCIBx", "tags": ["oRNiCgMmeYZWenYZ", "mk9zTNO9BLmYlcIh", "nbTjqUrHjKvFCVVi"], "type": "z2hs7FnEOFYBfVi2"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Ezf1pqnZBLF1LQB3' \
    --limit '96' \
    --offset '18' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '31' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '10' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'b4zQ3GttGyYwvKYL' \
    --limit '29' \
    --offset '43' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'XTO3tpUJjdK4W6tV' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 54, "slotId": "o8qom9dlPREW28Ts", "sourceItemId": "OaHO2sj2a6J1I3Q9"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '2veCQyaRkE3OSx0j' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '61' \
    --qtyGte '8' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'aGurriXkqwMEFxxz' \
    --tags 'rulZShYcBbYJLTwK' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'U0KGwEUqYOuZdpMn' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"iog1gqwxpdSJjboR": {}, "ZgAyNiHzfR0GcLY6": {}, "GF5sEnXUlfjOkgvm": {}}, "slotId": "XiLQC0EiRVelUUgT", "sourceItemId": "69siE2ai5As270A8", "tags": ["bmYKFT8jvVnjlyxw", "JlToq6BF6dykLNaf", "p17QQ7wHWDVRy9Fp"]}, {"customAttributes": {"WyRxiqBQtt4iq3Ti": {}, "HPzJcB99FjZf6lgo": {}, "mwaefcdCQ3A6PfF0": {}}, "slotId": "XZu3MMcdw0QuzSZm", "sourceItemId": "31ms6oFlmQYTJoT3", "tags": ["1dn9kJCRM8K7J0F4", "cOiuZdDNxRTR1QvX", "83cRkxihpHtNpMId"]}, {"customAttributes": {"lfm8aWZfJWgkaqJt": {}, "zDBMw0vhdkYoNlcu": {}, "ujGpbtAk595jlgfV": {}}, "slotId": "ekJUKtFU8Yx6MGkT", "sourceItemId": "gnlsGxAwL3zDyQ0W", "tags": ["67cndD6s3AeUyE5M", "TWQPKIbih89O1H33", "4ZBy1ca7mNWJnzQh"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'sP2y0EQ6N5X6gyiK' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "68gmLPCtoQqMSx3J", "sourceItemId": "3OnDGqhISM721uR9"}, {"slotId": "dwIzhljfwikXCXLl", "sourceItemId": "39vUCHq7ICM5jBOm"}, {"slotId": "3IZJMsjlxofqQfNo", "sourceItemId": "zAWVBqKUuU1vC9TA"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'KcF5aWpTgWrIiNPy' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 12, "slotId": "juwm0Mf8X5VPDwJk", "sourceItemId": "mF64lovbmUpi741S"}, {"qty": 55, "slotId": "yAeXiYCLbSY77uJ9", "sourceItemId": "2YJlsWb2t1Xi3skE"}, {"qty": 28, "slotId": "wXhbIXal0NFew1nw", "sourceItemId": "tr3Jb5NJU37lhN5L"}], "srcInventoryId": "Gao7IVUv2To8q7DN"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'EkQWhHTxpvhwv7jQ' \
    --namespace $AB_NAMESPACE \
    --slotId '0dyp5cYQcXbscjuR' \
    --sourceItemId '8ab1Nvk61JAuyG70' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE