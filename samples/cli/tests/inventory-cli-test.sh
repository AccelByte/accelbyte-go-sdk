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
    --body '{"message": "zKRtqtwwjB47FYrP", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "K9UtEMm8YSOLA8GN", "options": ["22nFLc9vG4ng1hsX", "wbqMxOK98IcSaSz4", "XroDonEW7zVXoAnL"], "qty": 74, "slotId": "1WtlXhtp2rx6JaDb", "sourceItemId": "IIOIpDaVGzVoH8PL"}, {"dateRangeValidation": true, "inventoryId": "o5WvBvIJ14gFC1ez", "options": ["ICNeDTXn7wl8NngH", "6DUNqQL1Dr0q3v76", "GPS24j0nge1J7zee"], "qty": 11, "slotId": "IqSKWSaXa7CjcupA", "sourceItemId": "1eS1jbLh1r63VkfM"}, {"dateRangeValidation": true, "inventoryId": "cZHTkUzOBGIB1YvP", "options": ["xaoshPSkp6KhYvlJ", "Z0pKhzl18Ei37eUo", "v5Abuh0KQhmMRNF6"], "qty": 64, "slotId": "nnCN1nFe7hKagsWt", "sourceItemId": "witQDpiGvuBf2UtZ"}], "createItems": [{"customAttributes": {"JBfEI8MiyOHKbKF5": {}, "ApHJn8k4Ms9AN4j6": {}, "5CoMSybnUo14elan": {}}, "inventoryConfigurationCode": "mCstkHFncDmYPWsl", "inventoryId": "KrmomJCXcEIUaAFo", "qty": 92, "serverCustomAttributes": {"sfcIGDiqBqQy1YZF": {}, "QWQO9jcz3F26kvyI": {}, "cmzpYGlwIeZpR1w0": {}}, "slotId": "7WhfQUqaWDjsthXx", "slotUsed": 63, "source": "OTHER", "sourceItemId": "Dl0k1h5EiLwnOlI9", "tags": ["4i2hQ7m7c3Rjn0iz", "42TiiSLjaeTviOx1", "eAg45Srp07Y1YO8v"], "toSpecificInventory": true, "type": "YDOyCu5FR4jBSj1W"}, {"customAttributes": {"GRNXjApN7RabKkT9": {}, "fJGIqtcUIfwA0Acb": {}, "6MBs08Zo6VrimGaE": {}}, "inventoryConfigurationCode": "EkIpTGLH8Ubh5Iag", "inventoryId": "nmR1Csyw81JFcKJx", "qty": 48, "serverCustomAttributes": {"d44N2PI6VLjAcK2j": {}, "WyZxXoXfR55iTMJQ": {}, "SIk8vgX95CwTXZC0": {}}, "slotId": "ajVDNu4NIri3sMja", "slotUsed": 80, "source": "OTHER", "sourceItemId": "lsCgQazdqJjwZsKh", "tags": ["XNWXhag35cn7CBqM", "jBraZfJ9lKPgE8AG", "g2iCCpRB42yiTmGh"], "toSpecificInventory": true, "type": "GmUGgSTheclCleVn"}, {"customAttributes": {"XxtpdijA4TixFinD": {}, "XfhsHAO2HEH3Ui4b": {}, "iVviWoCjyWbQgQP2": {}}, "inventoryConfigurationCode": "yamOvBVEV01QCjCS", "inventoryId": "ZoVta2OI9OmPmvgb", "qty": 51, "serverCustomAttributes": {"cIXnzEokUuT3oeWW": {}, "hUwspPNsLHU3lmuu": {}, "Id47pfsZXHKJwmK8": {}}, "slotId": "w5YDKzXLhiBFiK8O", "slotUsed": 69, "source": "ECOMMERCE", "sourceItemId": "OSFtw1L2zAQ0JA0C", "tags": ["3Rbftb9BBstvrayF", "Z0vqrqrPuy4O8jrr", "GUU9vRjuLsxXX04X"], "toSpecificInventory": true, "type": "BfFB0QKA7xCkE5tK"}], "removeItems": [{"inventoryId": "AUO3GArBtTzxTMPm", "slotId": "3CLI1KSJCJzxu4ij", "sourceItemId": "x08zp7Kf5S1Hx97V"}, {"inventoryId": "F4IrJvandD0dr9JP", "slotId": "TlKACwZk3S11GtZf", "sourceItemId": "4FfZYsEIVC6q3Jkw"}, {"inventoryId": "OBzE0U8rec8JLtQj", "slotId": "dKZgWB4tztel7Fsj", "sourceItemId": "0RqmogWzWRRMBj6d"}], "targetUserId": "xaHotXaMkE6DgOYq", "updateItems": [{"customAttributes": {"YY2AgNUsgOkcBapH": {}, "3ia6AW2RWwmHXoGY": {}, "OD3fzlkaVJifqxif": {}}, "inventoryId": "ESKXyiAcb3y9rhJQ", "serverCustomAttributes": {"OALoV8bfVJwQq2Iz": {}, "V0ZKIDR4ac1r9Esg": {}, "6ZKbv4WMhSUqa5Jo": {}}, "slotId": "PhKCiQxcV9RlYbTv", "sourceItemId": "wBc0PtTR7qjjYGnd", "tags": ["4QXvaz8eZ3FXY54s", "lWl5pZapfKlnTccB", "khy95ZdizC3V4700"], "type": "6hwCEV4q64OBGYdz"}, {"customAttributes": {"AXRqOkCeuTUdnbXp": {}, "polg88Z0voKz8O1i": {}, "hiM5Pf2rvqLIOWmI": {}}, "inventoryId": "grSMHoDiLdUmhLju", "serverCustomAttributes": {"8sWytAkuETcsPwSK": {}, "1b9tvvGO0hHUR5bC": {}, "CXvZEjY607rY1iNq": {}}, "slotId": "wcZANWZPervy0EL0", "sourceItemId": "0kdo64hnZz5fpqJR", "tags": ["tylccYKGLU3ALp6P", "VSBOHtghBQd5SvrC", "lW08LyxWCUGupsqm"], "type": "mBCEX8Rq8QJQGGv5"}, {"customAttributes": {"BWIiVbSQzr6oKJ2R": {}, "8xQtLkKo3ASCRZDS": {}, "pGKI62z4bHNkSpyF": {}}, "inventoryId": "A3hbFMU4hzMIxbn9", "serverCustomAttributes": {"f6BUBersGvioDdZu": {}, "yASLENc9MM5k99Da": {}, "Tdd3iRKEIYBFz44I": {}}, "slotId": "9AcqP906bYfAKrPG", "sourceItemId": "ssO9eoj0R99glMxV", "tags": ["iiwGJJo8YQyoo3Fv", "vdIsBYVsOWUkVmLw", "t2gfZqiGoSl798rs"], "type": "id8n2PliBY4FXWdD"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "IVutLShUgoW5tdKR", "options": ["4VbZ83up65qKvX5j", "Yg7lu2tskov2zgLo", "l7pYsneJxFJX3bm2"], "qty": 45, "slotId": "Ariydxk6K0eDOK0U", "sourceItemId": "YFwz1h70q2TgSsPV"}, {"dateRangeValidation": false, "inventoryId": "Eqcd2A8eJqVxglA1", "options": ["Fe1ZOXJgARHrSH2n", "auyOqAhhdQtoZmum", "DVjKsIdMSanukjLC"], "qty": 70, "slotId": "q6LsMnBUi6YCJZIY", "sourceItemId": "a9rq3CmV5i5GGAEg"}, {"dateRangeValidation": false, "inventoryId": "cdMijS2PREHjJjyC", "options": ["B03hopRrrLMieeHI", "pRxrgWbdYFxREpzx", "4klY7Ovav6r5pfvM"], "qty": 40, "slotId": "Z81VC3qSu3JFsVMZ", "sourceItemId": "fK18whDZGaow6DNL"}], "createItems": [{"customAttributes": {"YOIYlKokmpAcqVsr": {}, "p4gzwRx9A71dRKJM": {}, "mjCiNh9wnkQIZDfi": {}}, "inventoryConfigurationCode": "5RkjaTXmZyLdEmu9", "inventoryId": "w5BHXUktYyfsM06r", "qty": 81, "serverCustomAttributes": {"VT8XEAU0txNQhDHm": {}, "gs86EPrlnbXfouw7": {}, "8CeO3ODKoTpBs0Lo": {}}, "slotId": "DPtQQ3b4jt37iKWH", "slotUsed": 80, "source": "ECOMMERCE", "sourceItemId": "LuPnQim1GYnegdog", "tags": ["p2uGCXGxcAvQTFR9", "HwPiCqbwZ3FlpCoN", "47GXsEzRfUAKF2q3"], "toSpecificInventory": true, "type": "M7RpDPOEPOlUhODM"}, {"customAttributes": {"UBDUK4XgeoK23IRm": {}, "jGYb335cC1H7ITbD": {}, "iOyvY7yhAkRhX8tw": {}}, "inventoryConfigurationCode": "h0ZWzCrvM0osd45m", "inventoryId": "gemTvgqn2dUn7Yey", "qty": 10, "serverCustomAttributes": {"vCIu6caAN2XE2l62": {}, "h7dugwUTXiZ0qjut": {}, "bZpXyLwQJi0u30xb": {}}, "slotId": "85qtdevWueeu6FPl", "slotUsed": 46, "source": "OTHER", "sourceItemId": "ZCR5GFtnGdZzYOXB", "tags": ["EfWzEFXw6DkcqEQt", "ZfVbH0tNWWOh4h7Z", "tgMCPPlG7fZrDnqP"], "toSpecificInventory": false, "type": "vd66BE6Al1PkZO3m"}, {"customAttributes": {"lvlGRyddVYektXew": {}, "6B7V3GbF9M0ZEVjc": {}, "bcAVRn8x5ubUlRw5": {}}, "inventoryConfigurationCode": "DLsKgv4DjVEVxT2a", "inventoryId": "sNm0p1fL7W6Lb6vG", "qty": 81, "serverCustomAttributes": {"S5S9NgzeBvc6lRUK": {}, "nAMihP22x7692FZa": {}, "lxuxzuCDUjPBliLe": {}}, "slotId": "qdnd7attXUrBBDlc", "slotUsed": 90, "source": "OTHER", "sourceItemId": "BXMnDxBaveQFZNRr", "tags": ["ktpzjCdIRv7YP6O6", "PXFdhsB8zlofzYmo", "FhTikwngU2b5rtMS"], "toSpecificInventory": false, "type": "MkP4HuB0f2RfiVXd"}], "removeItems": [{"inventoryId": "jscIBvFnUkGaKsFA", "slotId": "jpHxgZsLQqIYntiw", "sourceItemId": "8JDnRqLmmakgq8Wy"}, {"inventoryId": "5OoFvWjgxpsr2CJI", "slotId": "KaD8bFzzutkGNumo", "sourceItemId": "cP4LOBtDvFa0Z3PQ"}, {"inventoryId": "roBY4odmhEQsoOos", "slotId": "edmMqmnMlOYU2xWX", "sourceItemId": "NqYmuXZMZif92gHL"}], "targetUserId": "7zhOPJv70oIs9A16", "updateItems": [{"customAttributes": {"r5yTo315KrjmRvLp": {}, "Vi8oHgRyAXRcBU1m": {}, "75kBsTDRV2Y1qf5T": {}}, "inventoryId": "jD6HM8RaGD4GY8TG", "serverCustomAttributes": {"l8Ye2goPUlduztV5": {}, "B2fZWAi6bWKdgyWa": {}, "L1nOegM08WZOc8Lr": {}}, "slotId": "k3QT3C7dk77fRkeE", "sourceItemId": "bkc00hIMrIXOvgk6", "tags": ["LoDaOMrp75RsDak8", "6ZW5LwtdK9pvIr5K", "lMNhZ2KjZMvhbf2v"], "type": "VYwcJMl2GWzrXwba"}, {"customAttributes": {"0n8MaMPbzy3lSbKB": {}, "YyFeaieXzYpvmyZy": {}, "24q1BLeNWXssjp5F": {}}, "inventoryId": "5cC3XcwpchrtF3k4", "serverCustomAttributes": {"C2ejrRY6b7aDrtoE": {}, "4kmDUrAqycCYrxQt": {}, "VpmjmwwSxO3pEIp0": {}}, "slotId": "tFjcHXSxol7RLwXY", "sourceItemId": "nAUA1aAFQiK58VCi", "tags": ["8JLjiwQO3JuYsoQF", "tyANVoKvD3XgZkOS", "whCf4GyabIUofujh"], "type": "mwQfqwqtbQHjlLCB"}, {"customAttributes": {"qRNgQdNMS8U6n6oa": {}, "CzgWbBojhPY7Hyv2": {}, "wAO2kUGojdpFXBw4": {}}, "inventoryId": "OTWHLHO8DaKkbCcz", "serverCustomAttributes": {"lupgSIFU7yslbucD": {}, "2ZQ2FqnfNGIt64qA": {}, "FVBbgD3ber1upL61": {}}, "slotId": "PQmoKmPtfavtQyXL", "sourceItemId": "iwkEGDZpq6N0ywkz", "tags": ["DVxWlZGU6cahzSRw", "qPqHkL7X7dIneXOe", "LCY2iWW8m89yy7TG"], "type": "b6v4V2dBKvobsT1B"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "lFSCZXvx3Y2m4oi3", "options": ["G0UkfJA8Q3w0UZmu", "zSARLuBbbigfRjqZ", "mCciifsXeUYnlft2"], "qty": 35, "slotId": "gmYg03dlUwOwNlr2", "sourceItemId": "RDWaaCc8zeQbzarX"}, {"dateRangeValidation": true, "inventoryId": "bCBd9sPdZugI8OCN", "options": ["catcEFZnf7WNQk6X", "DOJ4FZdMdNDN9FJm", "gC1Y4x0LGd9fo7jX"], "qty": 40, "slotId": "mtoXJcZPnxQNOcuB", "sourceItemId": "JEHCOtKsRqkI0hlW"}, {"dateRangeValidation": true, "inventoryId": "YoiGMW2hypKpCKhX", "options": ["roKFPm5MPOZwWmdA", "8vw4q7NNQNvKLjAf", "aDLMcD8ROyS1bImu"], "qty": 17, "slotId": "7nppsGZ1C6xclaIt", "sourceItemId": "DQvd2Vicg4f8vafn"}], "createItems": [{"customAttributes": {"ZAYwF3NKjUwfsZpu": {}, "gAGjJjxtNO5IMxjO": {}, "rdQBzLcrAEqsNW5f": {}}, "inventoryConfigurationCode": "vcshPaRiD5pesl70", "inventoryId": "DbjoAbkc2L9dsKOJ", "qty": 77, "serverCustomAttributes": {"O8ivyPGByGXtRK84": {}, "sqNP4WYyY8f78gQX": {}, "zxjRXHsDjZjfcYIB": {}}, "slotId": "SXLu8b85XyzasMJY", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "7cMXsMXmw5yXu2ZN", "tags": ["HYIiGrdaAp7771bU", "hYYKqtubuB055iGj", "5VcgsLKXxtvEGpuw"], "toSpecificInventory": true, "type": "TlqjG7XxbbcEyW2t"}, {"customAttributes": {"X9aSFBdzi9odZJff": {}, "Ike00goFyRtFUUxZ": {}, "oWcKCM1byuvuUTDF": {}}, "inventoryConfigurationCode": "cRXYfjNpUouWNplV", "inventoryId": "M4iV1pYIVKiJHEBf", "qty": 0, "serverCustomAttributes": {"ohnpggRH9iYEO3oN": {}, "SlbSXSUrvkAX44F7": {}, "Ss0lgNWP6WTK1nmx": {}}, "slotId": "TrTuscFQDBUnh13x", "slotUsed": 64, "source": "OTHER", "sourceItemId": "mBcStEdixRWlHbeb", "tags": ["MvIPypSMabGwacjO", "1mdYqERe6GNIQNzP", "q6NGRm3eUrCMvxLV"], "toSpecificInventory": true, "type": "AC69qF05vmHDBfOH"}, {"customAttributes": {"7ES6lhWxCUo0i1jD": {}, "pYg5BbOw3DQ98ML1": {}, "nRyxjWxQcbHxOo5R": {}}, "inventoryConfigurationCode": "4wJKayVtDdxl1Fnn", "inventoryId": "HgZs3PddpNxmQH6R", "qty": 72, "serverCustomAttributes": {"Wj3dLmLMWW6Yg93c": {}, "HT3pasaUt1gp0cVB": {}, "OWIKa7KDVYnQIt7X": {}}, "slotId": "V7jZykGap3b6WOAN", "slotUsed": 59, "source": "OTHER", "sourceItemId": "KzeVx2HUtpLiJ8wL", "tags": ["OgQZYIDHIQy4d35c", "zt2kk7A4JQdaOWAA", "pbgtPAaCplks4NDP"], "toSpecificInventory": true, "type": "e0VPwb892otwhXpZ"}], "removeItems": [{"inventoryId": "TdiMH9QsHqsXogOy", "slotId": "12huMDbiegFH7sJN", "sourceItemId": "dL58MkaAtrXHKBqs"}, {"inventoryId": "pxA21l4FWj8JT3K9", "slotId": "MwzpabjqMfv3BomM", "sourceItemId": "1eBqXpy2uqdAFl5a"}, {"inventoryId": "LIWGNj6N14O09uve", "slotId": "tvrgiOBELIEJACMt", "sourceItemId": "K9H0oKOlCZYiB9BT"}], "targetUserId": "nIO7ffUKQ6PSiawz", "updateItems": [{"customAttributes": {"gIKFRskosTHwmGFA": {}, "ItvWKgZWWEncU95t": {}, "4dao6KAZ5ZtzXLfY": {}}, "inventoryId": "pWzSD6xOSZ7c9vMf", "serverCustomAttributes": {"Jw6OjtLeEfX4lrdG": {}, "RNLmA9Juu5oo9Grg": {}, "CRmljH3bNijgsKmm": {}}, "slotId": "R0ofjNxmGqHxoicc", "sourceItemId": "i4r3EXYlJYryJqo4", "tags": ["i14VhZTdcjuzB547", "qOTBUcJscesQGH5J", "s4jO5yF4TVJGNeya"], "type": "jhi7dNULMyxEE971"}, {"customAttributes": {"e8qbbl0QqoepXhYF": {}, "k5sQyqSR70cWLh8M": {}, "b5nGbDvNItYpqUig": {}}, "inventoryId": "kJCXgbwIb7mcx8S2", "serverCustomAttributes": {"Xx43IDasmSqbDiaq": {}, "MXBsUJPkHewxGySv": {}, "8aGXqKB2ovuCFuM1": {}}, "slotId": "hqPt4u4zQR94qMoH", "sourceItemId": "fqaCVD8TBeOx6tJ8", "tags": ["MkmTQ0slC2HH2YEs", "GeDpklJGLR33WB5f", "ZNE89jNcItz1Bs2f"], "type": "KN11iIFPGEuxvZUZ"}, {"customAttributes": {"U2cPFgnvWvXXq2gE": {}, "mMPAnS80iOOsnKie": {}, "UM77joUqoIkZvfNa": {}}, "inventoryId": "rL4C6VCKMSVhkfOl", "serverCustomAttributes": {"oRZRoJymMvYZbcPW": {}, "aPLAR4BGvZsTIC6R": {}, "sp6tFTDJ9jIQ4LYR": {}}, "slotId": "Zqx0xhDz1JcdJP7M", "sourceItemId": "ANiFQ2aqsJJCr1kg", "tags": ["bWzvyxdVPJBOlxJQ", "1mLxgV0q6dfbWH7l", "B1coPztuqgKSoPqG"], "type": "jaZWIhtdlW3jU4UV"}]}], "requestId": "mYK8FcRvlwYLrpGF"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '73' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["xFBplQVplZi3elus", "jm9Ard1ZtQZLrnuJ", "7SLm668Egw1DVUyW"], "serviceName": "VCkx05Cu8pMGWy0h", "targetInventoryCode": "I2NDHhnZQXmWmlPw"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'ZpfjmAq5P9e8XmYc' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["O1ZLq60n8hkMaRQV", "emTlZVMaIVRHlahL", "kjXGhH30vP2mTVfu"], "serviceName": "Di08GIEYtRsayCTc", "targetInventoryCode": "RYY34GCDjNA9wEeE"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'YlZJgPXmAgLIYBnK' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '3phrthxNitAEnhOO' \
    --limit '15' \
    --offset '20' \
    --sortBy 'createdAt' \
    --userId '38yaaaUwDmIkAybZ' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "u8ylbgT3ZrfozlF3", "userId": "mxVadhHQerd1bsFw"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'PCOaxjw7cxG8aW71' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'keYCnY8iSMAHjBel' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 60}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'zUHTOBYZvBTz7f3B' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "EzQHvPaE05zRY29q"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'V9ooW0MlwbqK8Zn5' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '37' \
    --sortBy 'updatedAt' \
    --sourceItemId 'LoMhj1TpkurkXgFU' \
    --tags 'gdnJoehPUpPsdpYX' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '9qNcRU2p0NUkkoat' \
    --namespace $AB_NAMESPACE \
    --slotId 'gGAwFKavPro9LUmu' \
    --sourceItemId 'sXyX2dUKsCE6LPPQ' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Mww9lGfiCAuJg2mM' \
    --limit '72' \
    --offset '18' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "06fhnVBnVBtFuAc4", "description": "QQi59O1VJ844NYkA", "initialMaxSlots": 88, "maxInstancesPerUser": 27, "maxUpgradeSlots": 97, "name": "wanpjMZ8fhkevGtm"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'u1yEoqmBFpF45d6o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'c6pKnCJ3ApBzoqME' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rkwj0rX94KJ7JRNb", "description": "ZKrNXc72U1FzpPIM", "initialMaxSlots": 58, "maxInstancesPerUser": 72, "maxUpgradeSlots": 63, "name": "6ZydczijArMC0fB9"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'iFnAYVo96hwz3Md6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '19' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AGHUzmmvZWFT3UsJ"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'lmEYC8OrgVOtOlVY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '28' \
    --owner 'LGUXntSas28I1CzN' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5hi3pxCELR4yTVnH", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'CcewlFOa89BkbPIp' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'RwDH7yohGiWYpZKq' \
    --namespace $AB_NAMESPACE \
    --userId 'XV3bwSZj2dlO3IXI' \
    --dateRangeValidation 'CFhe9MYubAehLl2p' \
    --body '{"options": ["PdQYZjmE5SbYKHjh", "oD9PilhkWoew4vBS", "th0YcJQkyRmjQcbx"], "qty": 90, "slotId": "lKF1HGa9stEBQHNl", "sourceItemId": "Hkx0DnXqISt0ETZP"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'vodtvvXvTSkSnsh3' \
    --namespace $AB_NAMESPACE \
    --userId 'rQjx23OlJd1GmHYN' \
    --body '[{"customAttributes": {"G0slWzPOKt162t4Q": {}, "gwaovwYiSspQRJcF": {}, "LdnyOS1e6x7dInYi": {}}, "serverCustomAttributes": {"EYn5wq5TlxNGzR6H": {}, "DKcdKoWtu11VAbnu": {}, "kSdkNAoOy8CN9wiS": {}}, "slotId": "q57HEuYG9X50mW7d", "sourceItemId": "us1JcX9rkmT8n3SD", "tags": ["Jar397KeZcAi6d05", "VSM4XWOSkSNAwjkn", "HP2azTyau6cRLFHK"], "type": "zn1ExyUpdTPEtsqT"}, {"customAttributes": {"qEz9mWdrnUjCLCYF": {}, "4Y44IzrlDLNGFlvn": {}, "MDbrZjlhkAFe8x3Z": {}}, "serverCustomAttributes": {"rjn5Ce9mV3UUTAJp": {}, "qcMrhsQ0162TT3Ab": {}, "gU326q9B3QtiT9NQ": {}}, "slotId": "uLAVPOqnxGZ6zEWh", "sourceItemId": "lUyILXv9RU25b4AH", "tags": ["RmqQ7kpqBIOKusFX", "lKqxYAtedHciPXYB", "yEYMVDrwjkF0NxX6"], "type": "F4WBbZHZyaoWks9j"}, {"customAttributes": {"CG4jJdz5b5b75C1B": {}, "cVU7RX0Wkf3KnNvw": {}, "eVNo3nodxgiMDmK2": {}}, "serverCustomAttributes": {"PGQ4mkH7d0V1Drtt": {}, "zS8QhbFjKNhTPFYY": {}, "bKAciWslVWGFj5x4": {}}, "slotId": "HXyO36ACLnzh4T1w", "sourceItemId": "IMuJ4IwyS5S20AOf", "tags": ["WD2AdxTaTvLrDKLC", "krK4FmCy5kHTdnNL", "WAAjYjAuyX5MbnB0"], "type": "OBXKncOSaM8ytZ5y"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'nCnypAOnZYkk2l4n' \
    --namespace $AB_NAMESPACE \
    --userId 'TQyPPxGuTlNeHyHL' \
    --body '{"customAttributes": {"WwpxA4LDUDv8tbm2": {}, "7gd8Gzm6xbnHE6IB": {}, "hLXaS2EJCSshGE84": {}}, "qty": 77, "serverCustomAttributes": {"dTZ6wAePzmD6cUY5": {}, "MQMg00hYSQBoefd3": {}, "k8x76y9lLAg7mFAY": {}}, "slotId": "NOOmoUeCvg9Ec7Lz", "slotUsed": 5, "source": "OTHER", "sourceItemId": "H2WqETDzZ3A9uqIi", "tags": ["fM3rGmXY1yNmQ9CJ", "VxIbCpRfVrOop6yg", "NUFp63ZzHI02kXm1"], "type": "IUxYAbZhBnAPuo1X"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'hyDptdk83pJVFYy9' \
    --namespace $AB_NAMESPACE \
    --userId 'ZzMz53i3Td2yvjMZ' \
    --body '[{"slotId": "7HHUKne2oo9mxQ4G", "sourceItemId": "Q2GIguVirMLUR9F5"}, {"slotId": "dPV5xvEYaSpOTkl4", "sourceItemId": "7f5Mc2Q1jhaFhgPx"}, {"slotId": "vzhK2zQBvlmEcnWV", "sourceItemId": "fFTlIiMJCLdEMzdu"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'cs3DjBsBekWhiPQj' \
    --namespace $AB_NAMESPACE \
    --userId '1p4ZjY4O9CC9qKuP' \
    --body '[{"customAttributes": {"IQ9PrRqIpBymCM1a": {}, "Pi1tmBT32ZU1ernd": {}, "ZHgOhbNwJcLhowHp": {}}, "qty": 63, "serverCustomAttributes": {"ZWKAf612ETwnD4oH": {}, "LEAP434daJwVLxrW": {}, "AxZ64aPZfvmZ46qq": {}}, "slotId": "8GziJygS81jLKxa7", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "PfrTY1rqwYHq4NJL", "tags": ["B0nE0vikjORuu6Fr", "GPQl4j6JpQN4Jntb", "B57noyLBD6KdtQV1"], "type": "P1808TgmqCSnfru8"}, {"customAttributes": {"qTuwvPVUTBEq8WRS": {}, "imyTZZS05iI8jMLm": {}, "QIpQxPUhkrv72CGT": {}}, "qty": 97, "serverCustomAttributes": {"i0a5nchMyLuVSUbl": {}, "CoPKpJFUqXXQtZL9": {}, "emjsa4DHOjZNIZkd": {}}, "slotId": "yi37ijzESAz2IpXm", "slotUsed": 58, "source": "OTHER", "sourceItemId": "bQJm9refPYIgF3f7", "tags": ["Pm6G6OnsDwILqyvb", "vU4iYbSldpoIZM9K", "6dpaiypwpfswkJ9b"], "type": "oQe9d8twQmTmozFa"}, {"customAttributes": {"ezp8nRFFmAoGuj62": {}, "z6I1wXLzSnLD87Ln": {}, "oYyjokdw1al5IavS": {}}, "qty": 61, "serverCustomAttributes": {"HSJFhfS263scKOi3": {}, "JCPgriClREg3oGmT": {}, "ZYIfJpYqUeEiISyD": {}}, "slotId": "wfSErf4gY3agdIZm", "slotUsed": 96, "source": "OTHER", "sourceItemId": "4E9LljK14mmGnwFI", "tags": ["EB9dm37NRI82QN5m", "J4Gv7yLRAAUZI1qq", "BPk6v1LPKYEtMni3"], "type": "FuI9EkQoaloi6EOj"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'tx7emtecN5Gb2tOW' \
    --namespace $AB_NAMESPACE \
    --userId 'gwZWQWdZA4PpkE8T' \
    --body '{"incMaxSlots": 85}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'feq1jvwV7u5HGCYC' \
    --body '{"customAttributes": {"beOldQ9TBbEOfYLU": {}, "bJurLwqN3Dt8IKOh": {}, "ZDSnE2WL8qmxwizk": {}}, "inventoryConfigurationCode": "TtYBEqfBg4p1ilq3", "qty": 4, "serverCustomAttributes": {"UGWAU5RTOQBNcZSq": {}, "IIOWSKAVTsWM8YA6": {}, "2BRfTLzNKf3GEIWQ": {}}, "slotId": "WLOVCSdy7oB9y7Lt", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "awOiGMFVJJq61jTX", "tags": ["QD3AJMSO1l97rXgX", "MXVMeaLRe7njvQz4", "RJ0xVpWmYQ6NsWH6"], "type": "fpBWxwcxAwa60Snn"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'AoZJCgvWFwcAQUwO' \
    --body '[{"customAttributes": {"bDv1jKic8aWTDE0i": {}, "PIv61qcdV8lBwswE": {}, "9phuFf765sN2ZnUD": {}}, "inventoryConfigurationCode": "op3We2Dh75hpl9fm", "qty": 78, "serverCustomAttributes": {"B5de8uXGpER8b7Of": {}, "bfscihjYJV9Onn9P": {}, "8wNV3LYyztZq0LjP": {}}, "slotId": "1P36ES2pn3Xwlkwj", "slotUsed": 54, "source": "OTHER", "sourceItemId": "ccYokLyZIcrYVJVm", "tags": ["Snhl1cX6edFIfTo8", "3hBHcYQddpvSinlJ", "2JKKeRcTqnjiN0YR"], "type": "SYOibL1DoxEdKfra"}, {"customAttributes": {"yvwLBEMbyZBPKPwE": {}, "S3poAxn9GK9C3YpM": {}, "75pCRZ3RkYXEavzu": {}}, "inventoryConfigurationCode": "JGZufyatLfNckWQX", "qty": 40, "serverCustomAttributes": {"QaAGI6u494DV3uuO": {}, "lHQADr6qidbLxnLF": {}, "wNdsUzjd6kka5p8n": {}}, "slotId": "FLhzRJZUTLUrlqDx", "slotUsed": 61, "source": "OTHER", "sourceItemId": "LXDjuZ80HQEWRnAq", "tags": ["8vq4ryIWzZy7rceD", "o19V54W47wR7BAl1", "gyeBxzokGEBKmIU8"], "type": "7L7kJHg3Q6dbFFNC"}, {"customAttributes": {"FDoJe9UqV5NqwbkG": {}, "6XXGWvRE1VU8uJaR": {}, "K10Ct4VbF7Cih7WV": {}}, "inventoryConfigurationCode": "Ut2IWc6744BN7MGj", "qty": 33, "serverCustomAttributes": {"BqaNHUctPyqCRlAg": {}, "VZzX7Emod6nwu2ne": {}, "FcQFLtyAslLNjmo5": {}}, "slotId": "SurnPB0Cwfs8626c", "slotUsed": 25, "source": "OTHER", "sourceItemId": "sixp0nXGZxKf9xrW", "tags": ["fjCsEmELJPBVUoAF", "L94xSDn4IdWe9pk2", "acUGtdlqpo743WmM"], "type": "ebypOnpxJShZBy7K"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'IciA3xpMWMCOY293' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ZKNDtGOyJCA9GPfu' \
    --body '{"entitlementType": "bb8yIabziDBrWu7c", "inventoryConfig": {"slotUsed": 62}, "itemId": "nxAKR2EZcv5sbZzX", "itemType": "efSW0SXTZUMiPcjT", "items": [{"bundledQty": 3, "entitlementType": "OeyTLLj5Be7g900F", "inventoryConfig": {"slotUsed": 90}, "itemId": "EoRd50jTMpf5zkwv", "itemType": "EFP2IQBvGvqf9nEf", "sku": "IfyjvPIrE0OcZ72i", "stackable": false, "useCount": 22}, {"bundledQty": 79, "entitlementType": "C4oCqVVLjfOHhpQ4", "inventoryConfig": {"slotUsed": 19}, "itemId": "gTK9iYXnsdMC15AC", "itemType": "5Cq0UAuMmkbq0eHn", "sku": "o19FSt11SEwfWlVz", "stackable": false, "useCount": 92}, {"bundledQty": 63, "entitlementType": "CyJeoQH3Vu2TUnpn", "inventoryConfig": {"slotUsed": 58}, "itemId": "oSTitaiNgOlDbfHe", "itemType": "KmH0u0R1k4qnGqUy", "sku": "hPVWaiClyq8Is21O", "stackable": false, "useCount": 41}], "quantity": 68, "sku": "29KB6R3oe5twp5Nk", "stackable": true, "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'omEebt4HCTtGlIGv' \
    --limit '99' \
    --offset '1' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '52' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '21' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ubAklnxWPIfoVQMl' \
    --limit '53' \
    --offset '11' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'qj8QT0du9b18FiRd' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["Dmt6cRlKMRXucHQD", "K4fVOcsW24wT50kK", "wugmqnqIC2icxqho"], "qty": 80, "slotId": "hyVAKQ1bVrSV4kw9", "sourceItemId": "7YFl04JG2hXct4rT"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '0PzQlNapQegGtp9d' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '91' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'laROuBgXDJfrgUba' \
    --tags 'uWOvhMC5PO377w01' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'NNBo1w43RpVKXJz5' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"t5OPMRwdNaDLXyMA": {}, "zpLjc88Zsez83Qfi": {}, "9Mb9coiZTcW8qyMs": {}}, "slotId": "wkmVTdwbJDLyR0nI", "sourceItemId": "ug6zuCItfUwYQNZt", "tags": ["X7xNlF9iROPGGx60", "2iS9hWa7yyBLABgC", "43xMQFZKNTBHNJgM"]}, {"customAttributes": {"9M5sAUjXgdgkP9M2": {}, "CsUL3nMyVz8k3WCi": {}, "0Bo4OjF1qO6294iA": {}}, "slotId": "R9mZX3fFmIRDLttS", "sourceItemId": "HZ9RbaXgxdgt46MH", "tags": ["gG1V675zXpbFMPpq", "UWnmtoTOPYvS3TgI", "iYHBOFKWnbfJnZbw"]}, {"customAttributes": {"ZyDIpmy2L1kJ5TEK": {}, "eYaxTykVSA7pW8hg": {}, "tAaRflBmese4af4R": {}}, "slotId": "KdsGSAxJXY64vZFs", "sourceItemId": "KE5h4tvCl70kaJr4", "tags": ["F4gFzoBEygnniiRa", "mk4gXNQ8FiDpWPgi", "QVVfB1qphBIBNCmd"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'KXmoXl3J2t7dbO16' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "zryv3BISp2uvgZSY", "sourceItemId": "gsHgupJztb7fXS0b"}, {"slotId": "YN7QTYc9WtDof6nS", "sourceItemId": "uq057kPz0m004Nid"}, {"slotId": "OLb8jmPmhnhAPkPB", "sourceItemId": "lDAn9NUwXJKvJ5yg"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '1LI3u2qotmFpfTVc' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 56, "slotId": "M6hWhwDUjy3w5UF9", "sourceItemId": "UoKOhl5Kpx90wyvq"}, {"qty": 89, "slotId": "u7ArDLkGnhzLSBVN", "sourceItemId": "cXaGGuj69p19myQz"}, {"qty": 76, "slotId": "uzeoTlHRb1tGLiBF", "sourceItemId": "QsachYahWM0x3592"}], "srcInventoryId": "pj1bHc3Lyx4cIal1"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'JGZkGqmjcTg6nd1i' \
    --namespace $AB_NAMESPACE \
    --slotId 'VE86qukhiJbGIgNO' \
    --sourceItemId 'Zsnnp8Zy4VgkeGtY' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE