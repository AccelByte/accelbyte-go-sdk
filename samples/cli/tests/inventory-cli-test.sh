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
echo "1..41"

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
    --body '{"message": "isj9UbMH5sE5t7pj", "operations": [{"consumeItems": [{"inventoryId": "uLL8G3HTrtrIqVzc", "qty": 2, "slotId": "KtUMOQVbywPwL00b", "sourceItemId": "G5ntmHgWzRecadrz"}, {"inventoryId": "tIuekmHH7SEC1Ef0", "qty": 72, "slotId": "jRbDDXR63kTdci1P", "sourceItemId": "25c0JgYXv69iQzGT"}, {"inventoryId": "h3gMBRBmdAFUx5AO", "qty": 51, "slotId": "ZjAaL8eBIBpRWBOp", "sourceItemId": "fwtr73TE7Q3kCShu"}], "createItems": [{"customAttributes": {"QeNGDyeZpeBcYkqB": {}, "DySc9y8JLc9dz8Ll": {}, "Age70lVeaS022HcU": {}}, "inventoryConfigurationCode": "o9L2fqdrr71NnmpJ", "inventoryId": "yXq56NewjaSatpgN", "qty": 7, "serverCustomAttributes": {"3o4q0yvRhs7rrxg2": {}, "OuNzICEtbYNKDT9N": {}, "fjuzRtsYrEC73A10": {}}, "slotId": "YvY354Oi2et7w8qL", "slotUsed": 30, "sourceItemId": "IL7JGGUbFYuZqxhj", "tags": ["iBg6B8KWXP22ayZP", "IFAyJQF9Y1FPg2Ro", "Wev6ldO8dXdHyjAj"], "toSpecificInventory": false, "type": "kPCXwbcB0H3OZId2"}, {"customAttributes": {"d2zdtdwTSA3EikjM": {}, "O7c3yzN61yQwdHPQ": {}, "QxCdAEhPxQFcGYOd": {}}, "inventoryConfigurationCode": "8VNzI1nqvSpvW2ZJ", "inventoryId": "VinDH1RbEo9svYeT", "qty": 35, "serverCustomAttributes": {"8PnOUiWpkath3MyA": {}, "zKuYaCIIgNDKWWy6": {}, "oVtQSMDSgp3FDK72": {}}, "slotId": "ShyH9f6eegkzqzYc", "slotUsed": 55, "sourceItemId": "pXGaksNvOZ6uFCtS", "tags": ["RN8ivP25yXiXPX8g", "WkmMlgEOVh6PUCMr", "dw1JDlHacc3xUtlT"], "toSpecificInventory": true, "type": "kDecLsQD4KKvuVoS"}, {"customAttributes": {"0aaLIFx5Ko6ktBGQ": {}, "9Cj1oaTwwTeFn0Hi": {}, "8J2ckkpexGBoPmKZ": {}}, "inventoryConfigurationCode": "9olLC9Ao4zxoeJzr", "inventoryId": "evdSpzgfQHl6lbw8", "qty": 0, "serverCustomAttributes": {"b98BGOseXrmiCxkh": {}, "XKovpvRHp3TE3qr5": {}, "r27HMBxZh0Nryt53": {}}, "slotId": "YGLDuHIlEUG2hBYb", "slotUsed": 85, "sourceItemId": "ec10bf4mxMkU0BYM", "tags": ["bsNO8n5mWKXysbTP", "TxYf9e0Mm57f0o7p", "HoJRZxpF92gVx68v"], "toSpecificInventory": false, "type": "AJwquE9zfVO17VNm"}], "removeItems": [{"inventoryId": "znRJn9FscTXWQLiS", "slotId": "1aOGYpNjwB7vD21H", "sourceItemId": "8xqOnydST2XlueD8"}, {"inventoryId": "I1Xma6CL4HUlbhFD", "slotId": "MpfRLZcZgTU6TQ8j", "sourceItemId": "EsF7XZuXf8qEyX0n"}, {"inventoryId": "nnZ424a3enrrtF8i", "slotId": "5NCm4Qftxkky29SN", "sourceItemId": "qiaeGeZciOlhLn2l"}], "targetUserId": "DUjOJAxSFDzPfuZE", "updateItems": [{"customAttributes": {"nQKb0LDyzWzvY1e0": {}, "RPR6tdAdO3hM4bMb": {}, "HAttLRSA93RXlWpS": {}}, "inventoryId": "wytlwm4viGWlTJ37", "serverCustomAttributes": {"uJzDTpK1B0pWZmBF": {}, "EUDN1VsJaWrKLpCR": {}, "6Qrj9Y08BEhxkUDR": {}}, "slotId": "pU2F6YZboQBpI79X", "sourceItemId": "uy1w4Kjm5ug0yUw3", "tags": ["3tGxyj6SaeI1uJos", "5tmtnOA1JZePO9G6", "bjkrcXvmGNePgwX9"], "type": "ermoJcSqc6aicDeS"}, {"customAttributes": {"pCJOwJ7YctFJN4Vh": {}, "e2YTV5m5XOQAyU9x": {}, "isdvuKX8rBv9DIOG": {}}, "inventoryId": "cTCOxIVnaZWAuWmM", "serverCustomAttributes": {"E9KBo9ERj8oDUVfz": {}, "wq6K2ZT9oSQK1Kfx": {}, "z5Lj0NWb5tT1ZzOk": {}}, "slotId": "atJ2yN9clXbMw6nm", "sourceItemId": "4FayygQWwDBeVlai", "tags": ["SAgK54cANtu4WzN6", "Qbq3mzZfIKPBMd0r", "kcMZH9LqFHkVgGWi"], "type": "vj91mEiNjla12Nln"}, {"customAttributes": {"e8iaai2vXsx7gSeK": {}, "1VHhafaMW3KZ4csB": {}, "8d62T4kDiCGFbOiG": {}}, "inventoryId": "pHWzJ9ZULumIDnfw", "serverCustomAttributes": {"DXoYdKIVmJYjeJSW": {}, "LXmAv8ox62hSuZjv": {}, "FCJOTHnuxGJeGyrp": {}}, "slotId": "gcAZA8UdWTprqbCj", "sourceItemId": "FU49JOLGQd3yQZhd", "tags": ["X0yk957mxoP2Epbp", "pLsOClQZ9ynnLJie", "LMCXTS2r8HU09yTF"], "type": "UzfTJSkBBEOUp2ia"}]}, {"consumeItems": [{"inventoryId": "HV0AWG6RZJtxbPXU", "qty": 22, "slotId": "9A0GuFwK8RCXjzcS", "sourceItemId": "AxX8wJsR9GQhfqYX"}, {"inventoryId": "m3xawaIoRgUu1NSm", "qty": 18, "slotId": "bjKk8x6GLGyK7sN7", "sourceItemId": "yjsrvC694jkVvcNL"}, {"inventoryId": "KqyRQ8c2dZXlVV58", "qty": 78, "slotId": "JEYZ7QlC2TQmoqBP", "sourceItemId": "3CjipX4FUSc7ajV2"}], "createItems": [{"customAttributes": {"ZSfzyM71aLUzR0mU": {}, "sYueIG7VNs93gcxI": {}, "lNtJ8bdNFe1Hkbr0": {}}, "inventoryConfigurationCode": "NJXj5uJmy5HMbSfU", "inventoryId": "e3vzgjNnClLbQuYe", "qty": 43, "serverCustomAttributes": {"90PZ7nEBV0mUB9Y5": {}, "2jzhLEMTCXPfKzx6": {}, "GgXD0l2dxHG7Uhb7": {}}, "slotId": "sTJIQJTcOOIGQtNC", "slotUsed": 51, "sourceItemId": "Pv6pzrF4mmYsh18T", "tags": ["EBedhyjJ0jPe2kAS", "keheRbkBfaLnX1A2", "DYbpvqjgHNe4tHbs"], "toSpecificInventory": true, "type": "2WEXfHJ5mAe9JQC3"}, {"customAttributes": {"W36Ow7uYvwI2owKF": {}, "g0159v5A1cYVGsL7": {}, "5rVTBiCH95DcrrY3": {}}, "inventoryConfigurationCode": "cer7WrFQqd9jvV5F", "inventoryId": "jAx73B83K9uGoEir", "qty": 4, "serverCustomAttributes": {"lm2pbuCi1raau3Fb": {}, "BHrkhb5WveBTjCp2": {}, "bPcCZhg93uN7uOdS": {}}, "slotId": "UmkfQB4vdmtW9Sck", "slotUsed": 24, "sourceItemId": "SxgQoJbZM9ML6Xsv", "tags": ["O5HjEtWHWd559A0t", "bjTtOtQHKuZAeGeT", "WIfriz3lJeAY8pgz"], "toSpecificInventory": false, "type": "orCJHjuRCo2EvAM0"}, {"customAttributes": {"XGzKx3TC6YEajTkk": {}, "ENei3W99m305mgfg": {}, "D0zuQWTHoOzyi5vC": {}}, "inventoryConfigurationCode": "Y7jyOuDFWc3lDBEM", "inventoryId": "aWT3XNZ6xJEyTikV", "qty": 53, "serverCustomAttributes": {"631B5hAaYUUP7R1z": {}, "oPuDecqk0PUSpEOo": {}, "LuCfuQOitVqckag1": {}}, "slotId": "d2efzXhhVJby8UOK", "slotUsed": 96, "sourceItemId": "wjhZq09jy2WeK7xS", "tags": ["gtTyIzv02ZlSE2Qz", "uhWF23P3RUBjnspL", "Hu1JOjKVUlkxJFzf"], "toSpecificInventory": false, "type": "ua0OjR3ktTFqxdIU"}], "removeItems": [{"inventoryId": "4NZrLQAaycpZY4uZ", "slotId": "rooEzr1WPm0bI5rt", "sourceItemId": "zPEFAiBIINslBsM7"}, {"inventoryId": "MbnV5v2DpHzFrPMx", "slotId": "QkbcVqs9DqsarmGL", "sourceItemId": "Q6igvt7Y56v9NVKM"}, {"inventoryId": "LZEpamCIYcVPjFzE", "slotId": "8ZkAM13NMrkmmFsE", "sourceItemId": "fGtTEjMuKVN9jkEZ"}], "targetUserId": "946Pw3wmD2xhY9oR", "updateItems": [{"customAttributes": {"6stpavEuE0Hb7fPC": {}, "REnTbK60uC7I5nZb": {}, "sd1oRx3WBT82j3jQ": {}}, "inventoryId": "A9uzOGmo9yteZqXj", "serverCustomAttributes": {"GA4tmSwrw8tnEEsI": {}, "oOUi69SJkRDkHOea": {}, "v9maB027B95jZPzy": {}}, "slotId": "7RmNC1J7ZBMsuLSv", "sourceItemId": "iVpxwDZleEBmhx7G", "tags": ["XZT5RBlF6rUsm2pa", "7SLAwnWbHnRyzDHt", "bgRn6eEXQFqopdbo"], "type": "EthyDzzylZVlLJ3i"}, {"customAttributes": {"m3gMrgJj3QxnbIsc": {}, "tBgx7YykteRzTQQt": {}, "cqidBMUlopfYpXg0": {}}, "inventoryId": "D8r2qix9rCZkcD9p", "serverCustomAttributes": {"Ry94fi43BM5SS5qP": {}, "ROqojdczlQXJDdBD": {}, "571UYitsiumYTa8M": {}}, "slotId": "huV38zj9D2ROBYAy", "sourceItemId": "hI2pnZoAOeXVelik", "tags": ["1uSp8SRtVQD39o6J", "sWf6PIJOGmLAi7GR", "mrWjw8sdLnLtBqUL"], "type": "yzasgmxdmPYsytIF"}, {"customAttributes": {"f22mXYSeZaID5ScX": {}, "1l1UV3C0fhjF5xNo": {}, "GVROKB9soG7f2mdF": {}}, "inventoryId": "pI2p9wvK8IHv0Fmq", "serverCustomAttributes": {"yq4d8YrcY4xopFlC": {}, "dzzESMWeuSrSiagS": {}, "GEh6Dr0r1nj8Rx13": {}}, "slotId": "nh6egMfM2wwQ0LLn", "sourceItemId": "gcWbyJjjG8zEgEU7", "tags": ["RwiW0OrlVo9LvSQ9", "uQaUQSCyZnHZRKx3", "MnEnkFu8D9S6Qwdq"], "type": "8wrRKGiekOe2exGq"}]}, {"consumeItems": [{"inventoryId": "GwzfFY1Xr2AWGN8z", "qty": 93, "slotId": "HNJy8mmGRJZ0cg5q", "sourceItemId": "r4Ja44uDGI5sLCbD"}, {"inventoryId": "E9BkYVuvlJJ2UVZ6", "qty": 33, "slotId": "j4RhSGLVeGfK4z6H", "sourceItemId": "U2ZuWrLMIIK66Fn2"}, {"inventoryId": "P96zCvKwiTju73rJ", "qty": 32, "slotId": "M0WJSDmxWgh7vJMM", "sourceItemId": "YwmwTUnR0zpcHLkJ"}], "createItems": [{"customAttributes": {"74SQTnYlozJ2kDYT": {}, "z7S2t2l4olP00dfN": {}, "jThNualzFHjfcSoY": {}}, "inventoryConfigurationCode": "vI4huuXRuQ32XOVA", "inventoryId": "0alCPnxiSz36ELQ8", "qty": 34, "serverCustomAttributes": {"RpTjuKuMBUT1Y6Bl": {}, "QcCCSSujWb2qwWfp": {}, "1yJJGTDBgKQuFMcj": {}}, "slotId": "4FGvcwYMdcsgnxi8", "slotUsed": 85, "sourceItemId": "fRGtHp8fmB9Gv8Q0", "tags": ["a9fxBWv7PqaoLq30", "9ZMwFfYzbrrDzQvO", "avHSSVSyPusVg1eB"], "toSpecificInventory": true, "type": "O7dQykAabDsaccIr"}, {"customAttributes": {"aQobalW46NtaqMFk": {}, "iviWqqAvhrMuARWz": {}, "LMy7K6JOKgNkgKse": {}}, "inventoryConfigurationCode": "OoHk0ALRCTBhZHrS", "inventoryId": "eAzdrnH6qEUOVgUC", "qty": 34, "serverCustomAttributes": {"meOLv8QzdyizTll2": {}, "tlt7EjffSKc0vnSp": {}, "LUvKC7odXGohNm0k": {}}, "slotId": "EvdXoW1Q3CsnLsm1", "slotUsed": 33, "sourceItemId": "WDv770iSfcrs41wb", "tags": ["4SPN3Fxx2eGINh5E", "AlPLlu2bJRWiNwy0", "gE983OC7aeSPZpMT"], "toSpecificInventory": true, "type": "1dKoDnrl1PvEUeo7"}, {"customAttributes": {"ScIb0Noqsmq6pVmP": {}, "i2lIToePaQn5n35s": {}, "Zkllazf1TPGvdfBr": {}}, "inventoryConfigurationCode": "B9tHL282rn8G0cMu", "inventoryId": "j0etrCfV1T8A1aQ9", "qty": 29, "serverCustomAttributes": {"Vav1YCo3eCFcrrTf": {}, "5e6MxmeOn3kTmSiY": {}, "t69nNoUiamZRG90v": {}}, "slotId": "Xv0PRiaOkqVvTzv8", "slotUsed": 5, "sourceItemId": "XOyngle8PITRpLs3", "tags": ["RaZ1KEC8bRvzhEez", "dCKejRXuPGQi09lF", "UwZWzH9iaV4BHtGL"], "toSpecificInventory": true, "type": "kosYuSEnBAQ98Atq"}], "removeItems": [{"inventoryId": "VXFARc3x4F2l4U2V", "slotId": "8uA69PJpN1WbkBYG", "sourceItemId": "x4Kn1FFHNlSBRMl7"}, {"inventoryId": "zOh4ZyQyWwArHgvK", "slotId": "YrDpS8Wi6UiYX5Jo", "sourceItemId": "E1qbKzKgVv8DeVjs"}, {"inventoryId": "z1rgs2b2KVjSTcFA", "slotId": "uSnnVJlfnh4UZt5W", "sourceItemId": "HRR3ETZNf6c6Llyl"}], "targetUserId": "4ncWDY2JSa7RznOS", "updateItems": [{"customAttributes": {"M2cbdJKRMfzaYPzi": {}, "l3ItvH4XKMj4KAAO": {}, "B0MAt5KGOCp0X8o2": {}}, "inventoryId": "4Ohh4PGtpK1Q1DLT", "serverCustomAttributes": {"OWGU37oawkhKcySu": {}, "gguLmW4sXkoFEjOg": {}, "ozwtBhPKjvblANvu": {}}, "slotId": "jhurR7aNFKceHIAw", "sourceItemId": "xzG18IQoMBtuXX9W", "tags": ["pqPFNdRVJt1b090E", "zgVpBMw3U12ycFDg", "2fbLXRAm2pmXS9Ad"], "type": "5MVMvt3wtnl7GISU"}, {"customAttributes": {"pbmf7sP4oFbPxQ8C": {}, "f5m08QQJhenL2qxr": {}, "VxtDGhlMu360Y80h": {}}, "inventoryId": "qCagUoz2CcX1O3DO", "serverCustomAttributes": {"Yu1Rooftei6lAntM": {}, "QVIkBZRTQZLjSbwn": {}, "YcVgA54Nk6nPlNtB": {}}, "slotId": "WnCR5ByEQ6Z8zXIX", "sourceItemId": "2I1VmBfJHJQBmJKU", "tags": ["ULFjN4puA5rFmVGd", "f9xdJWDPxQhhrJtq", "NXTj2jAfwg5P2Lwf"], "type": "mJyaXvE3KqEv7Lup"}, {"customAttributes": {"iFUrSI9p9vroukCV": {}, "b7iE8QcP0CqBkJnq": {}, "8PlNTdx9po2mh88k": {}}, "inventoryId": "Zsqb4njs0XceO6bn", "serverCustomAttributes": {"6b8khnS04Vt29f5R": {}, "Z0ewIpD4F6Wq3w2p": {}, "hgi3ebyAmkeOrK7V": {}}, "slotId": "unB7aLnehO9GsXxW", "sourceItemId": "inKyaVBTmlsimaR3", "tags": ["2KOsAB4Q7fDESIvt", "CoNzXxtTLeycsZjg", "9QL8XGmJQU18p7G2"], "type": "zLR8YjhhDFb64O6b"}]}], "requestId": "iSdz19lhLG66A5im"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '4' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["500ayZPGRgYxWWzN", "NknCV6ONCZcMnFDA", "B3eY0L5y7D7VcqlM"], "serviceName": "RWjStJD8Ya1KSGGP", "targetInventoryCode": "NAF3Kz5aOnp3isEE"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'tBqu7ZHrNBZym6Fp' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["B4V862gX60GFNckZ", "LPLXnviXaK1jNrWK", "KfqzFb4Z6LURGfvS"], "serviceName": "ptVcI7HPu3m3AzQo", "targetInventoryCode": "kedIc4t8ApcaPYLf"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'rrwusi5Wv5hNFqMp' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'nHgSPF7MdbXtBLKi' \
    --limit '84' \
    --offset '17' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'ybbou4bvG3zWgDYB' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "C2HIoQKRRYIYYCK5", "userId": "TW8emtPmeDGB3Qf3"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '7kqJiYLzTRVcF3rw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'IuA7TDtcGW1YPUvc' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 46}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '8x25uyc4J4wwaCYL' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "01qPyk58feTXPhbw"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'jyopurLqZVeUc4lU' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '82' \
    --qtyGte '22' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'm8Qb08DeffXee2Ew' \
    --tags 'v4jd8FWYsE8giIRe' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '1G2rlZhVVcMoO1BI' \
    --namespace $AB_NAMESPACE \
    --slotId 'cY62ic8GuZCoiMc0' \
    --sourceItemId 'v4jy84D7QKlY6Ipz' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'sE9rWiKM5gRLVZfB' \
    --limit '38' \
    --offset '6' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "E6pKnFCYhZr7JC35", "description": "yZlplqliTMemHF11", "initialMaxSlots": 82, "maxInstancesPerUser": 31, "maxUpgradeSlots": 55, "name": "IVOEhRdyT5kEiPL6"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'k2NuHXeWq0TVpl9N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'W2ImuNobeLgEp5XO' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xycfJ7U1SllYMHnB", "description": "HW97Lx4IPjqSg2t7", "initialMaxSlots": 93, "maxInstancesPerUser": 2, "maxUpgradeSlots": 58, "name": "4dvYnfmGkYnEypmj"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '0FkfNUTrNwGqcHnJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '85' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "37IN9W8sHBV2hCxF"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'GcX6tu5bbs6ZPFXl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '98' \
    --owner 'nPhooU2MxnjJYjid' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "udt3hxJcP1mGg1A3", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '7KtUtiBtNUUoMv2Z' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'DQj3jxJ7L76FPmeO' \
    --namespace $AB_NAMESPACE \
    --userId 'IAXoLQvGbXxE7sIL' \
    --body '{"qty": 99, "slotId": "4SXqrtkorkXHXtRx", "sourceItemId": "tM5ND9tGLybURSG6"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'K3cXOy92owLGDtKS' \
    --namespace $AB_NAMESPACE \
    --userId 'CwhEpx4b1f7JvXeA' \
    --body '[{"customAttributes": {"3r7SJWCUr8WONBvp": {}, "npHMLJco4LFh2nYK": {}, "cLdYX9RZYSGbcV4v": {}}, "serverCustomAttributes": {"Chae6Ql58NJHx7Nh": {}, "1Hyq8MSaospNgjB3": {}, "wmfvbfEDedSj9utm": {}}, "slotId": "VkK22hxG1s0vxM4r", "sourceItemId": "wfEIxg9LP5VcczxP", "tags": ["3sOeywjnV9hHOjSI", "1OA1POTxiPN0Exq7", "h5ipDQgWnbPuS8op"], "type": "ebPUkRADpnQ1VFsG"}, {"customAttributes": {"NTeSYlghdakI0MMM": {}, "672gmMcw1rbLrWZw": {}, "PiizAW7ZPoHF4PXr": {}}, "serverCustomAttributes": {"2NpUpeJUqJ0mZFlr": {}, "53XXfDu58dqlaaWM": {}, "Mud3RrXL6UcSNb9Q": {}}, "slotId": "d0btRGZrDE1VA2Qv", "sourceItemId": "fhPe10HZPjaYw89r", "tags": ["RjvqpyTd7KkrxmAp", "0e09puD9JzemjpBX", "ui6Cr72vVUQozKNg"], "type": "dTJC1PKTDVbr07lJ"}, {"customAttributes": {"Q778jeTG3wy43bi3": {}, "P2iPuLr24zTLWlZV": {}, "3I45Cv8eunL0gFDx": {}}, "serverCustomAttributes": {"drfu2nmIortphsG0": {}, "sBGefsg1wbKEpPuu": {}, "QFkCrAEAUAB5kDVa": {}}, "slotId": "zD0eJPHyfWXbkxwI", "sourceItemId": "gM35ACqOi4lvNTWV", "tags": ["nsGynOshRUPQQ8Bn", "gv4TrzzopbIhSuk1", "TuD8fsCWlUHFPBQu"], "type": "vLDZEU6SBj0f7eQt"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'fyPKKsf9STun82Jf' \
    --namespace $AB_NAMESPACE \
    --userId 'kZrsAl6HMQntSazA' \
    --body '{"customAttributes": {"a16yFFGH4ydTjY5x": {}, "W9MbLHTtGtr6nH99": {}, "WIfRvvLY0TXWZ4U3": {}}, "qty": 37, "serverCustomAttributes": {"QONqI2Au8K72fErn": {}, "m3P5AA6es2nHhphc": {}, "gNpocrXxdNxIoPsc": {}}, "slotId": "arNjcZdS9QCqdBZ4", "slotUsed": 81, "source": "ECOMMERCE", "sourceItemId": "WQNDNOqIoDVpDmYW", "tags": ["AmxdfY0RDk8l1Erl", "xjCZtbF1NqF1OGfi", "CfROwRUTDf1jzPdM"], "type": "58b82odvz6musXKg"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'rjeu6j5E3S3QGDwt' \
    --namespace $AB_NAMESPACE \
    --userId 'xaR7PwTSlrfjJg8b' \
    --body '[{"slotId": "MFeLWXaGKo5hOOWE", "sourceItemId": "M9qNiczR5wGCv19p"}, {"slotId": "4BF8Bnl2DbFPft0D", "sourceItemId": "9riecIdRR9uXKHe7"}, {"slotId": "lv3TluDBD45030ow", "sourceItemId": "c4ipapJTOhoR70ZJ"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Gptmn0Wv3I2YkYZ6' \
    --body '{"customAttributes": {"L8lPPgAUMdcDSbjP": {}, "7Gn9zeBKqIWXmiaF": {}, "WZv2gsEFw0surIwl": {}}, "inventoryConfigurationCode": "kT7BIJaP8MhtZskV", "qty": 88, "serverCustomAttributes": {"CqdmHZkFPAWGzafH": {}, "4vPpJWT0Icj41FxY": {}, "tEgrlWHsYIGgvFJq": {}}, "slotId": "RllCySuuXW5cnurq", "slotUsed": 44, "source": "ECOMMERCE", "sourceItemId": "pZ8w9VhYNLpHDIaQ", "tags": ["X461d2qLiOiXJVtW", "d6HA7kJ25ju29v0a", "JgGFFEfB6m9fuRv6"], "type": "JmXtwLTOmsDWjE4b"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'B83Nkdl2hXZ2KHa7' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ZdQ4aQBeKRASGRoY' \
    --body '{"entitlementType": "Gx3A6vopp1dR0mcH", "inventoryConfig": {"slotUsed": 50}, "itemId": "8ZbovaOOoCGFSC8t", "itemType": "EO8b0vKbQTOrFHoC", "items": [{"bundledQty": 57, "entitlementType": "3kRoUxMZOfYHN3Vv", "inventoryConfig": {"slotUsed": 41}, "itemId": "xRfivSR2lOcENIXP", "itemType": "LNtslWoBBpe4kCmC", "sku": "JpiQ0GJBOJzEZZqo", "stackable": false, "useCount": 38}, {"bundledQty": 96, "entitlementType": "In8EMqkVxFVEPQkl", "inventoryConfig": {"slotUsed": 68}, "itemId": "asnWd0EPIGjmcXmf", "itemType": "yr2wVM4TOQFoQxDw", "sku": "2l9itp3AJX01bvnf", "stackable": false, "useCount": 9}, {"bundledQty": 57, "entitlementType": "GfpFi90aLLnl8azV", "inventoryConfig": {"slotUsed": 92}, "itemId": "dzkj7XW8RoF6UNiL", "itemType": "KMrO2oPcQoQwourI", "sku": "1vt8NCPXlx939JQx", "stackable": true, "useCount": 83}], "quantity": 40, "sku": "hf3zuZiph8vPFm3v", "stackable": false, "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '1tENwqWoxdMMaYaG' \
    --limit '76' \
    --offset '49' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '82' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '31' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'kKrkbdm4eBYh9UGi' \
    --limit '97' \
    --offset '2' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'UkvcK4s2SodppoFw' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 69, "slotId": "gAFu6zCtAyG8YbUr", "sourceItemId": "xNLObN5ZQq54ofow"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'UylxDA0PLAJGszxL' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '41' \
    --qtyGte '71' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'm5sF8kn036Xp13ZY' \
    --tags 'rBUpWBFSzyeGEsU4' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'KtJhM8GggWTorM7B' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"a94ZitmKgSAoq8D4": {}, "0q6yOOV2Ucndg2qS": {}, "VvQSHd0DT30tvE11": {}}, "slotId": "6yzuUumXcWQB7PAk", "sourceItemId": "UFjNoLy3v8MEjEkF", "tags": ["66xIj5hoDMSlxndC", "N3EI7HobqgWCLVTx", "M8cYd7kqzXe1LlAn"]}, {"customAttributes": {"FUV0r5c6rL7cgqcn": {}, "oFk53SeiBjq2VD92": {}, "0ZeSxLe8z465u6hG": {}}, "slotId": "0YJUlNyJxwjxUbxA", "sourceItemId": "w3uSXecxyXUZjLmS", "tags": ["tY6uTuRQXo1IbUTG", "chvPIyrwQkvTIvJG", "H2fFJB09qpSHxT0H"]}, {"customAttributes": {"K8mFN1qUOrWkL7Or": {}, "fA9RbOBqPLCziOXQ": {}, "ud9QFb2V7mzKswKH": {}}, "slotId": "JqW1oPiauk3xy9LC", "sourceItemId": "X1tUQjrWUhPlsAEx", "tags": ["axmbQum3sFqA4ZkX", "YyWpSOHJKLr17Okx", "xg2hzpE7KEBPK0xU"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'juF5i4sdVrxI055s' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "shFtZhdKMrttVkDN", "sourceItemId": "Gfai8bROezVQ6mtf"}, {"slotId": "pTQ0W15oEV4kC59v", "sourceItemId": "w5wiLNRGAgq93MGO"}, {"slotId": "7QjKxIw6WyDZTAy8", "sourceItemId": "JduyvTJv1yoiLQhK"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '06VWEo86Cxun6M6a' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 61, "slotId": "qRiG0wuBcQbhizaA", "sourceItemId": "LsEqbuyCLhz6tHTi"}, {"qty": 65, "slotId": "5Gv9zgoC3pNLmw6o", "sourceItemId": "fRZ8JIStGikHkMlm"}, {"qty": 43, "slotId": "xlaZPSARdX2bbzk1", "sourceItemId": "6fDQ41iXX7QRnMsI"}], "srcInventoryId": "P4jinQyQbUMNdmo3"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'uwJn5TjaUpna6O2e' \
    --namespace $AB_NAMESPACE \
    --slotId 'Ux7rrU8DCyiXYppW' \
    --sourceItemId 'a85tOerDh4BgPj1L' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE