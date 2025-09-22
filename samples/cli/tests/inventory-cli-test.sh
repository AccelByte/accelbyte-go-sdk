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
    --body '{"message": "ayMK4gH6bdaagJfP", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "jpP0bROMRtG3JrZX", "options": ["B8kzTHb4QSsaVVGQ", "4VCGOHIQYfwxBs0j", "D2CMAZ4OF1WoaMvp"], "qty": 1, "slotId": "isVD7KxOV4aXLSsN", "sourceItemId": "gY3cB41mE3cxep1h"}, {"dateRangeValidation": false, "inventoryId": "LSZ5cVqFPCIFdGJx", "options": ["AheBq36UniDUVRcX", "YbBJ4BpP6bcu1gcK", "OOHkNttz0STPKtBf"], "qty": 66, "slotId": "QmoqMoqLM36kfZfW", "sourceItemId": "0oN7HBFdjhoUSHiT"}, {"dateRangeValidation": false, "inventoryId": "6AaNM7tZgg2aiPBw", "options": ["vpRaG4zVeiLlPt61", "j6qertMxyqNsIVWD", "urDoWZRZ6l5KNLUi"], "qty": 37, "slotId": "56EKTEqq2G06YTfh", "sourceItemId": "shDlLG4XoTsiRex7"}], "createItems": [{"customAttributes": {"ZyUFHpN30L5PX80E": {}, "NEK53H9IDdH5wZ1Z": {}, "VGBtZ44NgTIPYGf1": {}}, "inventoryConfigurationCode": "oWH3eLwWPBgy1JaC", "inventoryId": "47Aeb3gevjSRuLVd", "qty": 35, "serverCustomAttributes": {"vLMZbs1hBn7kYN35": {}, "K29JI8lg2acO3CAK": {}, "q5jhkNKmEDvmK1y1": {}}, "slotId": "DXDCh2elGStzB4MO", "slotUsed": 52, "source": "OTHER", "sourceItemId": "Q1nBumaxxovIYB7F", "tags": ["l9YqrWT6s45RW9rH", "qySlWCwJ22Q3kT9c", "EiNfRnSKRu78MQQn"], "toSpecificInventory": true, "type": "8Me6SMF8G7YtxYbm"}, {"customAttributes": {"FSXiNc4Omc2dZ3VD": {}, "W5Le4pN1BIfXrlMB": {}, "tDRmdvuYrU91eF3O": {}}, "inventoryConfigurationCode": "2ybqxpxk1mJGKpvt", "inventoryId": "L1FHVNJZ1HtFeLjj", "qty": 37, "serverCustomAttributes": {"34AtngpbDs3GIieE": {}, "k0FFLoxTt4efiF8b": {}, "xy43qKyvfOXLKiiY": {}}, "slotId": "Udp1g0I6Bm7P6Ly8", "slotUsed": 34, "source": "ECOMMERCE", "sourceItemId": "iMwT7KywvjFfWnyO", "tags": ["YV7asTCP7V3wMmLO", "FAlBqxbw78oJrvA5", "wcbmzRkW3A0vfSUu"], "toSpecificInventory": true, "type": "fRI8a2gxp9r2ANtX"}, {"customAttributes": {"ZEf2D9557Al12QTK": {}, "HqvBxoKmlSrgU5rh": {}, "k1T7RGoqdqDuP1yN": {}}, "inventoryConfigurationCode": "kv5uOtiYTLijTX9m", "inventoryId": "HqbNb9hK7ux8Sd1x", "qty": 23, "serverCustomAttributes": {"XElMstDX3gUti7kK": {}, "yQ80enaC58PSX1Ze": {}, "k2hGyUcTzeHjcm9Q": {}}, "slotId": "mumLBcEphmicRgcg", "slotUsed": 25, "source": "ECOMMERCE", "sourceItemId": "z1xIdL1I35B3lU3r", "tags": ["cyvnHAYqGZVAQkWJ", "BAjP9cytCifJtnHr", "QGyzBxNMUHZZu8fQ"], "toSpecificInventory": false, "type": "QStWiqOg5knAZvZ2"}], "removeItems": [{"inventoryId": "wHG6DIa2L24bNW0C", "slotId": "lmEkZNTHgUz2P48y", "sourceItemId": "8DrGhPT4ekdNodXl"}, {"inventoryId": "2P34gq2zh8iYKSv8", "slotId": "QeChMjBwcNprOjWw", "sourceItemId": "a1fQJSycJ8JHbW1t"}, {"inventoryId": "gfu6SRqSx20UzJBy", "slotId": "Tz3Wk4TSOBbtrLQC", "sourceItemId": "0WI2OFkjHUWlW3Fa"}], "targetUserId": "MgntFBYvvHhsjaaY", "updateItems": [{"customAttributes": {"xwDaVZWsr0wbaRod": {}, "BtquRED9xQAWyHY3": {}, "7429zcJS8hKVYwvd": {}}, "inventoryId": "0XfeHPkFbzzg6aP5", "serverCustomAttributes": {"pfB8cL9Po9QjErpN": {}, "ClE7uFlebRvU8Zk7": {}, "z619xggE8BRnsRgQ": {}}, "slotId": "Sd1FO7vDwiYezs8V", "sourceItemId": "WYYATKOGKsCm5pPu", "tags": ["eGcjtfonWXII5ARu", "FZ0EDPsPlJtVUNIL", "uOjcMHfgl3o0SJrI"], "type": "kNGPsU0fcXD8LJVS"}, {"customAttributes": {"AIKNopD3NZhRAJoG": {}, "XvPM7nnqa4UZwasY": {}, "ZC8EYV2GppeWSJWW": {}}, "inventoryId": "3FSADMCeX7ht4WKX", "serverCustomAttributes": {"4bQD9Aft9Trakrwi": {}, "qeX4ZA9bJlPmZTt5": {}, "HuKGPgBrQwhMnBRO": {}}, "slotId": "zD8tmFUe041gdsEe", "sourceItemId": "FLgeuF0LgqxIwgQW", "tags": ["IIgGdUNHr6ktfXmz", "C2ZZtBkJh30uS6YZ", "0Vyg8yBYtEoy96Vg"], "type": "xt6Lpzbcf9317mrp"}, {"customAttributes": {"RrbSjJtLXlqC9Yge": {}, "MLTkzbkuH7nPAqr1": {}, "Ft74ZSWmXAitJPRe": {}}, "inventoryId": "bCYJMMD3FFFUrc4C", "serverCustomAttributes": {"TEi3zjAq9fn5Zjub": {}, "gcZCGCZORS66trau": {}, "NLfhJg2kRv56dxB3": {}}, "slotId": "C3VDwYiv3aShEeZD", "sourceItemId": "EkdrV8cH40WcI2iT", "tags": ["KZOiVby5rCuxXfNk", "vqbXmOY36xuGVSyn", "oe7mwiJgdlAaZYQq"], "type": "hnd17klB2lA3mwYv"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "3YA1EtfeHPasRlJH", "options": ["8nbdBpQ97G31awPj", "6jctAvmV5UHMUCGN", "JDqB4UWTW20mU1AN"], "qty": 47, "slotId": "A87LWrne954B52xt", "sourceItemId": "SBiCrWUrr0LwM2hg"}, {"dateRangeValidation": false, "inventoryId": "gEkMWNGeNyvxeoud", "options": ["zBw4P8hvNnTWVQSu", "zFg1vRvx2AJkEuzY", "43Mi1g4p5TN17oxq"], "qty": 76, "slotId": "ZfkDPnTYxdRx7ynW", "sourceItemId": "kVF51WcuK4kEqt2j"}, {"dateRangeValidation": true, "inventoryId": "bpErnLj9NIy2hZl7", "options": ["daVRIVvIbMDqBSpR", "gldL3br7vWzWMTUw", "hwQFNjiwKEbmu2lM"], "qty": 74, "slotId": "OkZvLezxyOAUuqqX", "sourceItemId": "y92QvVgYj9W5kJm3"}], "createItems": [{"customAttributes": {"0JVcpqXrPj1KTTxN": {}, "Y7aEbN3kDTLMhTXn": {}, "mPtTXhkzK0wPfawA": {}}, "inventoryConfigurationCode": "CbHDLvwBgD2gaHGk", "inventoryId": "9SGPzIPh4sb7mdmf", "qty": 39, "serverCustomAttributes": {"kdkhJBOel0AlQVrR": {}, "MCtymDishN31nVpY": {}, "x0kIQohg5a0UJSui": {}}, "slotId": "LvbIFXhtw6XWeSfg", "slotUsed": 9, "source": "OTHER", "sourceItemId": "zEloM6ZdfXiVNJTO", "tags": ["ausEyVRA60Hvt8IU", "jmdO1B9ufI596X7P", "RPrsphdZkLNogiv8"], "toSpecificInventory": false, "type": "NsLAmRdzy1o0f3gW"}, {"customAttributes": {"2UfKT6lSD1BnIKYs": {}, "fcJGkCbEH21SE6Yk": {}, "U1vMnmWZJoK7LSBP": {}}, "inventoryConfigurationCode": "E1mKW5tHSYIL8sg1", "inventoryId": "IberMvdv2dO699uT", "qty": 76, "serverCustomAttributes": {"n7ue79VLujoD1jh5": {}, "XMeNUrTcpph9hULz": {}, "mw4cmzSGcCChvIKI": {}}, "slotId": "8bBt33O3nmXoDGMg", "slotUsed": 18, "source": "OTHER", "sourceItemId": "Kg30QNrVEHfWsuXl", "tags": ["7rD2CtkX2Ax8fFtf", "WGuVqPBJuVrYOJnJ", "DEt8rxiJmdiCbu3Z"], "toSpecificInventory": true, "type": "iCp2mVmgs6bxCLwj"}, {"customAttributes": {"uttMTbJmSPCfMsRw": {}, "KugidPEKYJcG29cl": {}, "PvjIxbmnhqWyiEGN": {}}, "inventoryConfigurationCode": "JsE0pJ4lSENRPTSt", "inventoryId": "XvNcWLv3lb7X52Ao", "qty": 94, "serverCustomAttributes": {"BVsqD4yiOmcUxu92": {}, "TKwJhKpitQ7wm8hM": {}, "JdgxSyZvte2ULK2l": {}}, "slotId": "ISZiLF0Bo1gewRRM", "slotUsed": 26, "source": "ECOMMERCE", "sourceItemId": "qtw8cevwvIuGKCq6", "tags": ["qmTQAZpOny4SkDJw", "dgus4oPgT4zqrJ9J", "0HZsuOEkW2EWR9nk"], "toSpecificInventory": true, "type": "PccCSQALMJTY62YY"}], "removeItems": [{"inventoryId": "tHwOnbxwI3UdkOCa", "slotId": "bSRQfoSBY0772AOt", "sourceItemId": "GM37lLIFa9EajgcU"}, {"inventoryId": "TZKE2rFDU8YUHRr3", "slotId": "Za4BsHTEliFy0imA", "sourceItemId": "ZAYWAzr8TjSubw8U"}, {"inventoryId": "kauXHq2qSscq3Znr", "slotId": "QgM82MzN2SwNlVL9", "sourceItemId": "9RQhUgibqCCiXxHu"}], "targetUserId": "2A4a9CzPKjonjs6t", "updateItems": [{"customAttributes": {"GhEhcNxWoIdrGn8F": {}, "WEBoA9TIBowodyf2": {}, "zg7LaxOVmLIgnGOa": {}}, "inventoryId": "1tNS8kjOqhFCtDCb", "serverCustomAttributes": {"kxguS9gx9ClUI5D0": {}, "zX5udKFmWMvE4dV6": {}, "Y9Mmi80nB9WrfNcB": {}}, "slotId": "CdrC50q5cDk52OQT", "sourceItemId": "l0x2mi913txw2oVk", "tags": ["tOWJpHlj7fe1XIoE", "SIu7j519upVBEFSD", "jLCAOdNfvQATj2pD"], "type": "KC5yKDgMlpmuXXiW"}, {"customAttributes": {"3Np0bRJh6r4nuO6o": {}, "Yuj2jEBKvr40R7dx": {}, "QfpR7uCvEAMstZ5Q": {}}, "inventoryId": "QdkF5hdGk0CsZMz2", "serverCustomAttributes": {"erROOlVRQXVxUZ2k": {}, "Zn0u0UtxKJx6Tg2Z": {}, "6NGrlzqj89d95aFl": {}}, "slotId": "rCmkK9EESzPM5YKX", "sourceItemId": "rtzlgNR00hL4ptTz", "tags": ["0jheeXXfAZojcHWF", "ZXFsxkrhSfqlIyZi", "okNIs5E6N2WGa50l"], "type": "pUieSrTuYQmN0UzX"}, {"customAttributes": {"Hy4k77k4ShpHikt6": {}, "pmdHzlxOoNNHLcTe": {}, "MZDQJn7AIWhG6zNZ": {}}, "inventoryId": "uyoxZEQqUVUunkwD", "serverCustomAttributes": {"L7rMYdlBo4nclvYd": {}, "bVRbYVSIhW7cvaTX": {}, "aubZzijMaSlM4I9P": {}}, "slotId": "Svpc1M03rlHGMNAf", "sourceItemId": "WLOCbXpW45YjVfCD", "tags": ["Y036mUSWU3aS1Qxe", "Ok3OfPykamiPCcRt", "jWnZPvSEitUfUc7A"], "type": "lF0rZeZA7HDFdOOj"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "NzVs0dH3XQWvLeNt", "options": ["7n3dRR7uYJi18HLw", "JExs1S1MTC69VYc1", "3qaXkXNPq8qOXmDg"], "qty": 45, "slotId": "SnNzZDdS1ok6vWl7", "sourceItemId": "ofRcVwwwWkGOf3ni"}, {"dateRangeValidation": false, "inventoryId": "KYaYsc7LMpnr45vz", "options": ["eEihn6Nc1ySFzATl", "ppFJYoggI35Bwa0L", "1y8SKa4GvJZqyFH9"], "qty": 97, "slotId": "rSmNzE5AVg93NgJ9", "sourceItemId": "DXH42LDP9tjHJ2NA"}, {"dateRangeValidation": false, "inventoryId": "ryL6LWuvAne2UM0L", "options": ["njNooN8MUIfhpAvd", "gABj352Y1alntYPj", "jhsVoHdbZeY14f9p"], "qty": 42, "slotId": "4Ra0r1h6TkukqnSW", "sourceItemId": "1G4PwWAtlHjD3xPW"}], "createItems": [{"customAttributes": {"xpH6FPvuqdjKpUfy": {}, "tPm3czL8MKIVLugu": {}, "1Ep1wG4w1766Br96": {}}, "inventoryConfigurationCode": "JfrkGwNLntMAUG4R", "inventoryId": "6QZrLEg55pGMMX5V", "qty": 81, "serverCustomAttributes": {"T957Im18126rRvwK": {}, "nuGpe7FscQWmfYcR": {}, "a8WPXsT4kAGTvY3O": {}}, "slotId": "xNoEQL2ww5pUE2eK", "slotUsed": 72, "source": "ECOMMERCE", "sourceItemId": "BoHLlGMYxyHRimad", "tags": ["z7PB8pItLL7IJpSl", "7I3aeuy3NeQn59H3", "EhSxdUPOZ5IWJfgf"], "toSpecificInventory": true, "type": "KZt24anEnF1eYFzS"}, {"customAttributes": {"LQzEM44AWJ7cdWXY": {}, "twMsbjDshGG7Q4rM": {}, "nWjGDT4TS1hPiyJo": {}}, "inventoryConfigurationCode": "Fv0s2ZJWwqYoBqBv", "inventoryId": "3bybm3cusnzu0RB7", "qty": 70, "serverCustomAttributes": {"BCuuKLuaKCFOSpmr": {}, "v4Ey7Sl368a906mR": {}, "CZh7CUyQ3Y86I5nV": {}}, "slotId": "YL6PBuWVIBdiRRwV", "slotUsed": 92, "source": "OTHER", "sourceItemId": "ip4FVeK8DYkFYwgp", "tags": ["bLzjv65H1cevBuw6", "YVIi7UEmq9cEmfue", "RTyHRaEfB3zPgv1W"], "toSpecificInventory": true, "type": "lsAn2TlYM0OEFgKh"}, {"customAttributes": {"MOQdCrpZJq8hAAQz": {}, "bbdlZKaT1ioa0wZB": {}, "dmKGITUWE5x95sKM": {}}, "inventoryConfigurationCode": "taTJPyahBpBs1C7c", "inventoryId": "kysneqdabyNIrKwt", "qty": 35, "serverCustomAttributes": {"yWEo7HmAPbnX3lgo": {}, "YPGGiz7FBrX5iDui": {}, "nbb8paSacCpVqnOC": {}}, "slotId": "uwqaqqoYjx3bPhRA", "slotUsed": 94, "source": "OTHER", "sourceItemId": "eDcbWdRHCqGSyG1e", "tags": ["wOGxuyXUZQpQ1Pb2", "cNeE83Y5CvrOOeWN", "hbsZGsCbeo9z835c"], "toSpecificInventory": true, "type": "0DYux73rm3y2F9jO"}], "removeItems": [{"inventoryId": "ZTJ8iNLQJxHcJeND", "slotId": "jXfvRzMlBhLNZoPX", "sourceItemId": "mYnDGBJjK9tw3Yxt"}, {"inventoryId": "pJ4rerQ3ubgXH5VM", "slotId": "8UW92djpCchbNtT3", "sourceItemId": "H7RdJmZjRTerXwy9"}, {"inventoryId": "2XnkfPkDGiYr2R7R", "slotId": "lKgVXvrAmKUt1hbH", "sourceItemId": "xc0PEWhJXcpBfnpf"}], "targetUserId": "RiKCx6j1XrzDsndC", "updateItems": [{"customAttributes": {"M8beBqKb3bjyi9wG": {}, "rDdmgVEkaFS9z9sm": {}, "d5l6B8zvB5gM5J20": {}}, "inventoryId": "DZbkr35tM6XOY9ot", "serverCustomAttributes": {"EhEjHJXvnbWWM3qm": {}, "L8ArZNkJltzKnjNE": {}, "WCQ6307dRRUBDe4F": {}}, "slotId": "8ymxAvbWoaZz11fE", "sourceItemId": "l9qqc7LqGhkPHphK", "tags": ["LJpXBXqgI9adPI60", "U10YEeKPEACuCHZY", "9EDYtMWAb7TVc6Pz"], "type": "FRwgG4dliOWJ8aSV"}, {"customAttributes": {"dk9ONWEsYue0UqPH": {}, "wNxpeQRewMwGfDYd": {}, "dWWamS8bPsrs1VK3": {}}, "inventoryId": "rnbBvbqE5UkpsilT", "serverCustomAttributes": {"pxBLv64PH1dEnbYA": {}, "4DGsGHbDc0FndPgR": {}, "qm1JaLkePxsd5IJQ": {}}, "slotId": "XAJnKdYl4xVmSaat", "sourceItemId": "4sGbDD5jmGpcDu2l", "tags": ["2FG1u0rneBM9gwnG", "CmTeAp6ZJ73PXNQ6", "7WI81WuqZAaPwwUo"], "type": "TNfvMpg9NXbwjNny"}, {"customAttributes": {"5FzrgZBJkFpb7wag": {}, "iWaL2TeLM18FuCbO": {}, "5ddgPAqjqI5WORfo": {}}, "inventoryId": "GQ0KZ4V2Fs3PVHTf", "serverCustomAttributes": {"VbQ16uTmup5jS3ty": {}, "7iyr8dEnpW9ZIVjT": {}, "l0DRVa26tJ7gN1rp": {}}, "slotId": "EN1b3jTuFTU4Vws4", "sourceItemId": "tMTTY5rRlpsqVkP6", "tags": ["LBbTrreSZuzqySXE", "A1BcY5qvG53MNR56", "gXBnDvNQNGMtvKEL"], "type": "3gAnoOBD2tTkG1xY"}]}], "requestId": "wEymoMtvJcNvryTh"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '14' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["oKFrGbwJEdfxw3pf", "9Zcy4Z9pIvEFSsF9", "uiPqukce1ZwGd67o"], "serviceName": "TK8vyoXaUvDvnqeY", "targetInventoryCode": "3p0RVUzx2yaUSaGG"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'yaQ8hYSA3kdxrtxr' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["yGTsG70dJvJgbaoO", "s9LLICYnvQ1TVbRy", "jE2BfWAZIKNZX4o8"], "serviceName": "CiGdkoLRC02RTdhV", "targetInventoryCode": "oVFKjSSg1KxMQUGN"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'MuvFHBZvGTOBtGOU' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Wj0VZP9HiMxP878W' \
    --limit '44' \
    --offset '68' \
    --sortBy 'updatedAt' \
    --userId 'oPir731zmcjEwWOr' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "b2sLZ5OjUxvInm3a", "userId": "1LIdv62NvK11dHlQ"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'qvkarUkNgrmTT8tT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'vTFNsFqVVZr9No5e' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 16}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'HbmMIEPah9ZxaEck' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "HmqgNOGumauEsy9i"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'W93sz4M6eaJAYq5T' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '33' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'L8J3PmrZcmMchPlF' \
    --tags 'ozLU3ry8xSxGnhDn' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'UIUVkSybdIlDj7Fk' \
    --namespace $AB_NAMESPACE \
    --slotId 'phdC55Qws8Z3nfbO' \
    --sourceItemId 'rOtKUtC90yzaHiXp' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'IJeH95BA2WTUuKTt' \
    --limit '34' \
    --offset '1' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "q5xMaUkpU7xcUToY", "description": "K8q4yDZSjNItjJ2h", "initialMaxSlots": 74, "maxInstancesPerUser": 76, "maxUpgradeSlots": 20, "name": "PULJSTWImLS4VVwP"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'PDuhS7xn2t6m1Fl8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'uiQ5OTbp5ObgEDji' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "21k3yGgyRIWxY29S", "description": "LoMzsRHBkghqQB3c", "initialMaxSlots": 25, "maxInstancesPerUser": 89, "maxUpgradeSlots": 47, "name": "xeoQ5IDBikfskpSd"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'ck4o8A2QdgSqKdnN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '66' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "HDnTPnIsEAgWQkf0"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '1UbVKu5qKHwgEseZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '75' \
    --owner 'fjEidjVnAGaU4djT' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U2MaoriKt0asXRUf", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'RA21qoh20fWOnVQA' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'DYHdzfiMN0SmLtpX' \
    --namespace $AB_NAMESPACE \
    --userId 'ZReTfukjOZk2z4S6' \
    --dateRangeValidation 'UQ5Q4WBTUM6BYHsJ' \
    --body '{"options": ["0X5HG1LM20vQ1J85", "ZCYKlmBQDB2zXZ2K", "KU4O4buvTR8tI2vn"], "qty": 11, "slotId": "kWag35LgbcMelRVV", "sourceItemId": "9aCzkUQpMQJdtMlv"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'wUbLleJoqOaTDsWT' \
    --namespace $AB_NAMESPACE \
    --userId 'aqU9qYC8EjmyYzhR' \
    --body '[{"customAttributes": {"nfyZJ0oEL2u7WSNZ": {}, "zN1NM8wYOScvRPxE": {}, "EJ5CJZqDeEZ2MztZ": {}}, "serverCustomAttributes": {"yTWrPqjSJSh5HOUq": {}, "ztQcgIiR01d2N74X": {}, "qyV3IBvRpmHiTU2p": {}}, "slotId": "Ji9SDx2ousIrN2qq", "sourceItemId": "UAY2Mn2FXzqP4dqz", "tags": ["Uc9TgJOkZkoncSbM", "AW5FeFfch2Ny6ov6", "QepKabSJsRBEOOOs"], "type": "TbWkPJToHdNsGicx"}, {"customAttributes": {"62cJ5lEdaZzPwJ5k": {}, "6IkAgluYlW2n7SMF": {}, "bQLYG20Cfj7ArqC6": {}}, "serverCustomAttributes": {"TMUkFXDdYoVysCLP": {}, "cMb13TOdKFX8YaRq": {}, "vUzCoB5UugKGRIuJ": {}}, "slotId": "AMXiNA9gxaEw1t22", "sourceItemId": "CG97kFCVraBTht8Z", "tags": ["nVTgy2cuqtmJprEH", "L03yxqXf68I2hxVj", "EpXWwF3wcW0EcOLh"], "type": "aZrwHognOSqpOWRp"}, {"customAttributes": {"9Rsh1sVKrSqgISoM": {}, "JczDVu96eguCRz83": {}, "6RCkHsmR2p7G0giA": {}}, "serverCustomAttributes": {"f66JKenIeiaZU3RN": {}, "1s9vdoMIlzUH3UIZ": {}, "MEvXVfsf3JBZuFXw": {}}, "slotId": "qhvjotykyuIoXsbA", "sourceItemId": "COc0ZZmCExLwGxmo", "tags": ["eWagTHjwdOpkanqi", "BiAWqozwGsINY827", "al3P1nAnIob3xBMh"], "type": "fF6EEZlPW3trUCsk"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'NelKj7l0ydHWDnAe' \
    --namespace $AB_NAMESPACE \
    --userId 'hV4tu8xBc798N8kb' \
    --body '{"customAttributes": {"5sXCM363IknpmbBe": {}, "H4cf0fx62EjBNtHY": {}, "KPa51oGgBeYD8duW": {}}, "qty": 45, "serverCustomAttributes": {"ILK4YizSzyjsIm5V": {}, "I50VegQAbg2XzrtY": {}, "zwDf6FSGjuuA0Uz4": {}}, "slotId": "ShnZBlEiRVsiYFjj", "slotUsed": 93, "source": "OTHER", "sourceItemId": "ezuFSiZLnbg2bCZO", "tags": ["hQm35wMNGjzB0Oox", "wkBEMO7kSkN530yB", "nnKYPyrBnuP97byU"], "type": "gQL3HvCGgMksRGIU"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'LSa7ftI9bLqjMuIb' \
    --namespace $AB_NAMESPACE \
    --userId 'xIt5bFrOX4Dmv9hp' \
    --body '[{"slotId": "yhDqsZP5PvQivFPG", "sourceItemId": "t3hhJTXgOQWPcgf8"}, {"slotId": "b01I2XhavUAZSV8U", "sourceItemId": "Y4ucpXMQgkMWz9Zr"}, {"slotId": "LhSBjDyk5DKFY2gk", "sourceItemId": "2Kz64D3tBL9NKDbz"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'Gd4WvdMJV1w6ABdV' \
    --namespace $AB_NAMESPACE \
    --userId 'syin8C6JC8xx0LzE' \
    --body '[{"customAttributes": {"LHg8raYYVdw3opAi": {}, "RTsr6jyaZUKVW8Ju": {}, "h9ZqOQ37eoGrR5EI": {}}, "qty": 51, "serverCustomAttributes": {"kOksmOyHA1Mw2NBE": {}, "4sx4ITWdWwj5G5N8": {}, "9WGUAWwOCKXs0PBN": {}}, "slotId": "KB5tzrRzQmOTMFvK", "slotUsed": 26, "source": "ECOMMERCE", "sourceItemId": "gy5tCrrufrnR0iyC", "tags": ["AAHaRKAovGDAGBCt", "u1hx0vfOeXoHUnNV", "fhyEYhWO5JkAbMWk"], "type": "h6HWlkiE3h4snxY2"}, {"customAttributes": {"C2MpWGL548oOavoh": {}, "AuJii2mPaeLyRuKe": {}, "DKcoOufn6TxKCDAn": {}}, "qty": 40, "serverCustomAttributes": {"U32FKtYsRMHl4pgH": {}, "pNvJ6ZG82f9LcjhW": {}, "zcGOpg5EfGTrc96l": {}}, "slotId": "ZCKPmgzIjQUNfagT", "slotUsed": 26, "source": "ECOMMERCE", "sourceItemId": "RfZbJdqPVZrrFykx", "tags": ["oKM8SaCcgFAmV7lE", "d6ElAElParmQ4a79", "4reirWMd29UE7fFf"], "type": "lwvE2Y0Z04KUQuEt"}, {"customAttributes": {"vuHMYTpIrIUUI13j": {}, "00fyk1IOPwyZkQbw": {}, "m20VBqzIMftgO7ME": {}}, "qty": 68, "serverCustomAttributes": {"StRWfz6ieHst12Ts": {}, "IAscwM02R3SiIDS2": {}, "kOhRkNKC7Mx5WFsz": {}}, "slotId": "JwqP0wDj8bAW5Cta", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "6Gi9kxDlrUo8qV1f", "tags": ["ga8yW4gAbImxePRK", "1w5IjzajR1enBQgj", "fawKIDgwaXzY45Uf"], "type": "U4d4hPjkZQslmAgH"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode '7ypPI2MnlHHJg5TT' \
    --namespace $AB_NAMESPACE \
    --userId 'safUANfOCFwoY7g7' \
    --body '{"incMaxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '9BQtB3UMqOtv6CT3' \
    --body '{"customAttributes": {"KMAgjBKngdUIzPft": {}, "rmePJLfb9zZeuQss": {}, "TZNC5q7wTp25ey37": {}}, "inventoryConfigurationCode": "UdJjwmGq6Mfn5DXh", "qty": 31, "serverCustomAttributes": {"Vq6uZgck0SyFalu6": {}, "EkKUmRrEsDr3LI1k": {}, "pFuBpx03SKbZJ92J": {}}, "slotId": "Hd4YovfOpK1TTxEv", "slotUsed": 81, "source": "ECOMMERCE", "sourceItemId": "dVYg0WPaMMS2pWub", "tags": ["yE2yIwA1Is4Wmn4W", "xOCvYVrLRCkOCF6C", "dn6OqWnB24NqjNOC"], "type": "lJoBRkWclpLdKppJ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'MKvQPjWuUDSJfPfR' \
    --body '[{"customAttributes": {"4wLKyWs8xYJSsB4r": {}, "XlJsOo2il8l2NLuD": {}, "ZVzBgi3DUjqqcZNV": {}}, "inventoryConfigurationCode": "mQA4R47ebvAf2D98", "qty": 12, "serverCustomAttributes": {"tmQaC6E9MsV85NbG": {}, "SyEh4JyMwoSkMVHo": {}, "LHVTcC6oV10QSqT0": {}}, "slotId": "bvdwH73vNmI1KnVw", "slotUsed": 73, "source": "OTHER", "sourceItemId": "AlqVnY2m4PCMdMJh", "tags": ["Nmyx4dIwx102Rsrs", "xeLnTkC2LtNTwTxf", "Jo0UnovYCOM7NOkP"], "type": "Uc0FP9WsUUWOANjt"}, {"customAttributes": {"pbeFyjg2oxSgnOX5": {}, "9u9JfRjQQbb59n9l": {}, "RijNXpQiao2ZUJ7v": {}}, "inventoryConfigurationCode": "a7uRtgQEVE3ex2DD", "qty": 23, "serverCustomAttributes": {"VwD5z8EuxE7ZGHZX": {}, "Ni0bvaZqeMT2cdHf": {}, "t84VGXRUEY4BUwhd": {}}, "slotId": "5eNnQsp59ZRBiPRb", "slotUsed": 33, "source": "ECOMMERCE", "sourceItemId": "Znwa8abdOIjDSS2i", "tags": ["Q0iFdMVDtHKI1PfP", "zFjrEso02gjIQlVL", "b0FuFE9UYgEtoWzo"], "type": "08QwB2rHgyCcDO4S"}, {"customAttributes": {"ELmGjjMNkpltYfuI": {}, "9bpAC2eupNplp5xE": {}, "mTDLzS2SFL12WLea": {}}, "inventoryConfigurationCode": "q86IaQBkXAKOFn5p", "qty": 78, "serverCustomAttributes": {"O3wVZhaYJNyWtUkr": {}, "RYRus4ToUadNX1DR": {}, "jSVesQEN9pHHJpmc": {}}, "slotId": "qBdwcUhhUkgOrOWq", "slotUsed": 38, "source": "OTHER", "sourceItemId": "fTeh56jRvmX2dk3l", "tags": ["gDoEbSU299vPr2g0", "UWBZ8UWNJzW38PlW", "jZUQ07RQOPGHa1UF"], "type": "jbv6Xxf7YHsxFIXs"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Mvb6a9H6SWqivHSf' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '68mGrjC8HsHMeSlp' \
    --body '{"entitlementType": "CZbjRT4KwxlIQ3iK", "inventoryConfig": {"slotUsed": 65}, "itemId": "jiPEvq0hYpbwFFIj", "itemType": "O8LwObkozFlWGaoa", "items": [{"bundledQty": 34, "entitlementType": "JaZPkqwfNYDmr3ds", "inventoryConfig": {"slotUsed": 80}, "itemId": "vW9U0aPQuHv1qvpg", "itemType": "V51A9XolKkZSoSuR", "sku": "ezYeR0kTGRL8SLUc", "stackable": true, "useCount": 90}, {"bundledQty": 56, "entitlementType": "fSsHt7Yg4s0FIOew", "inventoryConfig": {"slotUsed": 25}, "itemId": "rEmxKVsdQX3ByEBM", "itemType": "NLW0cCYenRd3WNjd", "sku": "QszGVWRcGoLjUpnr", "stackable": false, "useCount": 60}, {"bundledQty": 81, "entitlementType": "5JUz4BOQgcXJ8pxB", "inventoryConfig": {"slotUsed": 83}, "itemId": "0jEMoQ93larvLW2X", "itemType": "O56pJjTbG086x4EP", "sku": "6DyJXibZ7xaU8V3v", "stackable": true, "useCount": 1}], "quantity": 76, "sku": "AAwjDb4pU4RBja5o", "stackable": false, "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'OIDpfshiIQWXkLxA' \
    --limit '37' \
    --offset '100' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '77' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '7' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'gDJHMPTZDwD18H7g' \
    --limit '71' \
    --offset '73' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'LXEOiWwjau8dqQ4Z' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["B8FQwQPrr6hHqLlC", "rMx08aVWcqlf2BBw", "skdJgf5AzO9NYjsp"], "qty": 75, "slotId": "uSQ1PTdStsTyJaSQ", "sourceItemId": "8H3PwY60STHsfKK0"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'BgA9QLUEZEK6vJxG' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '60' \
    --sortBy 'createdAt' \
    --sourceItemId 'h5frlPnTRFWkZkrq' \
    --tags 'gMRhRvY8JV7EiwRR' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '3iKJqr6SyVt6E4Jr' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"LUOKS7ePdDyXa3Yf": {}, "VBks0SLfB8c5M97N": {}, "LSqyr90VDjabhabG": {}}, "slotId": "o8CXSKMDUn5O1EPC", "sourceItemId": "VjXNDJCbR54fqLE9", "tags": ["bDXzUKmFdrTAzjDA", "bFPUlGPA9eIvJeLn", "WBDFXFVyH4EPhB6j"]}, {"customAttributes": {"WzkQhFmcMS5TA7He": {}, "Ea9D7unwR54ucqD4": {}, "oim1x5Hnko3qnRNJ": {}}, "slotId": "WeUhGI1jwwSmJNdB", "sourceItemId": "QnocDxnYf3SJ35fC", "tags": ["6U7rA7EdXoNRu1bg", "tZOgiY7yIto5sJIt", "4dnjvwOulFHuwapm"]}, {"customAttributes": {"E8lZ4ZAc87DEFG3D": {}, "O1Z80xcMXiowWK9O": {}, "BDtPEnYug8hAs1TL": {}}, "slotId": "porfanVY26kK1wKx", "sourceItemId": "jRmskojSRY5j1cAf", "tags": ["RIad8L3kCQiVUF0P", "2j0nr21CcplRM6WI", "Nrd33UqIa1CJGob0"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'keI1fiFEm4apJcQ1' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "FTUyUpdHLRWfMwYO", "sourceItemId": "eFItW63vgE55AUcY"}, {"slotId": "h45q8styQgz8p3FB", "sourceItemId": "5otQaQGVSDxMKdue"}, {"slotId": "DUoyReAOHpI83aln", "sourceItemId": "F9yFX3GuqdQbqUgj"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '0ZgdUdpWjSRGNKwd' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 20, "slotId": "qiz4pjauloYmPTw7", "sourceItemId": "BMclDC8smAukOPmH"}, {"qty": 34, "slotId": "MVR7tMd2CwHWU5Qf", "sourceItemId": "sXgp6GtGEliMfj1S"}, {"qty": 16, "slotId": "lrRcGP5IgCxX8XE7", "sourceItemId": "IOuvMHuvCJnuaukE"}], "srcInventoryId": "vFQ3J1JyurZdscjX"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ZGxBXQI8wdFTakZ0' \
    --namespace $AB_NAMESPACE \
    --slotId '5A6PM7ILD4lnaBHi' \
    --sourceItemId 'NrttQzkrlhUJrjIm' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE