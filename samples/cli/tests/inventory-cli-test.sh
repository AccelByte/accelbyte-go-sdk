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
    --body '{"message": "JRfAKt4rbS1LkLCA", "operations": [{"consumeItems": [{"inventoryId": "81UCG7QwiImc5Bj8", "qty": 56, "slotId": "HEFicdi2ZY2Ry2o5", "sourceItemId": "fRoBmU3Twl6Rodat"}, {"inventoryId": "ILifQwtlD9ZNlE0S", "qty": 27, "slotId": "FP0mUbjLzWl3rvgF", "sourceItemId": "a5cr5RoraSLgocZJ"}, {"inventoryId": "Ra1m1hdUSZyOBMqH", "qty": 35, "slotId": "oviLEynURLkec8Hg", "sourceItemId": "FkFuhAAXIyhXKUoF"}], "createItems": [{"customAttributes": {"Msvz8lbFaktkBNjF": {}, "CA8FDeWvcIVQAIFT": {}, "3p8LFtqbnMLXZgst": {}}, "inventoryConfigurationCode": "4tKOfGhaRmkqTuYa", "inventoryId": "hynHJbVy3PC591OB", "qty": 43, "serverCustomAttributes": {"fac2j7IYPxhChkza": {}, "KcTsVCqchyxNy40o": {}, "2ov8ShSYHBKF3yzB": {}}, "slotId": "HRFRPg6MMpA6NhqW", "slotUsed": 98, "sourceItemId": "gdmLUXYusSWDmFna", "tags": ["Y8ZcYyDRnO80qUpQ", "BVarjnrQShTOc5wf", "I4qrPpJvvAguO5I3"], "toSpecificInventory": true, "type": "HgmRoRI4SiCwDmU4"}, {"customAttributes": {"kTbbkUfNZHtKXtvf": {}, "7RqHxyNDRY0URxIz": {}, "emP5HFBsvSOuqoph": {}}, "inventoryConfigurationCode": "hheCXevJKc00CUcn", "inventoryId": "p6RKtKaaTkyd82HG", "qty": 12, "serverCustomAttributes": {"pMcs2y3u7KPSdRyV": {}, "0tzouyFVNWjNZsjs": {}, "SniXefUwkYOeMNpT": {}}, "slotId": "j8UWsk0cTOoOj3vT", "slotUsed": 69, "sourceItemId": "nmmF9T9yPeB0kvIV", "tags": ["jqgnWQr8AHPkzs4f", "m9iP2wcAufGXWSJ4", "KVR1Q1GnqDxENB0w"], "toSpecificInventory": true, "type": "CNmMiWpPYdhGHafa"}, {"customAttributes": {"kzYJxVs8q8WThsw0": {}, "VcFCJdVTLI5m28JP": {}, "kWvUfFYGaqaN8gEM": {}}, "inventoryConfigurationCode": "s1DieJVpKTEucyV0", "inventoryId": "yedcMyZNfvlhhrKD", "qty": 83, "serverCustomAttributes": {"Bwgl2fsh1CEC94YR": {}, "41d8d74yzuC0zzcX": {}, "vuAzZh9SIWftJvcu": {}}, "slotId": "nq2JS6r9QMP6AhLg", "slotUsed": 54, "sourceItemId": "q3PmmA35UU69Yfk0", "tags": ["EWBf7vKFVVaNyzit", "xHYt4rS6HvzcOykK", "66mNZH91fmf116Ze"], "toSpecificInventory": false, "type": "PCfKUm5PbHUosU2L"}], "removeItems": [{"inventoryId": "NNZxIfFNNNGROhY5", "slotId": "tkdSMo3H92MQlkGc", "sourceItemId": "kTR221ldFzrZx9Mi"}, {"inventoryId": "lurbtOSgBtVKogw6", "slotId": "i4yNeUA86iSWrMXT", "sourceItemId": "Ed5HxCb0oskI0hIx"}, {"inventoryId": "GzkUh8vLNBw5XcPl", "slotId": "69DZ45D8Nn6s7Ydy", "sourceItemId": "fH9qXZMl1TD1EYyv"}], "targetUserId": "gQzEVpeCRSIkudTq", "updateItems": [{"customAttributes": {"oN7kp2tnlZAg8Q49": {}, "ylsSSigJRNHxRWAd": {}, "oI0EGp8JoxdAJJIH": {}}, "inventoryId": "njbP3uSJGtyRms8e", "serverCustomAttributes": {"xrxJM8T9h4e6kV96": {}, "8ihem1OWlemc9jbv": {}, "hdhDbecTx213j84Y": {}}, "slotId": "ggRk7RJZx1ezZP5i", "sourceItemId": "cnCXzaT9qThedrXP", "tags": ["KyokNoWL0lh54Sk3", "2P6VYfje8QVTh1Rh", "GtwNwNspLOfkhKcj"], "type": "JmEHIoIDQpgj4Gbc"}, {"customAttributes": {"wOu3Jh4FunvFQztT": {}, "PnSFuIPyKfI7Mili": {}, "WXdNUdIbmCg9wN2c": {}}, "inventoryId": "7f6Lh2yUTEWaVsxT", "serverCustomAttributes": {"zxnGq8ziFT1MsJZx": {}, "0mqS9yLcDgFM73jG": {}, "h8LVWlW76Bzu3nic": {}}, "slotId": "VurxEig9MwcxeImL", "sourceItemId": "fOybjeHceKLy6Dfy", "tags": ["h5VKoOC6nMwRFlfJ", "6UbjdpDDVhc8Dsr7", "bl9EMfSvWg4f8MrC"], "type": "8tcSospIje1gkLLZ"}, {"customAttributes": {"RZbjdPV5hiZm2eFT": {}, "A1TwXIwyl8HIqtTC": {}, "Xu9aUxuxKwQErxLC": {}}, "inventoryId": "5K3qYMHjZcYWM8Rp", "serverCustomAttributes": {"2wzFoaTnWxE6FytP": {}, "n1KXHilxpqXC3Urc": {}, "FghmQgy0CKPtMHS4": {}}, "slotId": "YlBxyjkM4KThw8GJ", "sourceItemId": "arWtMpxh9WexIijp", "tags": ["h9XkfwKxfdBsPSpU", "wUwMeHjzgEmUxXSl", "A6fb4kNij4HUDgXl"], "type": "FOzddELCK3lDZn5q"}]}, {"consumeItems": [{"inventoryId": "njTyg8nGA7hFlB6O", "qty": 99, "slotId": "vPns86F9VSvmjzbB", "sourceItemId": "qGaEPxPrNzTfwZB3"}, {"inventoryId": "I810Nu1m5r0Mvh8T", "qty": 9, "slotId": "1AKBqDWd5a7AZesB", "sourceItemId": "r7vWeDPdHDFCHAiO"}, {"inventoryId": "mhvO9iJQ608SYrQ5", "qty": 48, "slotId": "dvDU554jDBzLQgJU", "sourceItemId": "YszGKbRUDtmAjzpl"}], "createItems": [{"customAttributes": {"NTDykSOnT9mbcKH6": {}, "lrDbfhRaUdXI2Qkv": {}, "6i3Ev8xqz8Ly8b5L": {}}, "inventoryConfigurationCode": "4e9Punb0jbnk2HFd", "inventoryId": "RBG3yVQvkvk9w3T4", "qty": 35, "serverCustomAttributes": {"2Xn9EbF2LwpLErhz": {}, "n140NKNRMjbEh75o": {}, "z2mocZJtl01RQg3u": {}}, "slotId": "IHRURK5ihsRLplat", "slotUsed": 69, "sourceItemId": "6zJUnDe0oxKlqEBt", "tags": ["WpPrY5ajpnxyiqrf", "T8lLzzigkLmCy8mg", "DcpPVAvRSDHVvzdT"], "toSpecificInventory": true, "type": "eNqTdSX3k9CCHrwR"}, {"customAttributes": {"CM935qlnmjZ3GcxU": {}, "DifFD6OYamtHqqa9": {}, "9bZjFdtQUHU19Ehv": {}}, "inventoryConfigurationCode": "TPZTzR8NgCIqkyd4", "inventoryId": "HwcmY1ZHX46KkQWe", "qty": 10, "serverCustomAttributes": {"MEI9niiGiC9kwJbR": {}, "h5yG6RU6psWdpu7O": {}, "hBsjO5ahjBKgHKrp": {}}, "slotId": "fvJ2OeQtiJ9vQN2g", "slotUsed": 35, "sourceItemId": "juzldR1mVAv1DKlP", "tags": ["G6e6xp8Z3gJJkSsG", "BEMVxFQlvYPCl8ux", "ngfOE1WuElP688xA"], "toSpecificInventory": false, "type": "6M92AxNEAFsT3K0Z"}, {"customAttributes": {"VGqzYWrjOiHQE8Ub": {}, "C2ZE57XusfCZ1EPM": {}, "IETyr0fhdcTaG25i": {}}, "inventoryConfigurationCode": "FIHkt4FM1kiQnT7f", "inventoryId": "M73nqfaJOKUt99k6", "qty": 49, "serverCustomAttributes": {"EDOQBvzp2NUbczn2": {}, "7UGRyTXnRqDgip4y": {}, "Sot5NatkzkUgqz93": {}}, "slotId": "fNako8yd4Xg7qDsm", "slotUsed": 8, "sourceItemId": "WnyNbUWLRAHJqCnd", "tags": ["kyo2MTDSxTjEthwt", "pIxxHgrEHJ5OgPE6", "LnnH0VIzEyeoKfXq"], "toSpecificInventory": true, "type": "pjsndWjLMr7V8ZkQ"}], "removeItems": [{"inventoryId": "y3PfDYTNpP8X7Q26", "slotId": "BnVg1cpVgZou2bJz", "sourceItemId": "l94bXc0vIuf5rM1F"}, {"inventoryId": "ZAYmdZoQXomwxtmh", "slotId": "ckzUaFXCVKochgaz", "sourceItemId": "8ytU128yMqx8wKB4"}, {"inventoryId": "pIuC6FnIyhiRDhhA", "slotId": "ArymYfWGyQtQoQfX", "sourceItemId": "ot9QrqxxfplkzTSt"}], "targetUserId": "OIPkS9UUXo9d4R2B", "updateItems": [{"customAttributes": {"EFXusy6CUoIGUxSf": {}, "H098Tl4MfQuEkooL": {}, "CT87lPqwzXtLNm3Q": {}}, "inventoryId": "HfBppXxiGydPME3o", "serverCustomAttributes": {"7XR3A7c11rSKUMW6": {}, "lZWa8LkefKJkGjdN": {}, "Gvuegu0N454Sy8zI": {}}, "slotId": "IFM0OPH8kC5WU8OP", "sourceItemId": "8JkGJcKK7YOFABHW", "tags": ["zEwKd2sjYxe33Npz", "aanRxziFmth3ReJJ", "oaxQB0qnPeV0lqYU"], "type": "IFdg6xekNkaZ5dns"}, {"customAttributes": {"sSkVju2uI9MJIQ8q": {}, "uEN1qMDNwpdZIRgR": {}, "na8lhA6DMgPpS7Ts": {}}, "inventoryId": "u8TtslBhFptdLYuN", "serverCustomAttributes": {"QYPnJGS4yreJVfQr": {}, "JXpyM3FioWVULOHm": {}, "JCuR83zdKMMUhqEa": {}}, "slotId": "YmrRIiHu8rpvs3J3", "sourceItemId": "86SGpUpzeRj2skZq", "tags": ["q3YgKtmho8tgOTsJ", "B5gfKJuG0OqGfw1H", "SldZLwdhiYbRNBXU"], "type": "nKdLAPb1B3JlL3Zq"}, {"customAttributes": {"SnHOqeH4I71PS1jC": {}, "PksY2vwT9m3uhayY": {}, "mnMSN1HN28RIHJZU": {}}, "inventoryId": "5iEA9i5HdXsFdKl4", "serverCustomAttributes": {"xw7AtsyJx5M95IRp": {}, "bcLRbHlDXSikGcgD": {}, "vCpLHYkTprxzwqkx": {}}, "slotId": "krecmuWyZ8uRr7ci", "sourceItemId": "sLXYh5cDuLx5nmBL", "tags": ["9IBQeM0oHztUYYYI", "fD6Edx7zKGhpB2ST", "khnPnjCbn4uVhLvC"], "type": "xKDrCDsWzUwFR9cK"}]}, {"consumeItems": [{"inventoryId": "8gdPux4Iu2wQlTzL", "qty": 84, "slotId": "CE1W9jFvfqm6IWKw", "sourceItemId": "rYyEhuSM39CBeZvO"}, {"inventoryId": "QRppYDF5oLX1ndOc", "qty": 79, "slotId": "rxgxp3t4mC03h4c8", "sourceItemId": "9m8h70tE5ZTlGfJd"}, {"inventoryId": "QEMOAMFFFzi9BYII", "qty": 64, "slotId": "q5floLYZ1iwUnWij", "sourceItemId": "ezgQum3UsspZdOlQ"}], "createItems": [{"customAttributes": {"UFhaPx1gmg1MMmyC": {}, "TIoQMyNJkGLSWsi9": {}, "KcVpsBvWzlfKMoaV": {}}, "inventoryConfigurationCode": "jLweOXu4CBbro4FF", "inventoryId": "YQmRXLQqsgq9GMf0", "qty": 30, "serverCustomAttributes": {"ydqsYA0LSxgc11li": {}, "5OC98EMkLOFyIh9q": {}, "OvM8LGs6Bmgyb4is": {}}, "slotId": "8uynREZzAgpmZOGp", "slotUsed": 57, "sourceItemId": "0j58PxUDS75TjziI", "tags": ["yOMbu89rPa2j4AWc", "82eoX7ItoRSTMsiY", "rsLWydXZ14VPO14N"], "toSpecificInventory": false, "type": "vQogeJul86yyEXIn"}, {"customAttributes": {"93TZ6yWJ9mUggkAD": {}, "iHcuK9Y2evOXLt4a": {}, "Klk0fNNVuRU8byii": {}}, "inventoryConfigurationCode": "YlAuVDQDZ7tMKqLG", "inventoryId": "sM1XcaXFkUZx8gxS", "qty": 70, "serverCustomAttributes": {"VrfWxGCh6n2vIAMT": {}, "h8CjSAZw0imbgCHh": {}, "NlwZRzwCG8eRdi0c": {}}, "slotId": "qs7kNTcDASLUEc12", "slotUsed": 71, "sourceItemId": "pZqYOU9lSc9AC1Qj", "tags": ["uoJioQMJUe3l4XGC", "HNstHf8q0dXUcy1S", "aZvm7W3zfdItuzWC"], "toSpecificInventory": true, "type": "vdiGmWlc2CFsDYMk"}, {"customAttributes": {"TyeWdOWJeLZSIDwv": {}, "OYRVgoIsBdb9YpTN": {}, "wTRJag0I7EweptUa": {}}, "inventoryConfigurationCode": "aUEkjWneJqBsrHel", "inventoryId": "QHqQF5TO4AKVStyi", "qty": 28, "serverCustomAttributes": {"MeUlVE1hlTIJbCot": {}, "22YybK6b8CSToUvX": {}, "AkWF0gBwpFI8mDoW": {}}, "slotId": "GSe1MkHF9ULDGyBn", "slotUsed": 80, "sourceItemId": "RtLx14T4FDnZ43kr", "tags": ["4wyzezBcfRcH60ms", "xeyITmw1jsqSgbnZ", "oTEEp9w3YTRLThzB"], "toSpecificInventory": false, "type": "A7eDDQchoow6urED"}], "removeItems": [{"inventoryId": "YOIO75s9M0AvTgms", "slotId": "G1EygbQZLqYdpbU9", "sourceItemId": "k9YZaEaKJg5ZxR5o"}, {"inventoryId": "ELtTgUYd0fAk0ezU", "slotId": "YdQArFFCnWBYkVhC", "sourceItemId": "9xRpiVlFojhgtOZu"}, {"inventoryId": "JpyWiA5aeJPh9FxQ", "slotId": "idxEFLg0AYbuG8Fg", "sourceItemId": "6X2Q9LtFsi0rMMMk"}], "targetUserId": "sh9Fb7BBzk8pnXyp", "updateItems": [{"customAttributes": {"kn657GtwD6CMVHUk": {}, "z0zKl0N1h2UtND1R": {}, "2xewzVzlJRALlEud": {}}, "inventoryId": "6vuCRefaGZmeAXHS", "serverCustomAttributes": {"4k9k6NSf8hMh2ar8": {}, "QId88T4S6hEYlEkF": {}, "CuWn922tJHDusaJK": {}}, "slotId": "i5p9r3S9kXZTpf7L", "sourceItemId": "weqMDUQZCVwGCPlQ", "tags": ["bM0Y8mX3FeV5DfN8", "DQGqwWK3lMi1yFYQ", "T4D09RCSQzKVMeKv"], "type": "aLIBAcKsXtImYL17"}, {"customAttributes": {"xsWGV7PgoIhu6p2Q": {}, "Mhz2sQj84px1zrwB": {}, "A364x5tMkivZssfk": {}}, "inventoryId": "tTI4i2CQF73xxcIM", "serverCustomAttributes": {"lkSJWQlkMSYIpSOV": {}, "SmovyrwnBntVsQPP": {}, "p9bDqtpUz8GTEEXY": {}}, "slotId": "DmA8DHFHGOyC3zq5", "sourceItemId": "vk6tYg37M0Hz3CKy", "tags": ["9zGzEDArczBthwgJ", "rfB9adJB08DdJQAY", "FrtYyQdOfmw7EhGD"], "type": "KjDel4Z2goSAHRHx"}, {"customAttributes": {"iFDEXJ2rqHibT2TX": {}, "tJF62FvV331q8koF": {}, "6Ous7Kt3VQrh6Xtt": {}}, "inventoryId": "yGVD6IoXJ1lVW1XK", "serverCustomAttributes": {"Pjv4ynaAx4HlZN9Q": {}, "CA3rtQXZDAbES6Kr": {}, "d6Qe9rN7xHTBKFR0": {}}, "slotId": "RtRR4D5EPyIEVpKo", "sourceItemId": "WUhrVLMJ60Bi2icQ", "tags": ["QbPxtAeMD2irEXG5", "W6rYVDU0x52ENguh", "gXwWCwNdBnCa3QNi"], "type": "l0ULG5nH6wuQFBVK"}]}], "requestId": "miDuJHqz3zswF9xC"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '8GdwSf4ge1odlO0I' \
    --limit '86' \
    --offset '36' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'FiJMzBIWGaDKgUSg' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "WIevpDwzEAvUL6Xv", "userId": "B8dCKcXgaOI8041L"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'zMHtouP0f9FfDZfO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'YLy8e0CeSKMPPnmr' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 67}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'km7dlRAnyZGkx8Nv' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "2hKNSqveQjFYHAuQ"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Y3AhXrkYM6xWerFd' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '62' \
    --qtyGte '55' \
    --sortBy 'qty' \
    --sourceItemId 'FPIv3Gipyy4UstZV' \
    --tags 'BW1CNJd3nILXm8vK' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'UOBqrztRqoWlX99U' \
    --namespace $AB_NAMESPACE \
    --slotId 'Nr1fctld1MCVmX04' \
    --sourceItemId 'rXSvFNz7py9PxGcR' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'CSM4Efgq5Qpc3L70' \
    --limit '33' \
    --offset '72' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jnyMeO5rF1X71bDl", "description": "v7ASBzaBNQO8tMyi", "initialMaxSlots": 73, "maxInstancesPerUser": 32, "maxUpgradeSlots": 79, "name": "TOdAUeQCNbw0gfvT"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'PUVvXr0LseEx6xU6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'WcUDY1Sr2XCknLZx' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EbvWWSf9fcvc6MuY", "description": "eS5ZjAY1k9dkcPCY", "initialMaxSlots": 45, "maxInstancesPerUser": 16, "maxUpgradeSlots": 59, "name": "8VXAwtsWEQKsUvdD"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'jrKvQkaGp41g7JqJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '25' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "nsT4RRLWtLVudhdS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'lT1XZOTKm2ih0KIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '86' \
    --owner 'rW3H9EfNnvhpb9gr' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Dm76lTiCiEFycFqF", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '95ak2TlSsFITLrMl' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'fEct7zBcedDEzJEu' \
    --namespace $AB_NAMESPACE \
    --userId 'dOfq4VdZq0r2XUXA' \
    --body '{"qty": 29, "slotId": "VdXSzsEcvyDktKh2", "sourceItemId": "BBHWchNJxtNIHXEf"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '7YeRaDXzgjJU0gQ1' \
    --namespace $AB_NAMESPACE \
    --userId 'o4Q0ytCC4rpVr43R' \
    --body '[{"customAttributes": {"7VrqGsbC894qdl3z": {}, "zSmmecMKzHdxScsf": {}, "ZJuku39OsHpjfVfi": {}}, "serverCustomAttributes": {"xeMvZvG998xe7nd6": {}, "LdH542ER0clpVaXL": {}, "rcZcRRpZ0gq3kxmh": {}}, "slotId": "FD3NXDh67zEiOfcx", "sourceItemId": "AnVquHdqDytkDCeG", "tags": ["0MJR9sjcHJrjw25i", "9zFWGu5ubRelRL1M", "HII8szyUQpyWliXO"], "type": "lMOKBWJRuWTsm038"}, {"customAttributes": {"UV9m3X8WfBgDxURP": {}, "Gh2D6BJKSnMOwLpZ": {}, "tlQSmF3TYtJ3T40G": {}}, "serverCustomAttributes": {"nranfUxr561lPfR3": {}, "1laIBZe0OEYtTcio": {}, "wZdDL3kDivZK0JHX": {}}, "slotId": "zYkeYo8aLr4Nrwsx", "sourceItemId": "oNsCt0dmaDDA5nvp", "tags": ["u281PVedqDPzjPe7", "JsCdkyC3MjsahHHc", "qwleW85fZwpgto1Y"], "type": "uxffDdfiaimlSLvS"}, {"customAttributes": {"62sorVup7SmUlp3a": {}, "tc5uGP6dWbsATNzp": {}, "HkfZIS9548tSH5L5": {}}, "serverCustomAttributes": {"E0M4HdQYM5IzUfQq": {}, "FWaZDsD6qpBW5m9u": {}, "GfuK25oYmbP3bTun": {}}, "slotId": "AvoLY2zBIUqQCEMD", "sourceItemId": "p4noIDEY6UAwPKOO", "tags": ["VpEQjwOfzbEQjKvN", "gn4OesijUViw1FMM", "zgh1PPbpCPIrKjhM"], "type": "yse8OgrCJFY3c8rJ"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'Ac1ay2pvwfjsGAVD' \
    --namespace $AB_NAMESPACE \
    --userId 'a9HeCgl6TQagxxzB' \
    --body '{"customAttributes": {"UCYjrLflez3CNetZ": {}, "4KYrPWgu3ieZSxof": {}, "AeHwzuIxDoEX7CU6": {}}, "qty": 98, "serverCustomAttributes": {"YevfPRxkSBHDN0ui": {}, "LHFUf7MEHGRz4cgD": {}, "hTE1ZcAMzW8mkU4m": {}}, "slotId": "5JjQGEhK4sdxF3Pz", "slotUsed": 12, "sourceItemId": "qF69qCeU6mESdn87", "tags": ["99LRfcCN8Zm1PaUm", "KEpu9zcGWeuH4Xkn", "FWZbqCcAQktri67P"], "type": "csIWfNJ98SFjTThp"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'AHWrW0Rmr2OUq7Kd' \
    --namespace $AB_NAMESPACE \
    --userId 'LkF1dLnWal6qzKnW' \
    --body '[{"slotId": "lPrq4JbGLpJkQMKX", "sourceItemId": "npYkWOK45jwD3JM3"}, {"slotId": "YoxxBxX1744pReI1", "sourceItemId": "rNZi14VilFp6gj9n"}, {"slotId": "2tpKfJuof2BHZu0v", "sourceItemId": "AABdu6CqRsTVbpg0"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '7tVOXVUug9oDF0H9' \
    --body '{"customAttributes": {"7TMcnW2x43K8DojM": {}, "Sey0o92vdGhFI44Y": {}, "3gbYJG29A3UqlCEn": {}}, "inventoryConfigurationCode": "8cpqPR5dnVSMoCOt", "qty": 7, "serverCustomAttributes": {"1MK72J4SdDqbTnCO": {}, "jTDjUaAP1yYLIWy5": {}, "RkYrJUdFx2ZN6Onk": {}}, "slotId": "QX9o9aM57UKMcgqJ", "slotUsed": 90, "sourceItemId": "UmGOKdLxitFsnSbI", "tags": ["75I3VYmyUU95EFEd", "zYAR0wCCqpXk49Ok", "EmvtEf3hzkuNIrWA"], "type": "UxgTQoszAwP9Cts9"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'd3bzbtWy9MthWHt6' \
    --limit '82' \
    --offset '3' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '84' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '56' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'dfdI6XmGzEptUwqt' \
    --limit '20' \
    --offset '94' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'UXjz1gnfFSZIIjay' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 16, "slotId": "YdwU52ucDWtRvePZ", "sourceItemId": "iBFGJDN1fInG2avf"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'JlWm3eG7UZnYJYUn' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '88' \
    --qtyGte '17' \
    --sortBy 'createdAt' \
    --sourceItemId 'clP8szywhEcKuICi' \
    --tags 'vYa6lZpIcubt2wTM' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'M1HRFcj7bv2Q6Fgw' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"4NRyXE0LS3bvRwoK": {}, "t0wjhO0RDRkZhtsa": {}, "B8s2Db71MNGdXubR": {}}, "slotId": "kh81HasQvbB0MmI7", "sourceItemId": "BYvc8PgrcYKERw5v", "tags": ["cRnJkSPW9sxOPGvY", "1GIryIPn9LFZKjwe", "zWZkzMMwlPTVRiH7"]}, {"customAttributes": {"7VbWquw8ZuXaPkC0": {}, "kfu4rwh7iJGHhexN": {}, "WPRan8CNvQ44j3NY": {}}, "slotId": "AzhA8OcgRI4WhZ9L", "sourceItemId": "iIRAkRujMFHjkDRs", "tags": ["V51HhEYHTz9g8yvg", "qtEGHJg2Nm0jBFH6", "vlUGP95l65j23uMe"]}, {"customAttributes": {"JRNZNJVabg0yhiax": {}, "mPScYp7KQKZmFK2j": {}, "5UMnkMf4i6zbZ6eA": {}}, "slotId": "sBoi51CVjGUkuhpg", "sourceItemId": "ZUjZHk93BAeD7Q6c", "tags": ["mNKjprLSmQ2vrqjq", "k7csDGsOUpavfQrl", "IOm8QPkSpJ71UnT2"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '7RWOA5nCnraLsBMN' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "7kZUSdtGyU7c2kMp", "sourceItemId": "TtemY7AhWJBs5XOa"}, {"slotId": "Wid8dWBfSDiod9xi", "sourceItemId": "mhVfviCqQ0WBesvf"}, {"slotId": "iOpYKhenItrURhWT", "sourceItemId": "C9JkH58gjFgqhMjH"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'rFrbT2m3dW7NVovZ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 15, "slotId": "6HCTPdm23G1TqAt3", "sourceItemId": "9C06NaLl2gkjdx9w"}, {"qty": 23, "slotId": "rRzFNPd2dnEoJ4rQ", "sourceItemId": "Ul3UndlGYmLpTqgv"}, {"qty": 22, "slotId": "aUD8nOGsBrhTPwJ3", "sourceItemId": "3KGUoLvmrBko2XCB"}], "srcInventoryId": "3bV9ofRqqNyoBc74"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'oxAV2amkwhOIKGwG' \
    --namespace $AB_NAMESPACE \
    --slotId 'qpyQCUAdhmI64LyF' \
    --sourceItemId 'y3DtQ2rZEnRRyHXl' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE