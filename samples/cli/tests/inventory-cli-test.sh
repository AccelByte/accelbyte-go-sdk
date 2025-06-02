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
    --body '{"message": "vrl0A2KomBJ8EfVk", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "DuMjXhos0QqLT2Qt", "options": ["4KS8TQsTSqQPE7rA", "GQz84JvUBCTAq1ng", "ehQX0H2rCrsrFfyg"], "qty": 76, "slotId": "XMYsrlqikPdwMSQ1", "sourceItemId": "AdbzVbEU36hpOzrS"}, {"dateRangeValidation": true, "inventoryId": "7k0zwsapwffqC1JK", "options": ["Lr1jTYcB55P6YLJy", "7L99h9ghzJV0eQno", "RdnQKCkhGQj5XYdv"], "qty": 22, "slotId": "pGZcQXy30QnNxujM", "sourceItemId": "aZFLeFcfzEH2xzZb"}, {"dateRangeValidation": true, "inventoryId": "TtmEej2bZWAScmrp", "options": ["Y4vk4NqoV9dML8BL", "kdz889JMWtWchxSF", "93g80ohqVLQiSAFD"], "qty": 60, "slotId": "gQxsZf140K3mU6Gi", "sourceItemId": "kruhtYLXVsgowrMF"}], "createItems": [{"customAttributes": {"SywQkPUqS290TSh0": {}, "FlgsX8ycVNrJMzD7": {}, "c5Vba8BmGj5y6O9j": {}}, "inventoryConfigurationCode": "9m1BIpNoQf8wOurt", "inventoryId": "VkJffCSIutI4keVu", "qty": 78, "serverCustomAttributes": {"93Qb0OXgpARBt4z9": {}, "o9qHwQnlqk43v2DM": {}, "yMcYG3FvOUbKfJ8S": {}}, "slotId": "KWloTRSIvvhWXTtS", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "eRtvwoQoRfLihcKA", "tags": ["TcaEW9e5kW56lJFn", "ECu3fBYUsRxbi9DF", "Ie1NIqPmxamNlxeo"], "toSpecificInventory": false, "type": "16uI2B9l0QIf80YG"}, {"customAttributes": {"XnGwcRKHIXlCZ9fs": {}, "Jy5CtzaoZPdk9WId": {}, "ujcwnFfvpjmm0sIw": {}}, "inventoryConfigurationCode": "yTbsMPuj3K1WEJ8b", "inventoryId": "I4OPTxMlBCyI8i7u", "qty": 20, "serverCustomAttributes": {"7DISe8o6G58LEj2M": {}, "BWInExjgHRsZlW1A": {}, "dDwlWlfsuCxCBYN3": {}}, "slotId": "XQPawAvSvPzxw5Tp", "slotUsed": 3, "source": "OTHER", "sourceItemId": "Uembv5Tcnr28ohah", "tags": ["XrrmIa5is7cirTbk", "klEU24TJyBbnh3IW", "WCdbOGVdmJXqvfng"], "toSpecificInventory": true, "type": "NDDowNL0Fw14Zwng"}, {"customAttributes": {"uAXqrc5sKO12GG9v": {}, "01FeC01P6ZMm428b": {}, "Z9ER7HqvBCDLiJj1": {}}, "inventoryConfigurationCode": "ZW3YqFGNXdQEsgdH", "inventoryId": "wVzHOdKMD1Fyycga", "qty": 90, "serverCustomAttributes": {"zUXWsYIxpFf0WesY": {}, "R2oHZCYQBalJsOCy": {}, "VO58JfwVc3k7JYYw": {}}, "slotId": "6GOA9jEp8ZUjUIgj", "slotUsed": 23, "source": "OTHER", "sourceItemId": "ON1JCdWy08HqylNe", "tags": ["mdCVYlAVR8G5Ikgp", "f4DfC0qI1Fxvjr45", "MMM2YGpbXXWxaLNM"], "toSpecificInventory": true, "type": "GzGcEfq9jYSxjcL8"}], "removeItems": [{"inventoryId": "lTQkYm6Q9JwubD0q", "slotId": "1JD2JpnqPQKQQapH", "sourceItemId": "MVodAaiIqXIu1bSL"}, {"inventoryId": "63trxuJQH0jfVk5l", "slotId": "z239iqfVXZS0eeNr", "sourceItemId": "sJaqrg1goK642S2z"}, {"inventoryId": "bt2TW0WN3cR3HLjc", "slotId": "wRTqrk6z1XtZSz59", "sourceItemId": "LcjzePIngNvDKGAX"}], "targetUserId": "Mp9fuvdpT7kf3brK", "updateItems": [{"customAttributes": {"3In1fiD9SzgliArl": {}, "ylaihp66MVGlqAgn": {}, "Cn0osGaQ9duiCbvU": {}}, "inventoryId": "ssXr9PgCi8LGDvb7", "serverCustomAttributes": {"ONtSml1VBgbHJ7E2": {}, "B0IdtZqakCffXz1K": {}, "FBuuIjDN9qUMd582": {}}, "slotId": "BPPqhmnFvzHf0Qtz", "sourceItemId": "avFbpBSQeufabaEY", "tags": ["iEnKIiZA0A1Pi9JZ", "cypRuUbLXHr7ofzq", "j1aWo0mNdOXHPZIk"], "type": "VYfr06CsYbrJ0vjM"}, {"customAttributes": {"S9Xxr3rp3P4G2Bkl": {}, "X4Of4fBzZenIDkh2": {}, "aqdykYL4xYXkcXuL": {}}, "inventoryId": "LTya3NfoJ3oR3Bbb", "serverCustomAttributes": {"2T3DT5Neo22qZCK4": {}, "ngXr1BkAGM8cRIo8": {}, "r88K5k8EF4TOYb3O": {}}, "slotId": "39L3cTqKUxRdnUh5", "sourceItemId": "Oa61bm6vF73ZDjEy", "tags": ["6uh6k5wXyzbdxcs9", "ovALkwbvrCfz52CN", "rwyJz1SaIjdTZMKT"], "type": "ynxUxGEgJSwYX2o3"}, {"customAttributes": {"zhBcKWGrF5fHSVCw": {}, "8wtLpmZF0PMBdcpW": {}, "G7GlS4hSht60SJhs": {}}, "inventoryId": "OpTwcG2m5sU4VKed", "serverCustomAttributes": {"LxoNuVWCkw3sEg7N": {}, "rdPD17xLJtvfe1Yb": {}, "CdMXQgkInhaCF0vx": {}}, "slotId": "rKnvZ8zHv3UC68mw", "sourceItemId": "A1CU9MMweTMuHvsE", "tags": ["0Lcyuz65E5VSQjCf", "nNVvBUU1uhct76SK", "BvyPx5cA2NWReAOw"], "type": "4iOOoWpZ7dFxGXQ9"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "8qu2zwo8Uz2VURQ0", "options": ["O4SeiAlZ06jjIJrM", "9F0OrW0t3scMBj7S", "uVMT52QcDuup4mvQ"], "qty": 99, "slotId": "eoWAPRVkPviOvuzC", "sourceItemId": "tdOwbbWtwNsHOZHQ"}, {"dateRangeValidation": false, "inventoryId": "pwIFfwGmokD239Dz", "options": ["dNMnmvxfCrWVJ0eJ", "kqdQLZM6GGWaR3Mi", "STDvF8y8z3HzMyNi"], "qty": 8, "slotId": "eR2cCSn5Wc2EPlua", "sourceItemId": "Xzjb3fQBhPrt0R6c"}, {"dateRangeValidation": true, "inventoryId": "QZCJRWrZwCkmjsJV", "options": ["ATrDrVsd69TF4Sul", "3G4JVfYI93eaigd9", "c5dLATXkbjCrffrP"], "qty": 98, "slotId": "bN3Oq1CqWeJdDl9C", "sourceItemId": "Z6ZtYoKVugIXmete"}], "createItems": [{"customAttributes": {"l5f3sbxEwGvRj1OK": {}, "cFzJ0DOZJATxWv7S": {}, "XlIMnxo1AKwDiKNT": {}}, "inventoryConfigurationCode": "5lDmGBYEWZz1Nn6g", "inventoryId": "TiDcYkoxzlt4pBe4", "qty": 89, "serverCustomAttributes": {"GZQdmJTcEdwlpsPq": {}, "An8ITFjeanag2krY": {}, "pwmykO6yQcWP5P9o": {}}, "slotId": "GSGHerPLNXzeuzWL", "slotUsed": 55, "source": "OTHER", "sourceItemId": "bVlIHJLxbpmsunk0", "tags": ["w10lMG8ZA5Lj6khK", "SUUVoxRky07vRvob", "CwDP3tlKnmzckZ8y"], "toSpecificInventory": false, "type": "JGVwTZBGUfdvaFsY"}, {"customAttributes": {"hiOPvDkerkIshbDv": {}, "yVwp47BxcMtBS1KV": {}, "CASKzEj5cKccxKtU": {}}, "inventoryConfigurationCode": "HGjzBX9krCaSaH0L", "inventoryId": "64QYw1T5bfzGx6Qj", "qty": 86, "serverCustomAttributes": {"fhpYbm7cX1SEYdoZ": {}, "39nfeITHM2Qd8RBe": {}, "AV4FLsCITldmGSyl": {}}, "slotId": "L7iOX1WPfFNZZ7Yq", "slotUsed": 5, "source": "OTHER", "sourceItemId": "loA0ESgg9MNI4gpY", "tags": ["IZXGoNDbgY4UFRR4", "y5lCWIGf5VCMrgSv", "9BblFdeRflLRmEOS"], "toSpecificInventory": true, "type": "IGtcW3ktZNJqRP8Q"}, {"customAttributes": {"yvjo3fgC9pqH8nxT": {}, "bJhEeUJXSM7ECzkL": {}, "8Pf8yR7KEk4bEra5": {}}, "inventoryConfigurationCode": "YZQBeVpjDnfbXaQa", "inventoryId": "cJjtVVNbc6CLUWe9", "qty": 5, "serverCustomAttributes": {"Lb08cCM2uHuR2vOG": {}, "ZTxR1qgZ5oTukUAk": {}, "qLerV8Cc1R2F87cP": {}}, "slotId": "gxYOHUOZgwkT3BOg", "slotUsed": 55, "source": "OTHER", "sourceItemId": "1kj2OxXDEHWPnIOj", "tags": ["K7bhFEMtKXLTF2sj", "ovE7vbav4VSak5Mp", "OFwzgEuWmzcUnEKa"], "toSpecificInventory": false, "type": "H9t1kK56VHbzPtA6"}], "removeItems": [{"inventoryId": "XTkeljhzmeRD4tSO", "slotId": "K8261ZFK801RVNse", "sourceItemId": "MgXm9LfZLfR9e6VV"}, {"inventoryId": "8LmiblTs6wembmB7", "slotId": "Hhv3RrqaMUJtoJkm", "sourceItemId": "Bt5ZzUJrWLVXUwFa"}, {"inventoryId": "Jxu3IjGAdeBBUeJv", "slotId": "oPRHpkUcT4nwok4s", "sourceItemId": "RUUgPAJ3cL3IJpIh"}], "targetUserId": "zLY1k5hvAVmIyTRE", "updateItems": [{"customAttributes": {"1s5g18aE7a4CJGZT": {}, "VK6iax6lyS0gRAsm": {}, "mGVSxtUPbwGSGeES": {}}, "inventoryId": "h49M0LiY28QGomSv", "serverCustomAttributes": {"tJ4E0IWdlSWbSNY9": {}, "3I8N5CyyssbHuyCQ": {}, "ohdMyTyP4V3w3Z4D": {}}, "slotId": "7PtJaY6EHBstq1Ev", "sourceItemId": "i5QNCKyvLPSnWFjv", "tags": ["xWVzgC6VgdN8qkWD", "vRzNnerH6gc2Edh0", "9R6q92oPwRvzRezo"], "type": "DZLVYjUCZ9JJXId9"}, {"customAttributes": {"Fx9S8bVnQI0lVTIv": {}, "a1mFJxYTngDY23Ia": {}, "fzUUEfOgw47Ly0UD": {}}, "inventoryId": "jq7TokzeT1mAap5x", "serverCustomAttributes": {"8TdZ3pMKM54m3jt4": {}, "kEnZ0nyoXh9ssIHA": {}, "EopsJ01l2nV2zX1D": {}}, "slotId": "1MmyttIqGVKLNwOn", "sourceItemId": "uaJNFTYqdp99bf1P", "tags": ["8AhRtUgEZSJBFBRk", "TKl9ihzRlMO8PD34", "myZBFi3YcNKI5t2O"], "type": "l8cyepDe078sdvXm"}, {"customAttributes": {"j6XKnjrg6IJ4Fwcc": {}, "77Qk73zJ5lJXNQQW": {}, "KUsBERAXvDiPtkHB": {}}, "inventoryId": "ms9xvM2jXqhR998I", "serverCustomAttributes": {"lpdMJK955JJtuF9R": {}, "YbMxsTGjLDuLACpP": {}, "Zn3JuyWWYWAP79vJ": {}}, "slotId": "lH7Qtxa59iXlmdI4", "sourceItemId": "KCtd4LY8h7XrJ8vy", "tags": ["iDBMWODYwu0Uabaw", "y7QrIwsyc2gDWAAW", "altjDIvlp13axZcD"], "type": "zYusG4lmFllBvyLH"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "Ycxe1MnWUifk3E8z", "options": ["fSWNKwCQ0hhEB9xR", "inNBbdN28IIIUtqX", "KbFdhQOU4WDHHcoz"], "qty": 80, "slotId": "mt6Lj84kU0zb65DE", "sourceItemId": "JYnx2bYFsQGzq4fQ"}, {"dateRangeValidation": false, "inventoryId": "lt6GGkiiHPJAFZ9b", "options": ["DDpuAQIqg0fpABnx", "QfdGAbmpWlXynEM0", "lzLNcPzjJsR37dff"], "qty": 25, "slotId": "IHSV5zuaaXsRmGdr", "sourceItemId": "xaCqaFwHnxLEsu4K"}, {"dateRangeValidation": true, "inventoryId": "n6YVIH7o5lttiYjr", "options": ["KtMoiElmA1XR2naM", "2aI1D6OxyhlQcr44", "K6r6XrcN2WSnbaUX"], "qty": 83, "slotId": "VUL0A3dy7zh2NpGP", "sourceItemId": "Maxy7Ag7mo9LgioW"}], "createItems": [{"customAttributes": {"5vGRVWuoLqy66KFx": {}, "lKgOUnJiqs3FyVl4": {}, "mvA6JVGgUtm4bI80": {}}, "inventoryConfigurationCode": "v7spAA0cPjPSd79s", "inventoryId": "HgcdRF8kc7RvYP8G", "qty": 17, "serverCustomAttributes": {"9Sxs9jZOnuVrzXRh": {}, "kUF6EuTM4JT8dhJ0": {}, "k9IzXZbnS4oUEVWN": {}}, "slotId": "vJf4ZJilGKcC43YZ", "slotUsed": 7, "source": "OTHER", "sourceItemId": "3Q2imMVsOISlVBuD", "tags": ["p8QbQpq6qI2XYxSa", "y6N2sToTYB8ELMaR", "tXJyRpT6kVF9WRyk"], "toSpecificInventory": true, "type": "r2TfNe7GsidqfTNJ"}, {"customAttributes": {"8APTFE7H34iA4lWc": {}, "V5IaLimTdflMWXEt": {}, "cafMEEOI5277Sm22": {}}, "inventoryConfigurationCode": "7fsiPvhPfW1uosLs", "inventoryId": "6EdnTzdNAmimmu1r", "qty": 54, "serverCustomAttributes": {"NY1mY76HIIzxw98B": {}, "W9Br69pOoMU2mEY4": {}, "Eaz8xR2scBWy2r9Z": {}}, "slotId": "jUmdMpb8FeeE4jNJ", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "42wm9QerTI5lJaq9", "tags": ["Oacnzg0PUy8AEnDh", "IRP5rDVTYut1qlA7", "ToxWLx0Orx9o4PGZ"], "toSpecificInventory": false, "type": "0iGPWyHxvSzG06WY"}, {"customAttributes": {"tYOFiAQ4g1VQ5c6v": {}, "mVJL1gpwXg1kkzmK": {}, "sADfM2qaSDe7A6Ks": {}}, "inventoryConfigurationCode": "rZPSN40gR57BMuBI", "inventoryId": "rS0NpgxDwaLy8h95", "qty": 54, "serverCustomAttributes": {"zezONIGMpmRjCk5H": {}, "c6Kaw101z637oIJQ": {}, "Mjk7NXPHl6ALo4RR": {}}, "slotId": "4bfufuBpQVNMRH3b", "slotUsed": 98, "source": "OTHER", "sourceItemId": "4205v3Yl8WwmaFM7", "tags": ["RQ5Aj92jEDOJo08G", "BArCmPD16CNOPw4k", "yOd2FMKKEylgD6W8"], "toSpecificInventory": false, "type": "ujteDlJzAoqI8M32"}], "removeItems": [{"inventoryId": "FQzKjwJouCFDSJLK", "slotId": "ZUdCBqSVgDQFkspz", "sourceItemId": "by0BxpAPujS8Cl5O"}, {"inventoryId": "WLKqXs9HG9CczDc1", "slotId": "MPawJ6MR444pNQ73", "sourceItemId": "Rki3SbDVDq5dQZHN"}, {"inventoryId": "UXE3y3Kh3KT89kM7", "slotId": "wiMiMrbg6zXVxnmW", "sourceItemId": "5eLU3QLZ1vTK3Cc2"}], "targetUserId": "wHrswdJOI9FodL1w", "updateItems": [{"customAttributes": {"xg0HisGzd4VdNzRS": {}, "JgCPRKVjVyCoD3ft": {}, "BWZNaWbyjzAXmS98": {}}, "inventoryId": "nkRzZxeLCKfMwjQK", "serverCustomAttributes": {"GsF8DK7tSKRZdAaW": {}, "nPIdv0I3rHY3z1mR": {}, "kxwGNzA70UHEOxjB": {}}, "slotId": "3stXwKJuQCMvClRl", "sourceItemId": "XBkb8RLAi0S3gXIX", "tags": ["Av2wopdTryCSA6lV", "zTXF6e3MNiS7sop2", "ozWbC57bNKL1iaue"], "type": "n0X8jftlPv3gQqAf"}, {"customAttributes": {"IFv0gfl180OV2D6t": {}, "qa2ECL0DDqXGhYek": {}, "B1ScTPPVV5T5rFxl": {}}, "inventoryId": "nHHKxSrgzEiNFZ0j", "serverCustomAttributes": {"Vtle1s1dohrqHqfD": {}, "NLHK1fd5m3Uv3C8T": {}, "cegrRhmk2k3D3nrt": {}}, "slotId": "c8yW57nL9Mlq9Qdi", "sourceItemId": "fWZ3yUTygk2PmdSk", "tags": ["kOcCFlsLqYbEqiZc", "PD3jRoJVts17rODs", "n1W4UyX3iD8VUgOg"], "type": "BFLUDkq4yph7OYJs"}, {"customAttributes": {"Oi47IGTRtMZKLTPI": {}, "E0POdERggSyiSsB5": {}, "mLJs6T5S3TT7KJd8": {}}, "inventoryId": "afYPFuIba01zVndu", "serverCustomAttributes": {"FYMNdMhPii01xtZO": {}, "GkOXiLbFeWAjo2ZO": {}, "eyuYLEpCFLaiVwco": {}}, "slotId": "XvFqbzZ4jmZNjUVk", "sourceItemId": "2Zm6Lws47OWsmvOn", "tags": ["eIkA3ALlxXijWyET", "ka6OjZDce0IPoZf2", "c0ATeAzd2YjTse4h"], "type": "HU9KzW7l49Q7Mlmi"}]}], "requestId": "wRLt1bq3RHQzsbmk"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '32' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["A6ghYzLcOBY6FiKw", "ZHdCiRbnRicKak1Q", "I45A661W6POH440g"], "serviceName": "hAQ22El0rPrIX8aE", "targetInventoryCode": "b3ZqNsM9DGmN2rSI"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'sD3GvnSMITim7RN5' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["mbTMPkFry7w67npr", "UaYnpnaNzE2u6g6Q", "OKnez13MDw2T9HFM"], "serviceName": "aQnATUtPjEgpttrF", "targetInventoryCode": "c9rmESrhqt7GZqfO"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'P3ThrrzCoPXKWjw1' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'QXHbYG67bAWGSxI6' \
    --limit '2' \
    --offset '30' \
    --sortBy 'updatedAt' \
    --userId 'PigPkCnRR8ncBGFr' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "iJIBEKwoph4hS1t9", "userId": "3az2qrkU81zULgdd"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'FzWxUzNY7R5Dud7v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'C6duUx7ieK1ZHAN2' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 90}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'hfZ6JnnHLhGJO2nS' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "GMibycoSbM5HirO5"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'IUB0PTWbmyV3fEQU' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '39' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'ulXcemhL0vXKW8oU' \
    --tags '1LaGRZmORrZGjuQV' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'IockFxdJbBGLnI4R' \
    --namespace $AB_NAMESPACE \
    --slotId 'm7DmDhvzdlzWdewg' \
    --sourceItemId '83HdImtj43uAfzQ9' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'C0tfVIFCrlCpmeRB' \
    --limit '40' \
    --offset '79' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UVVQ1xzSQYIQrSQJ", "description": "iDz81bmNRRGlHk5B", "initialMaxSlots": 99, "maxInstancesPerUser": 37, "maxUpgradeSlots": 69, "name": "Re2DCgOWuhnBOxes"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '41WKL4EOlY5F77To' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'wHF3v40SYHAIIVKN' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AjWDWiLxb37F5DV5", "description": "cyUUaTx2LKCzaDy6", "initialMaxSlots": 35, "maxInstancesPerUser": 50, "maxUpgradeSlots": 6, "name": "OkUFuo83pf4uB1Zm"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '8jkPXOeyXDFSad7W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '35' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bcZcBOZ3T009csCB"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'CJ5w3eH3wV1FIo4c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '69' \
    --owner 'Okg08VWZUztOApCX' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "heS76jk8UOl8pTid", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'BCIN87rxFqN2qao9' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'tlbh4MAUplr1Q08a' \
    --namespace $AB_NAMESPACE \
    --userId 'XcbmxmLLhnOmoEcJ' \
    --dateRangeValidation 'VBC4TIrLj00AHWLu' \
    --body '{"options": ["5NeZ4oDCVrjLEuXy", "EAo5vk7tsqCK3yBF", "JjBZSTa34tnkD6WH"], "qty": 54, "slotId": "qE8omSDlGNesFVAQ", "sourceItemId": "96mPNg6fmuKpiUa2"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'UrAkfARGQ4fR13Cy' \
    --namespace $AB_NAMESPACE \
    --userId '5EvgQaa6AYzI1JUO' \
    --body '[{"customAttributes": {"oDMYq5OfaLkItSCe": {}, "uMOiG8UAwn4i3YEQ": {}, "zlj3POvUAaOxIxxf": {}}, "serverCustomAttributes": {"lATwMFrQK9lSFnBk": {}, "2lIpwR3hpaRiD5vX": {}, "QI7bzQ8YWAIt87WY": {}}, "slotId": "yuBaWBxS8VwP6FiT", "sourceItemId": "XEtKQwVg5jB2zj2P", "tags": ["aflIgvnBmQrTE16q", "Y9UEVcA6YI9dmgqJ", "iKRPX3PsMfKIosCK"], "type": "BXEgFkfmZ0fSKtQv"}, {"customAttributes": {"HNvITBqvNQGSKLyu": {}, "eLZFFdAN4Jiltnsz": {}, "854rKLDBADPnhbMI": {}}, "serverCustomAttributes": {"8d1G5nn1j01yzt6J": {}, "7Qr4wQ9ruEeiRDSF": {}, "83ZUoFW4fgZrmcd8": {}}, "slotId": "ir2QXZt5jEDeYDO8", "sourceItemId": "pryI0KRdCCa9hxCQ", "tags": ["jdHqABaGQxkkIeUV", "gn8aWbgKhGJTvQn1", "Rj0raoWRpwK6ecym"], "type": "DSRaB6n6S2Q1MOs2"}, {"customAttributes": {"vTnffqm0cMVwfbxy": {}, "oNUOFjUtbQuEre1p": {}, "1JzhhpRg3Sj0Fadg": {}}, "serverCustomAttributes": {"gL1s3vdNs32w4LgW": {}, "8qUGUaxroPTbiRSE": {}, "cH7jwbJbPK2yagLp": {}}, "slotId": "VngU2dgvjQi0ljOU", "sourceItemId": "BKCLCGmSQPvSUrQs", "tags": ["FcLRZN4fwQlVbZaa", "S3bGoNH3QXBQzv6j", "RrGHvfz9z6BZpntK"], "type": "85Hs8MR6jIKom7nF"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '8WGd9GcaoRvH3hda' \
    --namespace $AB_NAMESPACE \
    --userId 'cHSkPJAuGZ6zoOnT' \
    --body '{"customAttributes": {"S7l3pKeHMHnUvQDt": {}, "clGuYgMC2w0NUFG6": {}, "vkdFH4n71KaUZGW4": {}}, "qty": 78, "serverCustomAttributes": {"53040XIsNTMB6C7R": {}, "qZQoV6kHbWZ4V8Du": {}, "KXkyLHMpTlIlKh5f": {}}, "slotId": "X9jURLD5HZ2WG4qE", "slotUsed": 16, "source": "OTHER", "sourceItemId": "C3c1Ri6DIgI7oGsH", "tags": ["Ss4IcFg1iLowFE79", "8GZOQ3annTRSdUc6", "gK2D9EAvunyg6p36"], "type": "P5ARJABgQqr6Hbeb"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'XVEPKexCyxMfZ8na' \
    --namespace $AB_NAMESPACE \
    --userId '0aQCO8IYLv85BLJG' \
    --body '[{"slotId": "tPz7BDnx457VVQpm", "sourceItemId": "4hKm3tuqKbr47Y0j"}, {"slotId": "Wayb7LTQIHDGQ0Hg", "sourceItemId": "mcTzy0kRbTCVIzrw"}, {"slotId": "XZd7rNvnarxooQVI", "sourceItemId": "IAXVye4DwFuqz0lK"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'BMvnXRRfuHmjJVbC' \
    --namespace $AB_NAMESPACE \
    --userId 'bDHNKsjC5yiockuv' \
    --body '[{"customAttributes": {"PWZiNkghgmQWykNb": {}, "KjvYWIEttm9uGwTX": {}, "zlXqICPTzxLmTYcX": {}}, "qty": 67, "serverCustomAttributes": {"win53ZfcyW9YZJTa": {}, "6g0l37GldUBpjINh": {}, "Vu7Bo4FM524tJHY3": {}}, "slotId": "Sw8vwS79P5YO60iU", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "Hb8fYr9msqhsb7G4", "tags": ["J9lwLlqPDVns5ALS", "9Q7aQmuL74r9vDqA", "QNeWMeBpOX5N7p9b"], "type": "5jcXfNGQ60vrWCaF"}, {"customAttributes": {"Pj36S4PieGiol2bg": {}, "nfNQi0umfILznFYU": {}, "sguQm0wBtAoM8XX1": {}}, "qty": 79, "serverCustomAttributes": {"q7keupyClC1PaLr0": {}, "6QBzamSwcPOm9Jby": {}, "VULMmSdrJCC8hFMG": {}}, "slotId": "iWjE2ektTseAl1yB", "slotUsed": 2, "source": "ECOMMERCE", "sourceItemId": "LYol7m3INJsZ53iE", "tags": ["bvFX64lBYi9TA1jf", "6jXiShKEyUQ9NtlX", "twjkNazDpHKxCIYn"], "type": "tFdMIZjFO2V8ZJLm"}, {"customAttributes": {"o6t7ax03MT5KMQHs": {}, "0gg5yUDHVGOjRMDD": {}, "f0F6LtXRub4OIAoD": {}}, "qty": 25, "serverCustomAttributes": {"851tAWYt4ppFhaKK": {}, "26V8etYUzHXLXw8T": {}, "Sc6brQIa1SNg1eNM": {}}, "slotId": "SESZRgdOvpreYZFG", "slotUsed": 31, "source": "OTHER", "sourceItemId": "vTCdhJ0pnTuSGsQy", "tags": ["85DGI1kM4DtOHyGr", "6aMI0Vpl6SoxkfUH", "JtzbQwAHUeuBUqOy"], "type": "6F3cznOVO5HZRRLN"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'mpy6Yk87vGGk3psQ' \
    --namespace $AB_NAMESPACE \
    --userId 'wcehM9btwj43gCCt' \
    --body '{"incMaxSlots": 82}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'qqhqa1eW93DbBwhV' \
    --body '{"customAttributes": {"3VgoNZ1h9cNd0B0P": {}, "TLIHIfsH9OIyyrIA": {}, "ecblpr817qJ1aJ3y": {}}, "inventoryConfigurationCode": "XG3dXgEssi5mzDy6", "qty": 58, "serverCustomAttributes": {"Sp5zCPLQPDq5N5nr": {}, "T0VbBzYMmHhcfIZc": {}, "EqVIrHuDlZliwZ1h": {}}, "slotId": "jA2ADHY0afT9jkUk", "slotUsed": 30, "source": "OTHER", "sourceItemId": "CofGQgZfz0nDFwpm", "tags": ["ZP55TRySFJeJn5nW", "sTaKdLMd3NOGtFZL", "WUPCmH1IHy7dyJAC"], "type": "lvzznLuBQRpYPsTM"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'r4eDgEkY2duFUExO' \
    --body '[{"customAttributes": {"ZC491kb5bii5WEkl": {}, "BgX73mIgIJRt580a": {}, "rfH2mHDKAcWyhx8h": {}}, "inventoryConfigurationCode": "qPAbMZSERCfqjM9g", "qty": 70, "serverCustomAttributes": {"CysdyBqlImHim7X3": {}, "yvRWoYH8T65UmRzt": {}, "A73UXNzS4eaIdmHF": {}}, "slotId": "xxjvxwWF2IwdxmqA", "slotUsed": 39, "source": "ECOMMERCE", "sourceItemId": "ZWFyjIcucQaTXyBF", "tags": ["bRlgcS0KYR13Kort", "dnKj8Y43IxepFiWv", "HSAh4vcKrl0I2S47"], "type": "37oCZF65t3jL8Akj"}, {"customAttributes": {"sTdpiWaqk8zSfoGW": {}, "zwScTFzwi96QEPjj": {}, "s7uJxoVk5raZJx6o": {}}, "inventoryConfigurationCode": "pGHAIVclqYCdW6v8", "qty": 23, "serverCustomAttributes": {"Q2bUNSuwzf3uxX26": {}, "ae0FK4x5iEWK00AM": {}, "emKhpgo83mIMKUdJ": {}}, "slotId": "nMFT5ByURJbbZXoH", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "Ce2zr8hFCu3S8sIT", "tags": ["L2OTp2uUKRb6qx08", "7yEtcotmw0tSeUbK", "7um8TetXy7UNeDYf"], "type": "z1mgm2N8gFYZWWvF"}, {"customAttributes": {"s8G7XlMwphvKAyG1": {}, "mVjTzxHBwERt98MI": {}, "AwyBBAjtP4tBsA33": {}}, "inventoryConfigurationCode": "FA1YHko61qF9Av6X", "qty": 27, "serverCustomAttributes": {"8fwu1GBHYu9gr1dO": {}, "w74S9MPFr66izFZo": {}, "uJ0O9tDmNUPusWsl": {}}, "slotId": "YlQMMgTZx5hukYLD", "slotUsed": 69, "source": "OTHER", "sourceItemId": "xxOXb9cDmJJaFKVv", "tags": ["2BK7asBBmZPXw7L9", "gtNCEKwcA7wkKlj9", "uSDMJ2yp68H1Bv8R"], "type": "Vl5vd5Nv1busymZG"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FR7inkaWSgi3EQOS' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'QigIkINWrsK9ESSr' \
    --body '{"entitlementType": "mXzDxSwpJoqPPpzR", "inventoryConfig": {"slotUsed": 0}, "itemId": "L6psYAOWHbi9qzrj", "itemType": "hD4FR314st9AYoWx", "items": [{"bundledQty": 53, "entitlementType": "qAOlu5rL7MiS5HS4", "inventoryConfig": {"slotUsed": 71}, "itemId": "gud1502dFlAP0HmS", "itemType": "y59bRbQ492EmCnPM", "sku": "XdagSyLv4ttOAwPE", "stackable": true, "useCount": 57}, {"bundledQty": 42, "entitlementType": "FBgChMjxcHSBlhIp", "inventoryConfig": {"slotUsed": 69}, "itemId": "OjLrVsX1XuKYXUSr", "itemType": "uElTGkDpmIEUoDGn", "sku": "IKEanKtXXQklceq3", "stackable": true, "useCount": 14}, {"bundledQty": 44, "entitlementType": "hAfsb5J8avCvJ8hN", "inventoryConfig": {"slotUsed": 10}, "itemId": "zK8pxYh4eVV84nAy", "itemType": "QP67XpKk1iZsGvxT", "sku": "idTgFJ0AJl0Nlplo", "stackable": true, "useCount": 50}], "quantity": 43, "sku": "rRPrsIs7PWABb6AL", "stackable": false, "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kDNcpscBB6WKpt8O' \
    --limit '53' \
    --offset '4' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '57' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '71' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'lTaBxRrG6Bkf9Jtf' \
    --limit '1' \
    --offset '84' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'CaGOQWZhHTST6re2' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["wwhv8UzFSLS57GWY", "tYmAWSg9A7pZxbus", "p21hnDw2oAv7hpyr"], "qty": 9, "slotId": "vEbMfuRBHIWtGUx9", "sourceItemId": "cMjKofUJxvHP3GP0"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'm32WrXph8Cm4cWwf' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '53' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '1LSD1xqrRiYZt5Gj' \
    --tags 'pxVeyLvzing6X0fF' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'OQVCZPUdHbEEg3oG' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"UP1Bm9N6cSTn6rqO": {}, "0yDByajf05z53hyh": {}, "3Uoknpix26VDIIz0": {}}, "slotId": "DmGSISTfB7GFTk69", "sourceItemId": "eQA4PZ7XvlutrWlL", "tags": ["tAeVGNz2NXrA7j8u", "5IEhVRlxqCIbriq5", "SJzjDj8T6DlFnTNY"]}, {"customAttributes": {"YooFGquYHuhdsKEG": {}, "4oY8wSl5YSv5p7iV": {}, "ZUVt2kpcfvncXdiP": {}}, "slotId": "QvrLNzXWRtFzZ70q", "sourceItemId": "pfoXQzhr3ygwIIwG", "tags": ["kEhusWXuWVAqvfRN", "YqrMjMkGR42y7IXZ", "PnHbG6M1pw3uXSbu"]}, {"customAttributes": {"K9U4fsT3GNv7HLva": {}, "1SJbsAKeSAHLN7TJ": {}, "I64ac01EOl2blX4p": {}}, "slotId": "FCR6Hj9wRHxCUOx2", "sourceItemId": "UKEtpKrj1syafJdJ", "tags": ["fnZCxYjFkyDrwz98", "Mr2UfLknKACo3nn7", "hJeMSx6YVKv2z1Dz"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'PGEMPw9oKLjLOxdo' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "ttcHntNLf2XCBKKr", "sourceItemId": "HbGF91xBRUikGoBj"}, {"slotId": "usE0UfURb9JGs32s", "sourceItemId": "o7zWeAbxzwNY2tDw"}, {"slotId": "JE1AMcgOaCKASrUD", "sourceItemId": "G3ajfkbt6X6IPwZj"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'yXoE8Dgcjjs9mDuw' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 5, "slotId": "sPyTMLYt6QZv2bV1", "sourceItemId": "LMkxKYMClfrTvhhP"}, {"qty": 74, "slotId": "yXX28nY5bP7yCNjU", "sourceItemId": "8Ay0BDHEmS31A3SD"}, {"qty": 40, "slotId": "KO7pJPAdlJbr50x8", "sourceItemId": "DBpte59RewVOwFKF"}], "srcInventoryId": "GIpfNnXuY2voyxYH"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'pWCsASMtFXGSPQTN' \
    --namespace $AB_NAMESPACE \
    --slotId 'RAl7HLtPd9BZBBjx' \
    --sourceItemId 'Ji2h5cBGqtWVG8ZI' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE