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
    --body '{"message": "HDEtOhqV01TAWrre", "operations": [{"consumeItems": [{"inventoryId": "J0dWAXQUPZ72jUnQ", "qty": 39, "slotId": "AvluQTmTgFHgaTir", "sourceItemId": "22Qk8kSrNi7qIqeF"}, {"inventoryId": "mMYYkVGFyKzuz2O7", "qty": 100, "slotId": "s8U9uaOFPnmRNYVd", "sourceItemId": "CrmqIoU2fwNu8gYk"}, {"inventoryId": "O5GQzQUkwzPSiBDR", "qty": 6, "slotId": "LBo5l9qdBt14GIQN", "sourceItemId": "GHa3ZPaMgGQn8bDF"}], "createItems": [{"customAttributes": {"OOvesYwZ53fX3WZK": {}, "67oeHDxPYAIKSEPd": {}, "MopfcseIxUQVExWC": {}}, "inventoryConfigurationCode": "HkBsMELF01Tkgyto", "inventoryId": "tf4igSLORKPLYtrx", "qty": 74, "serverCustomAttributes": {"0vjIvqnKl63lSAEH": {}, "XGWbPs3SqEBRV2qn": {}, "S4sbBnOm3iBlQxvT": {}}, "slotId": "VuzEeRauSVM9Vu7D", "slotUsed": 10, "source": "ECOMMERCE", "sourceItemId": "EwgdmESd2lfclqFF", "tags": ["KIGbh3FkrTeNgtGC", "gsAZOBEOIWGDV1Rr", "7bCBznsXWbSsUr6V"], "toSpecificInventory": true, "type": "3NoToB29T523LJSS"}, {"customAttributes": {"bKPqAJ78xn9nV3Ku": {}, "dfkiWHDB5yT05ZXy": {}, "YHf0mcqcolE4B3n2": {}}, "inventoryConfigurationCode": "m8Cwee04iXs9TG7e", "inventoryId": "FHmG5pGHhGLFiyEZ", "qty": 50, "serverCustomAttributes": {"A16ox5I20tl7NKYb": {}, "GzMm4BhjJQxk9RDp": {}, "PrYme6SHoCXm3GfK": {}}, "slotId": "J1vdolAjoyTjNUuu", "slotUsed": 27, "source": "ECOMMERCE", "sourceItemId": "edlmvhwJqDFp4zde", "tags": ["lilbtLenfqPSnxHt", "QjiWaubdYTZwun5A", "MWxRlkoq1UCCDQvF"], "toSpecificInventory": true, "type": "oYbtQPG9rRec7CSQ"}, {"customAttributes": {"hWlg0KEomi1IwPM6": {}, "7J50IDB0TZbbGIe9": {}, "dUoNmjtd4AaLVIVg": {}}, "inventoryConfigurationCode": "ZVh7HiHBEt1QjeAY", "inventoryId": "zGuGq0WJ4EGTUZk5", "qty": 47, "serverCustomAttributes": {"lHcYO8Cni40WXgvL": {}, "u2kN4S9T62Bkg3qb": {}, "tI4JU8h3UwwvEx98": {}}, "slotId": "Kx1WmEPE6zvZX6Me", "slotUsed": 58, "source": "OTHER", "sourceItemId": "uR4Bc0VS50dxyZKW", "tags": ["rVTy1sH87zeUyYNq", "OUhaeJclMyxLJ9GK", "qNFJFbGL2JxzSVRl"], "toSpecificInventory": false, "type": "ZtzV15m5Gh2QdPpQ"}], "removeItems": [{"inventoryId": "nxee9yQmGjB3XUZS", "slotId": "ZhpfZFZOozvHCUBQ", "sourceItemId": "jAvd7p2hTcT30dfs"}, {"inventoryId": "FVQssQ5OooEw5Mfe", "slotId": "yohw3b30D2GQadIz", "sourceItemId": "ENPuwvCJFQjRTOJh"}, {"inventoryId": "26geXjifWuKFE6bN", "slotId": "UC0pcdNoA2WFeeOw", "sourceItemId": "UDRwuV9nFGhTNjXT"}], "targetUserId": "HIqOc1R5wtJaqYHN", "updateItems": [{"customAttributes": {"VLIu8E4QsLPzom0i": {}, "57aYLRi4BrLKmhww": {}, "mA4DcIm52IUk0osl": {}}, "inventoryId": "DXk8n9R4bYOapx6x", "serverCustomAttributes": {"tBtuJz4VctVQDASh": {}, "qomdhgYGWNh4xAJU": {}, "Yf1sp1emRP4yZfRA": {}}, "slotId": "O1Cl0AGvKNMagWtc", "sourceItemId": "ElbWJX54CcfqO4kO", "tags": ["yDEQqYSInsTeIa8y", "2jJ0gSEWfdOQNAZM", "Ox8jWZGJKpgk8Y66"], "type": "KAS3DoNtnwayBeiX"}, {"customAttributes": {"8iCly9rgnYW1lIf0": {}, "QtVNhWwcc8r6srS2": {}, "xUFawj0hJyhngEsg": {}}, "inventoryId": "x2Z6v1cpXCPr7PUJ", "serverCustomAttributes": {"56LohGTQtH2KteiN": {}, "i2fxt17WT0ptvBwW": {}, "gq2oNO91d3IALn8i": {}}, "slotId": "ULtJEQMXrUhMlW5n", "sourceItemId": "jfS3hl8lt3Gz1hrW", "tags": ["CLMgM38I2JyzcDUU", "tPGK00fIorRNGeGG", "QDYqV2RqaBPNuxw9"], "type": "aPQKLvTYHASStgaA"}, {"customAttributes": {"k7hlG2wR7P1gHbHL": {}, "YyqfZiUCRyG2O4e1": {}, "69Gr5v8FyZ6sNzur": {}}, "inventoryId": "li1ky32rPog9F7E6", "serverCustomAttributes": {"egDOAEm00q9Dxyls": {}, "tOuukntQWBHjLiNU": {}, "1oX5KqMOlLvvnyOL": {}}, "slotId": "104Qrxzw3ldIYIFf", "sourceItemId": "4NJecx79uztGfqzC", "tags": ["dqQ9NESDZKLUqgU8", "L1UA3y190Mvnaa5B", "lE0gIYD2o5lThzjC"], "type": "ONiK5XpuEvglItia"}]}, {"consumeItems": [{"inventoryId": "qx2oR1aQONARsdmT", "qty": 55, "slotId": "3HAYGa57M4HPMAiM", "sourceItemId": "ZeVuj0tYhtl5dwyF"}, {"inventoryId": "oueSv86dCePPshMP", "qty": 3, "slotId": "uJRUUU5LXW0jKhAA", "sourceItemId": "f6VXIhigXkNfnduP"}, {"inventoryId": "1cWTXTlMkCcRfle3", "qty": 5, "slotId": "fwpX5EiuuNlvjIB9", "sourceItemId": "mXBDY5KqglsMpmhF"}], "createItems": [{"customAttributes": {"esjfq3i9z1jwRZeX": {}, "ejw9dcthlDZfMdxw": {}, "DzCnTpOGqOKbKD4J": {}}, "inventoryConfigurationCode": "ozvFqsC6xH2vNdxy", "inventoryId": "uaRb1IQ932uB9f38", "qty": 20, "serverCustomAttributes": {"JJWK2VsuL1sYuCit": {}, "GwXkFd1l3Z3nnfOX": {}, "nlNRWAQ3iqcyjd3b": {}}, "slotId": "9UV5eOmsUUUvVDZE", "slotUsed": 67, "source": "OTHER", "sourceItemId": "cp284lu3CmaPcv8M", "tags": ["QhcQilBplHfKDLYd", "mvywMXP7xnFXJhJI", "jSazZBbig9Y5hIIu"], "toSpecificInventory": true, "type": "YAmgx5ab11Y40ZQ4"}, {"customAttributes": {"t8mOLKNtFeZSa9cd": {}, "p0GcGuBAHbQWBmrY": {}, "Ueyjg7dZwj4GSu3v": {}}, "inventoryConfigurationCode": "PjwTNIsT1qYJdsrx", "inventoryId": "fAWmvxeb8isJG4eG", "qty": 2, "serverCustomAttributes": {"kFSOuIdKBu3vETWC": {}, "9eIefQdmFOOj5cya": {}, "543IU54MXLuKpEs3": {}}, "slotId": "qCl1yA247r6EENb2", "slotUsed": 38, "source": "ECOMMERCE", "sourceItemId": "oVa9Jh76YckDFXax", "tags": ["MamczkF0UTG3VRmH", "qomavbdmeYg2qw8z", "lb3SoCAvfqBXgrEp"], "toSpecificInventory": true, "type": "hlNwr09HLVTk4Z0j"}, {"customAttributes": {"Ac4F56RATbsaFdWo": {}, "CQ0FHzfKoeFnRgTB": {}, "rXNTK42kBXRgBZrn": {}}, "inventoryConfigurationCode": "jZJFol1kEki7GGQ8", "inventoryId": "NkRa6Kr2WUyTa9tW", "qty": 2, "serverCustomAttributes": {"WZHfLOAv3AEqKbZy": {}, "OnzPpAzDlWdLENcQ": {}, "jlzJYU2ysNUwY3nc": {}}, "slotId": "x0IeSiHTJD4kjW2p", "slotUsed": 21, "source": "ECOMMERCE", "sourceItemId": "YLMg83LxxF12xy3e", "tags": ["Qo2Ito4QgmMHeItN", "dFA4m7RlIgsJvuvT", "NqOp3KlIGBiMlxX4"], "toSpecificInventory": false, "type": "o30aN04X7YgSJO7T"}], "removeItems": [{"inventoryId": "EbA7l2MtkTVMfu0g", "slotId": "aiejTxJly1BNfOsk", "sourceItemId": "aAT319Grf8Z16sv7"}, {"inventoryId": "bL0DTKd7z2tbknYC", "slotId": "oMtMTJT0lBWeMNIT", "sourceItemId": "6qQ0Z82H7RFD8ozn"}, {"inventoryId": "yhx1EWwtn9wE5R6H", "slotId": "xDGgnAoyLzly6CZd", "sourceItemId": "DLDfO5t3Z7FutbgS"}], "targetUserId": "J127M8kYuvoat8E0", "updateItems": [{"customAttributes": {"9udSlYHAF9homZ9l": {}, "8DEHBzqXG8Stkp2c": {}, "8kHDxlyMGelvOIkX": {}}, "inventoryId": "EXeROwdbiiI7vMiL", "serverCustomAttributes": {"LvGT4KuxZPi29IHk": {}, "h8kpyb5ZFKIxkfex": {}, "bItH4za5KF8NNepB": {}}, "slotId": "0fTIlnHJIHzaeSQY", "sourceItemId": "Uff5Cmln0LytEeFB", "tags": ["3HE8SFuVzSsku8q6", "i7Xgg2R9cAZctxG6", "vMppHqp7O0OffXgI"], "type": "U6E8HKLG0cypNhRM"}, {"customAttributes": {"UPg8virLGxIkXrMQ": {}, "wUC5KRYupDQNEgq4": {}, "xSmzEuYKO3a07i96": {}}, "inventoryId": "yYA7jbfrl7lWP2lW", "serverCustomAttributes": {"zn5PZkFbrsHTjNqR": {}, "GCGlmCLvgW53Mc0S": {}, "uowpNAlQaAfGiE5c": {}}, "slotId": "e1puSBZzudgwmCem", "sourceItemId": "VSvbaDvh0Ei0Wz61", "tags": ["9cXNDPbyXIG1RCBS", "VvhtwnttkTtL2fne", "L9wkjWUrcZAJWoX4"], "type": "ERxtV8gnjcFYmn2v"}, {"customAttributes": {"GcH4mRFTIX2Y0k7Y": {}, "rFXxpDDU9BCBR0wC": {}, "Nz4QbpCdS1bvygC5": {}}, "inventoryId": "zQk5PkRU7IbEArIO", "serverCustomAttributes": {"o93wrDvuOEOJA4Ha": {}, "pFN6jZDQKwLxu8PT": {}, "xbrcAH4kaxCSI6bu": {}}, "slotId": "uVWGoSKT9K3QgL4G", "sourceItemId": "A7Wf6XPOndZtIwJ6", "tags": ["n3wS67yCcxRcEiD5", "1wJsRKOSTNb3VxQa", "mfaLuL6YugaP7SCH"], "type": "TqSKMTkOEUYasqr4"}]}, {"consumeItems": [{"inventoryId": "pEzwp5LuhfZbK8Uo", "qty": 64, "slotId": "1I81hmb9622V8hER", "sourceItemId": "TlG6NY66hfIBeAt4"}, {"inventoryId": "aFGsIJzK4zL5qL7e", "qty": 33, "slotId": "4Xviglzg7Rl3jp0v", "sourceItemId": "8uy3x0aNSbnf6dBO"}, {"inventoryId": "JouP9ZcO9raa4UMa", "qty": 54, "slotId": "TBedoKmsMzxj8Pj4", "sourceItemId": "5m5Y80aKBFuQ9Zq1"}], "createItems": [{"customAttributes": {"KKIelpG6e5fTDb26": {}, "OyIuh1QZGhZpN52N": {}, "PMo4i5UnXlxkJkMm": {}}, "inventoryConfigurationCode": "UcVBV6qOnQXfsuU4", "inventoryId": "FwuD0gd22g8YTZNr", "qty": 71, "serverCustomAttributes": {"bScwr96z2XsM8xmF": {}, "ZFqAbf4DADmLXXU6": {}, "VsaaqPk0e9xwpfIj": {}}, "slotId": "Kt8QCPrD6ViuE6iL", "slotUsed": 35, "source": "OTHER", "sourceItemId": "ZLOjeG1qbQetla5B", "tags": ["pGEkfOsOoDzqxCG7", "pUdqM4hww3BrVmgF", "ec6Qo7fH19Tl1PSL"], "toSpecificInventory": true, "type": "bpoxVTQrj8ri0Txk"}, {"customAttributes": {"zWoXovFEVC3pVvPC": {}, "JkEUFpwveEPZAEu6": {}, "H2iNLLJ47rz2qWks": {}}, "inventoryConfigurationCode": "QEABz1mIJGbE4VtO", "inventoryId": "Uwn1UBDqcZIV1ZCD", "qty": 72, "serverCustomAttributes": {"09Uf3jGBdHGQvxjV": {}, "GHWGAnxcWPxk0Wae": {}, "Kqe7F4yClLojaRWc": {}}, "slotId": "MTmq0Zk5Q8GvHu6m", "slotUsed": 45, "source": "OTHER", "sourceItemId": "y6RVls1sXBybX3jl", "tags": ["JpGbyRteF6WWTyfY", "tnOB4wgJlIA2TBRP", "JEFfwjcRsTsmkEgT"], "toSpecificInventory": true, "type": "h25flnw9b5P2k2DH"}, {"customAttributes": {"Xlt0qGgEMqwBRyfp": {}, "uYnKJg5Anb89U547": {}, "vaJu6gEYcRXdpbsD": {}}, "inventoryConfigurationCode": "ZT5WdxuBTAASeTMk", "inventoryId": "S205q3QgLBTqiXpy", "qty": 45, "serverCustomAttributes": {"UZ831SgAv8bGVBmv": {}, "aXMZvIHbdn6MQFkQ": {}, "Vq324lwrCZX1odHu": {}}, "slotId": "Ns1E8H6AmV34BAfi", "slotUsed": 36, "source": "ECOMMERCE", "sourceItemId": "5WYERIQfM1FNgJXC", "tags": ["pKdohDvhsuMiOott", "9uUKOuCOqBCmdVlp", "3C299nzAtRjS8jOL"], "toSpecificInventory": false, "type": "tvFOtVOkDhBf5dYd"}], "removeItems": [{"inventoryId": "j7OUkoHMV3YHQIn7", "slotId": "agiJtY9VHdPKO9Rz", "sourceItemId": "xeXt8tXRO1nG8yJM"}, {"inventoryId": "IofG2bm0QcMEuC8T", "slotId": "aS3GjwWaH5yye3DT", "sourceItemId": "otuA4G6353QcjLcu"}, {"inventoryId": "WbPcmXs1EYLM9CBl", "slotId": "7sJb7TxV96zoFePn", "sourceItemId": "kxPnaJ1awzLrrM01"}], "targetUserId": "vH8E19xT8xMuQ4mB", "updateItems": [{"customAttributes": {"YVmaEgU2UvrBNler": {}, "gpEqkd05N901iQ5r": {}, "uJZ4UCuiOm2SdAsk": {}}, "inventoryId": "zmMB2IOPfcXWHYHg", "serverCustomAttributes": {"6yDvGst6rTertafp": {}, "lvE7BSEHxXtd1ZIi": {}, "8KF6AQSM3kpfMTsF": {}}, "slotId": "nRwJRAjhE3BB2Tnx", "sourceItemId": "rmhgv5pOELFWUuCW", "tags": ["LmFto8r49iXvgh1W", "3XQTakKdSCVLur7j", "SRviFIeCVCIA3npb"], "type": "8VAKRe7aCuWwAxWK"}, {"customAttributes": {"jxoQxrpYYzGf6mg2": {}, "FlVdnPgEnZNehEjS": {}, "EU3Gc3lPgxXJNe5Z": {}}, "inventoryId": "p1BYOGFYJqJYHgmw", "serverCustomAttributes": {"utVMQi82lmbl2dtO": {}, "71bKtUQiAlsBDcIM": {}, "tZ8SyFHNxLovqgva": {}}, "slotId": "EQfYJyVfytPRUFgw", "sourceItemId": "HhZh7pIxCnXYzEKD", "tags": ["jvxQUm4s9poZ7nvA", "efalOaV2GELINtNf", "gnOem3dXbIF9XRhg"], "type": "1jsBZjtDmnWIsFWA"}, {"customAttributes": {"D5bMKoU7yDjjtBll": {}, "V3ulp4xjPaTl0zZq": {}, "D2uYVbOCz4Wf6FlO": {}}, "inventoryId": "k3nDdfZyV1CniBs0", "serverCustomAttributes": {"4KgvGGN6iBL9qXfP": {}, "tTvNHNdUIoaU13p8": {}, "wmROSa1Jl3aw2lvD": {}}, "slotId": "difE6tqe9SXlj0sb", "sourceItemId": "eiiScn0PKcTknTKe", "tags": ["OFuxwdboQXya7B6Y", "mT14JnYtjTnV2TwY", "rWWrIsutk3HEK3Wl"], "type": "lWlTa0QSF7THiQkQ"}]}], "requestId": "ua6doi6PxsLLnU5a"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '95' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["Rm61VpVE2ttfa1X2", "RmjH7rb0t0Skor32", "hMOC601Dxappj1Wv"], "serviceName": "gNf4bTcxK84a9rO1", "targetInventoryCode": "u6TcRVyGDTiMGBN9"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'neiEft48iyDViKMx' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["cjs8hUlMTDsmsqGX", "wzj8nz2jNPBSaFRv", "vuBovZJhpbnMe5R0"], "serviceName": "ncW08zSaACfAS8vh", "targetInventoryCode": "f0SQ3HrbhJQeYSlL"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'oJ0X1G5OHobwuMpU' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'I0oCQ9VirY2rLMAW' \
    --limit '38' \
    --offset '71' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'D6r5EibNPkqlJROM' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "NBqT2QjCPzaFn5zu", "userId": "2riXocYifLpruvo0"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'Y00x7fK5GOjanTq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '3cDVuaSE3Xm9ZtTp' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 87}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'OIV8yZpoz3Jy1p1r' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "8P5DwxqjW04I0WXq"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'n9oufyekViFC26R4' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '85' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'bJzETm89FDH3sWzm' \
    --tags '9oFAiw5mO4i56nCC' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '3PYD6aDIFv6xQtzo' \
    --namespace $AB_NAMESPACE \
    --slotId 'aI8wwic84zaCD5Ye' \
    --sourceItemId 'Pm82cro4m90knyKy' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'QLbYI5h9zlVYJXQm' \
    --limit '55' \
    --offset '8' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QJivBY4Uqgy5xAYZ", "description": "4ytCRxvM7dVZJuZA", "initialMaxSlots": 27, "maxInstancesPerUser": 95, "maxUpgradeSlots": 1, "name": "ff7zXsQZwf4HzkpC"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'KzIHMxyJFHOzboCt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'gS33rwqqVDYhiyqF' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xhG8jC2T3IB2eL3o", "description": "uAQr8EahtTZ3H9js", "initialMaxSlots": 11, "maxInstancesPerUser": 14, "maxUpgradeSlots": 82, "name": "Ef1IkQr5ea8po6Kb"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'UzV6L64miE6JjkES' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '14' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "L1S1yVJlszYmYYgW"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '8MS9AuReO3ZuQqts' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '68' \
    --owner 'PyqQEhQQjwkvXmNC' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TgQXuEgMWMiLbwoA", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'y5CsKhYtqAZAvb0u' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '94iOXCG3QBBqv9VQ' \
    --namespace $AB_NAMESPACE \
    --userId 'm2QoLANRXcexxBJU' \
    --body '{"qty": 89, "slotId": "IZvT7IopEmaj3Tbl", "sourceItemId": "S1qMVxd6UCnt9MQV"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'F4JRiMBUXIMg9Vx5' \
    --namespace $AB_NAMESPACE \
    --userId 'emrbOYz6BzZ3Ky7f' \
    --body '[{"customAttributes": {"oZH1ZHYoUhssen8y": {}, "wEGZryJjY2KCIZ09": {}, "Cn3zMnSC6CXGDX2U": {}}, "serverCustomAttributes": {"eBpZGmOv1TYqgpCd": {}, "TizOnzp2YArjy2o6": {}, "P6prH9WKKpOhZvG4": {}}, "slotId": "lQexPxV7c5wkTufz", "sourceItemId": "ypdbSdyTRqOT7rZc", "tags": ["skvJBKkdzEEHxSZ9", "q4nTy9JbY8k85fnF", "fypPtfSiPvIXh0mA"], "type": "oh6nBcjiGpZaSsb8"}, {"customAttributes": {"INGrzJrX86idSUMC": {}, "X2kOnFnWXtRKPlQi": {}, "2ckH6ZYN7rYwY22D": {}}, "serverCustomAttributes": {"JrBaWLwvXrEIHr4L": {}, "uY8BmIzmWUGfiqFM": {}, "a1Do1kp9dplmDsDB": {}}, "slotId": "MbxsaRsAeoZ7Nrlu", "sourceItemId": "7JyefyoaDkCAauLs", "tags": ["UFpt3VQD6IRsuf9o", "6azQ2mt5kucKiRsM", "bDbmZwLblecPsGHt"], "type": "mdTeOiA6VPCQtNgR"}, {"customAttributes": {"8CHDbM8bEWAkI4FO": {}, "kUM6B7RIvEZhIZ7u": {}, "GsqjkI5urOjoAlRl": {}}, "serverCustomAttributes": {"b8dEwAPAhOQngJu3": {}, "eBVpqiudzavDCTzA": {}, "fgM7U7vzq3pFTTam": {}}, "slotId": "xvOY2Ky2NTFL8eeN", "sourceItemId": "lk5nXbDjM8m9DO4n", "tags": ["wEEWEPjKNCxEFP7b", "8KRyNBhWye7JUJkF", "Q4Wm4kbnTC9NmXka"], "type": "vounAk28On3n3sJ0"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'ppfGQbsCb1EG12cN' \
    --namespace $AB_NAMESPACE \
    --userId 'nXqNlvGKjavk8qEk' \
    --body '{"customAttributes": {"wKV0zXG3m8EovUbl": {}, "1HUM2DvAoH8Ximla": {}, "BpPskuffl9HVpmji": {}}, "qty": 75, "serverCustomAttributes": {"zQFfCqqOZnXpcOBX": {}, "Iipl21TN1ni1uhPP": {}, "vfaovrDvzdliwr2w": {}}, "slotId": "ORf8gwOkEKZoq2vV", "slotUsed": 55, "source": "ECOMMERCE", "sourceItemId": "VJo0jl1vadGe9tjk", "tags": ["Rkn28Xw7SU2JIIVT", "vs0ITCRetUXksBiq", "zf3LUiw4hVr0E4c1"], "type": "25WT0hfd2MAsLQ4K"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'KEuDjH2cjT9DrpDN' \
    --namespace $AB_NAMESPACE \
    --userId '3miTnDJ3kNA5fgh3' \
    --body '[{"slotId": "0r627mTLoPc3YYvU", "sourceItemId": "XLw7S0l6xMzdDxyU"}, {"slotId": "1hxvzFkiOlncxDXb", "sourceItemId": "hGIi3bILXnWBa4o6"}, {"slotId": "ksHA2dnkwKnjnUy5", "sourceItemId": "WTeBopLRzoWLSskh"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'LGhMzPBLQqJ81n6b' \
    --namespace $AB_NAMESPACE \
    --userId 'PL6VNrNEkERGSheb' \
    --body '[{"customAttributes": {"iW5FC8k3tQl1XJXS": {}, "40phIQi4FMwCOtQG": {}, "Vuw3ciru7YJcPbv7": {}}, "qty": 74, "serverCustomAttributes": {"GN6Q9KiRP6hjtu6V": {}, "fQPZgmHAjwCIz11k": {}, "YQiqaxJvorivY3ok": {}}, "slotId": "8juxSzWLf7OmPQqL", "slotUsed": 2, "source": "OTHER", "sourceItemId": "i6CBkayqsTqYZynb", "tags": ["Dgzd30gabm0FSRX6", "nXhK5bdaCdI84FAO", "zc27nh3pffGecEWD"], "type": "tjgovxEf8KmA7ebU"}, {"customAttributes": {"AQyxhpESJY0JhmxR": {}, "w7ebOapcw4NJIrGY": {}, "0QBHZZlfAUBM9Qrk": {}}, "qty": 100, "serverCustomAttributes": {"eEeatcw6SwZQE4Qf": {}, "wVJsxquzNM1vOhQL": {}, "kQXVizDxwE6N5jSK": {}}, "slotId": "6XGWvnOaUwFO5Zmc", "slotUsed": 12, "source": "ECOMMERCE", "sourceItemId": "MCuQBGPaXHZcPnJy", "tags": ["Gp3E034C1FJf6UCK", "qKW5O2dsg9pAxfwW", "KFBKitmbD7DK3cUR"], "type": "RhiZFYmJDokjsISO"}, {"customAttributes": {"dk2JscUvA9q4epkW": {}, "TQGkROgBFpG3gkUh": {}, "jomyezQAF084Xl5l": {}}, "qty": 85, "serverCustomAttributes": {"4ucJjANFbPq5pRxg": {}, "ObS0Og7H3kEehEoZ": {}, "kkfFPBiNAEdmoK52": {}}, "slotId": "mgZVudGQjtqESz7u", "slotUsed": 11, "source": "OTHER", "sourceItemId": "RMu76sX6T8SZBcve", "tags": ["1o1WnjORsTGQB71o", "BnLVevWDVu5cH08J", "6DKcI4dTSzmJtxYu"], "type": "mWh76zr3hW0wsplQ"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'LmdOtP74tx7CrFIG' \
    --namespace $AB_NAMESPACE \
    --userId 'ta6v2FGB5yVfU76l' \
    --body '{"incMaxSlots": 45}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'yZ3qWa7d4JZMNTWC' \
    --body '{"customAttributes": {"mJ6wLGadFdEA3Rhg": {}, "9Qxe6i7uyx1l1xKA": {}, "nkw9kt8z7YZg8GnO": {}}, "inventoryConfigurationCode": "h7CvKKx3dhxu1d3A", "qty": 25, "serverCustomAttributes": {"i0FsDc52qUuhuh3u": {}, "sCUhokVvZ9egvuoe": {}, "pU2YZ3wrVBRGxAxF": {}}, "slotId": "UAC5iwHL3D5W9RY1", "slotUsed": 71, "source": "OTHER", "sourceItemId": "7Kjv4P1St7lutftA", "tags": ["mBAjQzzpiALZX4Vf", "OUivtpAAyiHIAhXK", "rM24RHRjtb9EFxbl"], "type": "lN68sDSh5WpQNOsW"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'GXOltd529rb2aRnm' \
    --body '[{"customAttributes": {"19j98kBAybk73Yhl": {}, "jwXcJ2ZOjIezqjp4": {}, "u5kJQu3iWAm81CfJ": {}}, "inventoryConfigurationCode": "fJ9ZFrBOTG78lXHK", "qty": 44, "serverCustomAttributes": {"YXN0MHJJJvsLjq0B": {}, "SitySidWfjLtj6cf": {}, "VfXhl3xOKkG2ItPn": {}}, "slotId": "u3oDJnPAgqIt0JjN", "slotUsed": 25, "source": "ECOMMERCE", "sourceItemId": "bJHyTuBEkIhAtWEJ", "tags": ["HcnyonU4RiLcl80J", "ME7WlyD2cJ4OaSPx", "m52klwuVs1IJzddg"], "type": "RxhkwdPuXRjwyVzE"}, {"customAttributes": {"5AXe4ltppMI0T8jh": {}, "Vq07wRKUbyVSWTXq": {}, "t7N55ZKj36vfdQMW": {}}, "inventoryConfigurationCode": "KHl3YcPs9mqbn8Cj", "qty": 48, "serverCustomAttributes": {"npcojIIYRGUeBVrJ": {}, "BR75ftLqLAmSrxzZ": {}, "eQz0XvBVWr8U9a4y": {}}, "slotId": "FBtvtDP5X6XrCSJM", "slotUsed": 81, "source": "ECOMMERCE", "sourceItemId": "yn9KBFRSgtq00xjF", "tags": ["oDlc09vfAZ0NWTvY", "asReQxfwQOgXx5dM", "WHzrL638N6U46ILV"], "type": "tSvJ9TdRjvVle6Lw"}, {"customAttributes": {"R2vYb7Ecc30fv0eT": {}, "IYlAKAWix0OY3GJF": {}, "AxQmLlHKr1NQdwSp": {}}, "inventoryConfigurationCode": "eVatRQ43ppwUHO1c", "qty": 12, "serverCustomAttributes": {"nUXhNNK4PH0SMWfy": {}, "qPhuKIdD0foEg0su": {}, "1pK5k8utDmchWwpU": {}}, "slotId": "UAYgHbMgu6WoDKxa", "slotUsed": 12, "source": "OTHER", "sourceItemId": "GFkGXdi2xuQx0wQm", "tags": ["k9a6DuU5jERjKliZ", "3XMfE6w8rUMU3Msk", "ro9TIFOAKRXLLvgH"], "type": "2olSIHkyzhe8Ky1O"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Kad0nuQBsP0y0lMz' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'nA32SJP1HQkfPhiF' \
    --body '{"entitlementType": "ZJCN9JN4Eq6prAJ4", "inventoryConfig": {"slotUsed": 15}, "itemId": "TlohuwTrXepRTIZw", "itemType": "VNfCWhMp5cCiGKhV", "items": [{"bundledQty": 59, "entitlementType": "u6jg9GqEjCheogmm", "inventoryConfig": {"slotUsed": 24}, "itemId": "DNu2B51UyYlXFREu", "itemType": "bUjwysXVoXuGssp5", "sku": "aHJnaw9L0il8w3ML", "stackable": false, "useCount": 31}, {"bundledQty": 57, "entitlementType": "xKxWBqPcsjDdDYRN", "inventoryConfig": {"slotUsed": 62}, "itemId": "RPVQMgEFhP5Xh7pe", "itemType": "VGjHryL01GUi6XNj", "sku": "FBv76lL1OgDPqdbD", "stackable": true, "useCount": 77}, {"bundledQty": 65, "entitlementType": "ZonQLWLxtVgomauc", "inventoryConfig": {"slotUsed": 34}, "itemId": "TYm4aYflMLqkrnzy", "itemType": "2BLxPuO4UlCxysDe", "sku": "WR7TXZbug6k6Vu6W", "stackable": false, "useCount": 98}], "quantity": 66, "sku": "pSucCWC2LMBzBEEv", "stackable": false, "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '2VVuks9XwiQqBuuV' \
    --limit '30' \
    --offset '20' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '22' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '43' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'VVkKfXZHtUcGh9yO' \
    --limit '93' \
    --offset '61' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'KVO1LvcyMpKyv6Xa' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 61, "slotId": "1E4opn5t7fMtVMzN", "sourceItemId": "yF7bcgVwQ7FBrfPr"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'L3Mne91D4ygMhVxk' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '57' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'GZua74Ln8wsu0i53' \
    --tags 'sU7nWHH8FXl9NLuj' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '3J5b5XLcU8HFd9QH' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"oEG8PcM27APkuo9A": {}, "iqULCfG8q2cRnbhl": {}, "6EsAi4m7ZfbpCA9J": {}}, "slotId": "fWN9JyOQWhnSdp3X", "sourceItemId": "GpgiDP8LbTuieNot", "tags": ["DBRE4xwrDOJBc1yP", "K85DyOzU1RBx4Feo", "T7y5gXfuPS5Phnnk"]}, {"customAttributes": {"j9p0j8AsrVpWP1J2": {}, "AT40SQtm6wRFe44Q": {}, "fBLDMy4lXTs4Pgi0": {}}, "slotId": "4VRj2DO9T3VC1jXK", "sourceItemId": "oqqZKn3AlL3xnjMQ", "tags": ["AGQzQmBeG7Qmrr5S", "jJ2dvbDdw1KXoQMa", "JVVYFYd5j845Kfxp"]}, {"customAttributes": {"hNimcPhfL6itLHQB": {}, "We1Vhzv7N6yaeOF4": {}, "cRfpqKgiE9gGH8zc": {}}, "slotId": "HDPVkSMCUAUIa6ym", "sourceItemId": "hCIkdWcQO87hqfar", "tags": ["Y9SJTk9JAtgheUB7", "rR2hrI1xxjZ7xhaO", "Y7xQlbDdKAOduvFK"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'xCk8yECdBGD4dwCF' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "RZWTf7pDtSDKgZQr", "sourceItemId": "NXNBWDfZvCnO3lEQ"}, {"slotId": "k3wudDfMurhtQKA1", "sourceItemId": "vWxuFU9mtUFRbpoW"}, {"slotId": "fyLwPvJ83WEpA8lb", "sourceItemId": "aPyQKd7lFCGhne7K"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'RVKN4GD4nAGEfl4Q' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 26, "slotId": "qpana84elmFvDCFN", "sourceItemId": "2rd1fx4IhXLaX415"}, {"qty": 44, "slotId": "ZqKzdyaNyBsppRIS", "sourceItemId": "jZ5XB2YKxgXRcIKw"}, {"qty": 34, "slotId": "DL2O540k1q8s1Oup", "sourceItemId": "Tq5MD08Fz9Ruz2mC"}], "srcInventoryId": "gMNzf9zi0QxeiUvG"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'BQ5g12tQZE0lwbQb' \
    --namespace $AB_NAMESPACE \
    --slotId 'jA6pqZVqlVIn3bVz' \
    --sourceItemId 'byXaojYPpAe4pgoF' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE