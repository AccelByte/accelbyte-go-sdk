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
    --body '{"message": "O9GBCRf7btG5vH64", "operations": [{"consumeItems": [{"inventoryId": "BjbM9LObwl2K0Ovv", "qty": 66, "slotId": "3PwQYNvAIzm1SaWX", "sourceItemId": "I9lJBwC3CLE9oWfP"}, {"inventoryId": "5LWDnsPaLW2VJ0kk", "qty": 75, "slotId": "g6sYMeHnJyuDVZbv", "sourceItemId": "klEySstZALLdwobk"}, {"inventoryId": "Ndixftnuv6IVxs3E", "qty": 47, "slotId": "jsDdx57eRUnUY85a", "sourceItemId": "yqADFPZbtVdg2V3o"}], "createItems": [{"customAttributes": {"qor4iD6Ukf6HFPY5": {}, "OAN6zJ3xCKdFClDx": {}, "dOgb40g9ciyNdcfn": {}}, "inventoryConfigurationCode": "CNlCwMUo3D5M43Mc", "inventoryId": "dqlieG7KmQ5CehVl", "qty": 12, "serverCustomAttributes": {"smsc8gTSmvrfzrKo": {}, "9eJDlpYaORSzjsqp": {}, "soWrDuNQs6YQCZNV": {}}, "slotId": "sRCncWBc5MDJk9s1", "slotUsed": 65, "sourceItemId": "SYuG3Gl77KLl56Qd", "tags": ["Llts0fDLIj4E2QU3", "CrY9IEFjaJjPvn0e", "OaG8hX9xty05a3ci"], "toSpecificInventory": true, "type": "7GHgGlPMl5rJcnOZ"}, {"customAttributes": {"8NgomIkjI8DZDXrP": {}, "bM9peyhtEzrbZYoA": {}, "Xc12BAOD9euHbEwY": {}}, "inventoryConfigurationCode": "iodc3L686ckYk4Qi", "inventoryId": "eEVzan7er0T9xmRu", "qty": 34, "serverCustomAttributes": {"5Yjl6nUsG3KScWDG": {}, "W5j1CvI1ux5YKIwx": {}, "AA9yMN8RctUaroKL": {}}, "slotId": "ueJ7myu8aBCfXQhT", "slotUsed": 0, "sourceItemId": "bfuVLofPG5x9R9ak", "tags": ["NIr0zPtUSpYq5qah", "sYm9qtNtZQmjpbyx", "oRbhhQURI2mWdbe3"], "toSpecificInventory": true, "type": "G4r7OjnvI5icafkc"}, {"customAttributes": {"2LrUm1nmRxjuHpkm": {}, "rtvj6pxh5RQt8v23": {}, "GuLkH06x4gT8LxyK": {}}, "inventoryConfigurationCode": "aZ2WttFmg0gJukIk", "inventoryId": "i3tEycnydg69y0hO", "qty": 76, "serverCustomAttributes": {"zknpSfIxHnKNYpYn": {}, "c24A2BGSepaLMU45": {}, "RPxMTqtq9XpsP0rp": {}}, "slotId": "QcSVnmWQdxNKEvzQ", "slotUsed": 4, "sourceItemId": "sPMiX8s7PZC7xm1A", "tags": ["C3qrajL6y2MclzoR", "DzMHAbYLD6Jy8bmQ", "qH2ZhRBHf3Ix8Cr0"], "toSpecificInventory": true, "type": "3F0sarkjH2aCOJ38"}], "removeItems": [{"inventoryId": "97FnpzTKAKbsBOIc", "slotId": "jQz29KXiiuIUCQYk", "sourceItemId": "HQ4n7MppVBVgEGgl"}, {"inventoryId": "oO1zaqQgLnB8i41D", "slotId": "5YPbcUmBlw90ig0E", "sourceItemId": "1j4jRBvWsHjfyrZy"}, {"inventoryId": "luLR5pzOAmtI522m", "slotId": "Weh0sq6S4LdPncl9", "sourceItemId": "WLcFeiX0ofZJW2B6"}], "targetUserId": "CSDoWGqfzJfL4Dew", "updateItems": [{"customAttributes": {"MeP5OzpXYTOAzbxi": {}, "wqN8ErrDMDuvJrJS": {}, "fqBhy1cWEhDvlPNY": {}}, "inventoryId": "hWB3FvGkSBGPszpN", "serverCustomAttributes": {"0PAwh8VTBeL2sgWT": {}, "S4DD4MI7L072F2Yk": {}, "EnkwqX8dp9mepR9y": {}}, "slotId": "K6bubrSUl6SjnvnA", "sourceItemId": "smpR106ScTBjbpw9", "tags": ["hA64rM4M1bQU32hC", "N2wunh4nH0fiNgzp", "C8HFupAPOAxthMig"], "type": "I7gPKbJJdaE95Hok"}, {"customAttributes": {"ACj7sYCF50S9L2px": {}, "vdmWrV4mGKvFw4SQ": {}, "ctCmjIRrlrGDZ0md": {}}, "inventoryId": "UeHBVtPrro16AJ9a", "serverCustomAttributes": {"p3ICfP1P9mUck8pL": {}, "G1xL1vnGumT9Me2z": {}, "GiY6W5fvi5d0QhQQ": {}}, "slotId": "8pzgqIbCUw8uoXxw", "sourceItemId": "qdSGfDIKquqfF3sA", "tags": ["z7BwPyaCOYRXmAJ6", "lxApy7JqvWXyKZZP", "v2YSW1FBGOFP2cvJ"], "type": "siWTfWE0aM3rKzBP"}, {"customAttributes": {"QJvXBS61t0DQhyIf": {}, "ZHlLehhcCNVu7v5J": {}, "VqKY9wGJP7EQJubQ": {}}, "inventoryId": "54ZsGPb2MNA8E8yb", "serverCustomAttributes": {"IODZSa8MZ0sUiSMn": {}, "Zig5udpTSy98vFkd": {}, "QJzfL0NYtjIq5I9y": {}}, "slotId": "iPvlaUdobMAyPuIU", "sourceItemId": "GSirobKOuDmKCRRO", "tags": ["NcRG7VYUpKQPZNxU", "DbMa8p3lkSxd08Ee", "81sV6YdmEaiqy45F"], "type": "hkY5zKtV6etgtasV"}]}, {"consumeItems": [{"inventoryId": "wichsxjeEs1mTdx8", "qty": 44, "slotId": "WiNewSzB6bQdgHDS", "sourceItemId": "enylihdx4EO1A8lt"}, {"inventoryId": "ULNN71TToHKQNEaK", "qty": 5, "slotId": "ikEmj8QoewSscdWV", "sourceItemId": "NMTQQZcUhL0Y4xHJ"}, {"inventoryId": "mRNdZozYcfMYFvgN", "qty": 64, "slotId": "nnqC25ZWeLUbda0b", "sourceItemId": "jIx1IhCzTKML9LmC"}], "createItems": [{"customAttributes": {"DmUSU55uEkPDMFhZ": {}, "4IoCOUfQhWBwmubC": {}, "DzcQiAxn8Rxtp9oz": {}}, "inventoryConfigurationCode": "rrGhdBB3rAYuWQG2", "inventoryId": "wjFcXub3qtDgQUN8", "qty": 61, "serverCustomAttributes": {"cFhTJuqcVw7hjz6G": {}, "NdE90KCg2B9eAp6g": {}, "tryk1koXFGDXzm12": {}}, "slotId": "UwC7wSW9tDAske04", "slotUsed": 85, "sourceItemId": "W9QgXQGBytwwtYZd", "tags": ["HKUXLVdWwWZ0rSAd", "d5Kad0Habhpqe5uW", "JPdzu6PkP2CSbslO"], "toSpecificInventory": true, "type": "KxfKVsM5UbSDdsBd"}, {"customAttributes": {"5eRi47f7ewDbBECI": {}, "NlwwsONwogxcMrIT": {}, "83ebdpMzRJrRUQKd": {}}, "inventoryConfigurationCode": "Ga8ddUwHiGmqlxVE", "inventoryId": "7v9ucB3QwxJOP4NL", "qty": 42, "serverCustomAttributes": {"cQVVB9mdRQkEU5pJ": {}, "KSGVXeX74SiTU4dE": {}, "Pkwhtwzw3u4zFhF0": {}}, "slotId": "LSIxCZEWBXIj536Y", "slotUsed": 96, "sourceItemId": "Ej8az6zFx74YeGKb", "tags": ["71XRolsLaEkrLc32", "yfkewnXnRU3I9bDh", "6wtVZSbpQPoINxra"], "toSpecificInventory": false, "type": "brT2M4W4Z3IoSPsk"}, {"customAttributes": {"32MchFMzM7C6eso2": {}, "n8341Rys3ohwkBQ5": {}, "niCJ8leiHgotTls1": {}}, "inventoryConfigurationCode": "8pUoZ9oUhN3xRAhx", "inventoryId": "oqShFWYDkKgrufPB", "qty": 35, "serverCustomAttributes": {"E8YaOt6PinzJOfwu": {}, "DAkBlItQ3ApDLWpi": {}, "a3ozdKyEF22Gj95B": {}}, "slotId": "N3GC5QhXWQPhgABd", "slotUsed": 43, "sourceItemId": "3wadI268YwYX8Bar", "tags": ["Lj4pB5conci9nFof", "As4xV49pmkmtNKQO", "iab665YRfEFHi3QI"], "toSpecificInventory": true, "type": "2NHyWmW2lpzkb8lX"}], "removeItems": [{"inventoryId": "6mekzrztYjg2eQaP", "slotId": "UXPDK0HbpZ00Z17G", "sourceItemId": "5Mitcn9MXfOW4mDr"}, {"inventoryId": "y4bGW1ysNtCe32rt", "slotId": "pnhEmfiHLOePmUQe", "sourceItemId": "LAGlbbkQAD5MDLmH"}, {"inventoryId": "fIHPp92hscX60TfW", "slotId": "qCtKgLOHVkI80xmc", "sourceItemId": "eubKy6Y1NgiX85Gc"}], "targetUserId": "cDRkGBAcaioHv7uJ", "updateItems": [{"customAttributes": {"Dq7neZyKlnG7WMSt": {}, "xbdmLlYRGv2ytpsx": {}, "LjObsfaENG9l12Bx": {}}, "inventoryId": "RN2eIwrYF0MrxihA", "serverCustomAttributes": {"ZfpTb6G37v4milwO": {}, "pRceMl0laYfRmhym": {}, "5k87SRm2eCZo22Y3": {}}, "slotId": "CmbCNFyhtGraoNVf", "sourceItemId": "l9Ki4pNxAN3zkYp7", "tags": ["ms6dOgfoURahuK5O", "JxUqgjejVN7yZg2k", "SA5lLuMSKGYYRJLl"], "type": "aEUSfqjdpjG6rg8W"}, {"customAttributes": {"QpSZcaBSMP3ituJh": {}, "xRu2FKnqnyhNRt7e": {}, "dy5dCuIbM06X8oJF": {}}, "inventoryId": "CemGaywLgebqD4aT", "serverCustomAttributes": {"FG1vvGEeGRKkVPvN": {}, "Lr9vbY28A0Pq9k7M": {}, "tZBRVSdI2vuzPnL2": {}}, "slotId": "Q5RhiST7CmnuRDtR", "sourceItemId": "cZ1EM8furwnqjvQQ", "tags": ["4BjlCpLXEZKg2f50", "KfZ9kp36c1LwLpUh", "yBi2Bq7u6ziLefco"], "type": "crOt0KOqE7TQoHIb"}, {"customAttributes": {"ht3gWHP6eMZTMUlT": {}, "OVaHkIvaedllyiiL": {}, "5K20MjRfc4BDY8kA": {}}, "inventoryId": "vCrvKND3g3ayFsQ4", "serverCustomAttributes": {"AigojYM4Ddrfm8fN": {}, "pvdgW2AsntrvXNex": {}, "EjutBXz5CcFvTFFS": {}}, "slotId": "mc1I4ZRJ9Vmqv6nW", "sourceItemId": "JDGrIMAJDN3kSqIj", "tags": ["j5ckLwPeomIZ1tGw", "8Z1VwfHHg2srR8WC", "uGb7SDwUadfVoi2v"], "type": "nFfH4PlF3o2Ip5rM"}]}, {"consumeItems": [{"inventoryId": "sHrYmi4iuHq3ycG9", "qty": 25, "slotId": "PhGwHvnaiNqYRRz3", "sourceItemId": "APNYG1oa2rGJU3m2"}, {"inventoryId": "p0uzzwXB39kVgq7l", "qty": 83, "slotId": "qZ9RrGL1CC9FFQrC", "sourceItemId": "F0xTjmdcwS6OStuK"}, {"inventoryId": "52aA9XbFPRre6KGH", "qty": 33, "slotId": "r3WwptrsSkPi3L7U", "sourceItemId": "mXKPpEQ3GuTcQejz"}], "createItems": [{"customAttributes": {"pP3QdeoQcgU22QBI": {}, "lRbUopFdbgvwJNYH": {}, "XNr7LlNkLqCSkKHF": {}}, "inventoryConfigurationCode": "Aa88xF0EnvbNLBK1", "inventoryId": "aZZjl4c61guKe32K", "qty": 98, "serverCustomAttributes": {"JFBvvvEIHZWcmjob": {}, "237DXtoyZT4ICpsN": {}, "ICYaP8KUA3GEDEkF": {}}, "slotId": "yjnxphaqUuSZPmLF", "slotUsed": 13, "sourceItemId": "Fmw5tk0iA2vuJmK5", "tags": ["AKlExFEldlanuKwS", "GxNpozacgsrlOJHk", "2OIx9a9TGlQaDylh"], "toSpecificInventory": false, "type": "fyg9hfsFUHrMEWRQ"}, {"customAttributes": {"yCFDzS8y3WDxSZV5": {}, "DIRkUkwnxqEtUnDH": {}, "dyvYhUIbOhPQvcYb": {}}, "inventoryConfigurationCode": "yhz2GK2xN32pD4n7", "inventoryId": "JUCodVxzHYVOSAxz", "qty": 5, "serverCustomAttributes": {"vq64rRUs5z4WhJTJ": {}, "4IlYaXu7nSABdoma": {}, "mxRcopqe9oQHSAPQ": {}}, "slotId": "AfuxxwJGZQrOMrMs", "slotUsed": 20, "sourceItemId": "2XPLofcfdRGJx99w", "tags": ["loMRW4nvTQ3xmYDJ", "KFZJkL31LQQZKP0o", "dPbpYcJAKd3xL7Zx"], "toSpecificInventory": false, "type": "LVtCGqTVlR1b4XP5"}, {"customAttributes": {"itfnr3b2U7HR4sEn": {}, "Jdm8kL9hSBp6RVWY": {}, "kL1EjRTCrEZ4GZQY": {}}, "inventoryConfigurationCode": "nOczhV3nZHj0Lywt", "inventoryId": "YPSaoT0hiXBEEAnk", "qty": 3, "serverCustomAttributes": {"oq7HQctDVyd6WfBS": {}, "ODhyts01OI06oAs5": {}, "Dnsbpd3AQ23PVMsv": {}}, "slotId": "e11Qgk5lrEFtGbkL", "slotUsed": 64, "sourceItemId": "yLbkUZwqXaHqtxnU", "tags": ["QwpzJF7qWMXLKXlS", "1csF8IofPHwQNNfb", "ovN4c3X5eWyyonsY"], "toSpecificInventory": true, "type": "gCxtvr1sIbTlbdsx"}], "removeItems": [{"inventoryId": "rIMCqVI032Tj3Szy", "slotId": "vNzN4fKhftLcXvaR", "sourceItemId": "GIfwg0sFlOMNzawr"}, {"inventoryId": "pxFRPJDU80iDAzsv", "slotId": "JtdFkqtowIqqucVj", "sourceItemId": "Cw0E2K2oKGiwNvcm"}, {"inventoryId": "mtDfC6fsj7KblP5J", "slotId": "ieiw55uRQUVL9uK5", "sourceItemId": "gc7LRdA4cMH1Tq18"}], "targetUserId": "GawGtvEAdzmlXsh9", "updateItems": [{"customAttributes": {"3oMjDUUieWF7LxAU": {}, "1Mr7by1vaRPdNfDL": {}, "YS9HyhMdWvXei7wT": {}}, "inventoryId": "PsUkvMJ2KG2d9Itg", "serverCustomAttributes": {"PxZcOB7QEzpGbtVz": {}, "0ZMPjRIfV9Me0nnv": {}, "PY1lNcABXbPgHAdk": {}}, "slotId": "SzHXMggfOhhu6K6h", "sourceItemId": "UxGW06Wn96M8wY1u", "tags": ["8T70L3GDTLrLR7Ty", "CclWnrGSdmlIYeWS", "NWLTTxFEn1XZyEcf"], "type": "Q8RhorJDzdlEIpWu"}, {"customAttributes": {"koZgPWb4zfPpz9vc": {}, "ZADW79FHqokdDH66": {}, "e44rcnvY4mzVoMNI": {}}, "inventoryId": "mo8097cXiixx9NWp", "serverCustomAttributes": {"OfFVnSglkZHicx5J": {}, "Mss7kbaoMOquk10L": {}, "YgjNArCG2OINiIKR": {}}, "slotId": "IsW2ITjq9CgJ5ZGd", "sourceItemId": "Rz1xubus3xVjxzLy", "tags": ["ZC0HSUkmNpWSCJAD", "jFQIqAHltARQ71L7", "8VthEshlYniGAtD1"], "type": "ZH4eB29KJLVCDW1x"}, {"customAttributes": {"gP5dazJcVQf84vwF": {}, "qrixOyPKG2ofPye9": {}, "xUDlNig4BuVx7WaY": {}}, "inventoryId": "kaXWpojDgRTx3Hmj", "serverCustomAttributes": {"1nsn9aZee75uiKC3": {}, "9IeY9O1JbGYRS09E": {}, "jVPN9QCdZFmINE3q": {}}, "slotId": "DCZZ1wf0QYLeU9tj", "sourceItemId": "JRaXmKBy56l5rrAt", "tags": ["KtP4wh1reVUFAIHG", "ieLuhpqPzS7wKs1p", "qP7UvGW2jHuuXvKp"], "type": "5QVanNxoFpHK4ikV"}]}], "requestId": "ImhO5qQ11hZMGZQC"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'YQjoJk1ncsmHzFoC' \
    --limit '44' \
    --offset '93' \
    --sortBy 'createdAt:desc' \
    --userId 'mVF5mqtMZyQKgZtG' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "0OpDmJqIwjAWL4KC", "userId": "QbvGQXDER3xK3lC8"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'KQiR8RhAWctHOcLn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'anaSijhoFIpWUH61' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 86}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'KG2iFUSVEXnAleWg' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "S08iatS0ngaLzl0u"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'UBMdldEMI14gLwvU' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '52' \
    --qtyGte '45' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '4WZmDbIk6wJe7mqL' \
    --tags 'Oq6HsNCvtS9tS5ak' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'FAKOZByulYc4BJit' \
    --namespace $AB_NAMESPACE \
    --slotId 'WsRIgIN0LuMeA3nK' \
    --sourceItemId 'tx0d7ClzTd6EFzFY' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ZYTZETT9ooluDTL8' \
    --limit '66' \
    --offset '74' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gmHyF65zE2gdQtfN", "description": "evbvcMO5tp1RPnte", "initialMaxSlots": 48, "maxInstancesPerUser": 6, "maxUpgradeSlots": 9, "name": "Rhd7C5AXpZbCI1ow"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'dbLyzpwRA9j2o6Dz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'o9f70xwIDZvetqsT' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UTmdFJtaxWnJVqwH", "description": "ASpp6okunNKeBu4v", "initialMaxSlots": 89, "maxInstancesPerUser": 62, "maxUpgradeSlots": 13, "name": "vzstlCCoUGUmaSjz"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '3XcTUPArZU5U9fc8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '45' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KexeOiEfLrF5NcGP"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'k8bw29AD9cLP0JFr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '21' \
    --owner 'ELZjZQR3IqBO4FMC' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GcJ3zxktPFMJ1XK5", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'wUhu7HlVjDQrigF4' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '3ecz1rJYtNRZ1KzA' \
    --namespace $AB_NAMESPACE \
    --userId 'QfbsAzBgXGDsFZ0K' \
    --body '{"qty": 78, "slotId": "SKTxYu0dFGPhe9fi", "sourceItemId": "EemWsb1S3fs6CqU0"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Mqxqs19cKSF7helh' \
    --namespace $AB_NAMESPACE \
    --userId 'vX4MKrvQ7SQv0oTX' \
    --body '[{"customAttributes": {"VznWcWJzVaJi0Avx": {}, "DIKGlVelu4B2bFGN": {}, "U1l7gmycapQjjI33": {}}, "serverCustomAttributes": {"cBiY4zw3zVLanuug": {}, "3MAFmPR5ZYxwUyFb": {}, "wZbPrH4UtrlFGYIs": {}}, "slotId": "xmstunHz17obHq0x", "sourceItemId": "9XaEuFtoD5kAGf4Z", "tags": ["maCPSREZRCRQAvPm", "G2PPjbvetlmDtiJq", "7GT9IGDBb5EO4gtf"], "type": "8z74MZ3xemI9eXqT"}, {"customAttributes": {"5Y4aq3zfJdcW9Ynw": {}, "cnEdILYXN6FDvEMA": {}, "4u6tS2oEOakgVhAl": {}}, "serverCustomAttributes": {"bRP3Dq504KjcwLOO": {}, "PGUCc4wHtouaPxRZ": {}, "tXBVwBbJdlMrcINu": {}}, "slotId": "4Bpt6zVQHrgGlbmI", "sourceItemId": "Nbjo4SVLzlJcQ6wE", "tags": ["IaYo3N67OKFKmK8x", "krJXuJWyvIRkaqk6", "03yTbfqjfQlYiOQC"], "type": "D2lnBwz3PyevrsFT"}, {"customAttributes": {"KDZAAWmkPHqwU6mr": {}, "sU1fkT86acUKWq6n": {}, "gRTjI4nJyozhODYg": {}}, "serverCustomAttributes": {"mDoW9u1lcks6kGWi": {}, "e0IXt0bq8NevB9Xp": {}, "TZIqUadRMf62f8hB": {}}, "slotId": "T8ondfzVPfHT5DOA", "sourceItemId": "vd2DhcpJqhkKPx4Z", "tags": ["yu5NniC127tMyNaH", "SaPT35INHVtUDSCM", "mF1ynOVCeGPWc4lC"], "type": "ajOyVBjfosKNGHoW"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'HT68cHcXC8RaKBip' \
    --namespace $AB_NAMESPACE \
    --userId 'jTjIvXWc1S8kfWPA' \
    --body '{"customAttributes": {"lg5MF9EbmIwyWMoo": {}, "OYAJyhrKLdLpdlOa": {}, "eg5je9tHPUNBJ5Pi": {}}, "qty": 15, "serverCustomAttributes": {"VCCZAr0sKUs9aSan": {}, "OjVehZeTWbZO95Y7": {}, "Em0bWJBJOVhf666f": {}}, "slotId": "LT2B9YhDqSwF0km0", "slotUsed": 36, "sourceItemId": "F59fbGhZA5nHIzfw", "tags": ["nJAe7jAUTqm4T5WX", "UNFz73kbjPSlV9Uv", "s8WxnpjZApxbEhdG"], "type": "xwkMfvVDEo2eFqop"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'Jc1wVNUaejIxgPiq' \
    --namespace $AB_NAMESPACE \
    --userId '2Z5xfw7IybEk137Z' \
    --body '[{"slotId": "xguwVi6hegU7LO9x", "sourceItemId": "P0KCeTT6khPiy6f7"}, {"slotId": "8YDiaODsub3nhl4J", "sourceItemId": "AuXvyYT0aHg6egwJ"}, {"slotId": "plViHCAgPfRS5Yr9", "sourceItemId": "ohyadsjM0W5jUYx2"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'z1CDk0pUQdvpRWaP' \
    --body '{"customAttributes": {"qL6H7JzzXboeJNRE": {}, "AoyZIYkjirkaEUG2": {}, "WEAWsggIxlrDpd36": {}}, "inventoryConfigurationCode": "e3DYa38EoMLC3C8D", "qty": 37, "serverCustomAttributes": {"CIWoNfaIQQV0c5Ih": {}, "qGtBAhoYF410ktRu": {}, "9ZXrAAvupcZjcBfD": {}}, "slotId": "3GIqd1kT6rv0wGMi", "slotUsed": 2, "sourceItemId": "k6Vt3LK2evQPMjNE", "tags": ["uM5qTdMWQaYxRsu2", "6hCMtVOLjU4KKVtf", "9NwnJxmlJCiXirBL"], "type": "CPw5xEBMDZHfv6tL"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'w5oISvDdO9k6HxHM' \
    --limit '0' \
    --offset '13' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '17' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '71' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Wp3EBxtlxaOkSb35' \
    --limit '82' \
    --offset '50' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'J9q5u1esfmjqkQX4' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 100, "slotId": "3kDVA0DU4lsgAG0Q", "sourceItemId": "XXtSv2WpjVRav3wA"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'hZZNuJ2FHs5cueDd' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '0' \
    --qtyGte '26' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId '5ffkuDria7S52ZaD' \
    --tags '8jIT9tRZ9zvZ9LUt' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Xmn4goqvAzEZTWuC' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"WIZnytMu3QIJXueR": {}, "GhCdoSHOxY1hMkLg": {}, "sa3pDJKdI2oSOHkZ": {}}, "slotId": "80V2917Q4sOh36g0", "sourceItemId": "mhdepgnx50NsdmHg", "tags": ["u7Vu04E50ZdxU1Ky", "xITnSnk2inrAoI5l", "xqicemI4Aw9m2kfN"]}, {"customAttributes": {"KpTfQxKoOdcwEkwW": {}, "uHf3ZEzwTZgs1cd7": {}, "Nlr6fBeknjWMMj8Z": {}}, "slotId": "gMNCff5CNQmmy95I", "sourceItemId": "QHabnz6OQh4ECnYR", "tags": ["TxQ2a7nb32zAmYgA", "nnCFfkuTmVriKU2g", "VHvqLhCcYrHMtzZ4"]}, {"customAttributes": {"1A3GciG4IsQayXJ0": {}, "elLaepgRnI5zygdK": {}, "LYACnTyzOzw8afqR": {}}, "slotId": "XhINd2xfuwNvTjj6", "sourceItemId": "VZ7hGk8nHHxHcdl5", "tags": ["AnNU24631hTGivSY", "iTi6dkEtLCr5L3eO", "QGfuoc8KDvmKWSST"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'IqzNvqKPZCTFZ3Bz' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "fjIkTCjKktKdMOlv", "sourceItemId": "ORprF61w9tDt8vJV"}, {"slotId": "8pJnEtZBeUEcd4KB", "sourceItemId": "7YHQssHOONuL719Q"}, {"slotId": "H7hZn4OPqyMOPnHF", "sourceItemId": "m696xiL63mTvlL8x"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '9Ax0pqCM8n5oEPnY' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 47, "slotId": "8mO4rOmuBcib2zIO", "sourceItemId": "LsQuZWyQK22W4SPc"}, {"qty": 87, "slotId": "ykOnbZtuX1kEwNRj", "sourceItemId": "0ZXEJIuTQa9Fx0Vo"}, {"qty": 46, "slotId": "iVTOlz82ZoXL1cqI", "sourceItemId": "HHdQMxIQJ9PZQeVP"}], "srcInventoryId": "H1umlymQbKBekRD6"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'LJNDrqEIgXMuR6K8' \
    --namespace $AB_NAMESPACE \
    --slotId 'xA9pgbGOkSLBtOqf' \
    --sourceItemId 'M5fyHnjasybJnDUC' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE