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
    --body '{"message": "DVE8Pzlp9Jc4Z3DI", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "s3pXCCLQVALPLK6q", "options": ["oTZ09Z4kNsdYNnt9", "JcnnI5xbK21sfxNu", "j77nIUQbaDoq2CWP"], "qty": 26, "slotId": "xfLPR8uIB9BWyRDG", "sourceItemId": "qbkBUNKR4exHeQU8"}, {"dateRangeValidation": true, "inventoryId": "FupweBi05u7EvYnQ", "options": ["lErdX8EX6eevEJym", "jRROi0oeLws7pjEu", "hKPJRuS2cXAOoJg6"], "qty": 17, "slotId": "PDxDwlSwdaFljcAm", "sourceItemId": "Qsdof56oChdc673C"}, {"dateRangeValidation": false, "inventoryId": "upyH6rY3vBr4KZfi", "options": ["0w3ZtqkFLNzZerec", "h2doNlTAKEiBUX1o", "mtltITn8g0V2PXKT"], "qty": 48, "slotId": "gNtjG9eBOoQ6otGL", "sourceItemId": "3NpLCv52lQgEDIya"}], "createItems": [{"customAttributes": {"o1BKA0QdZkduNoeC": {}, "LYf8ItRQH2w8dW4i": {}, "kxbAeCYXnLQZSEHA": {}}, "inventoryConfigurationCode": "XuoY5QYPMyAGp0lJ", "inventoryId": "gyrIMPlXqJofDLpW", "qty": 71, "serverCustomAttributes": {"jrYwt0biw3sJJmiC": {}, "aexs7cUK7xqLbU6t": {}, "GjQtPAP9rO9S40YG": {}}, "slotId": "0sSvQCHTrVFrHuUD", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "06d4d687V0brFIHp", "tags": ["SvmHmGS1IuEkC1Ub", "AENXfhKXPzerzgaa", "Kawt4CB0x13BYUQ6"], "toSpecificInventory": false, "type": "entNhjDLL0fV4Gvg"}, {"customAttributes": {"AId96D6KXa1EkCk6": {}, "KFclq6bG72We3xI1": {}, "aMKvenAPA9tyPczG": {}}, "inventoryConfigurationCode": "DRaLs9aY4BCDEL9Y", "inventoryId": "s8L8KG6DmIco021b", "qty": 39, "serverCustomAttributes": {"SOOzceD2m9ViCusM": {}, "BvK60ihRei7lWzLj": {}, "1mSCi3rJCAK8DKEe": {}}, "slotId": "QoOE64AmMJKew0oZ", "slotUsed": 64, "source": "OTHER", "sourceItemId": "QN9l7YDWGqiKHRDo", "tags": ["gUtMBlLpdndMws6k", "pVf6QMFEOySb3X0L", "KEybehnBGAag5JOp"], "toSpecificInventory": true, "type": "H6vp4pB3i4KI0Ynt"}, {"customAttributes": {"g0VxSSRbwQOjlBOU": {}, "1a3XnXHsKDaOUBGf": {}, "jRHNEGXnMP3yRC75": {}}, "inventoryConfigurationCode": "mleP4zeRDnCnBaGr", "inventoryId": "9OBdEXjQGOFVedhm", "qty": 59, "serverCustomAttributes": {"ea5UmrXTIIdYDppl": {}, "dywYzgHGM9WsRYmp": {}, "g5kuUYCxPSV4pysa": {}}, "slotId": "jFqXy7aJWTZcnizI", "slotUsed": 58, "source": "OTHER", "sourceItemId": "aWlzq6ptLEabGqiX", "tags": ["cjQFA73XuAeX0pvs", "gvf5UCGu3awFbhOI", "9jyr8M5WM3NMsF7U"], "toSpecificInventory": false, "type": "ug0EVj6t4xNOBIRP"}], "removeItems": [{"inventoryId": "jcBxP4oBQZ3ddoPC", "slotId": "WRVhqyN28yQbD4eE", "sourceItemId": "N1FX08ztKiMddGIH"}, {"inventoryId": "O7r0cvkVCr3WYqNS", "slotId": "U7tvXHTSF0WRDOSy", "sourceItemId": "AAmnoIsD85gTtyS7"}, {"inventoryId": "MjgADPeiMoEhGu8p", "slotId": "RrEgLqOpHcmBvBRS", "sourceItemId": "xEzAR2KWMMKoQ2sX"}], "targetUserId": "FQ19WERQSdnDMpYg", "updateItems": [{"customAttributes": {"NgP4taujLE6ydlBP": {}, "Q147uIJUHdWtdH7S": {}, "Z8Ti3QJ9hlpZ4Ose": {}}, "inventoryId": "hfbfQ9A77uoPtURB", "serverCustomAttributes": {"bOt4s99lzOHe3eYW": {}, "i38tQY431yFbfBOm": {}, "JdjrWQhMADrtJIyP": {}}, "slotId": "tf2dfI3Fk2OpQ4LT", "sourceItemId": "0WtOaB5i5nbNFuRs", "tags": ["6V2gG4aFeO3gsmta", "yQrWfaerkQUAPwKW", "YcVw797f5p93NLMD"], "type": "IHYn3jdcZboXOAjV"}, {"customAttributes": {"PoRS03vxkzGvZ9SY": {}, "ZCO3666szStTat9o": {}, "Ce3ZO3O0sUjjJXQY": {}}, "inventoryId": "Ae92BeuePFd26gUs", "serverCustomAttributes": {"dlqSuOhAsMPN3Mzd": {}, "Njd3CjtBEjIg7CtJ": {}, "SACDp27zUaPBDFOH": {}}, "slotId": "AbUFBFuQtNxBqMD5", "sourceItemId": "qiqFaiW812ORfknt", "tags": ["LzXe3cEQLGzdeRmV", "WeTSPjNBpEG3qbOO", "HoPibPmupiDXPxkw"], "type": "zij7XGrPIgevF89m"}, {"customAttributes": {"CWyPYrTfwU0WTS8F": {}, "dt5x2fhFp8d3Ip3r": {}, "9QytYQoPa3p19ZFY": {}}, "inventoryId": "xAobESoYdIipYNgq", "serverCustomAttributes": {"H7mOkPkg81cjo3Wq": {}, "krFYKVhpbqUL8CVS": {}, "hVpXLAazb0PeHEu3": {}}, "slotId": "ZzLUstwNkFKDilXh", "sourceItemId": "FWjbtDszdrje2nfM", "tags": ["dDnraETIRintplw4", "0izlfaHKcQbPAYkJ", "FFEhr4ktqzqusnTI"], "type": "dgazFXbxCT9PuLxe"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "BijeXBPJ60FfczgA", "options": ["GwmUQYqTpkD87nkn", "7vAbBUk5xLHY4ApQ", "klcjPJdwZI104RoS"], "qty": 35, "slotId": "kHGq6Yl0MuuF8eOi", "sourceItemId": "6rl5qgGTLF9kyn2G"}, {"dateRangeValidation": false, "inventoryId": "OE6AkrWqokPMVHYa", "options": ["RqlqGcOQ9OXH6MLT", "ojazOx8B9Ok8t8CD", "nJxGkclilnLsSooo"], "qty": 3, "slotId": "9vpeCdwUqvXiIZuG", "sourceItemId": "tBXksAqS8dOvs8gg"}, {"dateRangeValidation": false, "inventoryId": "0bPdfTYNexpowgSq", "options": ["FHRJFWfmzfj3hMtI", "Esed7dKUfLM7DfAw", "THTuz9QNmAGcMIUb"], "qty": 7, "slotId": "mrS01dcMo4JktT4l", "sourceItemId": "Md35zL7hNGMYxF38"}], "createItems": [{"customAttributes": {"kiJajAkPI1W3ahFz": {}, "A42yFlK6SjHV5Qa0": {}, "VmPtleC8YvA8slMu": {}}, "inventoryConfigurationCode": "Tgh7bBm7XyHllgyA", "inventoryId": "01WAOZT2aWcmnGOl", "qty": 88, "serverCustomAttributes": {"iUZiId7u7ZKv9ZY5": {}, "11OcMNesP3AoHCXB": {}, "m2JdH4DS07O8wycZ": {}}, "slotId": "PZAcE5G0XZJh9VSS", "slotUsed": 42, "source": "OTHER", "sourceItemId": "3oBARoCgh8gtvy5J", "tags": ["O2IMIEMmU5qHRxA5", "7nZsNx0ZQDiuIzN0", "GdJFfMeVVnO9xzyT"], "toSpecificInventory": true, "type": "af6Tj37MP4dQHPSI"}, {"customAttributes": {"nLBe0t5ehxn8icym": {}, "L3iQc2s95DDDnw30": {}, "2MehmhzlKRWBiu3h": {}}, "inventoryConfigurationCode": "HJ8FYeSGw6OeafPz", "inventoryId": "wfmer2Sc5PcNfNpt", "qty": 1, "serverCustomAttributes": {"QESck4abPj7tF5xC": {}, "Gb1ETX9MFeI9DZbS": {}, "6qrEkxzuXI7hd1yP": {}}, "slotId": "kly6IegOs3azf5Jr", "slotUsed": 8, "source": "ECOMMERCE", "sourceItemId": "quJ0X0NhI4PAyRND", "tags": ["ZTnf4B4oVvpCDnh3", "V0kA8XCbUFYHXdwN", "7Sk0HaZo2X7PeBxU"], "toSpecificInventory": false, "type": "Opu1Q0SJTRoYZ45t"}, {"customAttributes": {"DyXuO1RfYfn9dCh9": {}, "vyiQAkDpQF16sYGn": {}, "9mTHVr30mS8ORNmB": {}}, "inventoryConfigurationCode": "156HGDZnnXPWkHgy", "inventoryId": "qDG9iMeZlPsNy3vN", "qty": 14, "serverCustomAttributes": {"XjVrPHVaUKmJShcI": {}, "oMvO0Na1VO6UM8SI": {}, "SYhCJPM1k8s73rBa": {}}, "slotId": "etF1pn4Kc9J1VTq6", "slotUsed": 87, "source": "ECOMMERCE", "sourceItemId": "akuiDWnlQ1mmSeTJ", "tags": ["zYZkt6OoNse4YqJ6", "J4S4AuOmSYO9uYcw", "HfEmlpNAxijrGop3"], "toSpecificInventory": false, "type": "faUqYUab5YhBKGM8"}], "removeItems": [{"inventoryId": "fsH1s02kCUqwBVRz", "slotId": "UsTKXIZmiIy3H6te", "sourceItemId": "PTtaI93DiQtzZdpT"}, {"inventoryId": "aEA6dZnTeqTPIcHb", "slotId": "o7d6gfrddad2uVY6", "sourceItemId": "aafyJHsAIk4xpJiB"}, {"inventoryId": "pssdMbvnMDdpNY4D", "slotId": "YaFRu15QMMDQWLxY", "sourceItemId": "DhMsc237XX7L3CpC"}], "targetUserId": "CKUrWBACJ0s7WIgX", "updateItems": [{"customAttributes": {"FD1jEPWb8tn595Ro": {}, "w4Edyx3ESeWGyVuw": {}, "SudthDkyCAmN2zYn": {}}, "inventoryId": "Qn7EpiL9KOpQXAU3", "serverCustomAttributes": {"BP8Qrf01q4pj1iOf": {}, "Q3zjzCDxs7rPVxqK": {}, "dq7dtEoUiI0dsvXc": {}}, "slotId": "lp3Ox3toh6dbliIT", "sourceItemId": "IMwgwcnHC4FriIMp", "tags": ["XLpM9vQrVbGXn00O", "2HPpW4qPLUgVOySc", "O5zdD6GY9O6Yy2Iv"], "type": "4xxt6Gl6oyvS8NSa"}, {"customAttributes": {"SXAmGfBXEUZkb7S4": {}, "sxBuhP9w8FcjcPZD": {}, "BAb6DCxWgoSrIuNV": {}}, "inventoryId": "4F3cOQ5HqE1iNHwK", "serverCustomAttributes": {"opKKkruMeJIkHquc": {}, "sGI4F01vwojfyCk5": {}, "2JHPKaaIxkaJqBa7": {}}, "slotId": "w4WDQK5VK2F8cD00", "sourceItemId": "AqeaRN0LCx9hTXgk", "tags": ["yMfLABVo0yZ9zJlE", "FJqYKKrIEowZgbwF", "QSvaPLRCzpcJ0v3M"], "type": "m8gMdVKbyw5bAmPu"}, {"customAttributes": {"JHhGMppW8ln9XRA0": {}, "sCZqPIu0KS5m1toL": {}, "9XavhmZwxoNRvDkc": {}}, "inventoryId": "VelLZMgIaXMpbrcr", "serverCustomAttributes": {"yY1YwbCn9FH1KJQb": {}, "pHC3Bn27TnyWdoCW": {}, "rkrRA82mXyJ7S6rT": {}}, "slotId": "rUPgFyMYmnFgNzcb", "sourceItemId": "D9lhmBuF7XxraLJ2", "tags": ["MmciThThnJvdeUhO", "9rqwf7mSRbJwSoQD", "wWoM8dGeYQUPzG8n"], "type": "zgXhUBwMkdvRWgIf"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "hGTy5pXAtCZpoWbK", "options": ["rKOlnv0W37x4JJRL", "JdihEJhqjcOFA0UR", "wEkxvl0OBSP6PGPI"], "qty": 85, "slotId": "WpDHKneC8OsgU7g6", "sourceItemId": "4mJcUkUfA8sb5sfd"}, {"dateRangeValidation": false, "inventoryId": "SnMgjMwhPtsLohxv", "options": ["7kDXf21ESvpEfN3Z", "rT0FUi8ZKNWk9KQB", "4bbe1LHIP33NzP5S"], "qty": 97, "slotId": "bpF6Usg7WaBfm2in", "sourceItemId": "MWNCVIvKQlGk7ovd"}, {"dateRangeValidation": true, "inventoryId": "REXHKHSobAxBZYkm", "options": ["wknV90Ggy7Hy38QM", "hcbK45A2VnjYRZYw", "apQLyaqMVZVYoL0A"], "qty": 74, "slotId": "BQlt20HavXTuEggJ", "sourceItemId": "PvyRxgYeQnk1dNYa"}], "createItems": [{"customAttributes": {"lv0s9wIOpYpY7GSk": {}, "sFaYlr90zipGwKrS": {}, "ayW8GJl99ox8LiWa": {}}, "inventoryConfigurationCode": "4HnPi8PUDxvAslgx", "inventoryId": "E1GKCRxeY1A5Xh0a", "qty": 42, "serverCustomAttributes": {"5u8q7EObtLvMNoRF": {}, "rseAhpIVgS3BWwLu": {}, "FYSLvGvFy6qCQOMT": {}}, "slotId": "aHipmBwmAhz6xqNZ", "slotUsed": 64, "source": "OTHER", "sourceItemId": "q0QVycZEwUR10Zie", "tags": ["7y75tKm2OH2G8rds", "zZeeSvX85RBlhgNd", "d0rBh6iDyGqlUhoC"], "toSpecificInventory": true, "type": "x88Tpb9vY3qsQ3LV"}, {"customAttributes": {"4VmW2BUVGWhWDNYk": {}, "RYeuLeDLjwcXaGNt": {}, "uISygsjH12fdg7v7": {}}, "inventoryConfigurationCode": "2diuD70zVJjirUmY", "inventoryId": "MAmPlcR9Zd0Vjo8W", "qty": 40, "serverCustomAttributes": {"DC9G1oF2yfRKXbX9": {}, "qCicUx5WNkpUodRG": {}, "84wSWnDqdOSvkdjk": {}}, "slotId": "P6NiR5oEzBjngahW", "slotUsed": 84, "source": "OTHER", "sourceItemId": "QhlYHwAq79ftcsZM", "tags": ["zo8cAtPZ5Tdsgyjf", "ezR12xARxKcWDtiy", "Fn1O7Q291OlnFJ6y"], "toSpecificInventory": true, "type": "yBlT3beXuwoCKqdY"}, {"customAttributes": {"62SsDOwdS0Qfy3U8": {}, "AGYkFLYpcc60jHlx": {}, "UhC0QUa2CY6dUYBS": {}}, "inventoryConfigurationCode": "FpOepjFXH2g06WbY", "inventoryId": "JA3DMlasWwzVdYKR", "qty": 25, "serverCustomAttributes": {"DAZGKku0VAYytbkl": {}, "HFWgrpYTNMVWt3W4": {}, "B90d0SNyWzZqwbCO": {}}, "slotId": "XWaT6pv6EmCpM4Oz", "slotUsed": 43, "source": "OTHER", "sourceItemId": "abALbhpZXMqbMy2Y", "tags": ["bV2YMtrNfZwOE5cf", "LM1CQDXWN2vRGw76", "phOIiM59QRrbWbAz"], "toSpecificInventory": false, "type": "1XKAsw0NHHzlwE5q"}], "removeItems": [{"inventoryId": "hHwhMu2nCRuVlpRF", "slotId": "vinOrrKF2UJV0Gwm", "sourceItemId": "dss8F9IIok2oMhH8"}, {"inventoryId": "rulT6hXxqOWqWdEC", "slotId": "0f0cZLFFuynkKWwU", "sourceItemId": "FsA83NvaOJArMIvn"}, {"inventoryId": "SuA9d8u0NWlOgnnv", "slotId": "BvR894FzJB7NfDoE", "sourceItemId": "OydFVS5YsOn8PHSw"}], "targetUserId": "rnr43sB9E8ttDoW1", "updateItems": [{"customAttributes": {"9MIBnxBw6xxALMkb": {}, "SgXvEwb3msY61yLE": {}, "TwOEHGPf7f56q0sB": {}}, "inventoryId": "ZM8MPUOmNtiJUfOG", "serverCustomAttributes": {"I4eEhpkFWcy9BqKt": {}, "hbwtKMM7xtfTnaDy": {}, "BuM5GigLPKk5V6bg": {}}, "slotId": "89jLvtfS3A7BFjRv", "sourceItemId": "hb2OurlgYtzRn5Yx", "tags": ["KHDdL2Zf1w2k2Gdj", "DEcDK2Ak0BIoHx2G", "GJ52pafgC9bM2IMJ"], "type": "DkvN5M8DWfXQ5Dfp"}, {"customAttributes": {"w4lQeurGxHvAYbpI": {}, "mSL8nO2eonLYP6nB": {}, "kq4TlzcfT1QxmADp": {}}, "inventoryId": "ToMKfaoBPZv8aj8E", "serverCustomAttributes": {"zw6shgdV1ZyelRAu": {}, "xqo0cQn5jROlTLqd": {}, "nperWAwYikTSQzCG": {}}, "slotId": "s9b2RebatF7nCP6o", "sourceItemId": "44OtWcQ3ktt9F8Fh", "tags": ["FSObG6CVGgizUWqc", "NxWkqD8LT4tUeW3f", "w4oOUpQ4SNY1RGhG"], "type": "fmjWGrRXLpkdsN6U"}, {"customAttributes": {"uoGdF5hYbjfF5MzF": {}, "5DSJTG8ceAJHRsvS": {}, "8NgYORAqfhoPRPsV": {}}, "inventoryId": "btqIUNIs9Zglu1NM", "serverCustomAttributes": {"SWEEgyIjKqIZQH70": {}, "3M1vUSvRmrR0O389": {}, "lR7q9CbGo0QERWPt": {}}, "slotId": "lwqGaH97n14cihZr", "sourceItemId": "4WeT4Cuo9vIT4tuQ", "tags": ["6HEx83hnSCnvEXg0", "iir0WycJ2S1fUqCX", "dnkoSP6bpnb0Bm5F"], "type": "fMBuJgikSlAJGHzI"}]}], "requestId": "CFtl6IBIo2r9dFWR"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '92' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["OxOAFpYHnE16YHCs", "8iBQEb5VGxpWUmWK", "8De3wos6jLaq4ud7"], "serviceName": "RA1lsYcNE1KUSR7k", "targetInventoryCode": "XghS8AZixpLKz5W1"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'avryRhtDVoshRMPF' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["p65Nmr0o1H7XS74h", "v5WhemcgPLl8FD1b", "PcYM10X7V8AmW7Bf"], "serviceName": "nswHosfsMlhUFxDO", "targetInventoryCode": "2jhK7cNFLs6DFjzO"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId '7R2nD8FJMHWkZ6CB' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'e9GL8yyBfTcPFomz' \
    --limit '82' \
    --offset '56' \
    --sortBy 'createdAt' \
    --userId 'UsCwHLdY0ftqiPUf' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "BmlEoj8Cmq57Yhyu", "userId": "uh4XMOwfLTwYn4GM"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'AUc7etOlKs3Za2Rq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'au5zWAbCUWQVhZNs' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 47}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'O2EO6t3imHlYUTxl' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "7g76VvIrDokJnHaP"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'N1NkV42qgY8q4Wna' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '2' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'vMQGTt0XCdgFsgt4' \
    --tags 'ivBb6Tw6hUiPcljq' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'oDTVyC4OfPv4f7Zo' \
    --namespace $AB_NAMESPACE \
    --slotId 'Ee4AbxetTVwKH56v' \
    --sourceItemId 'smZRFOdlP7ImENZL' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'xZJ6L7yNBpzgrHnW' \
    --limit '17' \
    --offset '21' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rQ8g1Gurv0HdZj8y", "description": "JaXVVmrMXXeeWIaL", "initialMaxSlots": 6, "maxInstancesPerUser": 0, "maxUpgradeSlots": 14, "name": "w3L1GYi6Gw2rZuEY"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Oh3ZCvGzuxddsNWO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'qiBZhmFwVT8u9wNt' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "d2jJxTheH4r7Ikcw", "description": "jup2abKdaihTGtQ1", "initialMaxSlots": 43, "maxInstancesPerUser": 97, "maxUpgradeSlots": 14, "name": "OfmnXk5Js6gmrbbV"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '4S5rUIwoQXpTTrgB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '10' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mIgQzwG9Km09dysy"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '0uQcwofhkb2CWCJ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '43' \
    --owner 'ug4cZRPQm6HLXS9d' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "hsyRo9sxD0K4ITgE", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'F63QEtFOSwaxUuAV' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'cUMPjyriP1i3aaLy' \
    --namespace $AB_NAMESPACE \
    --userId 'PiOLK7yYUQzYNYtr' \
    --dateRangeValidation 'a4Pd4qNfdcnGzpPj' \
    --body '{"options": ["NNNeJe4xtKA2YwBT", "YRjWYVnjsClD6GUj", "m2yu6FilWso6I24F"], "qty": 87, "slotId": "LPCbJXxJWF5cuxwK", "sourceItemId": "5JQp5H16OyT6tiuT"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'MXeKcWS5Pcsd60HI' \
    --namespace $AB_NAMESPACE \
    --userId 'yplt6yzxN8gQrtMu' \
    --body '[{"customAttributes": {"XEtYNEpsIgnJLizs": {}, "nhTnFOIYwHk081gf": {}, "1SmXp70IlbINpvF8": {}}, "serverCustomAttributes": {"7lrqcaHQ5QZMhd5q": {}, "qnQ8kHEMpV3u3Yiu": {}, "4ie2Bt7kgL1E6zJp": {}}, "slotId": "gcYJUg0fZPm08FOr", "sourceItemId": "3JCbmD7QJawINOVG", "tags": ["VEH2v58jlzW3LDZO", "CaN3EdIFUzhR4vro", "dueV2sarZGJQPa59"], "type": "PRp7896BxXZMZdDs"}, {"customAttributes": {"rjKJ14aNGnNibK0M": {}, "U3duAtOA8e3QapG8": {}, "vvV2WQoby0JQLktC": {}}, "serverCustomAttributes": {"KPiwceCoUSkT9pDj": {}, "fdXebIxLSJuCQC9h": {}, "46IEd0a5cerWQIlM": {}}, "slotId": "dnLYLEjRROemAL0t", "sourceItemId": "NjNAEYwDx5q9BnQ6", "tags": ["ynQhSn1CWNVojqdm", "zJi6g6QaHoqeh4HR", "DKblOMMnknedqtJr"], "type": "woCIDnbqDvIXqQKi"}, {"customAttributes": {"HGIZw7COI87tldE6": {}, "6bFgSfGbP8S4KOvV": {}, "UahypePRIJ6LCwFT": {}}, "serverCustomAttributes": {"M5XViYk8TFi0TTT6": {}, "rf5w8JCW00EbolOj": {}, "kSG3fMdmTWMOoV9C": {}}, "slotId": "ypWK0cZ9ztUMhzu3", "sourceItemId": "m91WnfG7wpveZNds", "tags": ["lONoUVIikdlEgzy2", "3H0K8cggWrUKEof3", "AZXg1STUY7zcm7ur"], "type": "1DgDsQ9zYwVTFHTS"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'S7CfGZvSrY0CcFgN' \
    --namespace $AB_NAMESPACE \
    --userId 'gHucmGlCQ8LvS0Ab' \
    --body '{"customAttributes": {"Q66zgCMygr8lmuZq": {}, "goVXlK7tEBK0xE6I": {}, "bnQcxQJ8j43KWvpj": {}}, "qty": 52, "serverCustomAttributes": {"xOoyO38t9tn3rwHb": {}, "pPBpWDgUWOtPv01P": {}, "6Xyruxs21PV9Gnin": {}}, "slotId": "9AosofoRmk7TVMeK", "slotUsed": 98, "source": "ECOMMERCE", "sourceItemId": "3mRkbbQcT42iQyQ3", "tags": ["wgMej74vnmSzKsXO", "Axlyo4RzjIAS9pMO", "oKUV2VKyUO6HLktT"], "type": "nRJ0zyNmvqBbzkCe"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'W3n0Z8mK1vFLwVwr' \
    --namespace $AB_NAMESPACE \
    --userId '7yCXOTU3QnQs2LGx' \
    --body '[{"slotId": "W6CCv9oajsmQRyNb", "sourceItemId": "3RbSfnlXvha1qJT8"}, {"slotId": "peDuTFpUwsTySxGW", "sourceItemId": "E4B2sLl1hijk1hIU"}, {"slotId": "wm7Vuc1ZKYqpX8Q4", "sourceItemId": "3sX2dsLqZf3hj36w"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'lyNfCFHbkp1pPPhA' \
    --namespace $AB_NAMESPACE \
    --userId 'VDiAwZ7k8F363gWE' \
    --body '[{"customAttributes": {"BsLmDq7PLUriRmVT": {}, "n2T6HpApQm4YyKAw": {}, "nVpCElZFbw7qJhCx": {}}, "qty": 9, "serverCustomAttributes": {"5jPhq7jvzTNifqN2": {}, "D5WVl8UHl7LOHaP6": {}, "ObmRXp1qDYO4Bekt": {}}, "slotId": "CzsLyb6bg4am2762", "slotUsed": 10, "source": "OTHER", "sourceItemId": "7v3Cs9JcMP6cwO7K", "tags": ["Uchh4HszmJ2tYxJs", "se5TZ2BYxZoaAg3f", "PIIFUPVhxw0mynSo"], "type": "02hAXAGkiZgxkArA"}, {"customAttributes": {"h78olwsBvJlf2mpy": {}, "F6zhHVA5UQEqXEZ0": {}, "q18vAlzC0XJ3RHD7": {}}, "qty": 43, "serverCustomAttributes": {"Kv0JkSdyuVLGZRr6": {}, "JtrXftnK2zLNqHJH": {}, "N3FDFPrTA0f4x645": {}}, "slotId": "L3vp44rTH6oEvi44", "slotUsed": 91, "source": "ECOMMERCE", "sourceItemId": "HlONz55rJ4Mlz0sP", "tags": ["3QYwAJ6Orr4sweyr", "ESudNdMym6mEmnWy", "mDmKev3rqfO17gIN"], "type": "AgeMxtGMh8IA9KK9"}, {"customAttributes": {"QJ56M9DbA7v25NUi": {}, "UtDVWDPMQkTLHr7O": {}, "rLN3JF6ukAWDMK8b": {}}, "qty": 97, "serverCustomAttributes": {"MuSI3Ql2GkShIRSk": {}, "kJPFl10F6emk3oyn": {}, "NoBqEnfCyX8O2iUJ": {}}, "slotId": "5lFUH5DNUePCIerK", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "mKXD4wn2b5drRJY4", "tags": ["q9iVjqOrMPsirTwp", "tw0XuWiVyFnPADJv", "fPEkAZlhChUqKymJ"], "type": "AgBECqmMUibX4BIJ"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'UfepDWS6cWOP5lfO' \
    --namespace $AB_NAMESPACE \
    --userId 'CoVXsaPOUzPT6s1r' \
    --body '{"incMaxSlots": 36}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'nkOZSQlcRkQ3EweK' \
    --body '{"customAttributes": {"PRwbKoTBMr7q2c5E": {}, "Ujzk0WcoHmsiHI0T": {}, "rzIvc2YS82YSEE3L": {}}, "inventoryConfigurationCode": "JyJ6R5ueMGr6NRuf", "qty": 28, "serverCustomAttributes": {"iEpf3G3EPFHMq2Pn": {}, "ZvFo8tZy0e0lRP6h": {}, "ibAK9uvcZwEXGHWJ": {}}, "slotId": "63pckXRpjZSMm5Rv", "slotUsed": 2, "source": "OTHER", "sourceItemId": "ghRALPnHJcaakw1Q", "tags": ["sPF8EKr8ZBTfiZk2", "EF1pgk8I7q7Vjvgc", "XPs2J5VQGOSHELuD"], "type": "bn7XxMGudaECOl5Q"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'R8KWEFOecdMtYNzK' \
    --body '[{"customAttributes": {"IA9uofOs2VFbGUVx": {}, "hi67Fl4fHRfXzrra": {}, "4Z9xQjJo1OOwpwiy": {}}, "inventoryConfigurationCode": "WZX8qM0QCFHXEm5Z", "qty": 0, "serverCustomAttributes": {"Msz29Rm4DgzxZcCP": {}, "paJtoSSlfDuBvDq0": {}, "waVUl2tLvExm6BgD": {}}, "slotId": "6BH6S7OK4xteJqq9", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "Metn8GRUOo8N1bIo", "tags": ["XZvdf1xg6dhxIv9f", "jvQUFYateSTBArGR", "sQoWFNs8WFKCVxu4"], "type": "Yxs7T3kr6HajOSVs"}, {"customAttributes": {"Z2EUuU6QdRgEh5cP": {}, "4A5YQ555av4rOI9C": {}, "H49yQ4ElmapYR96z": {}}, "inventoryConfigurationCode": "jU6tR6El8uJXBymt", "qty": 76, "serverCustomAttributes": {"SIIC71GP9VZRsUpo": {}, "wbPbt0LJZ58Ie1pD": {}, "pZzlZXMHsTZdAVkk": {}}, "slotId": "8BgurusHFjDOiKmh", "slotUsed": 36, "source": "ECOMMERCE", "sourceItemId": "g82XNL0J2MGcK7kw", "tags": ["pUQ98s1Nw81ZAbBQ", "R4kCl5RpIH7pYMpT", "977ji2GfzIzj6e86"], "type": "CEgxg4DZw1JYh47V"}, {"customAttributes": {"AO8ISRg6Y9XfnVJm": {}, "4GkwnppgnGsswKkW": {}, "zAYLfPLodgwyojKR": {}}, "inventoryConfigurationCode": "IXdFKrUU0WiT4RXh", "qty": 45, "serverCustomAttributes": {"RSc2rQaqNhoC8NBy": {}, "KwyK3Mzi7TPeFcLv": {}, "cw0QaxGaokzJYu7T": {}}, "slotId": "f3l9jboLD9yg5lgs", "slotUsed": 66, "source": "ECOMMERCE", "sourceItemId": "TQhraYIQGYyNV8Vl", "tags": ["JiEERItTtrWziXri", "vcdGkbyOW58IWZyo", "umd0GCrA4nKNfTed"], "type": "i2FUovWxvteIuIrw"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JYSbKigtg6neJNp5' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'TWTpJ9Nv7BjwSvGd' \
    --body '{"entitlementType": "BhgogEFDL2u7mtGB", "inventoryConfig": {"slotUsed": 32}, "itemId": "dM5h4Q5cSm4ynXOl", "itemType": "MOoziRdXpcfvnAaE", "items": [{"bundledQty": 69, "entitlementType": "dfrY0T16c9G9xPem", "inventoryConfig": {"slotUsed": 19}, "itemId": "RSKfyokGSMcCn6PS", "itemType": "CP0ujI2NnqgT4UT6", "sku": "0b6stIKMyAI773OF", "stackable": true, "useCount": 67}, {"bundledQty": 84, "entitlementType": "PT06NyqEva3RjTg8", "inventoryConfig": {"slotUsed": 87}, "itemId": "getnY16sE4RlV3Qh", "itemType": "0GLjhGDHn2F6pV5G", "sku": "9u1rm2H6XQcvPQjd", "stackable": true, "useCount": 85}, {"bundledQty": 34, "entitlementType": "M9OwlrU2qQ78kBpl", "inventoryConfig": {"slotUsed": 39}, "itemId": "xD8sPT7Kxc6s8x4U", "itemType": "jtGBoaTHyAigOHCi", "sku": "pCiGIrHJihcIYN2w", "stackable": false, "useCount": 86}], "quantity": 38, "sku": "4ZENfhAsQSF1C05C", "stackable": false, "useCount": 35}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'NVxlBFxjqcHjOuYu' \
    --limit '81' \
    --offset '16' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '10' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '45' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '8kMBAvBqU8nqUN0T' \
    --limit '47' \
    --offset '68' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'Z0Bk88FMHuOdsGSo' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["stHRZehRd4uau8zn", "VZFoXCohqLOhdYt4", "7ct14d9dy8dxbtyb"], "qty": 26, "slotId": "oJes5lLkvSroU7Rh", "sourceItemId": "BRxrZjLRx6XCvxFm"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'qVFgEnpD4icUROmF' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '24' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'hC5GQIHWGRobsrX4' \
    --tags 'bOjqbFDZarKUvWFT' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '1nff3oUEG44tmvUt' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"LNs6mPUYYIPMdd47": {}, "MvlnFTIXs0uI3xWc": {}, "cy1B6GPOuefgsjHl": {}}, "slotId": "LyEbonweAz2qPBtC", "sourceItemId": "wzsoymiMHokkfCXG", "tags": ["hR2EtKIXHdo31xDL", "YbYDvtGyUsFU5jra", "cFvqo41KoxZSDbJt"]}, {"customAttributes": {"34zOTNiWgD6vtyrq": {}, "AS46eJTECAbcHZr3": {}, "m0IMy5H7I3Qs8TKh": {}}, "slotId": "gEdKb15SCsZq1ziL", "sourceItemId": "m9KLePG3eoxWjQYw", "tags": ["aBWCHkXMkLB6KW1o", "iYvSsEbqfkQUUu5e", "qep3MYWmf2EG5OCV"]}, {"customAttributes": {"pLBvqYjNUNdgb5Mf": {}, "B4LzZMnBVBNwbX8j": {}, "RWQZJ03ufLHed8Wc": {}}, "slotId": "2E2XApq2wmP8qVe7", "sourceItemId": "o8Gk5E4auQpszMbL", "tags": ["AzpY4SI88Aetq25P", "1PCe8yqkmadAYJfx", "5h1xrIJ5DKenbb2L"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'nLt5VJWhdRQAVVmG' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "JPGqmfqpE4fJTMyc", "sourceItemId": "QMfuTYXI0kwLPg13"}, {"slotId": "vtyd3sbazHyfNxBr", "sourceItemId": "unKozpA5UEjeLfXX"}, {"slotId": "wSpuNaKPQ5TNDu8K", "sourceItemId": "LftN7OpJzCSMxDja"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'XB63WQTxiRDujPqV' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 22, "slotId": "RNGk35p95f0jh3tQ", "sourceItemId": "XgYtpEoyW65KPjfV"}, {"qty": 47, "slotId": "djVowQCjjmiaRlCY", "sourceItemId": "YpIlaB85tR2NQHxp"}, {"qty": 21, "slotId": "wzpy5KzN1X3mgHXW", "sourceItemId": "UlyXKgUjdAlvOjnE"}], "srcInventoryId": "r3jh1SqSwsFtxRmS"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'BLLUbYjr4wyUdMJz' \
    --namespace $AB_NAMESPACE \
    --slotId 'DcOZTZV8IMLS5Bpu' \
    --sourceItemId 'LHY92IkGZJRIYpkd' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE