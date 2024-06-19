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
    --body '{"message": "2l4c9xohDKPrMTAy", "operations": [{"consumeItems": [{"inventoryId": "WLV0sQQZfQHMNHEI", "qty": 97, "slotId": "9TLwydKugrltclNV", "sourceItemId": "R9TbROxEwZ2LOGhZ"}, {"inventoryId": "xEy6yOqgNYszmLRb", "qty": 10, "slotId": "fG7DCigHKZAFvZWB", "sourceItemId": "GZSkFUIaFcCXj5Hl"}, {"inventoryId": "KgsNZ1ZCJs8q4NWU", "qty": 17, "slotId": "PKKG6kiKj17lqMfv", "sourceItemId": "xz9FWzfLGk6yKyOk"}], "createItems": [{"customAttributes": {"C18YcrrWgX2Il1Ed": {}, "9HwceU6aMIFjTrDA": {}, "jJ7a0gk6u5ScjPQp": {}}, "inventoryConfigurationCode": "3IMOHmwXEDFCA9Q3", "inventoryId": "1JPYedJ7mF3eXfaX", "qty": 42, "serverCustomAttributes": {"PfJJ24NKNjJUNjEX": {}, "MhutZV9xXDyzBjoT": {}, "nNc9VgkSbUrBvTS0": {}}, "slotId": "1RyTeC9ku4QnQkI3", "slotUsed": 23, "sourceItemId": "CFPy9cCE1kpqz0Qe", "tags": ["yx0vhphIV4QuKF8L", "y3UGZ4g0ohVtUXaG", "PEAuXOJB8fVpyOuI"], "toSpecificInventory": true, "type": "zRJ4TxJ95QCNbeKY"}, {"customAttributes": {"AQSY7hEXLaYR8qUZ": {}, "uA5TpzkgPT1zP90Z": {}, "8kR7zDuyefFRWohP": {}}, "inventoryConfigurationCode": "eritibV7ZSwCIFJj", "inventoryId": "zNZJ822B4wt1e7N6", "qty": 8, "serverCustomAttributes": {"YVQWCH7bZZLn4Pqn": {}, "J0n6rewQH5VQ3VvW": {}, "uusYdnWRkCbKb5Q9": {}}, "slotId": "Z5ekQYzWENEk75At", "slotUsed": 70, "sourceItemId": "dd2HS5yr4PH1NpH5", "tags": ["Ktbcl3YTZNxpPfJR", "4uIlLWvLXVPXtvoP", "SFZvHERKfGka0DfI"], "toSpecificInventory": true, "type": "19q6otnXJbybfNjF"}, {"customAttributes": {"J9KCHACOySd0xzNa": {}, "PzmZAAqdBn6T3P3E": {}, "ryzpKaovJfx21bw5": {}}, "inventoryConfigurationCode": "kxWSCTxZXGz0NZ0B", "inventoryId": "pYuXrkIWC0daZowj", "qty": 14, "serverCustomAttributes": {"KCB7RRMX9HMecMTt": {}, "ocgKhhm9Jp9x9W8v": {}, "39YKlJ25VSJXz8PW": {}}, "slotId": "ctEcrrWgwSMmRz25", "slotUsed": 66, "sourceItemId": "OkOrtxc2lLzNnMOd", "tags": ["dGZOIE00lcu85hhc", "M3AEIeOy05zCLShW", "ZcO9WNN3AZsu7vjc"], "toSpecificInventory": false, "type": "aJXfMXOT0Y4NuBvi"}], "removeItems": [{"inventoryId": "lEI2gL5SfwYzyWHQ", "slotId": "AwLOEaKF2e7m3WBO", "sourceItemId": "YArjPKnPYODr5T6C"}, {"inventoryId": "R1x1TTkugJbNQzmD", "slotId": "KpVttp9JK4LTtUii", "sourceItemId": "BMNa6rxNieBYBPiC"}, {"inventoryId": "XILznzk0RHs0pjyW", "slotId": "ascUuSDwnwKPxD9X", "sourceItemId": "TpEoQB8NmHHQuKX9"}], "targetUserId": "W9CrzMXcEY3wYCQJ", "updateItems": [{"customAttributes": {"Vlf2PIgr588uDsD2": {}, "8I0yYuRDD6W6Tdcx": {}, "gk68TAroNo8GvF0x": {}}, "inventoryId": "ntWBZrePxQGtoUYO", "serverCustomAttributes": {"qxYSyhtNQ7n6yHZf": {}, "TgbVRThtg4jwVCAP": {}, "Okf91DZkBv7O4u5r": {}}, "slotId": "HBHobmu9gq25FpHA", "sourceItemId": "P0s9AY3uNqQ7clAz", "tags": ["mfNt8FTqLo8Dpwub", "zkVIF5HupvodyV2L", "Yi4oq98d5CzU5moL"], "type": "ubbe1D8aXG3tnmrD"}, {"customAttributes": {"zuqMSwnnQytsNj4f": {}, "mZu3mLnPfHXCWnfc": {}, "KPpkZem6c0OaMt7L": {}}, "inventoryId": "aIcIhIDMx2RxDLsV", "serverCustomAttributes": {"EZbmkAWqL4Olc96V": {}, "ve0fqM2W3QsgPqhr": {}, "0G5emudLFjEOaBFL": {}}, "slotId": "xmXiazuAwi9JHR52", "sourceItemId": "FZcqOyiY1vx8I1DU", "tags": ["OYchLhcYjMuMZf7C", "FYis7OeCUS0tCyFG", "myZBenDypMJp6inT"], "type": "JV2lD0qw8VD0hq7E"}, {"customAttributes": {"609opSOMNCBdKEDk": {}, "mJqi6e5nGypNUWPC": {}, "b8nrFDFLbUFlmU6V": {}}, "inventoryId": "Xpq45XfMNO7hQVhZ", "serverCustomAttributes": {"jkyizcQGV4Mac8PV": {}, "zX6nDctF7tB6mEAh": {}, "08uR2QXCkVweNkes": {}}, "slotId": "fESI03KvLg2H5XIk", "sourceItemId": "ZzjSHnK4Za20RPzV", "tags": ["YzLWyJJZsa41zmZr", "o0GK6fg5OgiYTbpI", "WJutm5CijMklxzId"], "type": "bReWyO3gTeqEhfT9"}]}, {"consumeItems": [{"inventoryId": "xImHnk93hMii1SeB", "qty": 75, "slotId": "B7sy6QLSGffsGFMI", "sourceItemId": "7AgiDTU8cTvoMAq6"}, {"inventoryId": "O5QylqD886AYpWCw", "qty": 39, "slotId": "vo8KbS1f2UtAatMr", "sourceItemId": "Tsa17LSix72ghxMg"}, {"inventoryId": "JLQSVM3dfiqRdmHt", "qty": 86, "slotId": "Vo1TQeDvtPb7ejTs", "sourceItemId": "wwkX1F74pXWuH1qZ"}], "createItems": [{"customAttributes": {"Mm0rIkDuMY3iSUxL": {}, "Z99uWmTQcnr4Mpbf": {}, "Y9EZjVmcWuMjpB4I": {}}, "inventoryConfigurationCode": "o5pSU7KJL9rtboa0", "inventoryId": "fSBK3D9j0bsQXoWp", "qty": 49, "serverCustomAttributes": {"BJnBMTciJlpYXo8h": {}, "Bb5iDlg0kPGCRq3r": {}, "MzAEiS997Ci1x458": {}}, "slotId": "NarRMDzCy95BrngT", "slotUsed": 38, "sourceItemId": "UgPQhMVNQ6durNwh", "tags": ["822ZbxB2d6GR0hdI", "fsTNxL4NNpxVxlAz", "SRXkhXiFTczV1ORh"], "toSpecificInventory": true, "type": "6h3PmZd9bTVUnfAc"}, {"customAttributes": {"dNFQJRhIJr4Tm56V": {}, "SaTJbKYqCXXxkrWk": {}, "CpIfmmnS9lgGCjMF": {}}, "inventoryConfigurationCode": "CIvH55OYze9jUeuo", "inventoryId": "l3p6vS9Fu7TSqJOz", "qty": 86, "serverCustomAttributes": {"HdcB7SSwjmzHhQuN": {}, "7sOwhNPO0YMvUYAo": {}, "h6TawD9ePgt5iKwL": {}}, "slotId": "fDtaDdXUASNztfBK", "slotUsed": 87, "sourceItemId": "3byokPKTHhAwFCKP", "tags": ["hV3sGAmMphDCvbQ2", "qVNph609wwRWoWeM", "P0kRlI8P4fdDFncb"], "toSpecificInventory": false, "type": "hkmsIvbGYV2MFkxL"}, {"customAttributes": {"hXR8x2mzGdaHmsH7": {}, "gjuiBK4YDZqJteNJ": {}, "lUzMNsOkx1Rg6ah4": {}}, "inventoryConfigurationCode": "XUFe81uYfePhtnDM", "inventoryId": "OUnP2CAeoiRLhwxK", "qty": 72, "serverCustomAttributes": {"5svCmAydyizKNQrG": {}, "cZllLyHDAkRNitlZ": {}, "Azlwkr3gmKd6N5NE": {}}, "slotId": "NnUkKTJA5q7c5yNd", "slotUsed": 35, "sourceItemId": "9Ck8apCga8IVw86A", "tags": ["c1gureoR8b1iXGm9", "qJkl2QMUQQe6dctE", "U7LOmUjdaTAcFbEg"], "toSpecificInventory": false, "type": "qdJS2mUSPP7r1FFi"}], "removeItems": [{"inventoryId": "4UsLjH23fOG0eFro", "slotId": "dgPMhngUmMyILqJJ", "sourceItemId": "8djJk0S15uNCo67b"}, {"inventoryId": "3kQUv4pw2OqYzrSs", "slotId": "XGyf2vsBs7TsQcTs", "sourceItemId": "Z8BshTjpgXOLQvGl"}, {"inventoryId": "D0tZ7PmH6Cm90B7D", "slotId": "OtB3DnVvn0L5mIrx", "sourceItemId": "iL4KnovTRIEY6lRN"}], "targetUserId": "ofw7GIDM7qXNPFCt", "updateItems": [{"customAttributes": {"u6Ru2lUZ8lUVD9vn": {}, "ytimgNODEqzenda9": {}, "7ZWZjGEwEQeoMQZh": {}}, "inventoryId": "rChjKbLI8OJDXNJa", "serverCustomAttributes": {"GaP1n6dYG8NJNHAN": {}, "KVeznyWNrI8gTNca": {}, "JLt1tSzb3Drl6six": {}}, "slotId": "oOemlJCK6CYoIqEe", "sourceItemId": "KJkMSQ70IGwcbOEq", "tags": ["JwdbEpExrweQZEOL", "wW4K1f4qVTFyfOhm", "3p6ijrEe0tVgWXtg"], "type": "x9wClO4dcxgLatRW"}, {"customAttributes": {"AmUKfY8haYUQRi4d": {}, "FFX306axI6w7kLDD": {}, "3qsfeAcqECeyN8WD": {}}, "inventoryId": "NocyqDWLtmv8ZFez", "serverCustomAttributes": {"wZ2q4rXK912z39zC": {}, "ypM2nEvZOit6sg6w": {}, "bqOWyZ1yWEPAiRM9": {}}, "slotId": "Y0dmkM4AxnU1BFNJ", "sourceItemId": "95nYZOTZ0VnfMG8c", "tags": ["Li9pLfNQmTyWD2Wn", "iCHGj7cvzhAwvwrv", "nM3aSmhsXWAhESZI"], "type": "53apU822S3OBVrQc"}, {"customAttributes": {"hb0R3YUShVgscI9S": {}, "GMZYaLLnMntfxjoX": {}, "3ZeHOEYr4UJr7QTn": {}}, "inventoryId": "i689ybF6P047Tqsn", "serverCustomAttributes": {"qmArCvVhjZFvOrKM": {}, "r5pq9rcRwlv2edOd": {}, "WJzo9YEsFddXaQkl": {}}, "slotId": "dCd9oocwOCaSOUd1", "sourceItemId": "wIKVqbex6yvnpjMR", "tags": ["7ZOgN20kdHf5rNF9", "wzKeOxymNkdvVQE5", "piXEpEJWwXEBUwUO"], "type": "pCUqGe6YUuUzSlZp"}]}, {"consumeItems": [{"inventoryId": "gYpMNFpKEqhTuGXK", "qty": 70, "slotId": "HAwjAUVhCt2Bh3BV", "sourceItemId": "CAdcQBifdu7kIEZH"}, {"inventoryId": "RxkdbhIGyxlrsv3R", "qty": 4, "slotId": "bcU0C5SzgPOolgqa", "sourceItemId": "FkgivroPJL4hkVoC"}, {"inventoryId": "8Xjdo1C5jotUmjFA", "qty": 45, "slotId": "ktJ4SYuKBP4aRZtX", "sourceItemId": "sNDAuBYe0ucNFVEO"}], "createItems": [{"customAttributes": {"NvUrST9dA6C52dSx": {}, "eMzcyhVy0Hf0WF2X": {}, "0EHwmQI8eLkiiywj": {}}, "inventoryConfigurationCode": "xJVhNchim0TSNKf4", "inventoryId": "1SI6E2HQzD3mgIkj", "qty": 76, "serverCustomAttributes": {"ltF3FkwV0RCdAZAL": {}, "CBFpDlilL2IORlLi": {}, "gPYLjlyWNs9FI1g0": {}}, "slotId": "avoYFgcgEAG9Jcu9", "slotUsed": 27, "sourceItemId": "OKJe9RlPcoCUvz1K", "tags": ["REl1vnpk2k1Wze5O", "tGn8DAcIyi3xUueY", "vLM1zbKWWhE9N9E3"], "toSpecificInventory": false, "type": "NwWSjcOBcBlWTo54"}, {"customAttributes": {"n0mxABafEZaUtHfc": {}, "G8bqx8PhShb5qWud": {}, "KknXb0TFiROwkTWU": {}}, "inventoryConfigurationCode": "lSJVZFraKSYQRWLE", "inventoryId": "gTch55nd7Q6SLzvi", "qty": 30, "serverCustomAttributes": {"mUPAuPIyotVmZgWQ": {}, "r3l5kAfv99TrXJbG": {}, "BX3y2CDnWeTKtywr": {}}, "slotId": "vfpLrVvsUhqsZR2n", "slotUsed": 27, "sourceItemId": "EUIMplf16mWzeS1g", "tags": ["Eg1t0ldVlQ5Y4894", "LzcXj64JC9aXPsgk", "Wa6UXnG2a4o9dJ7Q"], "toSpecificInventory": false, "type": "H7YC7moLvlkKS8WY"}, {"customAttributes": {"y6qOE5YZf7WzdyYB": {}, "LrNx8Qf6E3lRf4dZ": {}, "QTlCsSFXzElvPpbi": {}}, "inventoryConfigurationCode": "SwUMukMIdoYHWsoG", "inventoryId": "q6uxNxY7gLMhBZXR", "qty": 16, "serverCustomAttributes": {"VVbWG68wha4pDmsT": {}, "ecUmdZ77xxnJ9xHP": {}, "d8qSVVI6KRT94jBL": {}}, "slotId": "U4qyNxzhl1f6ug54", "slotUsed": 26, "sourceItemId": "sGRYdA4Q7TtUwptE", "tags": ["PLk15wABQCcwUkXA", "Vw0oqLARWACvSN9h", "ktDgqTXlxiVKO5fo"], "toSpecificInventory": false, "type": "2SalkQeRJbhh7gBK"}], "removeItems": [{"inventoryId": "M3sCP1Tj1TUJyel9", "slotId": "9U87MaKsWg6CTEtF", "sourceItemId": "KUu7dR8uwRew5dvG"}, {"inventoryId": "G0P77SbYWT0b6VWJ", "slotId": "O3TI0ZhDPLGTtcMB", "sourceItemId": "oxKfgxgGQ4b6vxJs"}, {"inventoryId": "Yt22mCfGYTLfFnND", "slotId": "rodUzqnwmnd6SvV3", "sourceItemId": "HaVB5KPEtXIoAPiq"}], "targetUserId": "z5qJtsm7ZN7I992Y", "updateItems": [{"customAttributes": {"5FP0NyMETNR8Zpar": {}, "EZyAPkmBuIThGaii": {}, "b1XBXxqYaenKBAPh": {}}, "inventoryId": "U8LiGqh4e5dDr6Nv", "serverCustomAttributes": {"ZlPgOs3NWJb0Igp8": {}, "hDq6NLXKJ8zw7WOD": {}, "5lwVDzCuW97IXhGR": {}}, "slotId": "oh6uGMOnTCgjKSQE", "sourceItemId": "n6V0QlXzEbVJ9WCh", "tags": ["PFIOME8ZKwYrusNY", "6ZVpK7jUtMrRstlg", "xfZymNaQk0rK0QyW"], "type": "fbsf6TKVCtPhmVaq"}, {"customAttributes": {"N9729feCBSkHZlQM": {}, "lVfsjUqs2pId5MWz": {}, "uAU7xMwzz9PGsSOb": {}}, "inventoryId": "RjRbbY2RNphzwLqR", "serverCustomAttributes": {"H0CpkW1m3IMIG5zG": {}, "cjkijocHoCGP5jAB": {}, "AOIzVd87fMl1KMrq": {}}, "slotId": "6p7Xb1aQS2nQwJmL", "sourceItemId": "S0Aq6Zuph6arGTex", "tags": ["Jyp1k3sAQdU0rb25", "oGs1ZAQguhgX2wiY", "8JKEXZARy09Ngrbw"], "type": "U6EpiVYLbjY18bYY"}, {"customAttributes": {"5Ffovqp6MzdMCux4": {}, "sv4qP8pHbNvBLmY3": {}, "jMtGbSQ1kDY461gv": {}}, "inventoryId": "OpNVS3eYZrvwa3Zo", "serverCustomAttributes": {"yLknG2bCuwH7g3Ko": {}, "xrlHIY0Uar4takPd": {}, "RBuO2n23wv1WCCPw": {}}, "slotId": "JwvfoQK1Urb7iTuA", "sourceItemId": "wsikScryh1vzBQtZ", "tags": ["bryiEm8pVEyqUeSq", "dPFQN8vHAfQc9poo", "PJqDZidA2TYxrlU4"], "type": "rcE3Wb7qcjbNEzqq"}]}], "requestId": "eqeBmH91pzKhrEx4"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '40' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["S9myxHm670cA6WXw", "tkccssHdFJ6EjRFz", "NtiNhWzqDy5optyf"], "serviceName": "cUu4QUwn9Olvj6ik", "targetInventoryCode": "9i8OUcCWx5ry6uuw"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'MVH4PAtktOKxVcFN' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["BmoylUutCyNgoW7T", "LzLHrs2R7GHnxHIO", "4GnvRTnE1SbA9Rty"], "serviceName": "8pIDDEDCPbZuyjlI", "targetInventoryCode": "MZMe33nAgLKolmLf"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'UC1Ja1yLfl5TTbaD' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ffvZadcU43XCFRKn' \
    --limit '22' \
    --offset '8' \
    --sortBy 'updatedAt:desc' \
    --userId 'Ivhpivd8QCAx0LLr' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "6uhCvOR2pk7Gq51F", "userId": "BsIQFIVGGvkhuh6n"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'piIa7GyYjoCklkUh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'XBxw4E0shfMTuQ26' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 74}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '8di7VrcvLghmEigQ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "tq1hVCrQQlRO3dn0"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'TxUqFEYJ2hXWiwDr' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '99' \
    --sortBy 'createdAt:desc' \
    --sourceItemId '1sPIinfL1FLxQ5oU' \
    --tags '7EMxGTfoV6s47n1r' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '4ottO9d6QriAh5YA' \
    --namespace $AB_NAMESPACE \
    --slotId 'G4QQkTI0QevZqvrh' \
    --sourceItemId 'mkmz1wVgwPwyx2np' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'C3g7QdJgsPHKal2z' \
    --limit '35' \
    --offset '71' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "d2Gkjx0REq8brtjI", "description": "jXDS5ebg4Nk3FUu6", "initialMaxSlots": 10, "maxInstancesPerUser": 34, "maxUpgradeSlots": 93, "name": "YO1ejKB1y7NZuNsA"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'YN2DYyhCEamtG6AP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'OBCnKhL2I6tuWZub' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CrrgWHERgA89j1qI", "description": "Jb8k8oto842Tnjh1", "initialMaxSlots": 55, "maxInstancesPerUser": 38, "maxUpgradeSlots": 97, "name": "CzQnJYyeSWh3RcA5"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'EHYEkOLweXzzaz0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '76' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0D9tyWtXVKbo36ey"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'HlkrsZHvRFgToG0L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '33' \
    --owner '5dMqShlRSOOzDD5q' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "NeycXntMdnaJJUpy", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'XtMB3UyIGSjafQJc' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'iAkuq8Qn8UleS8a3' \
    --namespace $AB_NAMESPACE \
    --userId 'tNjWVGEm2329vVPC' \
    --body '{"qty": 54, "slotId": "1wvImPfHozWJ5VKW", "sourceItemId": "UcBgpG1jCa83Kwbe"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'yQNW1sYnpwAIdLha' \
    --namespace $AB_NAMESPACE \
    --userId 'AP866oIrArzfWH3E' \
    --body '[{"customAttributes": {"RUw1YfrEOlgLooPh": {}, "Jy4eoTVKRwjSlBaH": {}, "eqTjScLhOIlZL5e1": {}}, "serverCustomAttributes": {"Y04xu8xCVvYGbs4e": {}, "0AHisDzh8KvSxsRH": {}, "jjwtGr2GwqGgWuL7": {}}, "slotId": "U0AYc8qoxmhXv9I6", "sourceItemId": "dgdWJAnO1b1YtZBE", "tags": ["BstquApywX8h3uB1", "39CT3dNRMVyIWu90", "33T7Mu1r9lPqeI0q"], "type": "VebDbh5TtOrZc8xU"}, {"customAttributes": {"1V9ZoY5PRSe6GUhE": {}, "o38Dyi6S58bVwzPr": {}, "15mYaKu77zgAMlyQ": {}}, "serverCustomAttributes": {"AcnAb1eKjnZowUD2": {}, "bs2gteGPCHf4QyQQ": {}, "Ea6T189b6nrevrbg": {}}, "slotId": "cukWNEO4ctF8lAry", "sourceItemId": "kZgyNCW0XQSy2uym", "tags": ["NHWlTNNzzLWSERvC", "KH7ftpewW5sGK9hZ", "a7oUqaHG9q3otkqJ"], "type": "WVOGcMFR1lmA6f36"}, {"customAttributes": {"P6V6X7oNwu9xifRx": {}, "lRmZlkkQXkiBj3Cx": {}, "HvVjGGXsBz0YlNug": {}}, "serverCustomAttributes": {"yYGGIRkNlXkyqr9E": {}, "JyjvkHegbNgYA7is": {}, "PIE9Uh3aDPwUzKiw": {}}, "slotId": "DV0Vafc6INCwcrgL", "sourceItemId": "RsxKML4bZRQB28D5", "tags": ["oVXFwF7BdS3fg3UG", "A4cHKMuo3xPmyIUD", "Zk7Qvhu9pjcyCFzD"], "type": "ibvkSSq9nsp2QaWM"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'BsDiXpnMhyGOyfX1' \
    --namespace $AB_NAMESPACE \
    --userId 'jBbhL2OeySmGyH7i' \
    --body '{"customAttributes": {"NdSqH5XbCe38TqnK": {}, "xcXxjcQiKudmPjoJ": {}, "moGy4hDJY5PSSt6J": {}}, "qty": 86, "serverCustomAttributes": {"KXLMBkrAePJtAs49": {}, "GJJKhX4xAFSicqgQ": {}, "FlHrevWyXc6Fgixo": {}}, "slotId": "f1fKql5adFlPhfdm", "slotUsed": 4, "source": "OTHER", "sourceItemId": "wlrM6NySov0DxShO", "tags": ["ESu2tgKh2nkZub8J", "uxZrqwC89dOVC3LF", "L6dbzVTxfljXeGSH"], "type": "XPPu1OxxxYk9LJAG"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'w4M1lLn188D32Dm9' \
    --namespace $AB_NAMESPACE \
    --userId 'TMxgBTquHbMeSkMC' \
    --body '[{"slotId": "NqSK0rJ6jZVsP77W", "sourceItemId": "R9Sm029SqUrWUmeI"}, {"slotId": "6YwfipnRaUrBNAgR", "sourceItemId": "gSQyhVOaz58RAGoR"}, {"slotId": "3TLMgfQZIThLSz2t", "sourceItemId": "Fq0Kw374ls9Pxfr7"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'yBpodRgvsQ3eUYqG' \
    --body '{"customAttributes": {"IiRozSu7AJ2J7dhN": {}, "IqadYZk0wrk5GnDB": {}, "CTED0czLwgBAdGlS": {}}, "inventoryConfigurationCode": "rjkX1Z5QteASyBsp", "qty": 65, "serverCustomAttributes": {"6piODKX0DS3Fw4HN": {}, "KpLpXqPV9LK3rBO0": {}, "QrCf7aPjPZ7C3FNy": {}}, "slotId": "mmF76tgWAp4Z3Csk", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "dXJIeVNtsX9f0DNR", "tags": ["09mCZ56LBrESMs3X", "tgjBGxm2SKF1etz8", "KrHm52DZb5IZFFQj"], "type": "cMQByUhbGIOVjPcs"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QErkvj8Cjm9ziP49' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'PSGA5So689ykxcVh' \
    --body '{"entitlementType": "XVMgbkTPddAhycrU", "inventoryConfig": {"slotUsed": 71}, "itemId": "z4sKEEZvLW8cLOpW", "itemType": "KUYoGTxHwXcesYfk", "items": [{"bundledQty": 55, "entitlementType": "AOCeODbHp2mGq77o", "inventoryConfig": {"slotUsed": 9}, "itemId": "2mmfA59qVHA5Yftw", "itemType": "G69YQiHZMwZ6Y8M3", "sku": "pDKCHoQsGzILPe7Y", "stackable": true, "useCount": 15}, {"bundledQty": 15, "entitlementType": "e0XuVcJH7pUBMCBN", "inventoryConfig": {"slotUsed": 51}, "itemId": "2vXYoYX89sllsylH", "itemType": "WCTqUvjBHA0TESK8", "sku": "wquWltCaWQ7vNqkE", "stackable": false, "useCount": 97}, {"bundledQty": 68, "entitlementType": "KGJVuAr3QyxoOeMq", "inventoryConfig": {"slotUsed": 32}, "itemId": "pzdczaUuZlW4EQ9r", "itemType": "Ekkz4maov5dKMVN2", "sku": "k71hPz3cI7VxKYrO", "stackable": false, "useCount": 0}], "quantity": 77, "sku": "RzF8tpWRBcgKcDEs", "stackable": false, "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '6JRYhNgi1G2vcUuM' \
    --limit '24' \
    --offset '7' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '71' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '65' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'v4f2hbx97NXev6ly' \
    --limit '78' \
    --offset '35' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'GiYAtxLvtI4rvFSJ' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 56, "slotId": "ukXd7Zk6Yup7rHSK", "sourceItemId": "VwK89XSpgEP5FZ8u"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '8A2hivs6agnWGQEl' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '71' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'Qt3fFQDrASpw4TLd' \
    --tags '5uyJku21kLotE9H0' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'LIW9vXGOQKoI96KW' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"jb5EqQ4IAKfts0my": {}, "ERC38EJJUhuoCKtp": {}, "TqQCJre1Cc7IxUKu": {}}, "slotId": "WlY8FdrRpgL6cCWG", "sourceItemId": "IFoRXKKdsi6Y8Wkf", "tags": ["LdEwFrkOY1cBV8NL", "EPHDiwpICuhkd7ot", "yMAHWbGe9itRLReH"]}, {"customAttributes": {"KgJ87Kk7UNJLGZ2F": {}, "7UzL3Ogqi1JzJbyx": {}, "4XavLrsVcLHKQbGn": {}}, "slotId": "Iz1itYLfdWQMZCgy", "sourceItemId": "nqrazPrVo4nsnaLi", "tags": ["XxTQymiuEocC51kn", "RHtNjN9acaOjkMP4", "NWMXCv1XW8CpcegT"]}, {"customAttributes": {"fqB2oU54Op90lbPS": {}, "5LQ9B6DFC3HrfIDU": {}, "J1uTqLE6dc6MVaoa": {}}, "slotId": "J12zXh3cY3nQREn6", "sourceItemId": "mFMwSOMiLVjiEYN8", "tags": ["WctwTFNTyZvQYg9k", "XUUkxzcF8pJzc4j9", "8putfW7goRLFst1O"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '433q3Y1yiqUomies' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "W11uwSEIVwvG7A9O", "sourceItemId": "ZaL8P9MZqiopKg8c"}, {"slotId": "8yle59dbncSYSBs0", "sourceItemId": "qFUFIZhTkv6IfiC2"}, {"slotId": "THQD6lzXlJFqBbj5", "sourceItemId": "9t8h0zHWKtROzYcE"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '2m5Z3lyCT0XEduxJ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 69, "slotId": "ivOTDEjInFmVcA7q", "sourceItemId": "3m07L0ivmVcToEBM"}, {"qty": 55, "slotId": "glqFaqskifPzGOR4", "sourceItemId": "ldOjPwaDcYCsEysq"}, {"qty": 86, "slotId": "o67BTKmACCDNr67p", "sourceItemId": "sKn7Uae7dmJHO8fb"}], "srcInventoryId": "H2U7UVlcABR6DooF"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'BwOFyWTbh9QvUwqv' \
    --namespace $AB_NAMESPACE \
    --slotId 'lCzhrUin1mJrkW9D' \
    --sourceItemId 'kkE38TzB8QpzfN1E' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE