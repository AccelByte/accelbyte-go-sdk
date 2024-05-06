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
    --body '{"message": "WwVfMPXoj404I6a4", "operations": [{"consumeItems": [{"inventoryId": "sZkEBRjYtp14xCC6", "qty": 59, "slotId": "vyVbE0fjPkOjDrRK", "sourceItemId": "wBtsJV2GTmZFgpNV"}, {"inventoryId": "yYHyiBG8XZ4isMr8", "qty": 79, "slotId": "o0BZ2J8EIry3CBcN", "sourceItemId": "vgtIwnkAv5bRXhVh"}, {"inventoryId": "tAOogljndjVYdGqt", "qty": 73, "slotId": "hx6TnZXZ3DAjQyXj", "sourceItemId": "BSStQQWqS4qh6dH4"}], "createItems": [{"customAttributes": {"ZQRhD4cxrzJceYpI": {}, "iNHD71xIxBr7XHg5": {}, "dw61Hm1Ufv3gaiZr": {}}, "inventoryConfigurationCode": "CMxkDfNDmSjqHvpO", "inventoryId": "PMHkbslgxGWO38Ug", "qty": 18, "serverCustomAttributes": {"aZuQpAEwEhKsb3MU": {}, "9biW6inmGE3zP5rP": {}, "mHIrGTwpkr9uoaCk": {}}, "slotId": "A9mDyiLsq8dg0HYy", "slotUsed": 26, "sourceItemId": "c9WHpdpijwHrnuJE", "tags": ["vmVBHq57OGaNjru4", "74W00TJObuO6cbn3", "chK7pd6U2HNzsrmk"], "toSpecificInventory": false, "type": "und2G6S7JD9OTqaW"}, {"customAttributes": {"sxwbnfCHVgkOoEhK": {}, "L0j7R4jjgtEoCLiJ": {}, "rFBQ9XDLyw685GZD": {}}, "inventoryConfigurationCode": "udl7hEYzKkkN76NG", "inventoryId": "tp2PJOcV63fbZH5T", "qty": 21, "serverCustomAttributes": {"IbNITY8cyfxOgjX6": {}, "7URGpxRr5O4U11ud": {}, "QG1T8NGWatCg1x04": {}}, "slotId": "ruGQwl6bfSzTqe2w", "slotUsed": 83, "sourceItemId": "OqRIksR2LdTibeMg", "tags": ["rZnu2cx2gcimB2jv", "DRyttQc7H6SUyTEQ", "eLmyBZDshkePfLR9"], "toSpecificInventory": false, "type": "Nx64nNIwtww0eeZY"}, {"customAttributes": {"1FnVvdk67poyRiGL": {}, "ltuWiXNcYwLE5Ucb": {}, "Ysivaa4CrrsJEcJl": {}}, "inventoryConfigurationCode": "5491hPhBRVNljiDO", "inventoryId": "y8zYVQXYiIrdfnFk", "qty": 56, "serverCustomAttributes": {"sDJZMj4bim43KgkT": {}, "PKPXNYnk5ZH3D25t": {}, "AjCG79xvL6UujXFe": {}}, "slotId": "AUciUtvZBO14zsc1", "slotUsed": 15, "sourceItemId": "2BxqYd0lQ7pMEYBh", "tags": ["r4AOq3XBgCBzPov2", "6SsHUlLvPPyAlzb7", "gYSgrP57TJ2Ikb8F"], "toSpecificInventory": false, "type": "nez9wEC1ZE7GMiOz"}], "removeItems": [{"inventoryId": "Dmm0zjlqgMzxvz5B", "slotId": "GUJ6o4IOuoRw0rYL", "sourceItemId": "VbXOfSNlgRr6qDFe"}, {"inventoryId": "UAXATRbX5lznO8hu", "slotId": "fFc1kk0AoAALFfHl", "sourceItemId": "pWgG1HgxoI5Q4EsB"}, {"inventoryId": "h0xcW2QTDr8UaFpz", "slotId": "jPeouYpUnRBRJWwg", "sourceItemId": "BisQhOoR4eRam36J"}], "targetUserId": "KiIhvasW4XHPUAkD", "updateItems": [{"customAttributes": {"gCVSWjfVUTp926cn": {}, "jaefEqNqz9PKYdeG": {}, "5XjRlnaNDiBVVVTx": {}}, "inventoryId": "seIuRbRfOcg2Su47", "serverCustomAttributes": {"urXDHLm0VwPkUbtq": {}, "m2kBRz0CqXPgv7j8": {}, "blEWJjqoKFaV9Kqf": {}}, "slotId": "1HKP8Ie90DPMp4GO", "sourceItemId": "iwdX0JgRIxZsRrp5", "tags": ["b45Xt5IO3dH4zr5P", "JZYy9JeTkzenBZUE", "OVD96HN6wUq7vKC1"], "type": "mDclZVU8ASxiBWSz"}, {"customAttributes": {"BsgMYrMgL27zt1wK": {}, "rOEvSjifP6FUvHuu": {}, "57h1H4vgYQ9I10Iv": {}}, "inventoryId": "R8KAYD2WIQVrmiq9", "serverCustomAttributes": {"EbTX107J6qFmIfN8": {}, "mvwh0zWxKgSQnDE8": {}, "LMSGVdQAqKq5360z": {}}, "slotId": "vqbv9Qc31rv9DEJi", "sourceItemId": "4zQvgbgUC7jOr7Xq", "tags": ["6zVxR54kmjEve3a5", "c7Owwfh8fzeqxgT2", "OxH4F1hR7Fr9mRqM"], "type": "UNGifkJ0R2E9wCik"}, {"customAttributes": {"xSbty4OVOhJcXjll": {}, "M3lv30XTGJSPb3GB": {}, "KDzPjxIudWIYg3Zf": {}}, "inventoryId": "clG1nls8b91TNLXi", "serverCustomAttributes": {"d1D0VdXpDujnyFnb": {}, "4FHUxqptOjl0Z8mL": {}, "S4uxvqjn1vDSXbAw": {}}, "slotId": "WQy3bOfmSIVOj5E0", "sourceItemId": "tcTSP9Z6oJSBjc7v", "tags": ["65pkKdhn8C1hYgXX", "iJYzGzJ4SRLmiP1J", "YmUkYJUTc3DNhi6l"], "type": "JEccTGXGn3mV0Bcp"}]}, {"consumeItems": [{"inventoryId": "b5OEEfYq2M5PdFKx", "qty": 74, "slotId": "XBtM0zknmNMaF3P2", "sourceItemId": "NpPKtAAhpVRDwtkq"}, {"inventoryId": "FJ3QUg9OepfO6CmV", "qty": 37, "slotId": "n2q7tkRaQvXzZgXL", "sourceItemId": "6wSAV9O0s2m6v2so"}, {"inventoryId": "cAtCiOLhlxDF82lA", "qty": 22, "slotId": "30BPof02U83jXPBq", "sourceItemId": "dqR4Drek8ZdQWdIU"}], "createItems": [{"customAttributes": {"gl4gg5GcYTk1tDoi": {}, "uwqy5AaApei4iPVZ": {}, "DNuDEWnZjlsaX44f": {}}, "inventoryConfigurationCode": "XTzMxD9azJSJIfUF", "inventoryId": "tzEoCekBp2I7Ytik", "qty": 3, "serverCustomAttributes": {"1VuKEDZaWF6xIgu6": {}, "i8fshiiZcjBZg87N": {}, "dEg4RXuSxI6r48Ij": {}}, "slotId": "EZ8PwgB52UvcLfpz", "slotUsed": 1, "sourceItemId": "rZR8oPv977idpvLT", "tags": ["lQZiaa4gVM2hgN9L", "ggxTUdoe0FogJNbj", "wa5hZyn8tELwghuR"], "toSpecificInventory": true, "type": "VsS48NZGXsf60UqT"}, {"customAttributes": {"6VSRm61oK8DRAjtE": {}, "amLsxR8C7bXwJ07B": {}, "AAbIm3KfFf6MwGXq": {}}, "inventoryConfigurationCode": "wpOZ3wXshAvMxTZY", "inventoryId": "5V7JlNwzt7TCnEJ1", "qty": 59, "serverCustomAttributes": {"U5n5NxXtqqzaTmFR": {}, "mNzTPoi67YJnmcC3": {}, "Dha5kPyJsQsasYMP": {}}, "slotId": "xWxJ1Wmt4EdkPblc", "slotUsed": 97, "sourceItemId": "nyeJnjVGELa6thEA", "tags": ["XF9RCiWMONWFUVsL", "U7a1FxliaPW1Pzst", "1M3ACEg3pV59deDc"], "toSpecificInventory": false, "type": "ADjcvkImB8PzCk9u"}, {"customAttributes": {"uaW7MY3ZW9O1PZib": {}, "iu1s633Cb6mFp6vx": {}, "3exjnnWdTyJCCo9r": {}}, "inventoryConfigurationCode": "2PbI39QVBGt5Modi", "inventoryId": "MTAsvXrN827L7xLA", "qty": 69, "serverCustomAttributes": {"YULoyVMJQtakqCXu": {}, "yK15YB3NZbxFThLk": {}, "SrJtf2RFibNHpsnK": {}}, "slotId": "CRygqi4SNCemBCX9", "slotUsed": 56, "sourceItemId": "iact2QsXKY8JL5tg", "tags": ["fneuOeTfqWw4jYX6", "RcGocyvvNyDTWTKc", "9CFHC5qCf3NEkNBM"], "toSpecificInventory": true, "type": "aGY8GRJ1oW7PlIpJ"}], "removeItems": [{"inventoryId": "67eBISyEZFMYRBfK", "slotId": "pIHdxSdZo18Ck4KH", "sourceItemId": "lVUl0LWfDIt4i2Ew"}, {"inventoryId": "DQ4pTE8pu9XNPKNG", "slotId": "m88uI4FL3HExuLcw", "sourceItemId": "mow1B09fXiPQKglB"}, {"inventoryId": "69DzrEmlYb1ez5N7", "slotId": "TPGGII0ZkouhPFrD", "sourceItemId": "zIb0nCdNAPtbD2m7"}], "targetUserId": "0u2LGmH7OjwHfvtr", "updateItems": [{"customAttributes": {"Cj5uC7ibieLjS1NM": {}, "n6vOuSkuzO1LVVNc": {}, "OY99Ul4Z4Bp2g41j": {}}, "inventoryId": "LhO5SyqmetYPO2o9", "serverCustomAttributes": {"3Ldz9CeaY1yS949e": {}, "S4wrOnXZiKURMJdw": {}, "CTpiO4ZESnJ3znLQ": {}}, "slotId": "kp8VNC2wYpiceUSL", "sourceItemId": "oFBhPC7tF5pRFiXt", "tags": ["SNXPOp6dLOVbG7gA", "nvq4KeI7wd6HxWQ4", "zPHiPE5FPK10eoIf"], "type": "A94IbH0sARWMP7W5"}, {"customAttributes": {"VY5ZozRzPyIBBaNj": {}, "j5BDJcaL7RaWJsH2": {}, "0dnkZqNWbFOdpxDC": {}}, "inventoryId": "nV1K7bfQKt2ftkFO", "serverCustomAttributes": {"9062IiKFmjln9Mxj": {}, "FLijvAFoNj5NxZaJ": {}, "dRaCwWe2q6OPhcRp": {}}, "slotId": "6oC5dcJbIwe5DqGU", "sourceItemId": "EzgDIHalHvyesgLP", "tags": ["b9PH1mMISX6e9QYm", "bzNIEu2oOKFjSreO", "eqYGJgHNgxowUHBl"], "type": "oXJdcACDrnmgnVET"}, {"customAttributes": {"wt8MZjJSF9fjbNb6": {}, "oY8af6SnOpRfSdhH": {}, "738Bm3SFFkyg0t24": {}}, "inventoryId": "KjIIpWQSivItYjLN", "serverCustomAttributes": {"PkmcEPzpwrpSorYd": {}, "jnmd9so8AGMgQLe3": {}, "cUeiJRjakzbZ33YC": {}}, "slotId": "ZYenW8OBZiTcG3of", "sourceItemId": "siCX06H3Eatr9swS", "tags": ["GW9rCg5B3yW9bJe5", "yYg70kmfyG1Az29L", "ggzwKilz0Hd0h4hZ"], "type": "bllaAu2QWh3lUfv0"}]}, {"consumeItems": [{"inventoryId": "Ae9iPwmDJsCgiy8c", "qty": 5, "slotId": "IMSXzknyfli9B1y6", "sourceItemId": "VNUFWGjrkxzmkpcr"}, {"inventoryId": "rlCpnJNnJcMbLuVw", "qty": 46, "slotId": "zX9Jomi6TkEQFpBb", "sourceItemId": "f9nCcaUKWvE3oKIa"}, {"inventoryId": "tU8ntycVHX8IouCT", "qty": 13, "slotId": "XvTAeRL11v5kk1zr", "sourceItemId": "ISCs1DitXjpdBZJk"}], "createItems": [{"customAttributes": {"xhmP1hPdyL16uskM": {}, "BJxUKNrsNOoYSVkm": {}, "VxCxg0k3YJwqKme2": {}}, "inventoryConfigurationCode": "XWUWnGkoSttNAsVR", "inventoryId": "5Va6VvHJdWsKXbCh", "qty": 92, "serverCustomAttributes": {"3VcBWPXTy934w3Eb": {}, "PuHmaJZPYcZPiRNi": {}, "KwoifHCXMSPEDOz6": {}}, "slotId": "zfdLh5oHkxYYKE5M", "slotUsed": 56, "sourceItemId": "kwwMLnFW6QgrECkd", "tags": ["C86ntKtCWDA064QF", "A3ONSOy0NTvKtgAi", "KEdJgbzXhgvMTHxu"], "toSpecificInventory": false, "type": "PNvYyolP3l6aJaT6"}, {"customAttributes": {"npy6O7FoHHkGCotM": {}, "p2ollViyx6DHqJnZ": {}, "Ep7ZFYDVD81Lux9L": {}}, "inventoryConfigurationCode": "6ylWjzNIp8KmysAg", "inventoryId": "NAMioRAkI8krYKSy", "qty": 10, "serverCustomAttributes": {"b9Ypwg3Sh5V6urgj": {}, "n1VAA85P4WnKSgSd": {}, "ny4HPbcVwsDTbfVN": {}}, "slotId": "yU6K6gW8sd9Nseyp", "slotUsed": 70, "sourceItemId": "sxLsggmWJmEFXLQO", "tags": ["r512G580YoOh0VZ9", "A8G7E5K3uy5FSgrn", "EvJCDCf78zNSc7SF"], "toSpecificInventory": true, "type": "OjXlaKPr4jrpoAp4"}, {"customAttributes": {"qerSsIoUphA3frm4": {}, "sO1AdWIJ3I8fXZvy": {}, "eLN21pfzEMyCAf01": {}}, "inventoryConfigurationCode": "CcWp3ubuxLpg0r2O", "inventoryId": "p67aFEpLXQ7wzeut", "qty": 93, "serverCustomAttributes": {"trZL1M9vCc5KqLJb": {}, "dZE7M1zifI3IzoTB": {}, "mRjXDmZz0SQBqDET": {}}, "slotId": "80lEjDQR67wshrDt", "slotUsed": 88, "sourceItemId": "g4McRLJTqe0DoH47", "tags": ["eVHQjUL8Kba47B7K", "wp4OXXcOeklN8fY9", "6wlRW7c0WSU8FXey"], "toSpecificInventory": false, "type": "5AwqFe5KuktN0S9P"}], "removeItems": [{"inventoryId": "KFqMn8DN19IFt2Sf", "slotId": "aFnbdOcBug2eYWvd", "sourceItemId": "f4qOVS0ClW6MdvNP"}, {"inventoryId": "pVGkG4IyWUAp8f4X", "slotId": "hKHg4uuRHM5KDEJh", "sourceItemId": "a1LP5PpbgfJZOX1b"}, {"inventoryId": "ggWYapGl0p94BlJV", "slotId": "H4KvXqx1N4ZC0F6T", "sourceItemId": "HGIWAIzWy4lQSNy9"}], "targetUserId": "4RxcL6kN15i5e8tu", "updateItems": [{"customAttributes": {"ULZd5YSzyX0wDltz": {}, "3JHcTpSpNF1EBqjl": {}, "cqbWLeIkzvgJ0nlt": {}}, "inventoryId": "F67cL6zrIdtrATTh", "serverCustomAttributes": {"q9hlqtaZh135c8nO": {}, "yesihTVFzrV3qHA7": {}, "YAUNmWVY0OietyaN": {}}, "slotId": "BOEN8VjkgghLxooN", "sourceItemId": "5mvCda78FLmOfQ7j", "tags": ["g44yhW917jRrar52", "O2KgzXhdr9k6NFtF", "NYNlk2CwZAH8iG1E"], "type": "D3jnpgLxUWPlGhpW"}, {"customAttributes": {"5oGV2qFDm1H3AEel": {}, "naqW1QGDMRgVk2fV": {}, "7nWVMGJWR8IqlOIe": {}}, "inventoryId": "EhiEoTZQDuTasSi1", "serverCustomAttributes": {"9wDH95Hh67on1PI9": {}, "1e0oEipcZhnObH2e": {}, "mq3puNDLgV5K7OTu": {}}, "slotId": "NiBVpQZ9mXyfokY7", "sourceItemId": "Y9SvlODHvposVSrA", "tags": ["76Nd9GDxOJxvEMxL", "GbnZ1759YFyZVglK", "oaWCmmtaGIFnuVlF"], "type": "sb9aN87adAkkbf0H"}, {"customAttributes": {"2kWnZVfZsrawVxth": {}, "fzjkzui9fvsai6dw": {}, "QXGcRyrzdNbWzaYv": {}}, "inventoryId": "PJgIm3B706h1mnGL", "serverCustomAttributes": {"ImcdCZar4mKUX3nL": {}, "9diwtaQ0b8Fllpfx": {}, "YFmQiEInNUYfTpKR": {}}, "slotId": "jnJESc1HVFPSriuU", "sourceItemId": "Gjp8YHZOPkmEZB3E", "tags": ["lKzOrpdzVV09wwL0", "oHaii3zXkstkR6Fu", "UTlISwYFQsfri4Pg"], "type": "iImu2DkuGf6N8vdQ"}]}], "requestId": "3eZtniszluSjpnZK"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '93' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["nqPV6grR3wPyWnXD", "fqMPJOwiuuSRLOE6", "NP8ltjeYZ5nJDZah"], "serviceName": "rItQVxC7EpBqYX2s", "targetInventoryCode": "XxwnUX3FOYUQqv42"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'NNRvNXQdIRddI8Zg' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["VXuGrFQGz4TQpvzO", "XuK3GLSjsinuSeeE", "Aer0I2SjxpzIunkM"], "serviceName": "jQKaB9crEuNurNhn", "targetInventoryCode": "WU3Apb87KBWtQ5pY"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'OVAMmr1nm0wXMR1M' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '0aOrXlDTJEFY4HNg' \
    --limit '32' \
    --offset '20' \
    --sortBy 'createdAt' \
    --userId 's1XBjfiNggYvoYxM' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "kMEF0VfXWd3YruuS", "userId": "TWKgnM2wzv2Fkak5"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '6RZ9u9qqYHkNIc9w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'E5DlVuJiLzo07Jxl' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 27}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Q1ayZgu4hkBOHz7W' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "1RMds8AW5DKEv9Kr"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'bK6qrH95vf7jxvxW' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '33' \
    --qtyGte '99' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'BIzIfwJPu8lg8q9R' \
    --tags '75ib1HVuWEHcIRR3' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'ME1Ib2SazJNnTom7' \
    --namespace $AB_NAMESPACE \
    --slotId 'oFJfHefgGXNiWKN3' \
    --sourceItemId 'LzPX6HxLmebVJTl0' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '8IkRCCOkqDFII3Rf' \
    --limit '35' \
    --offset '47' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Uz9Ci4mHUojkprPZ", "description": "lfg8GD9MpW3zEoK4", "initialMaxSlots": 4, "maxInstancesPerUser": 1, "maxUpgradeSlots": 29, "name": "n4BNXBEIAkuQIS02"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Golc5QKnQ7CNJFjo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'WN18bN3vXXsl4axA' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dbnMoe3O7IIFFamO", "description": "NGTmBbSJVM75oKm1", "initialMaxSlots": 80, "maxInstancesPerUser": 32, "maxUpgradeSlots": 21, "name": "2va8NUJ0wkU9qUho"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'muPEIQntb6tnaAmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '16' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "toYdrKkJHM3d0rRr"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'qYsPhzlD5WM1BF18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '56' \
    --owner 'YwVQWWbKFT75UAok' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FljJvegehVNmxhZw", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '3XdkTarnNAEELn5s' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'SCGCS79NZQUOkCVw' \
    --namespace $AB_NAMESPACE \
    --userId 'cFc0gc3VktemoBfJ' \
    --body '{"qty": 1, "slotId": "NLqXuGYV0P7E90qq", "sourceItemId": "KfimatHiIj4BwwSg"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'b0CbZYDFwiJuEyPB' \
    --namespace $AB_NAMESPACE \
    --userId 'Pou1L09g7LbawcO9' \
    --body '[{"customAttributes": {"Y7l11hQsZffF1E5n": {}, "ZwBKrzTGnBAjqit4": {}, "Zj4yk4E3EPVGMx3B": {}}, "serverCustomAttributes": {"oORIxLtEAKylwOdV": {}, "WqhMflzo3m7mk2z8": {}, "90iPxYxOpjg1dsCB": {}}, "slotId": "GIlOyGZQVwtx5LZg", "sourceItemId": "TNUzKPKoSDfQJxXd", "tags": ["9c7wAMIXRY9pjA3k", "gsmbMgG0LST0fN4J", "XBWMEcdsCrSvb4uD"], "type": "nUR9DGfS0BOJKobI"}, {"customAttributes": {"5GkcPBZXogBYQvDh": {}, "fZoZEihan8SKpTWp": {}, "mzJOxEQhUlgv0QTF": {}}, "serverCustomAttributes": {"18FsyQ1FuOmV5d2T": {}, "Geu8iSGCa2nxLzf5": {}, "JJWRozRt8MfTDutE": {}}, "slotId": "C28qZqx39RfN25w9", "sourceItemId": "BzoqyoeyYmTfVe4x", "tags": ["5bzG7N9UPV0zMn6q", "b0UlW0wzlgnw1gu9", "LESSdULNXn66dkPn"], "type": "XLg86Aj5jrYsNTqB"}, {"customAttributes": {"N5laAmbr37FXTLkn": {}, "QCSHmCd1Ktk05Nl5": {}, "S37wra68Gq4tuTVT": {}}, "serverCustomAttributes": {"6gNrTOIgpI59Sver": {}, "OuIgDZG7G1jtMCvW": {}, "27PsgkTyTrNeyrlo": {}}, "slotId": "sGFqZuiqSKQE3qpP", "sourceItemId": "Ta9mqjMhsOUhn4pv", "tags": ["QIzQnkXUSrgVRUxz", "sutenE0up8eeHkPx", "IZXoci0iaVQfEfyJ"], "type": "49K5ItR0bf2HcHc2"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '2DEHX3uQq34bAw2M' \
    --namespace $AB_NAMESPACE \
    --userId 'zpUeplRVlSmvt2gt' \
    --body '{"customAttributes": {"CcQpmZ9xauDEdrmR": {}, "O3OVUAd8kAc5TxlI": {}, "azCErEZgV2AQhsWJ": {}}, "qty": 55, "serverCustomAttributes": {"wDCeczcPobfyhDMK": {}, "wzOYW9EBZQhYYi20": {}, "UZfyjUhUQLQJHfzm": {}}, "slotId": "ex1OcxntON4Z31n7", "slotUsed": 87, "source": "OTHER", "sourceItemId": "Uxg3iIvM2QTNQRq8", "tags": ["DG3qr4G3Lkg3Lex5", "h8i5x5Z9ApBdC5d5", "XlXO7bXOT6retgln"], "type": "LSsOCn9AhNBGdFCu"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'OJqwnuCBEeq7ZROi' \
    --namespace $AB_NAMESPACE \
    --userId 'J8LykArOZgMYBVc2' \
    --body '[{"slotId": "PPu9g2MgDSZkQysE", "sourceItemId": "9KsSj2eD1elUybLM"}, {"slotId": "XVIxqpLELicnW8v3", "sourceItemId": "92f8chtnA6KjcetQ"}, {"slotId": "SYtSO3DHsQd9QVyZ", "sourceItemId": "UiZQfeYTMGqSl4Uv"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '32SZTV2S9EwjTSBt' \
    --body '{"customAttributes": {"doeRxNP6CV7btaX8": {}, "NksVbXhmaM3Kvtj3": {}, "4UOlRU1vIRyAd5Yj": {}}, "inventoryConfigurationCode": "hhVN0GowMJ79YTVD", "qty": 43, "serverCustomAttributes": {"bAn5r0s0RKD1uhia": {}, "0MO4tBf9imBs3pmo": {}, "6uZiVBKcPWnQBeoB": {}}, "slotId": "OCL1E8kkXVVNmcnx", "slotUsed": 58, "source": "OTHER", "sourceItemId": "Y1Es6OnazGYDR38H", "tags": ["czPze6kEwO6qkfh1", "Gf2ILe5fkEM3Pk4D", "osDe939Oqz4rCTYx"], "type": "OZF59H3Wjj5X7Q4F"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'lCQ68JQ6TRiDrzxk' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'e1CHYldnR5Od8M4z' \
    --body '{"entitlementType": "9sfmGtQW3TYNx8de", "inventoryConfig": {"slotUsed": 71}, "itemId": "7fhPUkAzamusRIhZ", "itemType": "L2frfCX8yQloOFrj", "items": [{"bundledQty": 16, "entitlementType": "hjM5inljwZRCUNKv", "inventoryConfig": {"slotUsed": 71}, "itemId": "UTDCPLbZSkhpVwbt", "itemType": "BhbovTXzAh5c7v12", "sku": "fCRRBsWkyxBVq3u2", "useCount": 72}, {"bundledQty": 14, "entitlementType": "rlN7I6twxhErUfLh", "inventoryConfig": {"slotUsed": 29}, "itemId": "n5sHoLGVi3qHeHdJ", "itemType": "ZAECOADCDGiZyFAE", "sku": "bASOGYqby3yvNXVJ", "useCount": 58}, {"bundledQty": 27, "entitlementType": "7Al9kX3eL6u06ZOh", "inventoryConfig": {"slotUsed": 89}, "itemId": "9VvaDEtTBWGZVCVD", "itemType": "l3bNF5ogvH0nS5CZ", "sku": "8BFHvycrAvg97XKG", "useCount": 87}], "quantity": 99, "sku": "8GqUaXqRi31fzbm0", "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'zaudfHPcfAO5B3vY' \
    --limit '33' \
    --offset '76' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '50' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '59' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Mjdi8VdHnEsoudsL' \
    --limit '56' \
    --offset '34' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'd3FQRZ2fsIAbH1oO' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 16, "slotId": "I5EpnPAduTSACe9X", "sourceItemId": "NJ9aHf6m5eHZPOJ2"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'dWRAobOGjPSIRlrb' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '55' \
    --qtyGte '9' \
    --sortBy 'updatedAt' \
    --sourceItemId 'PDc5OAzMTyJfjQw9' \
    --tags 'Kg47TGDpRi7lhg3e' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '9mFlJBwL2BfUby24' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"i0Llgoqhm1v18fUf": {}, "c4NAvTfeFojWPk9P": {}, "2TxJHwDWmNC6xItP": {}}, "slotId": "q7CQeTTHKg7rXzAm", "sourceItemId": "HEqmJF0ENLOFCas2", "tags": ["xgrXCco3zCFwGc02", "KbQlZp5DQ56MN4AX", "K7z7VaNb2VL4XTwE"]}, {"customAttributes": {"zJCwgQUcPANUkjhI": {}, "Bpb8TMamvGmQe6lT": {}, "BH2lXQsu5j3fiyTB": {}}, "slotId": "WM3YnOzv6Jjo8rDv", "sourceItemId": "qqPL7xMbwC5VAYJK", "tags": ["nYQm6JibqVTeLhiE", "2UtijIcY3YgVjWDb", "s3FnaszVrSLnsbFs"]}, {"customAttributes": {"1SyaVQa5RmaOMtVW": {}, "bZwq3u3B1KDY7DHO": {}, "XYwyihaq5ksHr1oD": {}}, "slotId": "WYDWm9cCfeuJnrKW", "sourceItemId": "jNRCT3xtqe0SDgXs", "tags": ["QFbcNh6GEv28DrRE", "7tTVIrLQzRD298fm", "SXNsXmjKAKOUsuH8"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'SrnXgyO9k7D76Mem' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "VmOI9lSoSWEOI4fs", "sourceItemId": "oIiFqApGk1DV5xgo"}, {"slotId": "VELP4wbF0hY70p4w", "sourceItemId": "lLs35My5Orx15W1T"}, {"slotId": "r00y90b5yBQ50R89", "sourceItemId": "I3WopD2VACyyHm8I"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'EqsOX1Lz7NALYfPs' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 22, "slotId": "OcEkqsjcuNgMWSc1", "sourceItemId": "cHoGFnXHk6yM3YeY"}, {"qty": 7, "slotId": "36vF2burGK5pf5c3", "sourceItemId": "XYFlOs5aPVvhkD0C"}, {"qty": 60, "slotId": "y2nhtPiXQyDdWW7E", "sourceItemId": "3raZ3XUozIwkRSCC"}], "srcInventoryId": "uUVoZgQBoFjDnyvE"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'GPocCYv7uiV8a3Zj' \
    --namespace $AB_NAMESPACE \
    --slotId 'CL1ePK5H6STLOBSH' \
    --sourceItemId 'gjOgugh7TWj5gUHH' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE