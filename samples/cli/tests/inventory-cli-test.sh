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
    --body '{"message": "PaCiAWeKgJvfaPZl", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "lyBrzAimslExKJTq", "options": ["WbZVyB7HqJHWIIFc", "hLnWfrhE3x2f2pyf", "ffbaINWOTVtcleEB"], "qty": 56, "slotId": "SSQxWj3lD3d9eElX", "sourceItemId": "sOtazVA4qcbvCHpL"}, {"dateRangeValidation": false, "inventoryId": "oUJhjkTDDnKS800y", "options": ["CkxuTalOh7uWH8Ce", "BNiCzUyuysl9QHKE", "76PL9TNjW9maBAN9"], "qty": 27, "slotId": "CSigINzTTQshOWk6", "sourceItemId": "3Hz4kLZBIh0Ialri"}, {"dateRangeValidation": true, "inventoryId": "rNdQfvvR04PegrmA", "options": ["TSh6z9tK2giO7dil", "PSBdPInSsK5a2GJG", "1vTJMEk5MEl0NS0S"], "qty": 24, "slotId": "DIsLk1PmssSypHEO", "sourceItemId": "cPCuyA2ucvHxXmnZ"}], "createItems": [{"customAttributes": {"1MhuTqUjVaDN9tS3": {}, "0q5HCnXyW0tp8n0p": {}, "CkBo8GX6cYkzJ0I9": {}}, "inventoryConfigurationCode": "8yhm1g5mBwuagPjV", "inventoryId": "mP3j7VSkjlGik7j6", "qty": 5, "serverCustomAttributes": {"yyEdotcGpPOpeTsP": {}, "y8y1Rj4i6WsazyfR": {}, "Hd1FOI3leVn7Ev7m": {}}, "slotId": "2ozGB4eJtX201nXg", "slotUsed": 90, "source": "ECOMMERCE", "sourceItemId": "PxgebulBZjc176t1", "tags": ["iRcAuz3gzvxzZDH9", "dnpmIHWHeHzi2nFH", "a9VniMd2oyncCzXz"], "toSpecificInventory": true, "type": "e1ex6Z5LbKC62Cij"}, {"customAttributes": {"izXgel57bhfH8pIR": {}, "gbffnFwj2QQ9wa4v": {}, "pwSv9rv6IgRdVgT0": {}}, "inventoryConfigurationCode": "8a14o0cqDL5JLWc3", "inventoryId": "fDST7dx0Ukd61C8d", "qty": 31, "serverCustomAttributes": {"KKgoEXhihWQhlKGK": {}, "45enon2tX4RypSTy": {}, "zaCYwUuvLBMkWPh6": {}}, "slotId": "L6A9zSkFWdZedOuu", "slotUsed": 61, "source": "ECOMMERCE", "sourceItemId": "IFkdY8I94j9wgPxs", "tags": ["lw5dGNU8osce1PN6", "VyYOWBGldE3ZI6z5", "UvXQmIJIslc4L59m"], "toSpecificInventory": true, "type": "B4vTMth6h0vAaBO0"}, {"customAttributes": {"ESDdsKIjh5KxPkYA": {}, "U7IG14RreQX0zFyw": {}, "Qy6YPMSE0flMiXY5": {}}, "inventoryConfigurationCode": "yQJmSXGncP9xlbKS", "inventoryId": "nnDhYUJjr5qIJrhl", "qty": 48, "serverCustomAttributes": {"7IwXwuNN3LFyu2J8": {}, "0rTtmyBQEj4pJGkH": {}, "EmYpVBZ0UHPGQ3yE": {}}, "slotId": "ygfj5e09FxJlddCk", "slotUsed": 29, "source": "OTHER", "sourceItemId": "k6ydmRjeADP2IBxT", "tags": ["Fq2WZBChX1otJEYo", "0tn2LmVr7sss7yOs", "d7unijRV90lTbTLV"], "toSpecificInventory": false, "type": "uUw1GtjqSUNIVWFX"}], "removeItems": [{"inventoryId": "9ya1ITsx55GoRH0u", "slotId": "galguiyEkpqHOBPs", "sourceItemId": "7dA5HestT3475FtP"}, {"inventoryId": "0iNDdO1nwMYNEwpO", "slotId": "pAkHli74uZE1Bzyb", "sourceItemId": "59kyUisZniHBflat"}, {"inventoryId": "mz7BNkeSFZjcXK5b", "slotId": "Co2HeJV15WhvDa8T", "sourceItemId": "3LIQC2K7iV0Ezmfp"}], "targetUserId": "eFwEsfDS81giLyBO", "updateItems": [{"customAttributes": {"ph1C2Oy5kKiKbJCM": {}, "r7vvHCsvqvkkHRUX": {}, "ojqPaUu5dtQ21iAx": {}}, "inventoryId": "Qh5aTnXWGFXK9WL5", "serverCustomAttributes": {"sYMAJsE4VY1iebNX": {}, "EkCxjfFKfkeXGMWp": {}, "vzlFbxYTS1slIRvQ": {}}, "slotId": "0QsI1MtoIAgpf6cH", "sourceItemId": "odeN7agQQDY9z6WG", "tags": ["E6mwMi2kmHi56Nvc", "A7JX0S4rr5n0G3AX", "C7g20fK7Z3snYuDM"], "type": "fESurvXVWvIKFMeg"}, {"customAttributes": {"9kQGjGv1Wkk1dEie": {}, "BuCht7D08OiU2VtJ": {}, "LT7uJRdQ8uIq8J4s": {}}, "inventoryId": "sCBDyhcgPgv3KTkA", "serverCustomAttributes": {"6YcSLEbKGJfSoQOR": {}, "07kPONHNknJf9vyt": {}, "6z0AieePqutFAJX9": {}}, "slotId": "RiqURZb0mWhygFX7", "sourceItemId": "pUZu295w7JnfvQYZ", "tags": ["kzoMaoIL01sFv5Xa", "BjPwBQNY0e16MFtP", "shiibM5bdVu1iZnh"], "type": "NGS2S1Z44g3UFoqT"}, {"customAttributes": {"YsJ1dX5atXnhe2ad": {}, "x14SayWLldJX0bw1": {}, "QLNYDe9JzRnBYDUM": {}}, "inventoryId": "ck7u2UVol1cwNREi", "serverCustomAttributes": {"lWcVy77SkVqQ57fN": {}, "42sGcd86L3Avk0J6": {}, "rvIEev0s1B6cnorL": {}}, "slotId": "fCXKeHzPyBQpIOH2", "sourceItemId": "OkOdGvAz2JT4OabA", "tags": ["GSxoWq0bWPVfEb5C", "alCWAmuptgC3ROtj", "gcE75zvVXA3EjJUZ"], "type": "0raEuIycuhwsBfRQ"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "apPm15ZkxjrGSPdh", "options": ["3xlNltcG1lp8jSVF", "sNwJ7uLxAjC6lcYy", "TXAQ4Nr6DFNUTdHZ"], "qty": 93, "slotId": "7805eS6DyrFMPq5A", "sourceItemId": "rPwUbeLVmEEGgLps"}, {"dateRangeValidation": false, "inventoryId": "zqX5mXAPXbyvZYtE", "options": ["cRlWvYFgaEfDeKMo", "sNMWyvFj7rwp9tmg", "4zUYhJ2OSx9Vsjv7"], "qty": 29, "slotId": "tFnR8leNDsQ96iR3", "sourceItemId": "g9mDyYe9vMt6n843"}, {"dateRangeValidation": false, "inventoryId": "HI6RzRF0g1huhmph", "options": ["v2d6BqMDb2VMRUKL", "fypUw8p60FtGHNn5", "q9Msn4ZtZpBLFiSh"], "qty": 48, "slotId": "xyFOytRywm7ZtBBR", "sourceItemId": "FCosKNqMW6ZUyFSD"}], "createItems": [{"customAttributes": {"LzwVQpyvTCAWxk2f": {}, "R1OoI4iQTKVrDrXb": {}, "kW7ptuNcZxmiZK48": {}}, "inventoryConfigurationCode": "iWGpKyD4bAfuLAt4", "inventoryId": "3dU5h5Vn6KcktPOq", "qty": 82, "serverCustomAttributes": {"UPmnwaqVhaB5tByz": {}, "yO1ZIQzJXe0HsREQ": {}, "WDGWUgUm5TYyfThm": {}}, "slotId": "poGndxlbtCU2PW8p", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "9iEPlNyOwpFTX1mj", "tags": ["hZvpnOvF5g592OsE", "IbHcfRLN7aGWaNAm", "6Lya356c2P1hrpwM"], "toSpecificInventory": true, "type": "2nelPmFkEeiwPkuQ"}, {"customAttributes": {"q3HQBUDh1kw5mZl5": {}, "LAN6EXM3rbJX1pFm": {}, "KjSdmxZKJnbXl49d": {}}, "inventoryConfigurationCode": "gDqtOjWCurnLaeQS", "inventoryId": "sTGj8c5MzvHLtCOK", "qty": 4, "serverCustomAttributes": {"v6oWkfJResN6IaaN": {}, "XuxgUy3N1DBiMN01": {}, "rlhLkszTXy4J8mGS": {}}, "slotId": "H6zZtMpz46StIXMt", "slotUsed": 71, "source": "OTHER", "sourceItemId": "XKBrUFHCoZTixLtd", "tags": ["rWZZxZ5doAPEyrhc", "nhsdQl1zqvDeHdIy", "XAYqOueXJDYA4moV"], "toSpecificInventory": true, "type": "27T8XnCkrD8El1oJ"}, {"customAttributes": {"mgXYN2rC2kwVNdno": {}, "BJBmTFInQiflLEbd": {}, "FpNrAxhHgRiGxdcN": {}}, "inventoryConfigurationCode": "Pc08UARJbGZndNpY", "inventoryId": "LGk7oysr5NgwHP68", "qty": 97, "serverCustomAttributes": {"hUMABuw0iNlUnBRv": {}, "qyYYaquyOEYsvdlM": {}, "1BnyDgf1yJuMh9Nv": {}}, "slotId": "bCeivreFqw3KPqkD", "slotUsed": 57, "source": "OTHER", "sourceItemId": "TNWLw6MxuIq9O75B", "tags": ["4QbgLHxnzJUNK21w", "91q8AH4IS6ltiOJE", "zwmwfxBuBSYdtwdS"], "toSpecificInventory": true, "type": "rn7gU1AHx1uWihN2"}], "removeItems": [{"inventoryId": "IeJlgOUcDTZGAUb6", "slotId": "TiMbKgEfzABooYHD", "sourceItemId": "O4twdSDGMMmBzKSH"}, {"inventoryId": "Ck9NqZX13XF5UbyD", "slotId": "AZLlM2sbUzIZfRNp", "sourceItemId": "Jjxq4MTDQiQpaRTM"}, {"inventoryId": "nmDij31C16jUaena", "slotId": "wPqhEO9lUQyppDNE", "sourceItemId": "1b0VyuCGbVhj7ror"}], "targetUserId": "wcBdNNbktM83x07e", "updateItems": [{"customAttributes": {"ais8DA3OdFLftYMH": {}, "f7LYF2Nit7xO0u2j": {}, "R9pU8mK7NRa51hPX": {}}, "inventoryId": "wVQpscysiEIpySV4", "serverCustomAttributes": {"otO132JXKQ5IKkkV": {}, "HVF5LPuu1RUhOegj": {}, "IGXudhvC8RLJVg8k": {}}, "slotId": "IJ3r21DfEoMowBhv", "sourceItemId": "7BtM49p7yIPkOwRS", "tags": ["IrpiKSJvIzn84sQP", "FbIUdKcw3Yh8WIUM", "H7BBWN5noUQ0UUyF"], "type": "bKG1ejy6zVUyA1jd"}, {"customAttributes": {"M6JvbaU7yzIdlT05": {}, "OBxnVfrAgwsBu3er": {}, "9ifNV8VGUMpirhxA": {}}, "inventoryId": "CY4ihytDLExburtd", "serverCustomAttributes": {"PFEBVDg216yRrqRj": {}, "kpqN6bTmFG0W6Ym8": {}, "Q8hOxnMCRkUb2LG7": {}}, "slotId": "cTQBFa1AGjSu737L", "sourceItemId": "32MgWR5IHY9gd3cD", "tags": ["7Xog6lqx6hwXiEH9", "6YNpIJqMQp4TZOq4", "7vVArh6cgTwzuYPQ"], "type": "QCkX8gqBh2AA2N4k"}, {"customAttributes": {"cy9HeGa3rAEaFwht": {}, "9j0gDf3QSzBcBeJi": {}, "EsPjNjaPS3BosEmO": {}}, "inventoryId": "lDtjuPIo0mzRVRLJ", "serverCustomAttributes": {"eU9zW5utUQzekGDr": {}, "dD2GpjJYMlp7B57n": {}, "qEChCzClRcEnING6": {}}, "slotId": "wTAeyz3j19RODrje", "sourceItemId": "uZYKveBynDRm0wIF", "tags": ["GDpgDwCTjgHFGzHD", "nt3uW9Iz7vBqZ4f2", "ePzngFJrTP3ThFPa"], "type": "q2azBYO9ulyIHsGF"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "BKVjkcZOgtIJ7i1X", "options": ["6USXPsDuHh8JirdE", "aJkyPU8Odaw4eDTn", "srmFbu0UknQskAWQ"], "qty": 36, "slotId": "iEKaAsAfop8q4Wqy", "sourceItemId": "qkEWFL4edZc2NcfQ"}, {"dateRangeValidation": false, "inventoryId": "o5NbIG7wGs46V54V", "options": ["9gWUrp4ly0CXrVtr", "F62ZJGo0qieiQCGe", "J9lcOBsFCIjMzGCx"], "qty": 18, "slotId": "yDptlYbCR2AyL5IJ", "sourceItemId": "NYhTIyZdhgd2GFmC"}, {"dateRangeValidation": false, "inventoryId": "UPiQOKdGhWrWHTrE", "options": ["vLRoUlX9GY3JzmAt", "H4ZYJ3q68s4FWc1u", "og7paFLHkDvgzhzt"], "qty": 32, "slotId": "f0buqrZucSnzlw3R", "sourceItemId": "RtmAdK6fvc3nhxkE"}], "createItems": [{"customAttributes": {"QifjtTCx9MvbWdTK": {}, "v0JbLyPvHxrY2Z7a": {}, "8DuTKbpMDbheh21K": {}}, "inventoryConfigurationCode": "mrb1A76s0XYWEVPt", "inventoryId": "8Yv5lUsZeilLwnm3", "qty": 67, "serverCustomAttributes": {"oU2ofa1OzjjRYTgd": {}, "58ZNlYehpBHC6hrH": {}, "xh5Rvz0cDLd64COI": {}}, "slotId": "VF7nOoNbavA0LwSO", "slotUsed": 99, "source": "ECOMMERCE", "sourceItemId": "LVrer9ruUHk7KnJl", "tags": ["BVG1udQ6qtB9GzBG", "3PeysGhnsH43K8QD", "lAaU50BqyiFr8BrN"], "toSpecificInventory": true, "type": "S15cnODS4zQ6vvMH"}, {"customAttributes": {"Cvn6rXtY5JAsI2hG": {}, "nncYhmn5SQBgGTGD": {}, "1L82CKeDTHL5VpAY": {}}, "inventoryConfigurationCode": "yGZNBEmU8zUUTlzS", "inventoryId": "7NlLseKt7GndCuGK", "qty": 82, "serverCustomAttributes": {"pAVS76hk9DCUL8qb": {}, "csHGSkzyU6TL4z3J": {}, "qaqtWPe2Ir2YoPcH": {}}, "slotId": "BHpPGLu6vX0XBcMK", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "xSSMn0l5PsB0eaaM", "tags": ["WtYAw6gSlzF0CRxN", "OEvWSMcsbITJ0NCZ", "LuNTN0d3WqSvIFLx"], "toSpecificInventory": false, "type": "O3zr0xvvDaR7DJCY"}, {"customAttributes": {"MvSp8DtrcOkj830l": {}, "j2Ldi2AK0LjUdYzT": {}, "sy1SkampnNdoRcCb": {}}, "inventoryConfigurationCode": "SjOgUd8NALogwrsu", "inventoryId": "My3cDvDzJ4AJt3Ex", "qty": 67, "serverCustomAttributes": {"iX5JUBsH53ewlrpl": {}, "HI7uorFcrwTPDgJB": {}, "RzeDkcaUpJLff4QR": {}}, "slotId": "keEdeaikCIpvAX5i", "slotUsed": 82, "source": "ECOMMERCE", "sourceItemId": "7WcBGwmIZXyU6Ci1", "tags": ["xLMtYz309tqUar7d", "JEgbmxJQO1H5zaGn", "PkVOASjF5tytn39K"], "toSpecificInventory": false, "type": "GRpCLOQ4bpF5y3yk"}], "removeItems": [{"inventoryId": "C4bOJZu8C3U4poiU", "slotId": "mcO1aNQPXzxm8iO0", "sourceItemId": "hdpF9w3k5KD6Vxsr"}, {"inventoryId": "8ooIMiyI3NdoIiZ4", "slotId": "4CwCB1hkzdkgsLCk", "sourceItemId": "ThDrciYjtTqYcdER"}, {"inventoryId": "uqUpF7npdV8TaYWv", "slotId": "x6332pmdrmbMhr5G", "sourceItemId": "kY6XCcZZ6373a4u2"}], "targetUserId": "YSMZPRqN0lQxpZHl", "updateItems": [{"customAttributes": {"4Vt5nFL7lT4JhioG": {}, "KF6s6D3qhofyyRI7": {}, "csCu9wcHLFd4Vg04": {}}, "inventoryId": "VudQ7tVacoBVuTPR", "serverCustomAttributes": {"oVDHX1rFhbD3h3Na": {}, "jB3RxXw6CV7O7Ayw": {}, "xHZ8qq4CmSMILKld": {}}, "slotId": "BJq8YtV8LtYDgmBJ", "sourceItemId": "K9t401ck4P9lHwYn", "tags": ["Gw8c75L9vfy8YA2g", "yO57TM74mb6w9L3Q", "mYAla2Ce6rFvCAfx"], "type": "NnHiS30IEjlfg0fj"}, {"customAttributes": {"NcOtUV9GXeUA2qj9": {}, "PjaNaak0MXrMghbO": {}, "5exjbOB7yl9jj6Lr": {}}, "inventoryId": "no8Uj4u6UjylXVpz", "serverCustomAttributes": {"wy4S0YFgaidfMOt2": {}, "IwCBLNYcNQn28JBD": {}, "SJQ8y1zbKPTyvT0H": {}}, "slotId": "wouQtuqnsOnhfy58", "sourceItemId": "zzOkgXdR9NmIRRnd", "tags": ["d0sh8JEGLukcTjQ2", "NOSE3FWgJOcloF9I", "QLkNlQnU3SG7Cp3C"], "type": "TkayPVlRmm3RbSHs"}, {"customAttributes": {"TY7mbgG5rh4CnJI2": {}, "4MN1WwhAPhKcDMWf": {}, "zdXadHhR3Wz4VU2S": {}}, "inventoryId": "yFA2bJECCyPs6Fur", "serverCustomAttributes": {"MqOleQXMFOF7Zs3d": {}, "JzQw8RmKvyM9VLDA": {}, "0HGaQEZNHFq0ARFo": {}}, "slotId": "vRjExIFMN4wo6C8m", "sourceItemId": "onnSYm1X6XflRJUP", "tags": ["WWMH2EzrMLhsNbS0", "QtsXiULBh5PNBXQ9", "KyyyAokEEB73gpd3"], "type": "eIZ5nzL421UC02jd"}]}], "requestId": "z2a8KtLynLF4Q0nu"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '73' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["PfHLgrghUeZXS1fr", "gKRIX3h2PhqIqp8y", "tkhnhnv1eM1VJV0H"], "serviceName": "Dfz46PItZ7CRG1j7", "targetInventoryCode": "tp6sTLI0XTs9DD94"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId '0oHN2dADxYAsmiLy' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["QimqwcBBRGe81GNm", "ySuHqwYMFt7kGEYf", "pvrGrfiONBoBImWQ"], "serviceName": "sQJMwkiM8qTw7PMV", "targetInventoryCode": "ENefzQxPGCstaZVP"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'w5kiNxh2GjL0n1RG' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'HCiJyofQtiPdpzQm' \
    --limit '32' \
    --offset '77' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'TEdQfGcPWSmHIb9K' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "ON3ZVrktLpOrvfeX", "userId": "910X1oghxVmrfPVi"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'XsJTqmqGAu1MNeCp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'pJAdMqIcat7qG9fM' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'ykKOys8VXgtilYdn' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "ikjtNoTMOoJKbEsn"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'STU4Uw3ouOZC7sQD' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '56' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'wuVVGBqqVnUODQ5A' \
    --tags 'oRNSqdnkii8aMg8u' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'FbFQO3V5YzeapK2f' \
    --namespace $AB_NAMESPACE \
    --slotId 'GWSw29H6YJWggVhv' \
    --sourceItemId 'r3L98n0zwbgKPXB4' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kumeqlEhfUxgRndy' \
    --limit '92' \
    --offset '8' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "umuEciim1ebZeRrO", "description": "n8IlPc4toSokWWCd", "initialMaxSlots": 5, "maxInstancesPerUser": 47, "maxUpgradeSlots": 43, "name": "0BJD1Eptbm8vyRoC"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '1CUcfCL3mayaectN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'OSPZUDyP8vlmOUqv' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MIUWOZAPkX31YtMO", "description": "UdexXkaxJPB9rqWC", "initialMaxSlots": 50, "maxInstancesPerUser": 4, "maxUpgradeSlots": 78, "name": "n7RhRKpY5oyz3ss6"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'KaMNzHv209ruAxSm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '78' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "aKyLbruauNKdLOoZ"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '2G84xpqETMCsfMsv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '75' \
    --owner 'wEutZnRe7TmBIiQa' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Qno1evrX6FYfyAbU", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '7NDAaS57ewsoj2R3' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'T9zLVhCNnNs9weqO' \
    --namespace $AB_NAMESPACE \
    --userId '6YlJ9IgOhyUkjRBS' \
    --dateRangeValidation 'uVH5XkMGCHLrDkLd' \
    --body '{"options": ["G3KpZMUmA3rG8J2L", "SpRCkKRenSDPiBB4", "lyLjNDmraHExWtvF"], "qty": 21, "slotId": "m3VJGecUOWwdBVMw", "sourceItemId": "Vtt2HUlgW6YTuSCb"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Ke6gNFPSkyLIStxB' \
    --namespace $AB_NAMESPACE \
    --userId 'xxGHuRrQovb3rmgl' \
    --body '[{"customAttributes": {"9bkpU990kunefxzD": {}, "bmG2LaYq29ERcqwk": {}, "PQ9jkwbrjWld1z0s": {}}, "serverCustomAttributes": {"CdRXkRRtbMfkDHgn": {}, "DhtF5VYtfRIXIGjk": {}, "h4IDpdejMYFBFaR0": {}}, "slotId": "keWYFL0XiPQgRLgr", "sourceItemId": "PitTtrO9vEIHUjeJ", "tags": ["sCT14PQ2ExlQ7zQj", "QNRL49HoLBRPmoOp", "a8IsQdSZ45T0ACH6"], "type": "sU3hVfPLemyVxj74"}, {"customAttributes": {"sLjfeJLAAtRfdhf1": {}, "4gHp4bg6Cr9OZ1nG": {}, "B66rp3bq1EPNCUx9": {}}, "serverCustomAttributes": {"NOCLt7RO2X8nih0l": {}, "m36sdoLL8x1PrKp7": {}, "Qm5Wrxu3zuAxd2BK": {}}, "slotId": "QUYwgpETgyeJBTUv", "sourceItemId": "17nLje07q91srH0e", "tags": ["A71O5imQoOcU0fTb", "NxObcDujbXvxtlUA", "wAmzW5nO9pa7FX2W"], "type": "Us9ipGFk1CPrZx8l"}, {"customAttributes": {"EkbpEZSyfRTaJFZM": {}, "xopL8H2HR1HrPbqp": {}, "Ef8R66GdMtpVCl9l": {}}, "serverCustomAttributes": {"sLrtPXLuJaQ4zZE3": {}, "JwW29lgcvcAI65XJ": {}, "g83vZJUuaLucDrM2": {}}, "slotId": "KPyCz3bxcQJCr3eC", "sourceItemId": "v5XMeQe2Iz5gHJD9", "tags": ["ITm7eHt0YcvfuNzW", "fKyWYmORiNYjgj5U", "IpKooBZlmcBZAbEb"], "type": "NxDf2a3X16bES3Bn"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'E5efHlM5qWrD3mBq' \
    --namespace $AB_NAMESPACE \
    --userId 'KntPhgAo4G70zcrT' \
    --body '{"customAttributes": {"wI3Samk8BYrPsCUJ": {}, "MHwcS5sOGEOGJZ5E": {}, "Y2EefMFhq7J0Gr8n": {}}, "qty": 23, "serverCustomAttributes": {"WAF8ZTxG982cvheC": {}, "lmMdVrRXbZ0W30jS": {}, "nBypxf9hmmCplris": {}}, "slotId": "4UF9xx5GXYmlh7Rq", "slotUsed": 100, "source": "ECOMMERCE", "sourceItemId": "lbHYcRUP8yFLZfPt", "tags": ["h2Plx2pw18tizNX3", "f6BICtzHOFh8bw57", "EJuGKNMssVKe0Kaf"], "type": "FINlztGLwQAqc55H"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'FmsvUpLuRt00CHCc' \
    --namespace $AB_NAMESPACE \
    --userId 'pOPhBgjQX88o6DkY' \
    --body '[{"slotId": "yCsNtDVcIhT5GOo1", "sourceItemId": "BzO6Hg87SKsJ0MR6"}, {"slotId": "XZeFE37HsoU3LnOd", "sourceItemId": "Hb7D3nyFAExWCNTl"}, {"slotId": "7JM2omk8sDl7ceu1", "sourceItemId": "u7QxUs0QClHBPfUF"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'c05rwJsYBlB8A3ni' \
    --namespace $AB_NAMESPACE \
    --userId '6bMqnyqPQeP0Ar52' \
    --body '[{"customAttributes": {"6HiGjgzQCmrsnUx9": {}, "lVHfmCMZSaS4h6Ba": {}, "N4jxgkjYJEyzKXpc": {}}, "qty": 70, "serverCustomAttributes": {"2BoteMmcyLKq6grB": {}, "nldMasb7X0b6yUbk": {}, "Pz6tQ3Vye19vjI39": {}}, "slotId": "XnZe5XJtk4ISDYiz", "slotUsed": 39, "source": "ECOMMERCE", "sourceItemId": "MAGjFsCWrrXSy0nJ", "tags": ["YtuiAljgHdhpG4Rr", "ofceP0a2kVVRJe1H", "nN6FVj0Kzi8V8Hwy"], "type": "qI4qKv6tNSBLrF0d"}, {"customAttributes": {"TNLBkwIfGfRD6Ukn": {}, "87mny7otuoG3vWyf": {}, "G3mQEKU7y8nXGoqh": {}}, "qty": 0, "serverCustomAttributes": {"hbjriO2u4yt5iZBL": {}, "VHcJifd6wwQ7EU06": {}, "Aatm83kKtnFXJmDB": {}}, "slotId": "tw12bffMQo8H5F4T", "slotUsed": 6, "source": "ECOMMERCE", "sourceItemId": "6H4prKgydeoBVz0l", "tags": ["rXHcGcQ3UhiuvF54", "cIytYIOqXZbqAf9d", "TLK5FEII2TL3VwEj"], "type": "VwmzUKrzmBAkR8bC"}, {"customAttributes": {"BVTy30Uj3fRdUI3X": {}, "93oqmGIiaDQ0ZK4P": {}, "HdAT2dmzR4b1dKq2": {}}, "qty": 69, "serverCustomAttributes": {"4qsfWlWmC37Xoc2h": {}, "ux964CVczi93jCSE": {}, "ci6PnfBanUJ2XJln": {}}, "slotId": "eUvfa862Qxpv32QW", "slotUsed": 25, "source": "OTHER", "sourceItemId": "XLO6XVfZSTS7OX8V", "tags": ["tf6gErqvvZSIqXDk", "189ZPNQKtPbH3y5g", "MHyDGRTho4arB8LB"], "type": "mFtUpXGDeqAkIV85"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'BdfQHFCcctxXuaPm' \
    --namespace $AB_NAMESPACE \
    --userId 'd7aFkVaYknBD8X3l' \
    --body '{"incMaxSlots": 23}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'i8nKAUL5VTYQ0mdK' \
    --body '{"customAttributes": {"S9q6uXEk2DO56QZh": {}, "KfMQkmhrcrP6hcob": {}, "ujtcnvxGefP2nJYF": {}}, "inventoryConfigurationCode": "3R9ctULWaUBYk16R", "qty": 45, "serverCustomAttributes": {"DpZgHULG75lymit8": {}, "WJ929CQsyLyljpyR": {}, "s7NFfk21JPkS8zeL": {}}, "slotId": "CJkVXZSMvnT4dyjp", "slotUsed": 67, "source": "OTHER", "sourceItemId": "twPUGDZkB5Y6jlAR", "tags": ["5I1UpWHhzRmBcR9D", "ngc0xkjATpK6JSc3", "kvYAyyNhxMteiSNT"], "type": "1zj435TRwxcb8nC7"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'VzEB6OXp1SGEJsWr' \
    --body '[{"customAttributes": {"wfNW4IojKDeEhHqD": {}, "pZrFp7GWyn0zzb8G": {}, "CkagoL379xzkQ5ZY": {}}, "inventoryConfigurationCode": "BIMbrQM4sQZR3krC", "qty": 34, "serverCustomAttributes": {"7ug2PnlCJ1vCufqQ": {}, "OXAijyk5rQTnJ2SY": {}, "oBzrrickbLpGNiJ8": {}}, "slotId": "Q6yaqWuJp4e7u7hm", "slotUsed": 94, "source": "OTHER", "sourceItemId": "d2kCkEHtJptULgTm", "tags": ["JJeWqi7OiGqZR0NO", "LkzUoXpjljm578ND", "iDyJ3le6qg0Fy2Yx"], "type": "hzVDSnJJG0W6REsu"}, {"customAttributes": {"jVSzG1np3dpup6Ky": {}, "XButsNGqz04M51Uo": {}, "p0b2dJvJm2E9fMBU": {}}, "inventoryConfigurationCode": "XZUKeBX9V0gjfHCV", "qty": 73, "serverCustomAttributes": {"AwSVOgGWbdAed7TY": {}, "6YIR3zZXvteZgRuh": {}, "QtGX1jdyhlqIdQlG": {}}, "slotId": "bBhzql9ImaBxK8Kb", "slotUsed": 93, "source": "OTHER", "sourceItemId": "LHbzemjbg3pJNIJT", "tags": ["lUmptXx13gEYOzqz", "OqrQSfCudtGCEj3Y", "R1tEqYUrUHDba02O"], "type": "xchAWHTzZGNUknks"}, {"customAttributes": {"spj9zbrdvB6LjpY1": {}, "FESAbierVmXb5trw": {}, "moRYYdK91JQbaqGV": {}}, "inventoryConfigurationCode": "bOKdVCmWmVGILXkK", "qty": 17, "serverCustomAttributes": {"CkQaaYC9fNZWHP2u": {}, "5ltO3p2NPd37X3f1": {}, "AgHCFa0jUJcvp4U9": {}}, "slotId": "YkmDuJGoIqO89xwG", "slotUsed": 34, "source": "ECOMMERCE", "sourceItemId": "8k3T2NhW6C0LK8gk", "tags": ["RdcDYv1F5Zt2gKYL", "8Cg9G1ho987T2jrF", "2OxHiYd8RI55J2l0"], "type": "MSxOfTuh5oN8z04G"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6dGKgoiTXzGbHBod' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'zs1PM7hLgWaL3NXC' \
    --body '{"entitlementType": "Dj2OhpKkMFYavgRj", "inventoryConfig": {"slotUsed": 71}, "itemId": "26kc7O9kQjbnkSc2", "itemType": "mak8iviNnnuFsBNW", "items": [{"bundledQty": 86, "entitlementType": "powxozO7wkA1HrtT", "inventoryConfig": {"slotUsed": 7}, "itemId": "oUzk32yya34EZUkv", "itemType": "b2KOmWv4XWyQOQpi", "sku": "8mwimb6hmRyS7VKf", "stackable": false, "useCount": 21}, {"bundledQty": 12, "entitlementType": "mwDOmsaipVdypBa3", "inventoryConfig": {"slotUsed": 61}, "itemId": "hOT3inz3kzm2h8fA", "itemType": "pye6oZUquuiwQxmx", "sku": "n7eRfZ0i7n5Ny8LO", "stackable": true, "useCount": 78}, {"bundledQty": 9, "entitlementType": "omBYYtlCuhwH9zTf", "inventoryConfig": {"slotUsed": 63}, "itemId": "qI4RgXPcT83znZQ4", "itemType": "kw8nzHIXIopQYw9h", "sku": "A5ZBUnsWRWKHZR8K", "stackable": true, "useCount": 54}], "quantity": 8, "sku": "PXwKXmPw8lKBiCEa", "stackable": false, "useCount": 96}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'sRkA9xg262W1o1oc' \
    --limit '54' \
    --offset '72' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '51' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '13' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'FC5rPNaaa9cBZoEv' \
    --limit '56' \
    --offset '9' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'AgmGaVybM9QwmtFD' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["IjEVh8kiCOFZHlk8", "CjCUmqYY0rQiVj4g", "clhCWt4v89eV0gpF"], "qty": 72, "slotId": "VB6AyPMOPWUB0ieu", "sourceItemId": "5d5nKI2CBbYrIdOj"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'geIBpmEvarfFJg9F' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '19' \
    --sortBy 'createdAt' \
    --sourceItemId 'DdmeFxbzcKZ3gQKR' \
    --tags '7ctpFygytR6x1Vx0' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'cZavDpipMs7sp8v4' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"oAf68Ptnmg9QPRvD": {}, "EJ2WNIPu6RBolinj": {}, "DK2yQ2zQz7gbRr8d": {}}, "slotId": "YmEeT6itZkFkp1qn", "sourceItemId": "1EjlXzzfx0iEzQfz", "tags": ["BNZ9VoJC6adTt6ok", "cUaHwxFhxkNMxtVZ", "5Y4hvCjDTyuHuIDY"]}, {"customAttributes": {"ffWv1tKXlSFgm08C": {}, "5xPIgVciej52ygyt": {}, "BZVJezAGAuWHsrsF": {}}, "slotId": "Uf1SerBKjV1Jkkdh", "sourceItemId": "nBRQkqmq4f4xon4Y", "tags": ["9ERVCtXF0d8KBhIR", "jLtvPjKOJLPBh2W0", "v5uc7pkUGfL7sGM9"]}, {"customAttributes": {"ZJjnySt1IwZHp1u4": {}, "5wIsoVm1Q0pYHy9e": {}, "X2zmvWts07jObMUp": {}}, "slotId": "85tXABwhhrCINFlf", "sourceItemId": "zPeT4FJ2cRg8eki7", "tags": ["8GSvHI7D1nfH3kgJ", "ZLQyif0LMq1U8JFk", "VXU3czgf8vuTyONa"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'sx83rWJwLgcPy9vt' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "Bp4q9kpzX0L3Kft5", "sourceItemId": "UisoenOWfbhwMnx2"}, {"slotId": "pmu9SL6robgeHrMg", "sourceItemId": "GTkF7DurxVu66JrS"}, {"slotId": "Czl5T88nhtfLfQwS", "sourceItemId": "e2VsuXWn5BljQOcu"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '0Pido0XcYZ4pv32w' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 96, "slotId": "bbMPfUWX8KmRKZpI", "sourceItemId": "5HwBIuBkdTWvu2n8"}, {"qty": 36, "slotId": "Tz8W6OmbdWj0izQZ", "sourceItemId": "tRYoSxlXEDpnvcPZ"}, {"qty": 85, "slotId": "mHyN5vqpr72j50AS", "sourceItemId": "CdyzHC07J8BtXxQ6"}], "srcInventoryId": "OC3lQ2Vn7nIXMPqF"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'lXw8Dti3eAWXXWmz' \
    --namespace $AB_NAMESPACE \
    --slotId '96aVFat0AnDSDVh7' \
    --sourceItemId '8AS3tVls3UPSDT7C' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE