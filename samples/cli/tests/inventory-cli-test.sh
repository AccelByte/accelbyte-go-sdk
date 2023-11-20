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
    --body '{"message": "HcYaEircVGAJ68g0", "operations": [{"consumeItems": [{"inventoryId": "WW7RK2i7yjR0nr7r", "qty": 54, "slotId": "ma3gBPRJQsCxvKSA", "sourceItemId": "on6rngnIlnkYvUAF"}, {"inventoryId": "n7uQkFzy1zQigoIm", "qty": 24, "slotId": "XDuZhKUMjR8NqssG", "sourceItemId": "D2puBkkn9hCKo9Un"}, {"inventoryId": "wzeUMmCJnVbtD8Zh", "qty": 8, "slotId": "uwPPnuWRv4IjaFVL", "sourceItemId": "xHn4kahdy3LeDamv"}], "createItems": [{"customAttributes": {"baDZRB1tCzzleohJ": {}, "UcdPvfgKZneVehON": {}, "PW5uRMDIDFMokI10": {}}, "inventoryConfigurationCode": "Zi0giUPkyCLbzTfe", "inventoryId": "oPpuWopPK3TLLQIw", "qty": 96, "serverCustomAttributes": {"yiPXDXYLZJEDDVnE": {}, "OgMCcqVVfAf0tkOA": {}, "qwsud86yqbJuuBKJ": {}}, "slotId": "iE3K1ICAG0O1B5ST", "slotUsed": 37, "sourceItemId": "MdnrqKFs9vkkxLk4", "tags": ["klkr65SKlIOJeV2B", "zc50Rnrm9tWtTqMq", "MpRW8NuBibvdoLC8"], "toSpecificInventory": false, "type": "DkfwCRX8Zy02qU2r"}, {"customAttributes": {"ngeEBnAqZQam6Cmi": {}, "NJ962RIqMs2IA2Hx": {}, "kc19i80CZ6zAQEvC": {}}, "inventoryConfigurationCode": "dlxbfoCfj84l0Jm8", "inventoryId": "EGcDzUJjCORODZRf", "qty": 50, "serverCustomAttributes": {"LMsUVa7pct2ngY7s": {}, "zbgpwZsK9esvGxKx": {}, "OXkSlLcF6qt1sedO": {}}, "slotId": "0mFbcWcXPTvqLzot", "slotUsed": 22, "sourceItemId": "R9EKXxJJgAPCw95j", "tags": ["nltvMPkzDi9U2mrk", "pTDX23UnEn4OJpJm", "Jf5IN17bqBrnl0US"], "toSpecificInventory": false, "type": "GRUtqSYry9XAHG4D"}, {"customAttributes": {"fZlLZv3MdVcU3HXT": {}, "Krtx1LU58HrIzVlw": {}, "cZpCWkR4O43FnWYn": {}}, "inventoryConfigurationCode": "Euw3IZORVoULxTo6", "inventoryId": "2SyBpZ0iX0TXY1zU", "qty": 97, "serverCustomAttributes": {"nMVcknj6SonF9EWK": {}, "u2i23rYQ8NahSwsr": {}, "AG1HfZnlNkjAzKhn": {}}, "slotId": "RJqoMSPAtzFiVdn4", "slotUsed": 81, "sourceItemId": "ix13Oczf6vMbTkCB", "tags": ["GgkTnprv67ummgDi", "iOYFF6zVfSuaqEXT", "JjOBkETa39HLeBFD"], "toSpecificInventory": false, "type": "9AZ3pV5vPhLGjYCO"}], "removeItems": [{"inventoryId": "zYNm6XEVLn44Unib", "slotId": "x4CsHYCYS1go4Jbu", "sourceItemId": "y1z9N73KoTkkPGqU"}, {"inventoryId": "8PtXb3MagxworXyB", "slotId": "EUzk6Yo7XWWVq7oT", "sourceItemId": "r1ZqQQEvkUwrkMl0"}, {"inventoryId": "2sGq3FpTvavbJ884", "slotId": "vCnY0Q6jMSIVKZWK", "sourceItemId": "YDR0wK54vwMdNBGS"}], "targetUserId": "8zEReEhnhovCwluC", "updateItems": [{"customAttributes": {"XfGNNbOZg5v4l4KK": {}, "uCYBdrQ0iBiruAWQ": {}, "XAy79KYtknomrOEI": {}}, "inventoryId": "Q6JZDzhx3DPr2NF9", "serverCustomAttributes": {"eSdTT5QK34ZwMMtP": {}, "zdgmpBAQLZD3yw7h": {}, "KZoXtompPrhO3Z3M": {}}, "slotId": "q9RPYntqo1n4oZiD", "sourceItemId": "zHELxVIxKPJB78oM", "tags": ["GXW6BCWSGDPGyQOI", "ZWwiAw3khUcXL5E1", "NWHwbNeQQVI0ZwtT"], "type": "Ia3A3nNN1rfJMLnk"}, {"customAttributes": {"Mz4DWgN2ZNJyeem1": {}, "H0WYdUAakFtOMOBp": {}, "dlMiWuQL7dyBf3zj": {}}, "inventoryId": "4nAmMkZ1cXjzxUNq", "serverCustomAttributes": {"XIYeNUB10Mmgj1IJ": {}, "oufUwdV3DcPgJEZ3": {}, "E784bP9aEXvx09Cz": {}}, "slotId": "rzGS9P9bkyAcWgLb", "sourceItemId": "6SpmQdGg01RhX3Zj", "tags": ["ee6OIsKdDk02J8YW", "ObOzzL50jzA8R734", "4xZwlXnHTynlzKo5"], "type": "42YQu7OPR5QdeYiX"}, {"customAttributes": {"B9c4NxGCmqseIa6Z": {}, "uLZIwn4iikgX3Kkh": {}, "tyryJgb08T5wiX6l": {}}, "inventoryId": "shBLEaGKYD2VhYrv", "serverCustomAttributes": {"jULTZl4i1DizSi1S": {}, "qpIoJZ5FAZiwmCHZ": {}, "VNckiwCmP6QUxmrO": {}}, "slotId": "AgWKNj6lTITqSn0R", "sourceItemId": "tZrOLXcSJUkvz4s8", "tags": ["L1TtPYcG5ugMor09", "dOyV9cBlioyNJwF2", "K5WGHg00kz98zW65"], "type": "Z6ojPER1ZY4TMD5C"}]}, {"consumeItems": [{"inventoryId": "PQaoopjjPWMD27w3", "qty": 9, "slotId": "4OfKUtOnXUEpE8Mg", "sourceItemId": "rsfnUb07PjkfToW4"}, {"inventoryId": "bEucMFCEnCKBkD41", "qty": 91, "slotId": "v2M54W9e0c5qUFZh", "sourceItemId": "99sjFtzLfbk3hX3y"}, {"inventoryId": "Ms1eRx5zt0YItt0o", "qty": 32, "slotId": "bY8UUjeYfswvC0H9", "sourceItemId": "BFHhymH1xGuGy66G"}], "createItems": [{"customAttributes": {"L212XhSmYgLGXAUs": {}, "NnOn9Xsu6jhtSp9D": {}, "0EUahLSbinrM4GOp": {}}, "inventoryConfigurationCode": "WDKp3iTcEyQWiXoP", "inventoryId": "8tlP4ae2v2WsgUqv", "qty": 31, "serverCustomAttributes": {"BHIo8Lt0SVacUnlZ": {}, "0wv03qml1LeAIUBi": {}, "TxWA22kPLodmrwRo": {}}, "slotId": "V2KWN4sM3YnyLtNR", "slotUsed": 37, "sourceItemId": "ZQOadz75TqpAcFsy", "tags": ["2f3XjSHZ2lOqOeKf", "rVFdt9OxCuLbTcG1", "8BGZjg4qMAiHRuaB"], "toSpecificInventory": true, "type": "16hU2mXelzeOcDfn"}, {"customAttributes": {"hjc5nHi7ymALwkKB": {}, "2EZZ6MS1q0BtD8FH": {}, "0oRg2AhvyVwTPWBL": {}}, "inventoryConfigurationCode": "sdtAXGxqeg114z3V", "inventoryId": "eUwo97WTzk8HAVBk", "qty": 98, "serverCustomAttributes": {"SZeVhkhYWys7P7hV": {}, "LQLyV5472ZYSKrOU": {}, "dulLzbW1V6XoYgs5": {}}, "slotId": "OPuqZMLWp7bmnQfq", "slotUsed": 63, "sourceItemId": "NYaGCydVnG7eVYvX", "tags": ["GwTThExcKCAeHFop", "Kxf4BWoFwKgEP45R", "wlEaS9QV9THNisGb"], "toSpecificInventory": false, "type": "rNnjCNIKZIzUiUrq"}, {"customAttributes": {"aD1w9L8llrZoA5MT": {}, "DtgCuPQornpnJugi": {}, "lZhByGiYEYjRbTo5": {}}, "inventoryConfigurationCode": "qzmx4nDUf1G2oNiA", "inventoryId": "ao41kQULNY0jfdBw", "qty": 73, "serverCustomAttributes": {"UDYhbPxl2ODnCkBd": {}, "AfyY0hqvBplElHxk": {}, "SW7z2xztAuz0dlxL": {}}, "slotId": "GajJGupwA60ic6OU", "slotUsed": 1, "sourceItemId": "llSZG4SVhblQXH0N", "tags": ["H3LaH8BMl65l9o2X", "5vUgGw71NiSLB9jk", "52Bg3Pi434ZpxIvf"], "toSpecificInventory": true, "type": "ZvCfdY4byKNaQzf8"}], "removeItems": [{"inventoryId": "mRoHWVvbbMcKXa99", "slotId": "hvgefRtTkC5E9OW1", "sourceItemId": "mr71X3TN8Es3BOk9"}, {"inventoryId": "eZ257cAsS9QZIrbP", "slotId": "nWaFN1aKD1FYgxZi", "sourceItemId": "tkSYgg7IhbULZOp6"}, {"inventoryId": "i9bVaRfowskAVEWV", "slotId": "me2UxLyIwQIp1PXp", "sourceItemId": "whxYFHyQW6Jcvaae"}], "targetUserId": "up8k5HOFmbzIIIo6", "updateItems": [{"customAttributes": {"OgBkiaQKEtvhvK3I": {}, "jJINl3Olky5ZwFdz": {}, "VHzQwDkLv5D4vdPw": {}}, "inventoryId": "grVIMQykTQvQJM5p", "serverCustomAttributes": {"MkHh2j2EEEoohFq6": {}, "aicMBcr81z76oev9": {}, "3dvgSHDkDvotpSW9": {}}, "slotId": "AyNI6O2qwY5SFAXj", "sourceItemId": "g3A0hkxESAxn21VC", "tags": ["zNkyyMRcKd1qF1yH", "BQqOg3QEpa6lEgjI", "Z1Lp1Y2V9v57lxET"], "type": "nTczYy3Ec1d5zm8r"}, {"customAttributes": {"w83QkS0LOTIPRXTq": {}, "BFcM4hkbODdNyIDi": {}, "52pOclmF5yRKWGX2": {}}, "inventoryId": "H5BtGiQVZxAnjume", "serverCustomAttributes": {"mfBUmY5Qt9guF3Wb": {}, "q3KVIvCSwmVnmgye": {}, "PSpnMF8NkoQPQSis": {}}, "slotId": "GwYCS3HjuAC1UkXT", "sourceItemId": "USCNhy76GwCpNgK3", "tags": ["5ML3RO1ivJIhebtD", "VmN7ExzhjXZp6Nxp", "t3OXNCCe4269oBuH"], "type": "9EsGuGpuN2trQ2AI"}, {"customAttributes": {"ZPIJJddzovLNISEA": {}, "oiFjTBiafFQngQL7": {}, "EfrloVKSYCbB4jXp": {}}, "inventoryId": "y9ikFe4M9seCAYqF", "serverCustomAttributes": {"RtcUiustDRA7PFPJ": {}, "8rfdfcjSZ8MzMD3S": {}, "i6Ddl05qxlH322t4": {}}, "slotId": "5eNumeUPYW4ej1ON", "sourceItemId": "ju8ubBDli7PH5zb0", "tags": ["NsCcUqBX1BGlZAj4", "HQQUsXTN3AGYGJwu", "zXwe8JQ6WqIhxwWi"], "type": "F8rXqBc7IS3LklFC"}]}, {"consumeItems": [{"inventoryId": "FM3sMl4fUIgUfDJK", "qty": 86, "slotId": "ZllgFEm1V1yPrxzD", "sourceItemId": "vLcYTjZnhBXsNh6H"}, {"inventoryId": "Ci1vVWKJgDEN8aan", "qty": 15, "slotId": "FsjUp9CDhWsXabmj", "sourceItemId": "wUBb8HCIX0ms6A1w"}, {"inventoryId": "XhOsTF8QkNaZzcqn", "qty": 87, "slotId": "c532RTCvMMmK0c1L", "sourceItemId": "Yv9EpyFuUo6gfzyn"}], "createItems": [{"customAttributes": {"2vRThqvuTugIhhSr": {}, "CWqs6VdwUihDx7PO": {}, "4czPkWUdFsUmbIpd": {}}, "inventoryConfigurationCode": "05MEBUeQbNWJc1K5", "inventoryId": "KYLquGfQ4dXtA4pa", "qty": 76, "serverCustomAttributes": {"LQQDxL5zXcamMLtV": {}, "E43xYshqzWWqJv9Y": {}, "4NsmA3OF9U0MqI04": {}}, "slotId": "2XRlO9fhEgQ6jtlk", "slotUsed": 3, "sourceItemId": "vxvBd83SaEk3lxak", "tags": ["ni6rbd2LWg4M08BB", "wf6vuK0J4c2f4RYu", "SAUMeJHQfW7RyGSI"], "toSpecificInventory": true, "type": "jqnEeTOrYTCfwnzz"}, {"customAttributes": {"iV7JUjAZ5kjohjqf": {}, "37mSCW2uv381oEFB": {}, "te3AHwKAzaFqT1Z4": {}}, "inventoryConfigurationCode": "eqlH7Ma67DjBF0pK", "inventoryId": "an1GGzoJGubjhFTD", "qty": 93, "serverCustomAttributes": {"pfDUu1Q2zaembmoF": {}, "5Wv3mdyL0q6U8Tha": {}, "oxMb5ZBR3TpwdBcE": {}}, "slotId": "dpp3ur3by4pt5Jh9", "slotUsed": 12, "sourceItemId": "oGi0w4SwLcLyp3Qo", "tags": ["IyN3Wim0OlAB0SwT", "Kq7J6HaNjuvieFQa", "xYVFQaUiOZbiRPTi"], "toSpecificInventory": true, "type": "6mmf58nS9nAy8bxx"}, {"customAttributes": {"fTId4FLCvKNHuOWR": {}, "LngDH9flbS4jWwFj": {}, "se2xtnP5jXKNfEop": {}}, "inventoryConfigurationCode": "1Mp2UvdqDYZ54oIO", "inventoryId": "uhigxOECJbTbdZiX", "qty": 74, "serverCustomAttributes": {"W0kPW1mvW6QTShBn": {}, "2cdOLGRZiQh1jIuU": {}, "Wz2rcxBZ9o2FLqiX": {}}, "slotId": "83DWbQB6sheIysFy", "slotUsed": 71, "sourceItemId": "n6iK2x7QGpAwmsLf", "tags": ["k3d6SqiIVoSarAmP", "Bu8ObA7EMOqZNB57", "diCs3jWLdF57gfqB"], "toSpecificInventory": true, "type": "ue0SDYK12pkmHj1F"}], "removeItems": [{"inventoryId": "Gr8fy5YKCCfK7saI", "slotId": "pt2ztf1I8Obv071G", "sourceItemId": "hPhkz14yUEyztjv4"}, {"inventoryId": "w6x6fDwkQ9EkBJI5", "slotId": "tgtlbpHmy7lBNaxg", "sourceItemId": "1sGfUp9GutloMRyb"}, {"inventoryId": "ROpTkn2vhW5RpvzG", "slotId": "92UmdA26TSK3wiH3", "sourceItemId": "OZu3qDRelnYkDKh1"}], "targetUserId": "WHxwSBwaGTA34heN", "updateItems": [{"customAttributes": {"JZ4vUVlwoHZWghK1": {}, "lEtzhJzAJ5oWClSn": {}, "00zeY51jVsJfHNRA": {}}, "inventoryId": "Bp9ok7xBbqqqEEC5", "serverCustomAttributes": {"qz1ind57sZnl0fV4": {}, "sMKQcAAKMYptTqZ0": {}, "dX4q5KOjZ08zIfW6": {}}, "slotId": "HK3FHJL44hy1FL21", "sourceItemId": "KOcrAmsifgBkpsBf", "tags": ["Fcj1IuY724zEk5oi", "OcrTtc7L9q825MDA", "B17EN83njb2fBlHu"], "type": "sjGcfgKGPfIAfUfb"}, {"customAttributes": {"SBsJvUH8TnXbPOzx": {}, "otzCldepLuMuv9SS": {}, "OWxeLNGMfShIy6Gx": {}}, "inventoryId": "PIS3qXhZF5nSV5If", "serverCustomAttributes": {"IkLTFwT3pvXHBiUH": {}, "aAAL0wFRA35jpwIr": {}, "1MSUTynH8ZQDEpXI": {}}, "slotId": "j6IzdO255kC27nMZ", "sourceItemId": "mzJ5GUPYXRARNvZ1", "tags": ["flhF67OeOxDcCVQC", "imdhyx5XWNGAQWkt", "Qf4MCeF8dOtEqg4q"], "type": "WrRajXsbFpbYS2r7"}, {"customAttributes": {"TWhFeqvEbC1B9npD": {}, "0T6uoPnemk1bfkUR": {}, "onVWrTfKRtUTmRAz": {}}, "inventoryId": "zg9QbzkpjBPlG6W5", "serverCustomAttributes": {"cpsyhcX9qEE6YbJG": {}, "R9iyse4d2MCveIS3": {}, "Adx4mePhw4TIOqkk": {}}, "slotId": "ucPTcbjgHeoX8H3p", "sourceItemId": "YBg6fo14HtPUdHtx", "tags": ["dvEO0T7wql2SpLZr", "jqohEqNrxDrKsCpj", "lKbIas316H6TKLta"], "type": "x7epXJgJEgPD0sVm"}]}], "requestId": "3iKMynFtf3IaIcQy"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '83nk4ddfGwfAgxRh' \
    --limit '2' \
    --offset '74' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'Ct8ogDVcktUtjhlB' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "7upYjq9Kq9T8k8HR", "userId": "I4We1Ed96mtG5Div"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'On54F36tmmvK9B5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'sClg2muSynOrwwX6' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 20}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'hUQwdVMA0spksW1I' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "L6TcsFlUD8RPjggm"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ewL4nVErEbVjQs9h' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '15' \
    --qtyGte '99' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'vOWoFiOkA97ayxtx' \
    --tags 'nnWt0ea6YiVQoKKm' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '16LISEAmNjJZ5CM0' \
    --namespace $AB_NAMESPACE \
    --slotId 'I9h2XEyAj6XBPZNr' \
    --sourceItemId 'l4YEFsXKP357p6K0' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'zD8JknrQQ0m6NeMT' \
    --limit '36' \
    --offset '50' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vX5Xoh5E7yrGdCHX", "description": "uvomiUt927OFv3Dh", "initialMaxSlots": 48, "maxInstancesPerUser": 0, "maxUpgradeSlots": 35, "name": "S9at5QKOyr1Pb0cx"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'CM2xBoOLrGLNZxBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'OvQdasezJRFQAOmv' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "If9r4v1I0cPSDKsX", "description": "WugD8cgezuBlN2n4", "initialMaxSlots": 68, "maxInstancesPerUser": 27, "maxUpgradeSlots": 5, "name": "CQbmhNjkKhlQHYSH"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'k73qSAU0icc6npyA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '92' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QpXeSOj16qV75pOC"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 's8j5axgB2WnFqlhy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '45' \
    --owner 'aMdZcUGZGXCrTjou' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "j5DCRJBVRe8hsnMU", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'DiLdtEKGO2vMnXBj' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'QpAXxDj06B2vjHPc' \
    --namespace $AB_NAMESPACE \
    --userId '1xJBzeYXO6SNqmsn' \
    --body '{"qty": 11, "slotId": "CVaPh1Ue1dOVkm7j", "sourceItemId": "qu7nIwBkyAxubjT6"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Qv3MBpv56wuy45xW' \
    --namespace $AB_NAMESPACE \
    --userId 'zBuIgg0s4THdGck9' \
    --body '[{"customAttributes": {"feyyCAzgD3CgBRPE": {}, "URgToM9jj9CSP2dg": {}, "0MNb1547jpuh3qkg": {}}, "serverCustomAttributes": {"hkbD7EQoARsIcRTH": {}, "wOk2TGDCpIs06FBT": {}, "xuTk7XEoAZrIpwzG": {}}, "slotId": "wBcoMKiOFuckG1zw", "sourceItemId": "QuWggZfOdwZMYRaX", "tags": ["tOUIYmg2jbLM8aM3", "7y2hY9z3CYpjnsww", "qVF7BN5zLZR9em0T"], "type": "aGcHdXgdYw0L3xLb"}, {"customAttributes": {"ERc3lDpn9v6S1Pbt": {}, "tb1JGUumQPmC4are": {}, "W31kIBkWqrrgPAHh": {}}, "serverCustomAttributes": {"HbbHPoR3phPxbA0m": {}, "hBKw0cTyevH0uH4v": {}, "lEwJUzwPbxPVDu2c": {}}, "slotId": "A0v6RFtsjFrmSyym", "sourceItemId": "sdcY58RYSQ4CIeae", "tags": ["kXrFo5CNMcadwlBX", "9PWGW0KGIPYRlBi4", "PICft1oBYhH8Msbq"], "type": "xenAqK7Kyda9eCpd"}, {"customAttributes": {"KBqpbIRurNSDsb1Q": {}, "bxt78BvHaZ8o3lmC": {}, "FWjmJtaBXTu0isO3": {}}, "serverCustomAttributes": {"epBaj1UvkbbM8Vzx": {}, "F6QNmB5luS3FFjoe": {}, "camRcY5VRU9zW2jG": {}}, "slotId": "rtKnZVzXdZNecNXa", "sourceItemId": "KsRDv7ljC3agj8q9", "tags": ["jdKEILyfRm1sgwKt", "5433AaHOVWjyiO5Y", "tgCbpcBprvK3t8hT"], "type": "UdIBMzxzDjJEi9At"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'wFFmkkYXuQXcpQiK' \
    --namespace $AB_NAMESPACE \
    --userId 'JkPu0uJBIylzZ2Kw' \
    --body '{"customAttributes": {"NScclH9hV1N2Fj4V": {}, "sCR2FiRtUsmssOG7": {}, "o8xkm0FMA97sBPu9": {}}, "qty": 17, "serverCustomAttributes": {"C4CRn0tjp7LOeDWg": {}, "C7A8OKXQSPnREVsT": {}, "y5tPNXFRTHIWkHz1": {}}, "slotId": "C5T1jGVogXAUnsa5", "slotUsed": 34, "sourceItemId": "Gshok0SOPDiC2Xli", "tags": ["UyGV8k0x8jmL7HzJ", "fImqVzNQrzsOfivO", "NjtbDzFmq8wEgo72"], "type": "oKJZL06MJeF9gLe7"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'rgpG57aVO1B3cjqr' \
    --namespace $AB_NAMESPACE \
    --userId 'eQxzPnGWIf04AHbq' \
    --body '[{"slotId": "xr9SzojgMl2LN2OA", "sourceItemId": "lOhkgpzfXWRTuOoq"}, {"slotId": "NZt6Q5UKXjYfUmw1", "sourceItemId": "m0TP19KMX6bC6L2c"}, {"slotId": "lOs300IlJzoFyCtB", "sourceItemId": "FIpY7fLyGrjlM0Jq"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'EudHvwzQgUl68jq6' \
    --body '{"customAttributes": {"z0N2HP26qe7a9vBs": {}, "0mZUbSe8zremR9Cc": {}, "clFC5lB905eBw1lg": {}}, "inventoryConfigurationCode": "Yh9N77g3O8htBQx5", "qty": 86, "serverCustomAttributes": {"RKQfL8gHc53hkL7O": {}, "0fZU2w3YhDJX3e1S": {}, "UvpqoqLkz87eCqcW": {}}, "slotId": "LT2C3Qg6HWQ4qRXy", "slotUsed": 58, "sourceItemId": "U4rOz69v6lH13WG2", "tags": ["M7ZnGhjzlWggdioT", "nMNXHBSNQmoORJoh", "oTAr9mRJRhLHTzwO"], "type": "HFL4hBoKULByjhNz"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '4pJOPeLs8AMQNc0e' \
    --limit '13' \
    --offset '78' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '87' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '65' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'lOfZgulJJob8ZP6i' \
    --limit '92' \
    --offset '63' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'IefDU5HaOM1lkmUm' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 95, "slotId": "A3NT56wdaCMiXezr", "sourceItemId": "03sgQaTFXPjbOd4h"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'BJ7qglwYxFVe7usq' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '60' \
    --qtyGte '97' \
    --sortBy 'createdAt' \
    --sourceItemId 'Guf2av1bodH4TK98' \
    --tags 'YUNkvdUHUliEepzj' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'lLeKzXk8q8xZSdVZ' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"ADGd1MVI4miDEwM9": {}, "Nqful7x9s0vkuhHO": {}, "YOrRPTI6G85Plkgw": {}}, "slotId": "si4NoaIMybMacp0b", "sourceItemId": "GThvrJJHfS5pxJVt", "tags": ["AoU81i8VOjUxKbfr", "E6Nt72vl7db3ib63", "E174t3JfFJ2TRHau"]}, {"customAttributes": {"88IZItmrXjRhKeZk": {}, "y61ztOkVNdFUgvnh": {}, "PoeX4sDGHfJpoJOy": {}}, "slotId": "dkjsbgRNVboo5Ni4", "sourceItemId": "5sKwV7se1PA32s5z", "tags": ["j4liv5jG4pjtskjX", "2JimD9TP2rPoCfkk", "gUinhpJWzZiZUrJh"]}, {"customAttributes": {"PMakcH3EW2G6DsZE": {}, "1qob9uokrcGpHubG": {}, "qY9G5pQF2AoyyHEt": {}}, "slotId": "NCnvEmIF6FyBwKox", "sourceItemId": "hDX3nBlUYdOoaVSm", "tags": ["hgG6hYmyir0lE4cR", "8SZs1WZy8sCcZ5wP", "qd4IPU4exB1YJCt5"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'LTkB3RALPscUfE1x' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "JipPMJ552g57AueO", "sourceItemId": "xIEelcqZE0fH6RuR"}, {"slotId": "YQVUuthVyhFejV6P", "sourceItemId": "6JfWSxSIRMYd7slZ"}, {"slotId": "l29WOIDU0f2Ee8lg", "sourceItemId": "qyjLc0NtpvTpHOgi"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'BHKA4vy6aiXmM1WI' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 42, "slotId": "3axjk1lIe55Ux7Jq", "sourceItemId": "QWSrzV1gej7MxIhp"}, {"qty": 26, "slotId": "qNUS0JW1ruCCLLie", "sourceItemId": "VH92d12VfRQDd1rj"}, {"qty": 30, "slotId": "q46j5m09iRb3iFW1", "sourceItemId": "MshiWv8uSri4giUR"}], "srcInventoryId": "HJndJdZCaQP8XnAH"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'gUnHBetcKYaujdHw' \
    --namespace $AB_NAMESPACE \
    --slotId 'WgXU9Wq4sewERkXN' \
    --sourceItemId 'X7amOI6TBOVELWYu' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE