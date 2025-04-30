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
    --body '{"message": "WLLnK271ORCuUKLD", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "qQquN2uvutiqqeOc", "options": ["dNuvjXMo2M1RTTTL", "eEz2TNItftBE2wiR", "nFf4fbRvFXUzVX3d"], "qty": 9, "slotId": "SIGGkM1URfZOXsFG", "sourceItemId": "6yi83uCvew00sX2N"}, {"dateRangeValidation": true, "inventoryId": "sy8XakHkVY4nMAZF", "options": ["n2fumAlZrirJAch3", "838VsVcXe7b0RWox", "cfvKzItTdzbaZZPn"], "qty": 57, "slotId": "e86AQ4z2S9MQC1fm", "sourceItemId": "I6BXYzk4qyvMLsdU"}, {"dateRangeValidation": true, "inventoryId": "NgHwffglMfchFoKO", "options": ["vOnSA7FzjtGR775r", "AJ4EcScEYHk08Ukf", "YK47yXFTlIBtZE9G"], "qty": 81, "slotId": "IL4SDCSdsEe4LyoL", "sourceItemId": "h4KjoyOfqjQyRcWM"}], "createItems": [{"customAttributes": {"CFPXdNZ2v0NFvwLN": {}, "T26p3VNHqlCB8UMj": {}, "vXaYvHnFHqO281L7": {}}, "inventoryConfigurationCode": "QxDGuYdardorvgXh", "inventoryId": "xPFwIsIvO1KPSSLP", "qty": 20, "serverCustomAttributes": {"4R04SOIanOjqTBY7": {}, "l7nCYOGaJiaAsvOY": {}, "VoL4KtvFsksWdf4Z": {}}, "slotId": "qg3TeRCDyj9BTdKi", "slotUsed": 2, "source": "OTHER", "sourceItemId": "9HP8rQy3vHO6MDQi", "tags": ["NJCuDbhm2WHCVXJR", "Dq1T9FqtaoLcv1al", "mHIpDs6hI5J5DziS"], "toSpecificInventory": true, "type": "kc3Fqg4wzdXZc43C"}, {"customAttributes": {"9In9Qs6kULsyGkqN": {}, "ZQosbVHMaPK2s0Ws": {}, "dlzCXsm94RZm4FDl": {}}, "inventoryConfigurationCode": "rJLvRfmCGGrtzSSy", "inventoryId": "2XpiNKGigL3vl1TQ", "qty": 78, "serverCustomAttributes": {"ehZmEa89eqmjljxa": {}, "jWTEVwUA7bbZXmMB": {}, "qYtHa1shECRPjYmo": {}}, "slotId": "fGkgkFe1gIPInS8m", "slotUsed": 31, "source": "OTHER", "sourceItemId": "Pok6QhR26ulCOhxn", "tags": ["Rn0GsYlLB6crDJzD", "SnnXizDlreHjQfpm", "tI2f3qrfttS1sFMj"], "toSpecificInventory": false, "type": "tZCk9KxbHbuhJjtR"}, {"customAttributes": {"j8hWTLweRcmbafG7": {}, "hlajL9ndgyG41n8x": {}, "OY216WhFf7n5Tmrs": {}}, "inventoryConfigurationCode": "GGnOzOxGWEAMIB6K", "inventoryId": "BymUTTgMvGq2Nji4", "qty": 20, "serverCustomAttributes": {"dM6vOTlNR59YmrVM": {}, "3MXMGQYujKAmqoDU": {}, "CovlWcF4Xq5wYPEV": {}}, "slotId": "fYMWP7tUjZaurcBa", "slotUsed": 28, "source": "OTHER", "sourceItemId": "kyvFUB4MuwKj9n9l", "tags": ["gL3F9jmzi6ATQ0nV", "xgzCjVWomHt3JYMa", "WLyTXaKd5HJ1w7fx"], "toSpecificInventory": true, "type": "VCzxHNgk6iDcat0Y"}], "removeItems": [{"inventoryId": "O8FTFJClwtKl7uHZ", "slotId": "HF40vss2OIuLdmfi", "sourceItemId": "dPV6z14nhznDy3AV"}, {"inventoryId": "VHdTAsOPRozohJla", "slotId": "1ZAGKjyFxhwfuzIf", "sourceItemId": "cpRYGJulCc89Rq4I"}, {"inventoryId": "xaFmHMjByOH3mY7f", "slotId": "glTDSDYmDyczcCIv", "sourceItemId": "39z5Uc3YNxOuZgv5"}], "targetUserId": "8wtw5cxXq6uA5Grk", "updateItems": [{"customAttributes": {"vPVESLHOkVSBd8td": {}, "qfTPBaIaeDvdiv1d": {}, "AyihWAt4UwN260v7": {}}, "inventoryId": "9PCXn4DjZEPIWzkY", "serverCustomAttributes": {"8coham86QCpMPGHA": {}, "BHMX3miotmr4NbZq": {}, "C1etOvE2Wr8UWPUc": {}}, "slotId": "nulBO65VJOTWO6ZO", "sourceItemId": "2qspF8dnwZVw6fbX", "tags": ["QNJ2lLIsAqa8XLku", "d8Z3uNVWZeZLo4kL", "tLluReWCKTPlTva4"], "type": "VNBXLcFcuK7fBkws"}, {"customAttributes": {"uKvO7UFzoCaXI7PW": {}, "XiugR4SMW5F3j5Pr": {}, "5yCoi13978zfUcVD": {}}, "inventoryId": "zbmzdV7EFiJmxl7b", "serverCustomAttributes": {"Hhrdlo7WsStPAjax": {}, "lMWMpoUPQ5bvkaCy": {}, "bFWrrwnBlhii9t1e": {}}, "slotId": "5a3dsYd6IFNZlqSQ", "sourceItemId": "UKZf5qGrlkv3TDqX", "tags": ["4Emgwnkdb0RN0Tco", "8MGm9CizQRAHmIrx", "m8UGpmh2kd4PWOEe"], "type": "fjbapcjdLso38VtU"}, {"customAttributes": {"1JMnMu2l5R9xz7NP": {}, "UGThEF8Ec4RlXkCV": {}, "65aeMg8Q4mtuhu48": {}}, "inventoryId": "acSYpMe3eHLo4iEI", "serverCustomAttributes": {"e8VVc2aJIvsa1OUx": {}, "CbD4tk1V7g3Mmzbh": {}, "fs7SyPgpl4rFVJOF": {}}, "slotId": "AyIXVvvXiM4Ru1qN", "sourceItemId": "KIIO6AvYksiKQswK", "tags": ["BvQJTbiQwXtrZX2B", "hmWQbJ7piWswtvDq", "1alSwzj5lFUJjeM9"], "type": "txniCldcntjq9hl0"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "EhFnCtDRl9r3cEns", "options": ["2E3rWQpafMyOlr1b", "9QypNt7moIRzgnGm", "OtX0s5x8DCK84Ddh"], "qty": 89, "slotId": "N4mJS6KlPmh92J7d", "sourceItemId": "5Ihkj06ZgWLKOf9j"}, {"dateRangeValidation": true, "inventoryId": "kXwHMxFP3E27i0xy", "options": ["lwgkxCida63eUJ8t", "eMomDg87SAlVxlGi", "qsBYtK1RBw6wc0AV"], "qty": 23, "slotId": "bbnAxomNSMFQD29h", "sourceItemId": "7qXJgNLAZnkeFyhB"}, {"dateRangeValidation": true, "inventoryId": "DyO2r8ONxn84blrp", "options": ["EJgGAMQjRWjjmpgq", "LrxKV1Rg99D0103b", "rF3WLs3fRGzf99CE"], "qty": 93, "slotId": "G544hAJekqspUnEo", "sourceItemId": "C0Uionwk9WgGQETb"}], "createItems": [{"customAttributes": {"oNnTs54ulKuMvh7C": {}, "yaUHnbKXyvxnni7h": {}, "hGdEj9VtZm8yJJCy": {}}, "inventoryConfigurationCode": "zxfVs4uPRlPoO2Wg", "inventoryId": "vKpyOtL877izP7O5", "qty": 88, "serverCustomAttributes": {"ziYcvBhawiRVeOPL": {}, "yvU7aKyveJNDsaos": {}, "YhTnLJra2O2rrkgx": {}}, "slotId": "N8iNLMwK9rY5iOV5", "slotUsed": 94, "source": "OTHER", "sourceItemId": "wjqP0SvmFdsUKtKs", "tags": ["WPs0gKea0VW88mZp", "jq6QXyPfNUe8UvI8", "n6T40mnVO2kh7vkh"], "toSpecificInventory": false, "type": "925qxDVlvKiiD2Ox"}, {"customAttributes": {"Q0piLK1vG2QtI7zd": {}, "bKFcLttrz4VoRfbu": {}, "ZIreQ7VARJD8xD8l": {}}, "inventoryConfigurationCode": "zuucYen7mJEQaoRj", "inventoryId": "vMnd0cGsspo8CzZG", "qty": 50, "serverCustomAttributes": {"PQDQHGh3aLCYNgvH": {}, "jTCQpT7kGpqMpubj": {}, "Bv2d3eXVxDkUDSvx": {}}, "slotId": "VCnCO6HBNxWTj3am", "slotUsed": 16, "source": "OTHER", "sourceItemId": "0i51thSbNea1aVKo", "tags": ["1c3xa0Hua5KpOT7p", "TQJcpt1uWWencUaD", "b1qfzfJtDBJSKHuI"], "toSpecificInventory": false, "type": "IyonC6XxiJDpbebo"}, {"customAttributes": {"bOx43YPNXN0sMKh8": {}, "BfxqGMiPhw3dxLur": {}, "nM6uNWQylWqYzIdB": {}}, "inventoryConfigurationCode": "xxO23Nk7zmv0mAls", "inventoryId": "6J00T34UJiMpiOwk", "qty": 41, "serverCustomAttributes": {"EtPlMGD3BGP5XBqo": {}, "meSZCv0DZMvDHtC5": {}, "l3cvx1cMsoiYM4Fk": {}}, "slotId": "9D3QgjhRJRhw5KuT", "slotUsed": 19, "source": "ECOMMERCE", "sourceItemId": "ngpjWYtuIOkC4cV9", "tags": ["0AYkVsFm4gwB0Zgg", "aoaka9SFRFuiVHrY", "je5LZoLJ4g69qXxo"], "toSpecificInventory": true, "type": "cBxKyPr4WnGfESeG"}], "removeItems": [{"inventoryId": "5HsrECurq8ZlJLgk", "slotId": "5DYwXF2V4kqG1dNa", "sourceItemId": "DgTc2R6HYsRlM3Y4"}, {"inventoryId": "toqH8EuDnj379ekX", "slotId": "chjl6QxNDg3tBWJl", "sourceItemId": "F7GJsnao4RfpFtxs"}, {"inventoryId": "WaF3D5LE7WSfXHHs", "slotId": "DgBmXgcjfrW2o1Ja", "sourceItemId": "p5l9fmlwhnYDzoWj"}], "targetUserId": "W5HV9cVkeDddK2K4", "updateItems": [{"customAttributes": {"ZysFG669XDPtyp0H": {}, "43PkvsO5AgmaCqls": {}, "MjT5xvnFouYRhKqp": {}}, "inventoryId": "AzlJM5xsnVeu748F", "serverCustomAttributes": {"1Lrk8hmfv0rxrM9G": {}, "T1vAEZCeOi3DsGT6": {}, "AKQOGOmSoKr0hbT6": {}}, "slotId": "sLRp8Uo4FIJn4qra", "sourceItemId": "O6MDnZ1UqQEsTe1G", "tags": ["dRQbPNUW7aGgOZ8v", "PXT6rqPwzWIvY3h9", "idna0Cs5Y1tWdV0k"], "type": "vTl56mrXpN8mDDqp"}, {"customAttributes": {"xXhqZChYxKEBwkXt": {}, "dTR0pdGuKgy5VqrQ": {}, "zLWAOybY7rzngYpd": {}}, "inventoryId": "aFovOra4B80Ubi6s", "serverCustomAttributes": {"fhUa145EXTyGBlCE": {}, "WAHBRCrjlrZHvMaO": {}, "7oajUPC0YNNg6Ggp": {}}, "slotId": "ebHY3YkITRphGcc0", "sourceItemId": "X5NCRMOmMVcbWH0p", "tags": ["vZ6T0mvploxMM1mc", "JCEXrOz5elIT5GrI", "sIZMGJqvuZTX2Cip"], "type": "i8zKDLO80XAOOVn0"}, {"customAttributes": {"OjcUwRyOJfM0xBMk": {}, "2eMOG5h0trPFlty7": {}, "FWNtus7wjW8XOEk6": {}}, "inventoryId": "xwc9AGWcupWa4i00", "serverCustomAttributes": {"YFOFdrSIiFMv9Tmz": {}, "2dfhgbBpMN0tX89O": {}, "wNf3HhriSRoTHXCj": {}}, "slotId": "2lGdCZoRHz25YsS1", "sourceItemId": "4MYCqLutJPB8lYzs", "tags": ["9dhigetS08MJrJ32", "hm3KuPxfzN4IwbzJ", "b6CPzt635MKSjPaf"], "type": "bx9eOnHycbqBlPof"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "1YOqJ1ohZsi7ekNF", "options": ["SDgDMyku9RHXIoYG", "sLQ5YGmTc8BoaHp2", "qk1uystYeZpa9mtM"], "qty": 65, "slotId": "XsQ7nnhT3NceUSPr", "sourceItemId": "WFEiiegOENRrIcWT"}, {"dateRangeValidation": true, "inventoryId": "Z1YVutwV6xHT0i7q", "options": ["pwWEmK2XJQ8yzAFs", "UdXz3XCm2Lq9OW1R", "BQEOnVS80f1kJ8eS"], "qty": 36, "slotId": "j6luouTfubo0oJEB", "sourceItemId": "0foiU38A5JPTBZDy"}, {"dateRangeValidation": false, "inventoryId": "o08HWYSj5mttBl3G", "options": ["5WagN2NkaRo9EWu6", "ZHEPXzkKGVCpcFJ1", "Y21vBs1YTp59ShTZ"], "qty": 35, "slotId": "xMeLKa7JJqUO8sKY", "sourceItemId": "lr9OG3VbFbM5dcFv"}], "createItems": [{"customAttributes": {"VNBWnHBJmh8jA51G": {}, "xfqR3Bdnu6ns9yf4": {}, "DnYsppdwgrdcOmA9": {}}, "inventoryConfigurationCode": "1CQAkOsfluOv2Vjl", "inventoryId": "eSvK55vVok6CDSzY", "qty": 91, "serverCustomAttributes": {"2KwzJlpOIxeoB5L4": {}, "0yjJINwaRnoohjUV": {}, "QXcdsvWpGfLZVUjZ": {}}, "slotId": "LujPBGdpeAMTuXdr", "slotUsed": 97, "source": "OTHER", "sourceItemId": "RmuuH3Pnz9YFy2Go", "tags": ["b8QvUASkmo9NyK2q", "sCYRVROi2OYAUCSK", "Z6RNnTFpk5MIMZ2A"], "toSpecificInventory": false, "type": "3m9Jn0nZ75YgHd2b"}, {"customAttributes": {"9iANYwiW0fTLq2Ph": {}, "zqR7qbsKJJAGSPnh": {}, "KQFRu1VZNake1KFu": {}}, "inventoryConfigurationCode": "4nwsazOk4ZjJxcWm", "inventoryId": "CN9jcpqVk8FPAKdw", "qty": 41, "serverCustomAttributes": {"uoJQxrAYr3nnTJZn": {}, "KRLVNL9ZmCAUF59M": {}, "E7xSB1Z6hRmWzq1W": {}}, "slotId": "kzdefkJN3SoiqqG7", "slotUsed": 15, "source": "ECOMMERCE", "sourceItemId": "DQTDRBJdZqZqy9cH", "tags": ["8pQdl7elZ0FlqPIT", "0P0nU0vdoNXB0FAQ", "1Nts7ruGWHyxvQvL"], "toSpecificInventory": false, "type": "gZQxrJ3dnDouYcPR"}, {"customAttributes": {"6ytDfREOcXCSSLAb": {}, "R9xR3HJIIH15HlHG": {}, "YAz1KNUCSnvB8Gyv": {}}, "inventoryConfigurationCode": "Pna3PGLRwCC4pT4E", "inventoryId": "YKrW6joTIEGpdkvB", "qty": 46, "serverCustomAttributes": {"dBi8pygTqPYRNKzL": {}, "igHTeubtuvUYMtuP": {}, "ECXEwqNYyzEREiff": {}}, "slotId": "SAVEpvil5KGzHb4q", "slotUsed": 22, "source": "OTHER", "sourceItemId": "QB55RZx3kmvY5RCV", "tags": ["cHTTE4Oc35KGS8Ui", "kXXUQJRcZI80DY5F", "NZyRHeWv3bLRWkDC"], "toSpecificInventory": false, "type": "P9aU7YQzF2FYKNl5"}], "removeItems": [{"inventoryId": "INHb18fKRxHOJb1K", "slotId": "KvZMvY2nQ3KWsiQ7", "sourceItemId": "MbjWU5NwHdQz0zyr"}, {"inventoryId": "koUleLcnIs7uhuqt", "slotId": "ltHfVAJqVMXpg8DO", "sourceItemId": "8s3SBfUcySZ0xlni"}, {"inventoryId": "djL0kYPXdyeZco6P", "slotId": "Nxegvs3oj2rOrIcN", "sourceItemId": "abk8UGGFKd0BhITO"}], "targetUserId": "RgLUKM6pIvz1TLE8", "updateItems": [{"customAttributes": {"9qk78eVXpkcii2y6": {}, "iykC50Cgy1XJPyoe": {}, "O6tvx5x2GNhmqkHF": {}}, "inventoryId": "jj9e2ykqrc0B04OT", "serverCustomAttributes": {"6lLj4gl8PXu6ftsR": {}, "tYmudqzhYT9nnK8A": {}, "G9VpbHOfw8Za4spI": {}}, "slotId": "oyFdc4taI5Vmp66V", "sourceItemId": "L0dXoU3Otp1SUfEM", "tags": ["6jyfpiABx6lgmWJB", "9PqnnoT65INGUju6", "so1BictykYGEKL9H"], "type": "kOvnvNaiCbJdJfJC"}, {"customAttributes": {"USLe724Z8A5YlGCV": {}, "B3JxeIIuTwouh7J5": {}, "LoMJwwYYeiMOwipz": {}}, "inventoryId": "MPPE1r3hmoo0hqcL", "serverCustomAttributes": {"y1MrIWxVAYcmMG3i": {}, "hngGBK875U0isdiz": {}, "0ppWXLikduHNRLFr": {}}, "slotId": "P8noVYE4AUPgavwX", "sourceItemId": "OcOI83kTawa0sfk7", "tags": ["Q0N9Yx8o1mO4Sye9", "hfzy8rCnLWAJBXir", "HSWsJYqDUXF8KXF1"], "type": "LDX6YIpSeIGAxFtW"}, {"customAttributes": {"6kxqGc5iUF3aemhi": {}, "Il4KXlCeYLWfQ2ND": {}, "uIsT4oQGj2RrfOD7": {}}, "inventoryId": "Ix66I39FmIGANwgB", "serverCustomAttributes": {"pK8vSPu1bctQ33MM": {}, "lltHHmgpdsas8r7K": {}, "7vP1G8fLuKSkw8uh": {}}, "slotId": "j0D7zxF2TAkjAHyV", "sourceItemId": "8jnzWyNJhJ1Hd8VG", "tags": ["dGcmAGC0TERdsSNe", "kE0rEG8q3yAYR9LH", "nVbd4yvNS5byBQb5"], "type": "940PNh76L367z529"}]}], "requestId": "Rrum9pLU0hliCj2q"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '5' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["du9XcWLtAmT1jufd", "Le8TqJdxyfGWZGEW", "c0BjLLb96uHdSytQ"], "serviceName": "5JbB2HvpD7w07RPf", "targetInventoryCode": "3SadpFker9A4a5R0"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'RIWlu4xLoA8t1FAA' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["71eBNRHschENAe7n", "740egiwv9oqcSWLs", "NcjUkzqRpIpkUqeU"], "serviceName": "vfHmPwVEk5Si3kjp", "targetInventoryCode": "HgdUdnujUFVKEYDu"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'C4iQGNbkQ35FcO8A' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Ca1IE6vx9RcOXlyo' \
    --limit '58' \
    --offset '81' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'O8szOpZkeoaHqieY' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "Mp5CJkSMIJBSr3wk", "userId": "ytagXzU7BpRbxCQu"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'IOjoSy4wF7Z5Oreg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'SQkyRjcNmQNidkVe' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 86}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Mp0OXAdPAy9tPeKn' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "LehwGMBxvA6n4kXg"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'qZqaJoqvsmfyXRgc' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '38' \
    --sortBy 'createdAt' \
    --sourceItemId 'Bac7zujw519pm4eV' \
    --tags 'pwnOSdCLza3meXq4' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'CDeHafiSHZlCyZ6o' \
    --namespace $AB_NAMESPACE \
    --slotId '70c1WJgSBFZzMT3N' \
    --sourceItemId 'gKVkofH1gNg6RLdO' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'RI2BjoAerswQjN3E' \
    --limit '57' \
    --offset '55' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dROv0hcSjLanJQw4", "description": "La7iWAwQXtLHfl8i", "initialMaxSlots": 50, "maxInstancesPerUser": 38, "maxUpgradeSlots": 10, "name": "pcwqF5vIlshemg9t"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'qmF23jpj0F7BrdqS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'RVKkKsWIrC5jGIti' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QcGrAcQA2r3J0edu", "description": "YwEu6F1LxDI8V6PY", "initialMaxSlots": 93, "maxInstancesPerUser": 36, "maxUpgradeSlots": 96, "name": "Lrd6nYEgm96obYDc"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'IDg9mPAik8Ec95LC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '83' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5wuUG5Nt3Xfr4z0F"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'XHcFgkqx7kybmAXq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '48' \
    --owner 'HTL3LcQUcBu0hxHL' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7vhOkyHxA9f1VF8Q", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '0hTG5eEOz5JqkY4r' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'HIupm86DBNeyh2O1' \
    --namespace $AB_NAMESPACE \
    --userId 'QsJrVyZgHg31futs' \
    --dateRangeValidation 'VhgviZUYcVqn6F5u' \
    --body '{"options": ["4hGiHBx1l3oYEcRn", "RvaBzhheN3sczF5O", "mg4pSnHwm8GQPC8z"], "qty": 42, "slotId": "5DQ7uNPffGPPkXPJ", "sourceItemId": "Cel9jjSLGPO6ysrZ"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'nejqAXlk8Kt120lv' \
    --namespace $AB_NAMESPACE \
    --userId 'wTvp5myNTWxsyujg' \
    --body '[{"customAttributes": {"rh3tjGt18L2FA7MJ": {}, "LmkSZ6llezJn91Go": {}, "A5EOcm65i2ghQWNB": {}}, "serverCustomAttributes": {"As8ixMSIH1NamPzP": {}, "Pif1nlFLxbSlviW7": {}, "UThx8J4VICeEnFwB": {}}, "slotId": "8QSKrfdgVV9RNnAL", "sourceItemId": "EAwGvw8KdCASHu7b", "tags": ["W4PRQdA8hrDaUN53", "nXIG7DvqYirhkT3U", "szY9ZwDFSYQK621w"], "type": "MnAZXV5T4UgJyqOU"}, {"customAttributes": {"DrfoW0I6QLvewn8S": {}, "meiNlvxo6YOyuOq7": {}, "kw4ZcYRQS0UswhCe": {}}, "serverCustomAttributes": {"vfzLLx1hiKS0JwUY": {}, "aGr74u0p10AwnSQN": {}, "T28L830513kKaqwq": {}}, "slotId": "WqIu14mQrVN3HAdu", "sourceItemId": "4cOGCnMNM7z2lsBc", "tags": ["1nTV9y4obPWh0McI", "WJz8ccGzVQhbmNvd", "ahhO6UYtCLQ16OrL"], "type": "sj01kBPTtUImhRn7"}, {"customAttributes": {"o4NollCHzIRNljxX": {}, "s9Dvu9cwWhejW4GI": {}, "bGuBdo2uXFvfqqzY": {}}, "serverCustomAttributes": {"ZU5ayqlFvm24bPR0": {}, "MaQiU6Blnsfc1mVb": {}, "RiFdRr4Fw32kW3CG": {}}, "slotId": "gCFFbplM0KbJosrU", "sourceItemId": "5cClHVyY2Ya5N9gK", "tags": ["P715BZZNCkQigb7W", "mzHo8htQPQyPAtKw", "LMBZVgrANQEcgSm9"], "type": "X8OxHuEkLQ7jOG1Y"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'Wiy2gSA2St8JbdNe' \
    --namespace $AB_NAMESPACE \
    --userId 'KyG9McU0pRymjHp2' \
    --body '{"customAttributes": {"3xCRWzkJ8at8L97o": {}, "PWbo2uVExzSh8NvY": {}, "KXplUfTmXUJBNXkh": {}}, "qty": 85, "serverCustomAttributes": {"27TZ6lb5FWavgprO": {}, "hB791ZAVvfyQWS87": {}, "VgM9FLc1AEE7kejn": {}}, "slotId": "F9ppMotmHfP9yTN6", "slotUsed": 56, "source": "OTHER", "sourceItemId": "Ea3jAoeQxngHK2pW", "tags": ["ZqcfoGlLMGcXojqZ", "Dd68eVxYkZlSwZoJ", "Una3SRwu3X6tc242"], "type": "ZiUOYfDWekl6DDVV"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '8NM0IVnrWfVPULAt' \
    --namespace $AB_NAMESPACE \
    --userId 'AXGhdlO9AEyjMiiR' \
    --body '[{"slotId": "TZBQK592mXRfObiW", "sourceItemId": "ad6wwXkGbO71UCHI"}, {"slotId": "cVQSSM8V67ENBMHE", "sourceItemId": "I1nnS1YmXZu51D6c"}, {"slotId": "Z4QPbzMpVW00NJtT", "sourceItemId": "zeQgAdRHWn31fVuN"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId '8ZtCzWlUfJYeymd2' \
    --namespace $AB_NAMESPACE \
    --userId 'weG9sWS17KJULMe7' \
    --body '[{"customAttributes": {"vWpzls0NVNt4xP2u": {}, "xgBvKCKMoq5tWidE": {}, "SsswerKrepHmlMYW": {}}, "qty": 45, "serverCustomAttributes": {"TzkXe7EkTz9tIBfq": {}, "LJuxfQgzKx4Z6Te7": {}, "ip3Hr4xEr7a4OQia": {}}, "slotId": "mWbfqyzHtKJClzS0", "slotUsed": 56, "source": "OTHER", "sourceItemId": "7P9KKeERLfAiRQqb", "tags": ["zoNyZO3j13rvqHDe", "BvE0an2ErH49yiZf", "8MpPsKobYQ4UH4F2"], "type": "1UBjVBCPhNw5FOeu"}, {"customAttributes": {"qwvKNZodeXvOJocC": {}, "rzXl5RPxL1WCmWre": {}, "RelR4Wq79ZunkQDN": {}}, "qty": 10, "serverCustomAttributes": {"tvcmN7NNi7zTQlXI": {}, "orkhLfPXdsagBxLX": {}, "dumUclryznHuzQFm": {}}, "slotId": "fqyxH0MqjB6OKMJG", "slotUsed": 76, "source": "ECOMMERCE", "sourceItemId": "GSX3hyVEfV4NREMy", "tags": ["jSkcQjs23YI7Rv6L", "HFQeIuHY9gjdZUMl", "uqXGU5Nmg8jcDaca"], "type": "mNuATZdc55dFAs67"}, {"customAttributes": {"ApOcrZb886qlcel3": {}, "wTJqQ6SzcSTWsVrD": {}, "Rx5ULWTyuYU6Ihkz": {}}, "qty": 67, "serverCustomAttributes": {"Ygzao16czJikRzN1": {}, "y90iqmaUtaIew7B3": {}, "hHN87FslhU0zo5uu": {}}, "slotId": "gfoP1NL1joV05vc8", "slotUsed": 0, "source": "ECOMMERCE", "sourceItemId": "JLPxItnSJlhlXiQ1", "tags": ["d69HbVvSjd1IprQi", "CJAaZLyYZWTKV3hE", "Pcj6oGrGVzk7xgAm"], "type": "Q5daoMxz7SODSmrx"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'AgzjGq7rkJkRxCZa' \
    --namespace $AB_NAMESPACE \
    --userId '6aBcb6VnkBnmePUP' \
    --body '{"incMaxSlots": 47}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'AfLNbjC7DVbongCa' \
    --body '{"customAttributes": {"T7u2KvzkMDEyx0kO": {}, "jyxKAJNHC7v9MT7z": {}, "pMGMeJkLV8q5bgec": {}}, "inventoryConfigurationCode": "WyvRsi3lZog5Q2xK", "qty": 29, "serverCustomAttributes": {"63OnBKfM4xvIPWkX": {}, "hv3VKQcpZAsvHhod": {}, "4J1SXqpWjYw7C41E": {}}, "slotId": "6qziz2KLudfNEGHZ", "slotUsed": 60, "source": "OTHER", "sourceItemId": "zbJ0m2giTPDjRf2U", "tags": ["dXOxsyz7lmNfVN0i", "3aIhM9hab5AdIIjq", "aFvJhLiKw5BmFTtl"], "type": "uyxRcuSzaKOBJwbT"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'yjfyRTs05OClBrpN' \
    --body '[{"customAttributes": {"4hZ4oHGxBjIsckuh": {}, "lbv7466qT7TTKPbh": {}, "lHeTbSjdQucZpbMm": {}}, "inventoryConfigurationCode": "xHYo5sgbqJ13zh1v", "qty": 9, "serverCustomAttributes": {"HB1GAQcHSEzK3dZA": {}, "KYFXmqdXMC6arbXK": {}, "s81K3bWoeDqxlPxH": {}}, "slotId": "4lcNybkJbFe9dHs5", "slotUsed": 71, "source": "OTHER", "sourceItemId": "TC4gZbruj9jnw33N", "tags": ["JGgwdDUzFlHQhviL", "FSKtYqJmVAQLHAUt", "XypNioCIUsnmWEoq"], "type": "ZPEOAk8XTIgLo3Hi"}, {"customAttributes": {"1XLRY3yxtIB5WznK": {}, "b7vToKnJUQffbBzH": {}, "cECmyycDaihU7OKD": {}}, "inventoryConfigurationCode": "APidnf4CPuAJkJHh", "qty": 70, "serverCustomAttributes": {"z6zQRTexRxoocpY6": {}, "Rlkd3rkZ8QocifzD": {}, "YjDcwDYp0sV3R3Hh": {}}, "slotId": "vxcMfW88xajnImfu", "slotUsed": 60, "source": "OTHER", "sourceItemId": "jxfh8LGFIuyPFfDO", "tags": ["eamaUE2wDuwSVZsW", "GPZ4XzdGpcEcfFPV", "AdSwWzl5YQ5jrRuQ"], "type": "qNkTrUP2eit9S0Ld"}, {"customAttributes": {"3Wi29yvaKftCkmHE": {}, "AINH449Q5uTfZjUu": {}, "HPcTq84nFiR6hc8o": {}}, "inventoryConfigurationCode": "cdUk1jWy6S0GT5Ce", "qty": 25, "serverCustomAttributes": {"jm03hn9nZWDp258W": {}, "meNBc2exGTr2QkrB": {}, "2kZiLETkewbW4lbh": {}}, "slotId": "wgkfFexvgNmUA5yn", "slotUsed": 18, "source": "OTHER", "sourceItemId": "nnbY59loqMS2uVVI", "tags": ["kfh6p4kXy9mKy72w", "wOCUzBBwKCaxwOEr", "2fbjzwpEYvHOEPas"], "type": "8XlE2E5a1iQLjeiV"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZfJKdPBBZ0Mb5sib' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'BvFPZb1CacclhnXw' \
    --body '{"entitlementType": "rBMyXJjpEsQbnyKb", "inventoryConfig": {"slotUsed": 64}, "itemId": "KoLlk9ihkAHy5Q50", "itemType": "MJ4yQ8jKPuvutVvI", "items": [{"bundledQty": 18, "entitlementType": "qBcRx5aMy9zPj4ri", "inventoryConfig": {"slotUsed": 68}, "itemId": "DymmxkQjRNXBE4qe", "itemType": "eWa8IMDQm9Wp2ag7", "sku": "CHlfKSwmmfe3SlTz", "stackable": false, "useCount": 37}, {"bundledQty": 56, "entitlementType": "M3O5NVQtk2brxN5H", "inventoryConfig": {"slotUsed": 53}, "itemId": "exwgeaIIXjh3Dde8", "itemType": "W0fBE9Ym2c8lSwMo", "sku": "ayyNsRaQ1htIoYDM", "stackable": false, "useCount": 16}, {"bundledQty": 18, "entitlementType": "PWk6ymiy7E9UqkLL", "inventoryConfig": {"slotUsed": 100}, "itemId": "FzIBUdkOPyr0wPbH", "itemType": "1jEcGbJvIv0yoHrJ", "sku": "fSAZ08fC5OAbSStg", "stackable": false, "useCount": 84}], "quantity": 23, "sku": "ShOtiNSiTbrwpZao", "stackable": false, "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'laoOz6hYYSrpGxdF' \
    --limit '42' \
    --offset '23' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '29' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '76' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'yZ2SVpzGmnMH8xnW' \
    --limit '11' \
    --offset '51' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'cUvInsS3WxlDEz9u' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["KYID4JMbqMqkwicY", "bYiROgunL2JSWVux", "MLOpWFbX354ZTvYN"], "qty": 8, "slotId": "Mw2255gp369egXc7", "sourceItemId": "KTzuHct3SaMdJBfA"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'lowlIXRKuozsR8bZ' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '85' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'SSUxUUBYjboFwFr1' \
    --tags '7FsJ7ebAcfAtkOKy' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'xQaK4JvYkLfuOkaq' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"yiCbV939XufSWpug": {}, "BvAmO9tOgDGSeOoM": {}, "3D4CJCKHsbfQu97q": {}}, "slotId": "6vNctwfrlMLiUVwm", "sourceItemId": "vGj4qHzVoaJC2W4f", "tags": ["WRlPyTcECgrtu1wF", "URtcwkaR2fDmYCCL", "MTLfBEIsbHNQd3Eo"]}, {"customAttributes": {"sK0KoV4Srqafk8jy": {}, "jeBGJ95mIsoWrmLe": {}, "Z3jMYuYrzLrYcPYg": {}}, "slotId": "KV9c55z3oeFAY5ls", "sourceItemId": "csjVApFD7RgeOPTb", "tags": ["dl96ZVqS3v9vYbev", "XoCDxxsXghfbJKwM", "J79jKc4byk7aglBm"]}, {"customAttributes": {"CTLMnbcAaq7O4FZh": {}, "FQEhqTdGh5Ry5yoi": {}, "nIM0F1pdH3UHK1rj": {}}, "slotId": "0kfq9kbBwXTafGiB", "sourceItemId": "8QgQDcwH5pTEXPfE", "tags": ["dQaabaNo7y5h023Z", "GvwSoofSANFt4FPh", "Fykhug24VZhtY9dx"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'aeubbPaHinKaV8rn' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "Go5n75l47vPDZQUD", "sourceItemId": "LTFtVwMgLZMHT3mH"}, {"slotId": "6OyEVvAgP3cuIiXz", "sourceItemId": "ZNFA7dvbEtaFzzCd"}, {"slotId": "vBFojE3gdQPF5BNK", "sourceItemId": "DtHnJ5bAYlnflfP0"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'o8AJh0NNoPmQiicB' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 100, "slotId": "sNBYsZeZ55zISJLm", "sourceItemId": "FPzrcyQOAEtV24Uy"}, {"qty": 64, "slotId": "cpg0B72VUVZqCTHh", "sourceItemId": "Nc7fxaVevpRwJVRB"}, {"qty": 50, "slotId": "yCHtZGvaJAkNdKsU", "sourceItemId": "q6ao4HVaH57pyikI"}], "srcInventoryId": "Kl6bXbQDJ63N0Dl4"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'MiwDvPOC8Do7pfi7' \
    --namespace $AB_NAMESPACE \
    --slotId 'dITAJIGpYGEjkE3l' \
    --sourceItemId 'QKpsHM6354uJmQLZ' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE