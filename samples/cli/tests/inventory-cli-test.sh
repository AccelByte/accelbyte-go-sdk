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
    --body '{"message": "3Rr26BJiPLMuYFo6", "operations": [{"consumeItems": [{"inventoryId": "zHPPGER23lWFL8RG", "qty": 99, "slotId": "6l9gxUaI3FqS2tBD", "sourceItemId": "Yr0DeHsOPQqR9Kzn"}, {"inventoryId": "jFsfBtFhbbg3ATbe", "qty": 69, "slotId": "Wu7hklsQL69Bze0t", "sourceItemId": "m5mX9VWOr0tLL8lx"}, {"inventoryId": "P0K4sHMacIeKQSlr", "qty": 70, "slotId": "hiEVekkKHhbmiYJy", "sourceItemId": "CNv1MjveubY4KFR8"}], "createItems": [{"customAttributes": {"eQ2aA6GWHGNrfFG9": {}, "SH4Zvnlx5dPU7zs4": {}, "DbldDUduEPWpQB7O": {}}, "inventoryConfigurationCode": "bm9ipFwqccEqZ08d", "inventoryId": "0QTbU2BQMPhs8YzP", "qty": 64, "serverCustomAttributes": {"RcCKDZzluRpW09fM": {}, "DvScVsMmySnxjsJ3": {}, "77nkPoF7X1lcHA0G": {}}, "slotId": "QIOjzPPfBG1G5lDM", "slotUsed": 43, "source": "HVKFQiiKlJYh3pqb", "sourceItemId": "Wv2zoglenoFjhYnS", "tags": ["2KAIwRtW7IUbO3FA", "QCd6PmogyPlLQmFs", "ITjcubD6LOe51vuC"], "toSpecificInventory": false, "type": "mZjbzcj1IiK8q8rR"}, {"customAttributes": {"zhFYgI405RRp1ypn": {}, "bEPProbD1vnDrgmv": {}, "Gwic9ski9tKbmVO6": {}}, "inventoryConfigurationCode": "519KMC5lERm0Reoh", "inventoryId": "4RjnAAMkdt2I8XdX", "qty": 27, "serverCustomAttributes": {"verykSGaxu6yTIEY": {}, "vY0FYVyD5iUYj0DC": {}, "2TfeQEWN3Afnr56J": {}}, "slotId": "HPWPIaKAm6tg84QK", "slotUsed": 53, "source": "AO21hskFK3H7vLyD", "sourceItemId": "gWWdweQBH5DlMSbr", "tags": ["C1jEBxYRVZnbPyQB", "hvZ1Yk6ssGoJg3eB", "5JXIn7wiGY4mZAmB"], "toSpecificInventory": true, "type": "NXlcswPwJ7IDapyo"}, {"customAttributes": {"WYgLphL1FhxxpQrj": {}, "9r5micbLqoYnVXQO": {}, "SAF30SWMzK5ggicI": {}}, "inventoryConfigurationCode": "3OWFj6RH3diPYi9k", "inventoryId": "A0uXUcirFXMJ8iWL", "qty": 13, "serverCustomAttributes": {"EjhJcoXJUBdWVlNK": {}, "jKNC1ZPZCduxa3h1": {}, "9tUZ1g6P6XSxAIIL": {}}, "slotId": "py2LgRF18VzTCszP", "slotUsed": 86, "source": "QYvDLphLvo0qdSxk", "sourceItemId": "PxJhgesLjTSEbger", "tags": ["O8EMJxzu739EMB4O", "h7ou7Zy76hM9K27N", "mmbNaSksjmpJCgq0"], "toSpecificInventory": false, "type": "wyNtLzJn0ZCgBVkV"}], "removeItems": [{"inventoryId": "1NFcJPpiGq1eSLu7", "slotId": "uO9pGRpI8mvMKCzR", "sourceItemId": "bTZKReSieDTWxtaM"}, {"inventoryId": "5mxfqXYFa8D1btgj", "slotId": "CV2DNevo1gkgeRJp", "sourceItemId": "uP76UpQ4k6rJA2e3"}, {"inventoryId": "CKChZivsE1H5mSYW", "slotId": "ll7bOdkwWZJnhxQs", "sourceItemId": "kWrtyxpfTuuCWn4z"}], "targetUserId": "4d5BjMNZmyGZvShN", "updateItems": [{"customAttributes": {"tDf2JBi4rVR3BE7i": {}, "FEvP8hTpgToxocqx": {}, "85lVlMnr0craO1MD": {}}, "inventoryId": "BVX6nCzZvNP8UUPX", "serverCustomAttributes": {"gz1E6F6wBs29iZKT": {}, "pdJhfXVpopkLIBlr": {}, "5EMetAD2IqvPrkJd": {}}, "slotId": "Fft6Jb1CpKhq8ful", "sourceItemId": "Yz0QFn8vWiGC4Ocd", "tags": ["cWcWyDn912WRcvlo", "fkE5esVHGsLqqqRK", "6FqJjtBca1zugTzG"], "type": "QzNOd1284jsYE4g7"}, {"customAttributes": {"envYQkCVyKwVuS09": {}, "jDGioHPPfNkeV4Ro": {}, "7llMel8uhDnDHus8": {}}, "inventoryId": "DQkCX7A6AstJ1Q0s", "serverCustomAttributes": {"EJjCJQuqOp2HNn4A": {}, "6Z2thjrXO8cVUarb": {}, "tgmrxHzzZObCJw6i": {}}, "slotId": "574DPUHfgQWkBJwP", "sourceItemId": "r0DtCpnsKeQy1uWJ", "tags": ["am9ShEYxMly4YsPb", "XHzYTZ5Q8WlY3WPm", "v2FIBltW6Yd8Rg2a"], "type": "1cG1HVfwvRiUNtKr"}, {"customAttributes": {"nqUPajicC0Zw58Ho": {}, "gR8L95Nq3l5Hat5Y": {}, "J0B9Jg5Xlppw0oot": {}}, "inventoryId": "d58bmL3BlJ2YY6zF", "serverCustomAttributes": {"bvBKp1uQeQkD0Lpo": {}, "LMBXtUzzfgJ1vHr5": {}, "4KdwuNgISj874tHD": {}}, "slotId": "HC3c9mond9m2QlFq", "sourceItemId": "OAwcRde9kISxRrMq", "tags": ["sLVtvRUhXRd1Lfum", "vu6NW7e5h0axqNy3", "TjdhHHD3UlakI85x"], "type": "6x0rzlNiaXMSvo8e"}]}, {"consumeItems": [{"inventoryId": "AXiagON7jUOsi9oh", "qty": 18, "slotId": "Ui7umUQhExLKXlQ3", "sourceItemId": "Adi03W9zXxADJfLM"}, {"inventoryId": "QokjAUxrrhWfLOJa", "qty": 51, "slotId": "V59397QCySg5L9B8", "sourceItemId": "AhNvOMuXTIZwEpa1"}, {"inventoryId": "nrxSfmTcmdryhIpo", "qty": 39, "slotId": "BSwU7QAIxHezOh7x", "sourceItemId": "mbySZHxiYzG5wec2"}], "createItems": [{"customAttributes": {"23JAKrPUvYf9FEUh": {}, "iZCN0iceEGHBZsYr": {}, "PELKsd5J9Q6mdVPB": {}}, "inventoryConfigurationCode": "G6PmUkCxE0vBjZwi", "inventoryId": "XDCuIkpABj7bfnv6", "qty": 23, "serverCustomAttributes": {"EtD4u8djQIXumjZr": {}, "WFEwzGv0gzUUBMjk": {}, "FXccJxuC7WW588KR": {}}, "slotId": "25Jt5lGgCF5Cu3x8", "slotUsed": 41, "source": "kMWPfukLMs5s3aJm", "sourceItemId": "S778QHAKNTNwQNlM", "tags": ["sHfkP88Zt72PZC3s", "h53iAuzwWzGeadKn", "q3NtmdbLUqCy7Nj0"], "toSpecificInventory": true, "type": "YtO14q3MQGTPWFvN"}, {"customAttributes": {"vl8N040XP1HyWIK8": {}, "3QeSKhNIugUG2lfu": {}, "aupNXGqoKfw2zqCd": {}}, "inventoryConfigurationCode": "Q9fCfktBOufQ11QM", "inventoryId": "BbgFdIyxCxhXiXTA", "qty": 57, "serverCustomAttributes": {"mio2KyQ7VCZoYIf4": {}, "U1G0QPHAgVcYIUEj": {}, "jnhCnG0kGePBTIo6": {}}, "slotId": "AqdlEAJQmwgah1ll", "slotUsed": 90, "source": "GA55L5FWlWZrMRPv", "sourceItemId": "tmcJD1iMsUg7EWAx", "tags": ["9JFxHuQd9vp0Hk9B", "ks90OUHsYlOzuoSG", "ArIQew5nxNGOzOdn"], "toSpecificInventory": false, "type": "fdYGAaNxR2BuYaMr"}, {"customAttributes": {"R9uvyBjqpSfx2ZTA": {}, "7uGHNhIXJaMUPcsK": {}, "M69HnmBa6jV6V44x": {}}, "inventoryConfigurationCode": "gisc5BDndBOdSpaw", "inventoryId": "4YHckHvcS2xlVH5Z", "qty": 42, "serverCustomAttributes": {"4EcFQtcpZv5rDOEL": {}, "kLIbCxohaO0qByoW": {}, "ASnO7spLTnK1Ar8R": {}}, "slotId": "iSH8uB6en5Ou4pHq", "slotUsed": 32, "source": "0DiiFrrP7MM0YsyN", "sourceItemId": "HzCpY6i9dOdrFz2h", "tags": ["mgkKqtzn5jPNr1Hw", "7kP7dK3MIO8UTmcN", "nhNIo7oQ5MwBAA5M"], "toSpecificInventory": true, "type": "ooVkylg8o2BVv2lH"}], "removeItems": [{"inventoryId": "UpoO09ul1S32oXIi", "slotId": "FwfuIoagfcOhm5TY", "sourceItemId": "cvEOiEPJORdrnXMs"}, {"inventoryId": "unBdfu7fNpqu2WXO", "slotId": "XYLdTVB0oCUNTwHC", "sourceItemId": "wGsSnItJnqpJiqUZ"}, {"inventoryId": "XNw91lo9lHKSUwJv", "slotId": "sWjipJTWqMeWPAw0", "sourceItemId": "t3HjG5e6HgHvKWWp"}], "targetUserId": "jjIm4dsj9pCiOZsO", "updateItems": [{"customAttributes": {"glkB3vfHuGXreR2n": {}, "pWU5EPuJuK8ZEgl9": {}, "kEqbFW0CW2NvxGCD": {}}, "inventoryId": "dhmg4CTgDUF1zYnV", "serverCustomAttributes": {"Ersz0CYo7g5SYjdQ": {}, "uoHkNgWTnDqNMJvG": {}, "3bYhNOVyJ57VmG16": {}}, "slotId": "WZJEvkCdyBa1xuKY", "sourceItemId": "L54RDzGKTG2ZCNVI", "tags": ["HHmZgcnyDnifCVpT", "xWomDLQgZAFvRlf2", "XtZILmEOjvVEACBR"], "type": "XCvtm2xblmMWC7eu"}, {"customAttributes": {"jOXAAq3j40Vzb2ne": {}, "3eYG3tiCkO8AL1GR": {}, "6jx6BMbOsA1V5Dny": {}}, "inventoryId": "bhx2Rc2uzyZc6VlN", "serverCustomAttributes": {"Q94ejtZvTyINscWd": {}, "7Nv1yWVVPOc93tdB": {}, "A69az4rCauo8NxgS": {}}, "slotId": "SiD6hwVO6DhNguTG", "sourceItemId": "7irXUCfpjbbdqc6K", "tags": ["9LUDZkJAm1vD0OEN", "aNGVH6qifTZNtyAk", "Ono92lqzTKY6vXhI"], "type": "7XLuKuq7iFoNWQpg"}, {"customAttributes": {"WEu9iUc4U424Zcgo": {}, "5t4rAqAPz8x8e8Sh": {}, "fL7uEhcD7J37WseU": {}}, "inventoryId": "N6fEAE41urM79PuG", "serverCustomAttributes": {"lWCpbHpNOC4WRGy8": {}, "ejTCtpV3EQWfVTl9": {}, "wLH2Ysr7PIZxH4LK": {}}, "slotId": "mHfmR7dxbSFRwy41", "sourceItemId": "Fv3puoZaMfMgwgKI", "tags": ["y3eIsmRRa1v7Tola", "WXHFJwicfvXKG8E3", "mSU08zD4wKmxsywA"], "type": "xtJY0flEP249cQkD"}]}, {"consumeItems": [{"inventoryId": "8tcq9LdyultNRU08", "qty": 49, "slotId": "wabGtm1hOgHjSYny", "sourceItemId": "aAaA3YUNKfHGqhn3"}, {"inventoryId": "8riYaxLTk6bDn79f", "qty": 20, "slotId": "VHi72fimfosPQn2O", "sourceItemId": "dRqkUruOAED9t8W5"}, {"inventoryId": "tNP4TXOMtdwr1ARc", "qty": 11, "slotId": "sMoWR1OgUGvcqHuP", "sourceItemId": "bBPvjsp5yvBDtgiw"}], "createItems": [{"customAttributes": {"tg2b9qqZMSJvlbMS": {}, "vtSAOPyD89Dk2QYe": {}, "VxLfekqGHflVJTgJ": {}}, "inventoryConfigurationCode": "faAbB8mTZDzFt5zi", "inventoryId": "YEw7nIo2JqBBcTMY", "qty": 12, "serverCustomAttributes": {"WALf1hDC0EAaYSgh": {}, "EZu5pd0EAwMVyuQf": {}, "PuldXV5DxJp2kba4": {}}, "slotId": "WUT3HHne7kUdmrkF", "slotUsed": 35, "source": "KiYX6LFC7BySTGDr", "sourceItemId": "MqE4saOvZwo8mggA", "tags": ["dYPS2ohf703KxBMT", "d9czwYOcWt8TyUJh", "BUXS9OFbIzagUaRW"], "toSpecificInventory": true, "type": "tXF8uBzuELSpSkIs"}, {"customAttributes": {"iBnPWMb1cZfvqNdN": {}, "x0seROudgqx0oak2": {}, "ndz7KDIX5lt94EDd": {}}, "inventoryConfigurationCode": "FsA8d1Cntnw9zeJW", "inventoryId": "6ccsRJ80O7rr6UB9", "qty": 71, "serverCustomAttributes": {"sNOCpiMYQ6B5gb0N": {}, "VlXdxqhn4FEfwQvE": {}, "LUIU3nV8ycChda7R": {}}, "slotId": "KPUKhNuL4THPRfkt", "slotUsed": 24, "source": "FhJmwo6mmK32eWOp", "sourceItemId": "HKMmqIWOqI0URrX5", "tags": ["86LISMqS1MpRN5zK", "EqoPy66grPv3cDKb", "kT3pitFUPki9eeng"], "toSpecificInventory": true, "type": "grRiuHMP50jn7x4E"}, {"customAttributes": {"zoF4p3of0CvrRhvm": {}, "GUJyC1vhbWjdGBYM": {}, "e1pCOzgafmo6chYB": {}}, "inventoryConfigurationCode": "Ae532P0dqQj01kW1", "inventoryId": "jUS7IwSnmzGTR1wC", "qty": 40, "serverCustomAttributes": {"E0E6IXiME7Wmz48T": {}, "SDLd9qLgANPGK2KO": {}, "StBJtjVXorFH5bSw": {}}, "slotId": "jtPVIuj8pPBboRLg", "slotUsed": 18, "source": "bEAvDS6N8NQc5BS8", "sourceItemId": "mTbMsUcOsBIEb0R3", "tags": ["NEJ0UtiAtY2ScoCk", "ex4dStLoUtMJ9pP7", "nItybD22eY941nKj"], "toSpecificInventory": false, "type": "ye5fzC4hpsKROfAU"}], "removeItems": [{"inventoryId": "u3brQkxtWIpGBkdI", "slotId": "QElMo0IFGyTc1wBZ", "sourceItemId": "ThRo8BdaKaErtwT8"}, {"inventoryId": "jXTDMoNya8Rx6RlR", "slotId": "yejwDyjVt5CkuJ5e", "sourceItemId": "IoJFo15GSyyU7SFw"}, {"inventoryId": "fmuuHMFOGlSW4EHX", "slotId": "L1ApigcrC1tZ5mE4", "sourceItemId": "baxna9Hm4mBHF3Qh"}], "targetUserId": "mmgudouUAJqItzfq", "updateItems": [{"customAttributes": {"UUoVGQYOLwxm59tL": {}, "EpgC24BvSLx3tzx7": {}, "xeDsAkz2qFloSYyt": {}}, "inventoryId": "Vqi455syThdMFQhL", "serverCustomAttributes": {"FhrHR7GFltNqY89c": {}, "nO9IgPInkRUySfVW": {}, "YRkjjPjRRJE4BKOe": {}}, "slotId": "vkKETEojgiX03rOg", "sourceItemId": "fKtmfB1WJsASfvfz", "tags": ["R5XYarFnOWslLGLi", "rump3roMKiYqEBGi", "dXVjZXjpOAWFZ9oa"], "type": "lAO3kSnFQIToIMMT"}, {"customAttributes": {"OdcSrg0tensLs7FP": {}, "CGWFoa8IEEkN4ef4": {}, "KSAd5EwOiMcZvmXw": {}}, "inventoryId": "C50yC5RRsd1M02Jw", "serverCustomAttributes": {"BKVp4E13jd6UHmIS": {}, "HyDz9H3tAvjuoJVA": {}, "6kJ2PitGgEWRaViO": {}}, "slotId": "E8lOOgvyWeTc9aM2", "sourceItemId": "HXowcUPfZ8ay3110", "tags": ["yfYMs5pEP0530qFi", "SSH1Y1gySDIrrIgm", "DS9Y8Naix77eg8cu"], "type": "znLDJLElehvA3Cbh"}, {"customAttributes": {"pVCKehzRChBRPFMO": {}, "DKnHXaF2ibuJ5kPN": {}, "MWNga7WXEJnfrkYp": {}}, "inventoryId": "gRonzxGUFsu0mCot", "serverCustomAttributes": {"jVLA227C7tKn9Ufy": {}, "fBFsEQomrm0aVI1Q": {}, "r742N3fMH0d0P5Mv": {}}, "slotId": "LNedsU9F8oxoLhSz", "sourceItemId": "ZWiBXrLKsOsGZl25", "tags": ["3eZAPVrdO0Hrf25k", "TGJIjW1PAOPCvmqN", "2llF0jW4aZMVtuGB"], "type": "7oOM7TSNZF0twbW9"}]}], "requestId": "lth5SOueH2Frofs1"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '51' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["8ejuNPc2KQMnV23t", "C4RcNDE8xk1rT8uG", "DxZIkKRvxOzmdjb6"], "serviceName": "s334xqIuX24DXiH7", "targetInventoryCode": "iFBWlX9QfKNwdfBO"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'lcD8oNCntViPmwhq' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["DaV7ApIgDJEQkxEc", "CVRx2qms4EFnQlO7", "2T5CQ3PphmIZh3s4"], "serviceName": "J1ZdQWwAyxtvrOEG", "targetInventoryCode": "hr8Ay7AR8l38Fp1Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'QwCwnHgIVo8ZQOGj' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'E0rzpX4QVYImX7uw' \
    --limit '4' \
    --offset '35' \
    --sortBy 'updatedAt:desc' \
    --userId '4fHvPzm2V6YPJf0k' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "HKQquHUuFds0VZ16", "userId": "IB0DyOGsF55G8lyQ"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '1WHg1UTOx6PmNZo0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'H7bLyTLZrZWYgSG3' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 25}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'vL7vZWp8yEN7qlVC' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "CCL2csXIe79tXPQb"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'gbP3XA0IrP1qBuom' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '82' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '0uBR4mQD5bGu3NFu' \
    --tags '8Ra3ygQuvYQr56DU' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'VGL0g2lopzx3e8S4' \
    --namespace $AB_NAMESPACE \
    --slotId 'jp8OOCIFD1N8xyXM' \
    --sourceItemId 'oMoWImxodyv7F5Na' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'mVURtb2w2eKEw3Pp' \
    --limit '95' \
    --offset '5' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kTmST3Z4vxJNh1Xx", "description": "UUmFP96xJoUC4tMd", "initialMaxSlots": 9, "maxInstancesPerUser": 53, "maxUpgradeSlots": 44, "name": "1Vw2y18Qmw0FiGYo"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'hVhDqYIEAyY63i36' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'i1v2PTVXPUBJpqt8' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dnrIxaLxfI1MLAWP", "description": "SQn8oiBAica8anwR", "initialMaxSlots": 61, "maxInstancesPerUser": 92, "maxUpgradeSlots": 80, "name": "DTryCcMx755Wol2z"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'h6azL3KSxmpe5fXA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '69' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "2x9Q7avkHRqBfO84"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '7VczyuDzohPylOps' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '78' \
    --owner '3gLV1PAM2YNuwysf' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Q15pzktEd7YP9Nuz", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'kDih9iV5rivMzmij' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'SkTmey7Rcmrw5nvD' \
    --namespace $AB_NAMESPACE \
    --userId 'kOIScBkpCktGM0wa' \
    --body '{"qty": 7, "slotId": "BvWdSVSRkiqRrVlM", "sourceItemId": "9IiaJhBMBWYYWoP5"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Vhkz6B9Q08Cfb9zk' \
    --namespace $AB_NAMESPACE \
    --userId 'haqamj0mnCzCH3Lw' \
    --body '[{"customAttributes": {"h3NEwAKwLq1Yq3Mr": {}, "m6NCughgW8pIg8Zr": {}, "4lC7rvgOH4MPAzDV": {}}, "serverCustomAttributes": {"Y6vjJPAcBFcJtqKh": {}, "0waz4JHvqO25A4s4": {}, "sm7Xkm2vn7nt8wO9": {}}, "slotId": "TaqIoFWKB300X17d", "sourceItemId": "89BJTAoa64YEjnvS", "tags": ["8ILVyY53OWbnyzEl", "PKw9sDhmguj1qZvc", "7dd3EddoBee8IMZW"], "type": "vYCR3c9LdZxyUiyr"}, {"customAttributes": {"5Zc4VxkHBWgxxO12": {}, "b3lJPm7hNEaBDaMZ": {}, "UbaarP6j1cYt2OiV": {}}, "serverCustomAttributes": {"TR9v6oI7AVcQbgvr": {}, "z0eApGH9sQtGDwhs": {}, "PkPvvFDzKlDDFVSQ": {}}, "slotId": "pyqZHMBpXs8UOGMF", "sourceItemId": "bWlS0Fz7Kldj6MwP", "tags": ["AneH05gMS3mpD2wM", "OqIi6yTjzKZDu1Uf", "MEsxvqLAx6X6aCWM"], "type": "9rvnWnxg895PSn7k"}, {"customAttributes": {"HsHUBmb693mlWvf6": {}, "iATiWSBXnjxZXV9Y": {}, "UOYE2wm7YnbCOnAr": {}}, "serverCustomAttributes": {"22PodidFUkAK61Rn": {}, "goqqUKEtcIxiy2K5": {}, "ts2LyYoFnPktH92p": {}}, "slotId": "bMwbAprXPpqHAgP8", "sourceItemId": "9ucoSCUq8jqB81uM", "tags": ["GxKA37rlsYHvSLlV", "blhNmJSIqLpXbfig", "R4GGaK2LaSv1KGJ1"], "type": "rioJec7jxeTHLr8Q"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'FiEUiTCCuWn2QMQY' \
    --namespace $AB_NAMESPACE \
    --userId 'Z9VkVKIarFVJKAGt' \
    --body '{"customAttributes": {"ai8ylbEeX6YC66lm": {}, "n94EKqJ3ZbBYf5DL": {}, "Wp6jbCoIwJNstjTC": {}}, "qty": 75, "serverCustomAttributes": {"mpfK0QaVl0qNkyvh": {}, "6OeuHAee0jYNfH5L": {}, "1DYHGJoll8BZN9ih": {}}, "slotId": "h4UzxxHsU6QvWFis", "slotUsed": 16, "source": "OTHER", "sourceItemId": "dSa78h4VSCSl13Ze", "tags": ["ZiJN5Rv3QifZjfV7", "y2tY00bSOFR3eyZ5", "mqLlhkv3l7DOHfPL"], "type": "asKYRwKMfsLWTT7z"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'ezyaEn28TJ4BpZOS' \
    --namespace $AB_NAMESPACE \
    --userId 'suHz0hjoEZNC6n6C' \
    --body '[{"slotId": "J5s8x4oYotXxppMg", "sourceItemId": "yhavkYmLkFwNqcec"}, {"slotId": "CNbl2VSZ1PmIXVTj", "sourceItemId": "7HPsGxLGA2Bj0Qfr"}, {"slotId": "843bx52xdjU4zfyU", "sourceItemId": "yILCCRtWKVqWjksA"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'huZTnmTgWKFSRzQH' \
    --body '{"customAttributes": {"D0czUbdTckpfnwbH": {}, "xN8s87S9CxrZXYsi": {}, "Hk5OtD3QBW2hutqE": {}}, "inventoryConfigurationCode": "g3YhF7Ugm5GzyUZo", "qty": 40, "serverCustomAttributes": {"TJpHKkr7NkQMD7C2": {}, "0bFhXA3igF7SHID3": {}, "XEBnJRjQUhdckdG8": {}}, "slotId": "Q4vteLab8Z90dupk", "slotUsed": 91, "source": "OTHER", "sourceItemId": "jB9XvZpAdWceaZRn", "tags": ["SbuxQYrufXj962jS", "nAqJVPzfxA9GtKQw", "YRr54TCi9ELzIBJx"], "type": "SOoia6R9BHfARBhL"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UCQFr8gxEsaCAsQN' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'FbgIpaxVhQiDKUpX' \
    --body '{"entitlementType": "VVxEKy0tSWhux05k", "inventoryConfig": {"slotUsed": 67}, "itemId": "pby21En9pnszJ4Ef", "itemType": "gSoy8picCPIE9Ao2", "items": [{"bundledQty": 25, "entitlementType": "cviz68KYkpHmGHxZ", "inventoryConfig": {"slotUsed": 9}, "itemId": "DzC7F0EUhHPIrdnY", "itemType": "WAsL88w8aPQDEd8p", "sku": "NZGy3SlNXSSmRfIT", "stackable": true, "useCount": 1}, {"bundledQty": 97, "entitlementType": "eQD8QnlOqspPqZ0M", "inventoryConfig": {"slotUsed": 60}, "itemId": "ISwEhqC4ClnUjt8K", "itemType": "NzWrR7LO0aaf98Dv", "sku": "UaNJmRl59Ick2PVk", "stackable": true, "useCount": 87}, {"bundledQty": 28, "entitlementType": "2onCHs6HGJWbcpzT", "inventoryConfig": {"slotUsed": 78}, "itemId": "stv2NupWdCreWT6f", "itemType": "dhv2gIsbdgsCdxMH", "sku": "LU137khkSl9i0FRB", "stackable": true, "useCount": 66}], "quantity": 57, "sku": "HyjIQibWuLHV4OKL", "stackable": true, "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'DqbEonkzo9hilDeI' \
    --limit '22' \
    --offset '91' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '63' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '62' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'HdazQWJqCNr2NHmP' \
    --limit '40' \
    --offset '83' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '65ZdYQHmzaO91hnP' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 64, "slotId": "tKaNaKKiCWqNBFf9", "sourceItemId": "rlvd4NUYZdQPBAAL"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'V7lbX3vg15ROquVg' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '96' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId '3EgmHOfBFx1PXJa0' \
    --tags 'YMp5OLJczaSco8A7' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '2qAMBEYQ2g4peIb7' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"OcXEEhBlzKQNfwNt": {}, "2Vu9PupJ4653APN0": {}, "Wg3JUPP40fLJ1lMY": {}}, "slotId": "PwWrq6MmMnB0ZLJQ", "sourceItemId": "VJ8FoZo3ZPdB83wY", "tags": ["YhsTitZagmlD2iEV", "D2AixoT1egdeup9T", "7eUeKlp6f2C6l0cT"]}, {"customAttributes": {"dUE0CyFDXdBFeex8": {}, "v0rdofiRHNWoO5SY": {}, "fX37W1euViqPdf7X": {}}, "slotId": "sS3FcOUW4ZQlCm4p", "sourceItemId": "RiwYozNPq46oioqF", "tags": ["UfjQVit19XKsAelx", "PpLBhNcvEBPiWvS4", "zocNVYtlOgncHaFC"]}, {"customAttributes": {"pj4TpjiyQqphWQ7H": {}, "BHWKG0YtEFC5M4EQ": {}, "pYVeQcunjp8uPboC": {}}, "slotId": "fL8JVRPRvYl2N72S", "sourceItemId": "4w5S5uHF4TH8LVma", "tags": ["dzMwHZtonStQjoFR", "OMG0Rc7I5tALyQAI", "GPbuWenIeJmWa5gy"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '16WgZnRwyATHAtyD' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "pHheyNrE688J4IOy", "sourceItemId": "dEowxyNRIu8hs170"}, {"slotId": "V3IMChTfcsVErRQ4", "sourceItemId": "lNkNxveCe2VcNREq"}, {"slotId": "G0fo24tSX76sOscQ", "sourceItemId": "waB3dqO8vYgYszlh"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'twNmcKk9Byb8kOSN' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 83, "slotId": "lVbz1KrjhvHjO6PB", "sourceItemId": "hhQhZFPLqs1OqQ28"}, {"qty": 38, "slotId": "vSto1XzukxDh2Iw1", "sourceItemId": "7UuL8MIEYAmKZPZB"}, {"qty": 36, "slotId": "AskdBIUoWYQb7zEv", "sourceItemId": "xNVbax0MKJ1ipWam"}], "srcInventoryId": "SPRxG0FQ3BYsNaoR"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'CWsuVXgrqUf0QIeB' \
    --namespace $AB_NAMESPACE \
    --slotId 'OL6qtduUqfFtsmnJ' \
    --sourceItemId 'GKGDhZA0SRtf2Rl3' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE