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
    --body '{"message": "orwlzqjZN6pbNhYP", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "P0XwWqhqedEjKqLJ", "options": ["OyIA7qE1Ht5443Ol", "mpVdL2yMTyMCPE4r", "W3vOm7Yxq257vliC"], "qty": 95, "slotId": "JCYT2MQtV2gZDtH1", "sourceItemId": "JTDIJzYtqVIfcrcO"}, {"dateRangeValidation": false, "inventoryId": "z7vInKSkfxqmwR7y", "options": ["OQoA3waauwg7pbHZ", "0zOjLIYPZsxKg8xs", "8u3uhFcQNVwNNCOj"], "qty": 79, "slotId": "XQL7uiSDBYYH7ELY", "sourceItemId": "8LFCwSUFRTlf8Ox0"}, {"dateRangeValidation": false, "inventoryId": "FWgqfUL2xNQj0Uuv", "options": ["GOMRwJTgZ6JQDUfc", "2bwjID0WpbaTrE8n", "KqtT3ovphINYbDnI"], "qty": 3, "slotId": "MxCbdb5fnr0gbTqA", "sourceItemId": "zbXE3meSeLw3DbUZ"}], "createItems": [{"customAttributes": {"ddOc9y1oK6OMGgpK": {}, "7bHXW9s9kFphWGub": {}, "l2h32Irp7gY0UtkP": {}}, "inventoryConfigurationCode": "krNLgIn2rTiLZK7K", "inventoryId": "w26PWJ53OIrf8F3x", "qty": 27, "serverCustomAttributes": {"sT50YRGK6Iq3EwKL": {}, "C7gF7WQktZ2rDHCx": {}, "xutC8UgOaAiU49Gc": {}}, "slotId": "z6KT53ja8xDcr8JN", "slotUsed": 36, "source": "OTHER", "sourceItemId": "mqAiTNU1h1mMFTCu", "tags": ["CTsppzgHA3cdlvmD", "dXSvdJpcsB82tewb", "WYp25YIcY6TJyJY0"], "toSpecificInventory": true, "type": "RXU1Y1pWldOzFk9D"}, {"customAttributes": {"ihmZ03GPLFsgpoj3": {}, "eMRHCUewpaNH3UsJ": {}, "3a7yk7jFXtNyvJgu": {}}, "inventoryConfigurationCode": "Hjz6SPxd0QQcxqCg", "inventoryId": "r7AmZlXVHae16m0m", "qty": 4, "serverCustomAttributes": {"7XeW8HxIdbRjc8tk": {}, "2C7iqf37jvRsYTSJ": {}, "BHB3dPvJyVyFNAYW": {}}, "slotId": "Re6Htez52Tv0PMln", "slotUsed": 90, "source": "ECOMMERCE", "sourceItemId": "PwWkRKa2govPP4hD", "tags": ["VNlLvyzVnAyjoSzf", "pgYKuTqeR13s8Xj9", "TIey1FjsMcWuog13"], "toSpecificInventory": true, "type": "yGX3vlKHuwuqiRCf"}, {"customAttributes": {"sI0Y70rKZxvIXJue": {}, "L87VTRl13bfj2iQF": {}, "t0gpmjUgCDgwnSAP": {}}, "inventoryConfigurationCode": "bYiSqcLzHCkDZ61a", "inventoryId": "UiJeySl88BkpOKRi", "qty": 45, "serverCustomAttributes": {"FRuoOoWVwW85FU6a": {}, "aCYFQV2iwXjtJaFP": {}, "Mc3B6urgyAiPQKPs": {}}, "slotId": "l6vRwD79gwsmkLmM", "slotUsed": 15, "source": "OTHER", "sourceItemId": "a5oZBqYMzUo09a1e", "tags": ["neYsMXkJl38ec2Pq", "8zjgXl3i9ZURzgUb", "QsgCmU9ow7COmJys"], "toSpecificInventory": false, "type": "1EndnNxt79TXczgK"}], "removeItems": [{"inventoryId": "GDrL9dY6yyZsxNsa", "slotId": "crI8cAf4zTjJCwGQ", "sourceItemId": "bGtPgbUQouueJPFL"}, {"inventoryId": "qt8fkHRsXO9AiKaQ", "slotId": "TypdWBWy2E1wR1uZ", "sourceItemId": "BCaCr0IP9p6BjbCr"}, {"inventoryId": "8vbYRCSdKJJ0zU53", "slotId": "0siY7IUkGfHA3gxn", "sourceItemId": "fDb98kfz11LTRmx1"}], "targetUserId": "LjqTPLFgUFRUfYF5", "updateItems": [{"customAttributes": {"J8iGc45hdxWkRRA6": {}, "trNJ1xzaSFfnYNJd": {}, "5G7hzBLbiVsUTXMs": {}}, "inventoryId": "MaKnPlr2D5I4FxTH", "serverCustomAttributes": {"moEZVevbOhSj1eMM": {}, "SALWbDsT9hyQbCP6": {}, "s0kn1QIx2qB5KWmT": {}}, "slotId": "10eTep10lBpLTYPh", "sourceItemId": "aYC6QQkAZdN39fa9", "tags": ["eDYWczAySqDV5WtM", "FSTwMLtp0GI4ozbJ", "EbXmqMhhIY4qupy4"], "type": "kYazlLGFTWi2eJyR"}, {"customAttributes": {"YnE4n8h3HfP2ibp5": {}, "vmeokISk3ev8Z5mF": {}, "q039Ikytiynw8mFh": {}}, "inventoryId": "iyFwrb3RnxUqeWiw", "serverCustomAttributes": {"SlpyUioJ1mC0ScJO": {}, "HNrM35QPwAd7k8at": {}, "skhR30cEjCEZRZPd": {}}, "slotId": "x7xfrlzYzZ5hqjWG", "sourceItemId": "ftfR2FoCegt4Yllc", "tags": ["wyeltFAVXESpJHxV", "OZxqusGHd96C9bo9", "J65KEYJcVVjYlz1q"], "type": "AtY8nMj6V0cNIgun"}, {"customAttributes": {"tkL7UAGMimBsBvsd": {}, "Mv9GXEGyLwUhHjhK": {}, "gSuoLKDl70PaRkHb": {}}, "inventoryId": "yiZvXqfLUW1DAo4y", "serverCustomAttributes": {"eBY1DuJsXof4QddK": {}, "70d11IvLMsH8ND6C": {}, "WfdJlhCQZvas6Yi4": {}}, "slotId": "9BpoNrKJKoYkwXxJ", "sourceItemId": "zZ4kEFo2qXCvfq7T", "tags": ["akNrRrIhXCjA16OU", "nNLuOhTco32esOYH", "8Qr9hPj2mrwZxzGV"], "type": "TTLJM2wUW8USeBQo"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "HbN5paTizNbL5vyP", "options": ["PrG9Xf7dlzNQgP5p", "ZssmlrGITHrPsYEZ", "0ygznHY1hGqfuiFu"], "qty": 97, "slotId": "Jr5YUT7TgRESx57V", "sourceItemId": "iYPeDbKZTUgPYOee"}, {"dateRangeValidation": false, "inventoryId": "wQukBWRfhjgEIrPo", "options": ["9qeAHYQgMwbiphjV", "4GZ8oNyOVwUAczU5", "cLSgZQwBkfq4UOus"], "qty": 43, "slotId": "myyr1Iz6iTnyci8q", "sourceItemId": "q2OUl8gNprFT3zoS"}, {"dateRangeValidation": true, "inventoryId": "bUuBWPsEJoyTo5Ck", "options": ["Y8VlIyhAW6VjMnYa", "oehW1c1lQ8xnt5PU", "Toq5wIaLYizpKN1h"], "qty": 22, "slotId": "gncgNSeZLvQGIbtV", "sourceItemId": "wBgboIqEoRbUzxQ9"}], "createItems": [{"customAttributes": {"cdymub0uCnUYUayU": {}, "3RDdEGF8P9xI9RZk": {}, "PyQ7l4X9Kb1rDOY8": {}}, "inventoryConfigurationCode": "PV7MQJQQ6yGmy9PR", "inventoryId": "0cOtBsSXdyKwkuSA", "qty": 12, "serverCustomAttributes": {"YoS8QLyZ7TpqGQ1d": {}, "9ZNdfRKscpBEHWCz": {}, "BjS1QABUO2kC4Exg": {}}, "slotId": "T3J8knmgbe8n9PWe", "slotUsed": 6, "source": "ECOMMERCE", "sourceItemId": "8QF1A6ObsvBZd0VH", "tags": ["ZCfpqKSSZcTc0igu", "uFGAFgX5GEmmi4Mt", "ozsqDQz5OvHyTJP9"], "toSpecificInventory": false, "type": "MARHChr5Ehj3KSbS"}, {"customAttributes": {"Zr3Q36Nm1VtWfSjT": {}, "uRVNblxaIV1t6EBY": {}, "UPheyHNp2qk6Idue": {}}, "inventoryConfigurationCode": "cQHHJmH0lurNUniT", "inventoryId": "pM0VRim4FFJVnilU", "qty": 33, "serverCustomAttributes": {"9vqMxX6L8oLpLkRc": {}, "LZ8gdTHoXXKYoQ15": {}, "2bGkpJVj4Cr2DlQH": {}}, "slotId": "m4nTNo77Ee3HdH7B", "slotUsed": 75, "source": "OTHER", "sourceItemId": "vI5eX3zWiFZrruVY", "tags": ["zaRQ5Axix5F8AWoW", "EgsKX5Js2PilFDZx", "A5vgZLPGsok7XEuD"], "toSpecificInventory": false, "type": "23xZaDlUedLe70Ns"}, {"customAttributes": {"a1rKwH4jFymWl1zs": {}, "0mh1p7t6hRsdirBt": {}, "PFNOi7D57gvaCYsQ": {}}, "inventoryConfigurationCode": "bdyXq63PE9fVYirv", "inventoryId": "2Ax5gp1MW02D24x4", "qty": 69, "serverCustomAttributes": {"0j9V6gypSZyFhtXq": {}, "Pca5as0pWJGepbgG": {}, "QvMqAubAlHJZkPuH": {}}, "slotId": "9SxeZdVpPvI3FuKb", "slotUsed": 68, "source": "OTHER", "sourceItemId": "ls0oX1jIGM9JTLYA", "tags": ["XduTYRXZus8efw2Y", "xZ8eCAOo8RyArrVc", "Ag4vAomXc3y1DqgU"], "toSpecificInventory": false, "type": "GRnfn60jkK0KAnoi"}], "removeItems": [{"inventoryId": "LvzZ1W0tPoYYTg8H", "slotId": "jazeOzubNKcQYpFJ", "sourceItemId": "zpYMDN3S90dy1GtB"}, {"inventoryId": "RSqTsLyD2FesOCye", "slotId": "PzW4tY3OxY5RTcVu", "sourceItemId": "DEYZQYb9COOxdgbl"}, {"inventoryId": "NwlmTIJGR7oR05Cl", "slotId": "QoH7nBUeL2DAN21x", "sourceItemId": "kdiO7esqLToJ4RUl"}], "targetUserId": "9xT55s03QjavKRr6", "updateItems": [{"customAttributes": {"94EG69BAEYxsMEQh": {}, "iysr2cUjZrEzqxjZ": {}, "mkW385W8B3jVEb91": {}}, "inventoryId": "GsiQTrDG0Phd6KkI", "serverCustomAttributes": {"1uM9oJAHtjRBvO8t": {}, "ykRcLQ5uhdcCIqfE": {}, "cKyqGMlQJ8K2IdhK": {}}, "slotId": "nPg3g32JuDFXVE54", "sourceItemId": "pbsGgCcjM3uEhjxk", "tags": ["ij7u5zXTPg49RSSi", "rU0dHJWFHAbGTVkX", "z0QR65lAMda4xJtd"], "type": "sZxj377ecGlNG6Wd"}, {"customAttributes": {"iOtNJl24jPSN4gGw": {}, "99Wzi1ttsFcnjR4N": {}, "iDRm2ancnw6soAaJ": {}}, "inventoryId": "uskk1j7hMfwdzA0f", "serverCustomAttributes": {"z509qiFRWvQrhR0M": {}, "rpXeA15TFsizIfJw": {}, "GEI9ZI5mCXwZ1J0C": {}}, "slotId": "MKGPJlb5ueZK8PED", "sourceItemId": "mwQ6JL08SitAb30j", "tags": ["wgk2puCQWukDg3PY", "C8z4J6RSgmW2Whxu", "muQZJaJcVxgZhzls"], "type": "BbCLNN60L8vUNDzz"}, {"customAttributes": {"BF8H9o6bGzmsqEEq": {}, "UFurRyztbRmCkGua": {}, "FnUXhJF6eyePS5vb": {}}, "inventoryId": "68P6hFtbl4Chjs1l", "serverCustomAttributes": {"Yip2j7EY59qw9mbU": {}, "OHPlyc8AglUYPDF7": {}, "sNu5XRrCuIkyajIP": {}}, "slotId": "wYf8lWkYcYf49eee", "sourceItemId": "kD6BrtbYoPRKrhTc", "tags": ["KBjGDz1pguJ6FiL0", "lMctSHjX3q34Yf8j", "beFeAd4CoUWLSxbw"], "type": "Jf8HgPqkzXBuXQo3"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "PUe7eYj7TUltzGNH", "options": ["pIwljujv6sh9oIKU", "AKO1rrXybisrYCFt", "sNyVVWxq0Swf4VHs"], "qty": 79, "slotId": "Eicp7sYN6OL27ALW", "sourceItemId": "h85zRRGeeHG1IIqT"}, {"dateRangeValidation": false, "inventoryId": "fDeJbWJLYauwwMNf", "options": ["PTPZ1kGtPyv8OWnb", "VZoRMZFk2qgpl1xY", "btdZVaoGlxcc80Lt"], "qty": 1, "slotId": "bCAjlWmLNQ3m908L", "sourceItemId": "iB3aDcxKZaKoqL55"}, {"dateRangeValidation": true, "inventoryId": "uW0UPiSI7PiRYZz9", "options": ["wOqIjShwz7TPlnRb", "lbxmfZYqGszCJhtf", "T36NcbKE5uBWCuNd"], "qty": 69, "slotId": "gxiY7cMcOJRQyPdB", "sourceItemId": "JMl0tgojVbwyHRLn"}], "createItems": [{"customAttributes": {"puRmlCKDnOH4H4vR": {}, "Z6WKkFrIAgsw9WpW": {}, "Ln5AgyxnLQAg3iaR": {}}, "inventoryConfigurationCode": "pi7k4KEweFTr9GYv", "inventoryId": "WvDs9ZuWOpTc1bVj", "qty": 89, "serverCustomAttributes": {"FwArvFsa2OsHNh35": {}, "LkUBEYvQTsCYedWM": {}, "TjIq0ZAnJHK25dib": {}}, "slotId": "kKvPRBgfzopqm9uc", "slotUsed": 30, "source": "ECOMMERCE", "sourceItemId": "P2vXiVtI454yNZkt", "tags": ["Iu9uRg7lirLAqjTM", "zvwtWBN8O7L6DCIk", "PhjcSXcOaIIKuTG6"], "toSpecificInventory": true, "type": "lSHe8oC8xkkf5u9h"}, {"customAttributes": {"oIrKxciDGcScSpWK": {}, "tStW9aw3E4ehHX93": {}, "f7A48ntHh1gtiKLQ": {}}, "inventoryConfigurationCode": "bxu5A30NU2QQtMZF", "inventoryId": "71efpt1DGzJwZtAS", "qty": 39, "serverCustomAttributes": {"R8MK4hfgvVAnwNgR": {}, "H4EuIxTpCfCGiHCs": {}, "NZR7uRqeJMZs9c6O": {}}, "slotId": "8d3PasKZdxDYbcJc", "slotUsed": 34, "source": "OTHER", "sourceItemId": "F3zQls6KxbflfoS7", "tags": ["ekkUGXmfIYtQPkmX", "HPjAJucpjl4gt59F", "PwbiBtMo0KcqHNkl"], "toSpecificInventory": true, "type": "SrthSLlOLiFhUXLj"}, {"customAttributes": {"mwzihPZwvuZB5sjo": {}, "TwKNC8rWqR1W5D8g": {}, "zb5WG5IatAG3nMAk": {}}, "inventoryConfigurationCode": "f419o4pVOlQm5V8L", "inventoryId": "alscMMKgsF11wFDw", "qty": 33, "serverCustomAttributes": {"FVOu1REYtnQcdKTC": {}, "h5eOqh0SHJXS3m90": {}, "p3DwKQNanJx5iNG9": {}}, "slotId": "ISl9l4jVVn6TEvSM", "slotUsed": 50, "source": "OTHER", "sourceItemId": "6xYFyA7AxyPiuZw3", "tags": ["ywZVtNDCPdTwxOmy", "RHhhUINTcfdI0KML", "gmXiXT5BboP5wFG5"], "toSpecificInventory": true, "type": "NSMFlolZC841wOFL"}], "removeItems": [{"inventoryId": "kC1ihqsgCPkWAwKB", "slotId": "I4H64byYrHE0iCjD", "sourceItemId": "Ca82Stai2UrTMoNp"}, {"inventoryId": "qlBS8dedLxGmA89x", "slotId": "49cLQYuaVvp28cNj", "sourceItemId": "ON9GHCdK18TONK5I"}, {"inventoryId": "nLydRtF7uCWcaPeo", "slotId": "bKjrLBlcsm2THdT5", "sourceItemId": "HDyTr7v6fycDg0Qd"}], "targetUserId": "qncdSg8cdM1b6yoP", "updateItems": [{"customAttributes": {"zpw06IiWMArujUEv": {}, "nS1ViP8jOFOTACr1": {}, "7mw3iq6a9wQjI869": {}}, "inventoryId": "lsDLCE9mZlLRTcsB", "serverCustomAttributes": {"0LaIq1YccnmoCHiZ": {}, "H71k4mEOE9j6BwFX": {}, "EhRe8p6JVLoeuERR": {}}, "slotId": "uqu5wjVQ9sAIEfn8", "sourceItemId": "2BwsDr6MuM8YH2rj", "tags": ["T2PhXIkTDlXGKfZG", "8AGjiRCyJFRjGblx", "b6afjogRSuqsO4Ac"], "type": "Qoxg5fvwQ2JjTsZm"}, {"customAttributes": {"VsW1ymZaER2asAPR": {}, "HeWZedHdU3aeQ3ox": {}, "8MAdx1wG3zdN8L7f": {}}, "inventoryId": "xk40lim6bienmEk6", "serverCustomAttributes": {"2iseuIy4GVkF9g3E": {}, "lmTZ1uS2g03DsMOF": {}, "UVzN7F6XKeqDS9YK": {}}, "slotId": "wU9jgJPVZDG19njl", "sourceItemId": "pRl6ZObZA6kZUdeO", "tags": ["0En0pgsai4J6cfkY", "zxz5pwnButc2ieIq", "YYcnKYpmEa7oisFU"], "type": "haOU8m0SkCKhPG0E"}, {"customAttributes": {"zzX1vt54qNtp7OWw": {}, "QXfj2ORL46rG3tuA": {}, "r8dd3gz1qJB5sjN2": {}}, "inventoryId": "jRWWro4G0zACosYT", "serverCustomAttributes": {"4wVpQXlcyaasmlg1": {}, "YIsusrKTTJHX2oQ9": {}, "q0SM03XVu1ztSzQh": {}}, "slotId": "sv5jOUSg6TEBkcas", "sourceItemId": "c4XQhf6aZOlDujYM", "tags": ["2wtrT2HSPugTTYe1", "mr2bYudgUmak5qOO", "uuzLWIrJvnlwczJ8"], "type": "yiHYoNNOoxcIO0un"}]}], "requestId": "ouWN5uO9ODQv8xuB"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '37' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["TddWP6Au6YGzaw7p", "wXySKWML08gVmfHx", "i9MbSSzI7ht1kHjt"], "serviceName": "NmTm7OTecn8S1DcF", "targetInventoryCode": "Hybc9bcdp8L2iv5O"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'NPNrkgV6bd6O7Nwk' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["zjcSTEbsxZKwu1qG", "4k5dJKHj94RNKwih", "Dz3Q0gMUvlFYpzow"], "serviceName": "Dx5JvFm3wHdZtRvv", "targetInventoryCode": "gUzF3emplSPW7KAj"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'n6PxAQLnRNrB5Vf4' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '6oasxzUJI5yl21vk' \
    --limit '88' \
    --offset '38' \
    --sortBy 'createdAt:asc' \
    --userId 'MuWujV0Jf6zTMVZR' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "MGVwcnxTCJ1ydLjW", "userId": "lSnUrC0L7K9WpoOM"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'rfLEAd2NuwajobsZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '27g2dITYAsb5DDxr' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 70}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'U9GradLkPflPNEzC' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "bZhETlMCXqfO9o9p"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'QuMqIP8oWqEfWy65' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '10' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'WaA66aI2wPgciBOx' \
    --tags '8ck27ONOhnH8EDGb' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'hqED0ZjfTxI7Co9h' \
    --namespace $AB_NAMESPACE \
    --slotId 'rvHXMPAybQOSvovp' \
    --sourceItemId 'POa0Yg107HjWIafD' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'jxyK8nZ8gRoCI61m' \
    --limit '80' \
    --offset '62' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Zt5hYJgC2EXNylWx", "description": "XtQ9rBRe7AMLWhOO", "initialMaxSlots": 18, "maxInstancesPerUser": 64, "maxUpgradeSlots": 40, "name": "HyrJfoUv5MURhJum"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'rTTERuLw5HdK3Dmz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '1v2DP5tkWByyLvGl' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2RbAB0XWRyKU5QvC", "description": "LN5caqALgx5ow2LO", "initialMaxSlots": 71, "maxInstancesPerUser": 77, "maxUpgradeSlots": 41, "name": "a5oP3MNumekFw9th"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'YJicVM5pfrhQd9b6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '33' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "hr9z5A4KjDI8etoR"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'DfrQQLOClgC5zKe3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '30' \
    --owner 'KqekLqLrIfrGLwBE' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "CVOQjBD56h5nqm9Q", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'lzU7RXLGf4D5XasQ' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'awFToydD550hoeih' \
    --namespace $AB_NAMESPACE \
    --userId 'b1ZqulOwvONlCKod' \
    --dateRangeValidation 'rIjHtwGBW4U78sX2' \
    --body '{"options": ["snOQ0OlwCOwxAVuD", "5xwV59L6agKsjd65", "1Ql6MMkoHBliQYvl"], "qty": 17, "slotId": "PQuJ78Wev0fCc98S", "sourceItemId": "mGeoSN0zr3uWjytw"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Okj40D4hd8yfao7C' \
    --namespace $AB_NAMESPACE \
    --userId 'lds8tAFYzxWL4ftH' \
    --body '[{"customAttributes": {"xIZOy9puWO1FGzmm": {}, "1yuFdbzH27eoVwwo": {}, "4con0zwpnl75ydTx": {}}, "serverCustomAttributes": {"2iOrAXgoafR73oPW": {}, "6h8o6CidMDz0prdg": {}, "k93iw4vBIIjEl8yw": {}}, "slotId": "0VX7FNJeQ5yTpvFR", "sourceItemId": "nJMuN17iwKwRW1ND", "tags": ["S8SUvybTSKjq9yGe", "aTMyrWoA4PKmuE2W", "wLVQJoAPN5limwgE"], "type": "omy0HTHCxPmKx1Bc"}, {"customAttributes": {"98ANMcNEQW0bWR7T": {}, "qDKNKdmUI5CdmpXX": {}, "l1PLh0sAn4zAh1yP": {}}, "serverCustomAttributes": {"EPebVXyDk6YyliPr": {}, "z9PofdSmu4bkqq9p": {}, "q83HgOtpFlsL6MYg": {}}, "slotId": "fDitUd9SNEQbi8fA", "sourceItemId": "15g5YEJSq5XpSSm2", "tags": ["BMCcT9CSoZVvSaX5", "3MwBtqn9juIkPB9U", "hM52W2ZftbHdLoPz"], "type": "8Ot61CGfzlgXc1va"}, {"customAttributes": {"Y7R0mYKFI91nR6Xr": {}, "bPegAw5xet0OM2uL": {}, "7znpD2U2vOtYrEtw": {}}, "serverCustomAttributes": {"6w9E83QAgcb1JfJX": {}, "9E9et1efzN5zINUK": {}, "Q5imOMbf4uHbFOUJ": {}}, "slotId": "V9dGeYqRo84sVG1j", "sourceItemId": "wREXWrgow1yiAnOa", "tags": ["bFjSfoVMN4wewGh9", "6U1S5bV2wwJCrMKB", "Jdx0Q7iv1MVBmYw2"], "type": "yLQ8qhOmKLOV8opo"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'HmZFYCp1x88YPs0F' \
    --namespace $AB_NAMESPACE \
    --userId 'lLHY9trwHpL40Ys0' \
    --body '{"customAttributes": {"3x94DI3mjmqo1Rn4": {}, "jAwUNbYIv6UVdvWp": {}, "eB3mMIGx65ZHuhz8": {}}, "qty": 33, "serverCustomAttributes": {"P9JzUwlbrOEoNk8Y": {}, "dl4s3fvMODDCNRlb": {}, "NwAHoEdT7PMPUPFO": {}}, "slotId": "jMwF0FPVdFcpi69x", "slotUsed": 63, "source": "OTHER", "sourceItemId": "2rKKBzPeW2E4FBAO", "tags": ["ZmordnZiTnOEBymj", "tjXItlH3W3oxgffH", "qR83k0Xt9ODct6MJ"], "type": "LVWmAnYsyFIbZtoW"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'F1ltsOaA8euyjDyt' \
    --namespace $AB_NAMESPACE \
    --userId 'TsbvWOuz4T5KUNgX' \
    --body '[{"slotId": "gZBsceKWWjPAesiQ", "sourceItemId": "Wpnzmh5rgguPvAbq"}, {"slotId": "JtPiRGY7wAFn2JUg", "sourceItemId": "9d79GkMLb63csNap"}, {"slotId": "azha0iM9jNhHXsOd", "sourceItemId": "echrJC8ixTeYvMNY"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'ImOiQbOILBzINeo1' \
    --namespace $AB_NAMESPACE \
    --userId 'ZdQYXmbXzIwhwqXM' \
    --body '[{"customAttributes": {"0BfuOcp0FkXlTZNT": {}, "CeB8NUdamX7jKNBf": {}, "GcjwA8zLqL2oCSJg": {}}, "qty": 23, "serverCustomAttributes": {"gztEGCtx3yO4LJJj": {}, "BsePaSyislgdT4B4": {}, "p3gv6VgVTGb2Mcle": {}}, "slotId": "ZeB0ZwBlY89742s1", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "evLNizUe7PSqBdjd", "tags": ["jpSbn6mkoTpfyUGy", "EEY0eglU8uq8Qlaw", "APQg77uH66xgMtrt"], "type": "9dARCoIF6kbNeH9D"}, {"customAttributes": {"NfgxLgUVPEfeM4V6": {}, "2zByTb9cmbY46YqN": {}, "LXovVQgyWvrOZ3TH": {}}, "qty": 22, "serverCustomAttributes": {"UmzN6Dv3bpN7TUnm": {}, "F6BmOuwpJ7X3hGJy": {}, "FCjUSwSikGk7MkPO": {}}, "slotId": "umaD5VFvFpwnTIw8", "slotUsed": 66, "source": "ECOMMERCE", "sourceItemId": "CVPMRb6LLZTJGEaA", "tags": ["xCrerFxWCtpYpiux", "OWeFEeeLH84nz14f", "91kmyzcaAWrovvPV"], "type": "ScDaueFLoTpAdTSW"}, {"customAttributes": {"49mt6dJobi2Ca4BN": {}, "LJelpJAQc2IPCLlq": {}, "rs5j9BrcRs4fHgRo": {}}, "qty": 66, "serverCustomAttributes": {"ycMIdW9ufPB0BzZo": {}, "gSLWaE08RJUUg2hJ": {}, "VNE53ri9UrB8Yitl": {}}, "slotId": "XDkuJIBsZKph3UvL", "slotUsed": 78, "source": "OTHER", "sourceItemId": "sd8tLNB7W9L1NGKZ", "tags": ["huzW4WUHoXx3bd2A", "WtDJY6MeMt0yU4sj", "I9NDlxtfWzghsaif"], "type": "o4VCSHzzA25aXiZ2"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'ZUNI5slIoO5qtCcn' \
    --namespace $AB_NAMESPACE \
    --userId 'xAWoyoEkYBpi3tm8' \
    --body '{"incMaxSlots": 48}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'OyYd4bjIwbZAC7Yr' \
    --body '{"customAttributes": {"ow0dvnVRXO25ozo2": {}, "naOX0mEgtOmiwQcl": {}, "R5ftsGKWIv426CaC": {}}, "inventoryConfigurationCode": "DwgZyrqR5a4Z0jwt", "qty": 45, "serverCustomAttributes": {"CPVBigUQKa1olunV": {}, "zU4EqySLUWoWBtFO": {}, "3fEFai1FPF7iZBo1": {}}, "slotId": "1sd3DjTLDum105vk", "slotUsed": 72, "source": "ECOMMERCE", "sourceItemId": "e3KM85xc7zplUaJa", "tags": ["WPTgfyoaRrZlBcku", "a0YubNOm3bIbzvqh", "a1D9yB04nIrHUsdZ"], "type": "yY3ZKNtmqtJgHbfj"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Eqpvih2pmmISLELy' \
    --body '[{"customAttributes": {"RSOLlGUwcNi5y9Om": {}, "COY07Y2lFdxkrjJU": {}, "YROTgr4psqiAEGTt": {}}, "inventoryConfigurationCode": "n2GA9yiTl0KlxVkB", "qty": 59, "serverCustomAttributes": {"nDiRm5ib9iwSof3H": {}, "u8Bw8jBPxJIlgMlP": {}, "xDAWQkgEpXeIEkGp": {}}, "slotId": "daDbK92VvNlxLgXk", "slotUsed": 45, "source": "ECOMMERCE", "sourceItemId": "8sMnHWKzj1N7N5kF", "tags": ["gVYZ2rPAE0edtHOm", "T3Fzz1CRbQj4q9Mi", "RiW9I0SePUF0N4v6"], "type": "XlIF67kGhqhlOV6T"}, {"customAttributes": {"qMYMAJOvciF8cV9v": {}, "0X6PLZs81msZw78Y": {}, "3nI5NCLKVJv0Zd28": {}}, "inventoryConfigurationCode": "sE0D14bSDhnJBNM4", "qty": 82, "serverCustomAttributes": {"lePyk8IY5o1J431l": {}, "CWBW9n3iNsK2nkGJ": {}, "QMXuKayPgubbGjdj": {}}, "slotId": "lmgRI93eYuRUKZXc", "slotUsed": 61, "source": "ECOMMERCE", "sourceItemId": "cIRARtGAMWHyXMOL", "tags": ["VkVvfH6piWjGQZzE", "9wAVSdJSLwYiWtoI", "pZePuwaGNvfodGIY"], "type": "vEbTPPZptQqAYmj1"}, {"customAttributes": {"CCY5dMbE32MfbTgw": {}, "LTJ5QvIQduaYE2gb": {}, "4PnhXGPneAr9prhs": {}}, "inventoryConfigurationCode": "CCSInkD8iwgaZi0E", "qty": 95, "serverCustomAttributes": {"gPZdYh2hCYb6n2HZ": {}, "ERwNJByEQfXdUG0G": {}, "hfBH70GtQBQNvwpe": {}}, "slotId": "ZWdDAJMka18JscCr", "slotUsed": 31, "source": "ECOMMERCE", "sourceItemId": "UxW41ESGtFMPpfFE", "tags": ["wasS83Rjvvur607z", "hjzNDol631rZ4pR2", "fWIyXZXLQjYpud2k"], "type": "7PHMdG6trFb71qoK"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'kLt6mKxLGF6vTSX7' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'fiM1SQKCl4cRiYhU' \
    --body '{"entitlementType": "xPDfmkb83WdLxTqI", "inventoryConfig": {"slotUsed": 38}, "itemId": "vSDqTf99jAKd7OXN", "itemType": "iMKO6IujH7TSZZIW", "items": [{"bundledQty": 32, "entitlementType": "j5lT3LQ4NIXgNKfR", "inventoryConfig": {"slotUsed": 37}, "itemId": "WrWue3OLvEDvJtJY", "itemType": "4lwhTFqLK2t3XdaS", "sku": "bzHnn1pzgJSGTGjB", "stackable": false, "useCount": 0}, {"bundledQty": 71, "entitlementType": "HPajyfvxzvxijXME", "inventoryConfig": {"slotUsed": 39}, "itemId": "DztGKyGy2xb6yH3O", "itemType": "1sTjJq9woOoLJVm9", "sku": "NniW4cY9DsPQNDGi", "stackable": false, "useCount": 59}, {"bundledQty": 39, "entitlementType": "ISpmaTffgt85ACAN", "inventoryConfig": {"slotUsed": 0}, "itemId": "VfKGkzYaPUMcMDgc", "itemType": "L6n8doTBi9bk4ijw", "sku": "HRUWKZcvY67Bm7jd", "stackable": true, "useCount": 91}], "quantity": 37, "sku": "SSsMnTlvFx97v0L5", "stackable": true, "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'pSigoRonBbklUCpx' \
    --limit '22' \
    --offset '93' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '37' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '51' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'A8j468TXNxiCtUtt' \
    --limit '40' \
    --offset '91' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'YtnfF6wqzFM7ywAZ' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["wcZnOFzxZLGRDPP3", "3hBirztj9ZdkmLfV", "Xi19imD4Ze8G5QZ1"], "qty": 82, "slotId": "wAS5V4dHJx4nnIqQ", "sourceItemId": "Ws1B9VtSRn7ZbKkV"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'VbG9ZVXpXYH6nG0Z' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '95' \
    --sortBy 'createdAt' \
    --sourceItemId 'CIej80jqN28QjSgT' \
    --tags 'f9G9aQ3gaFA0Y8PQ' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Ag8iOwfeZ4whrA75' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"GYfvNSW3Jw1EPZjO": {}, "YOViekQ3TInTg2hJ": {}, "3FYGDZsofPXKmZu0": {}}, "slotId": "2M3kPqCyIBVa4KuF", "sourceItemId": "FgVlLXKnB7l4G1R9", "tags": ["T8xtxGixv0STv2Ry", "FqxYYMCVf2Nl0ZfO", "UO4hn1FrMcykff9i"]}, {"customAttributes": {"KR5iKvqQVVPxQtJc": {}, "LMfv7dowpSmHe5ld": {}, "SvOzogj0NvVTZqBx": {}}, "slotId": "x6keI4SzZZo7iaVf", "sourceItemId": "Tab1HHBAOcHZ0kwk", "tags": ["9s2bIgB8OdbOGt4v", "DfBZsysk0pxjKRtK", "uVvXukpvpEvyyA6k"]}, {"customAttributes": {"4ekynum8xXF5WKUB": {}, "nCBo42JEYYOoqTT1": {}, "0SX52OKCELWqLnwl": {}}, "slotId": "9W4Q0dBY95Aq5EMk", "sourceItemId": "AJzftitXs772x63Y", "tags": ["WKgZZ0Wa9GB21Ksy", "QW8fmYjsJMLnQ9uU", "kDqT9x84zuaJyMGo"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '6kw56mJQLvyIgAAD' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "27rpTLzu1IoZQ9ah", "sourceItemId": "Et6HHdM7a9nM3J2G"}, {"slotId": "lXbLS4Z8aRZr76pl", "sourceItemId": "5WejsKalr7PB9P2e"}, {"slotId": "DYsF1cTMa59d653z", "sourceItemId": "JRX5tg4q7LH01kvw"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '6jjtBG9LJzKNTdxy' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 49, "slotId": "o2jylq7VoWfTliyf", "sourceItemId": "9tV7Utx9BYvsIhLY"}, {"qty": 62, "slotId": "aF0cVNA0KoYVTt2S", "sourceItemId": "SUTnEGyPZdSmwyEr"}, {"qty": 59, "slotId": "rZRaiaTDhu83Rek6", "sourceItemId": "AQf0wXlSasrHIWzy"}], "srcInventoryId": "PPr7aQP9JT6duiaz"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'HqKEMw1S1h6YRIFa' \
    --namespace $AB_NAMESPACE \
    --slotId '8xnLaRXjDaNMyKHP' \
    --sourceItemId 'G0xerpHSk7vhgesq' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE