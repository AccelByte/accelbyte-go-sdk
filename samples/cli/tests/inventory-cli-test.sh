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
    --body '{"message": "0rLQAnHyvdG5IxZg", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "Cheoq9CPUpztVv87", "options": ["b4DmaXVRXbhZKnmC", "kZPBvhpvjzyZlW0E", "UpK8LwKGkJ0mq0NR"], "qty": 42, "slotId": "mG8z3to47JPNqd8L", "sourceItemId": "DmsEspzoV3se4qgQ"}, {"dateRangeValidation": false, "inventoryId": "OBFNfzyKkPV2KszN", "options": ["q37u5DraOc9G9Opl", "kOmnBpIfngYFP9kI", "e9u6To8aMrUXSzWH"], "qty": 89, "slotId": "wRYlx2Fcc0bMKB9p", "sourceItemId": "BD9KVyg8CajfYegp"}, {"dateRangeValidation": true, "inventoryId": "koyIOuyhh53p3hv9", "options": ["0Z5ED8E4u6VqJZih", "RBA6iDuN4rqy9sb0", "bt5RjuXfQ4nHyrcr"], "qty": 90, "slotId": "eLRYikRQYuSGP1FN", "sourceItemId": "YbAbQImKoQcoNITv"}], "createItems": [{"customAttributes": {"tIbpu7ZOBIEvquaN": {}, "bTXeGGwSU2fYdjG5": {}, "b453b62k06I9uWui": {}}, "inventoryConfigurationCode": "bXSn5jJLPvvAqBqY", "inventoryId": "ntrntGfduPY2xaUR", "qty": 37, "serverCustomAttributes": {"yE4TpVcmqvCW3kub": {}, "JelWYBWtjUYvjMK0": {}, "PKFKTWnMaCZHmWwi": {}}, "slotId": "xVRPTx92cfClbF9W", "slotUsed": 19, "source": "OTHER", "sourceItemId": "ogGe8A40f0JFlS3H", "tags": ["1V53dzVlWoTg0eNM", "FM3kWpsq1Frp5cAK", "8Fpsfk656wYxfvA9"], "toSpecificInventory": true, "type": "Zdettkr4ZCcfvrKi"}, {"customAttributes": {"YXQsmqkiYtoybREb": {}, "UuyOTIgVmpjEhFy2": {}, "0quPM1rWvBmYadcy": {}}, "inventoryConfigurationCode": "zVyEseAtdhab50ch", "inventoryId": "5eki0Ocf17Kd0bd6", "qty": 6, "serverCustomAttributes": {"yrr1gGfdxDy9Q2y2": {}, "AIi4MFrxL5zE3YjR": {}, "MaK4vtVMsYxo3n0V": {}}, "slotId": "Eq7MEHVWyQYq4vXQ", "slotUsed": 84, "source": "ECOMMERCE", "sourceItemId": "hqv7gXvblJRJpmYA", "tags": ["fK9UY143bCVPT16I", "6caNz7VNJIgkrCbJ", "PjFPEAZb3Ipqo5RE"], "toSpecificInventory": false, "type": "ZMDjEigja0jYmMKz"}, {"customAttributes": {"j3KHM3FhKg64u09x": {}, "mhdqgcwteq4oSHl9": {}, "KiyLmWg852tUNbRR": {}}, "inventoryConfigurationCode": "DIiov8vUcuDtBpIz", "inventoryId": "NDtTu5qian3c0ljX", "qty": 70, "serverCustomAttributes": {"ZvNmUbvTniYgz1sC": {}, "TczqRN9oHBSL1Clu": {}, "0w0SLhG8dfCcCazV": {}}, "slotId": "SXSXR2NWjCx8EV3a", "slotUsed": 18, "source": "ECOMMERCE", "sourceItemId": "UEP8ZLXJpkqQEk3W", "tags": ["PW7E72PjwA8gSafQ", "5xK0I7Pw7eU54hpj", "kkyh45TV6WjQYeAU"], "toSpecificInventory": false, "type": "MSruaTccW7Ijq7Y8"}], "removeItems": [{"inventoryId": "Es1a01huP2b2AsHk", "slotId": "4xZvGbOxsCC8eNEq", "sourceItemId": "5k1HbzPWap7Nmprs"}, {"inventoryId": "VpkNLV6P3auWFhVj", "slotId": "e7cXAE4qDjItl2eE", "sourceItemId": "CERV7CY2rPxoSpPW"}, {"inventoryId": "Ec1q6EhJNhkeHgiA", "slotId": "2poShhiVHxXk1rZR", "sourceItemId": "z1ar5QRCmm2Z4gEQ"}], "targetUserId": "lp2uZ4t7GANDElxf", "updateItems": [{"customAttributes": {"AGd6H575X3ZWT3ZP": {}, "GSKkTeTZHOOZDKqt": {}, "zFLo6YKexWUiTRkj": {}}, "inventoryId": "113NfmSHZmnCYKK2", "serverCustomAttributes": {"YcJoHT0a0kQQsXhX": {}, "2CISvlObLJAnKXy3": {}, "Fpf2ksrWR3iv4bUS": {}}, "slotId": "I6uEjtbNqryaHX3e", "sourceItemId": "YiNoUx015NiSGqTh", "tags": ["xC7ka34lXZ3gPUs4", "CdT0KWzKOnhAn5Ra", "bJQkpLORBgYbVFoQ"], "type": "bbi0KhXqV3gzR6uW"}, {"customAttributes": {"16k2BQDKWDTTLs41": {}, "KB3CL0u6zdiZmIsx": {}, "UZim9RciyFxQnvaY": {}}, "inventoryId": "Zb0ulUzJMGpRGCZa", "serverCustomAttributes": {"FmmfU4y37vuumz07": {}, "vQNSZx06D9tFjWAT": {}, "UtN2N0vB5AlRIo5N": {}}, "slotId": "7SRfNKYqO4I9SQ0e", "sourceItemId": "btExXeQEVxWGi0pr", "tags": ["vL2ngP7Dyy1VRvmo", "9OEYpjnKSv28t8DI", "jzCQIXXfPC4zPa8M"], "type": "tH0VlfztwFf3nQuS"}, {"customAttributes": {"8hKIzVeIAj9hu4oo": {}, "ZV87qtWjDcivlSkV": {}, "tT5GoPUoG5EfcBhT": {}}, "inventoryId": "fJiXMtqiBVXMPF3L", "serverCustomAttributes": {"7QKPjK3s1IBlDbMT": {}, "b2izfdB98BlM5dwa": {}, "dkuPRThTyUcpagpn": {}}, "slotId": "x0Ipg6qBePA8T8Nh", "sourceItemId": "r83WuwTbNxaqDehW", "tags": ["j7ezyVZYnbMX3snm", "wOyXqJq7wUHib4ys", "jNfaEuU0NB7qpwvO"], "type": "G3vFbUYlFm2xNAiy"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "UbByc4Lxv1ckD2W1", "options": ["lqoZVidYEKPnLA2L", "LMmc6rkRwRnlpA0g", "uCI12z2CQAJeNZJb"], "qty": 61, "slotId": "GbbD2jsD2awUWKGv", "sourceItemId": "vQhMwOTkquBpsuLt"}, {"dateRangeValidation": true, "inventoryId": "wtZYEwuHftfqDoCL", "options": ["hbHqDKC48FZC6nRC", "AMm6zYDLPlKtg4VM", "baL2l1qRp8GjfpoK"], "qty": 39, "slotId": "2AS2g4v7jdALvkJt", "sourceItemId": "u9i3LHBSIT9bMAl5"}, {"dateRangeValidation": true, "inventoryId": "c2rHRUsJBvqcagiw", "options": ["gxrHK5fSmr2j7l3d", "RJt0rduxlm0nC5l7", "nBwq2XE88mulwqkW"], "qty": 53, "slotId": "L4Ut1hguuzV1UIAK", "sourceItemId": "I4FLusobTrd8JrIE"}], "createItems": [{"customAttributes": {"fKOcKlF8mALByMXt": {}, "OAHk13f3HNyGPnoS": {}, "V5YEQ4mMCAvmZx2l": {}}, "inventoryConfigurationCode": "9X8EDpF3xC7Hx7dB", "inventoryId": "A5RhcwsvykEC4ElI", "qty": 94, "serverCustomAttributes": {"RN5RWKouOZKmkWuc": {}, "EB5TxpO3cRmS1rr6": {}, "kyDqOZeF9yO1jAAa": {}}, "slotId": "j4yNF2VKTkzd5Nur", "slotUsed": 35, "source": "ECOMMERCE", "sourceItemId": "rXpuv53gUwhk1aSl", "tags": ["x4nLMeKu7KE7bcYl", "7KSCAqofdRvDyvYP", "1iqP4mYcQu2OD56G"], "toSpecificInventory": false, "type": "nUZQ14ZNXD8HxxIb"}, {"customAttributes": {"clVPP7W5TqHflH0L": {}, "BzuBOOCZs3Uw2k3B": {}, "SOxxPRB8PnSZnLYE": {}}, "inventoryConfigurationCode": "2BCuTLICIMNITGVJ", "inventoryId": "fZvGcsjO8uzFgUI3", "qty": 41, "serverCustomAttributes": {"rZFeIrqW9cs5ceuk": {}, "XTZX5J5xQc9HUsao": {}, "QW8onpsX6BhtXq7k": {}}, "slotId": "7bCn5EdLV8CLZ4DC", "slotUsed": 54, "source": "OTHER", "sourceItemId": "lXhIc5cuH5LPZxjK", "tags": ["MVG5nxSxP0GoeHSz", "Lk2qRnkFwcvu1vUR", "RirbWcjMXrvBiBcg"], "toSpecificInventory": true, "type": "ZOgbr6zYzZOULvQj"}, {"customAttributes": {"4k3BdMNLQ90Ch9Eh": {}, "0wEjQsZi7v5EKsvU": {}, "eUmxV3ifHtRi1fHq": {}}, "inventoryConfigurationCode": "yQCxE7SJ70vBPGnj", "inventoryId": "5mffr3GTyIdpPmMg", "qty": 94, "serverCustomAttributes": {"Rh3xqqoeqz0thRfN": {}, "HmDo5EKwv8e0rfeE": {}, "mFQPnt13hFEIIKy5": {}}, "slotId": "rww3Qk8mGdmAIgjW", "slotUsed": 18, "source": "ECOMMERCE", "sourceItemId": "PN0v93wXUlpIAmyk", "tags": ["rUtsFMtkM9R1zp5v", "uKDz0IJRMa1kSxee", "QuukjEdmEkjkN8HS"], "toSpecificInventory": false, "type": "GBW2e5ElQUzyckaV"}], "removeItems": [{"inventoryId": "H7ZGZu4SzlmybjdU", "slotId": "EX4TYIot5ROZ7L96", "sourceItemId": "L1tmsyFN7MdnrcsW"}, {"inventoryId": "XzJlPKHM6RzsvG1h", "slotId": "V9l8roAVlxATeNbh", "sourceItemId": "opcEPe9TW657ZAf5"}, {"inventoryId": "AJF8fWGIpiagYyIS", "slotId": "0zVteV7d3hKDAavn", "sourceItemId": "63sxnwHU14vUg3Ht"}], "targetUserId": "kJnrUUhBo7ZXnwk7", "updateItems": [{"customAttributes": {"QGLe1UhjpjM5Cw3k": {}, "TZMBey5Ygn90RSen": {}, "0PcsCjmsY9pxUpZY": {}}, "inventoryId": "F6zNXG1P4KHCPUZ5", "serverCustomAttributes": {"x3iLez85LtdO4zDO": {}, "bHAyJn2wDoBs7CH6": {}, "MA6bBAyC8ECZg2Wt": {}}, "slotId": "NJmYRKXdE9DA6zh7", "sourceItemId": "FMzpwkTHSzmj4cWf", "tags": ["fq0JbZm2FKrrDiYe", "VAHzxxZfDhFaFbVw", "YDuq9do9lF4Km7zv"], "type": "xzrBD7i2MsufAEYC"}, {"customAttributes": {"2XvjBGZtmovNFJEM": {}, "2fCDZO3Lmmbt7rko": {}, "xRUYexSuDsxYxYG4": {}}, "inventoryId": "qg2fuEuyWtNL2pnC", "serverCustomAttributes": {"k1bW0nAH2ifFtKHx": {}, "k529qUUtUTfe6X87": {}, "gI0WlxcbuWnT6O4w": {}}, "slotId": "PAarYLTqY8iCl7q0", "sourceItemId": "zlPImU9IF4viXEdH", "tags": ["x6Vsw735B6eB4PDp", "JT0Fcv2j7f7d94jx", "OkI9T6lRmDuVTTDf"], "type": "KHfeQQsTYYf1bPKu"}, {"customAttributes": {"mQ5H27k3PYxwK8JC": {}, "9zQvofpu9NfCWH9W": {}, "qIMX6fXs9wYdp2B2": {}}, "inventoryId": "ITPHU0mKlRG3X9KB", "serverCustomAttributes": {"7CYvjVvBna6cBNja": {}, "KX52hoshUJjWdirv": {}, "pHlu34zbhtU01jFz": {}}, "slotId": "z1ep6yM1KaJAkiGZ", "sourceItemId": "khOSEgrwxzebpDUD", "tags": ["vaNgcsd9G1kjJCI7", "XOKuKQ8W6SRtXVOP", "p1A6CBTzHTXVHTW1"], "type": "QMf0z6HHaNAYdhVC"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "ncekgGlH3kNRmDGt", "options": ["TXgyP15c6DTJIrjH", "QY8MnPHZhyAduxZq", "HnnTy8xJjyPPiwv5"], "qty": 74, "slotId": "MoAaPso9vG7HU9N5", "sourceItemId": "Qd2HFpTOzZRYCUmk"}, {"dateRangeValidation": true, "inventoryId": "tUSG0QhY7TrrOvlh", "options": ["PEl7mV2vFBN0Izh7", "NdbQGj7bPYL36E2b", "rW5l9BFBmqWoyiXp"], "qty": 52, "slotId": "vcR0KjkOtlvM3eMf", "sourceItemId": "AAs6plGW5sqe56zU"}, {"dateRangeValidation": true, "inventoryId": "qCbgvrCkzfbZMD3J", "options": ["zkT35SS099T7Ivrq", "Kn82v10CPOV5q0I5", "Hn7CQZnWMEicQZ4r"], "qty": 51, "slotId": "NPXDexS1BTDQ81kC", "sourceItemId": "VwWtzbq0fwRmYl73"}], "createItems": [{"customAttributes": {"o3ilwyqVBDFDc3kk": {}, "cDBUtNYQwpy3L0aP": {}, "LFK4ZavY6xBhXh9z": {}}, "inventoryConfigurationCode": "6NoaJRCR8ysSdGSL", "inventoryId": "DErZe44VfwOcqQHB", "qty": 76, "serverCustomAttributes": {"KRBA8CUj6kWq4LkF": {}, "dgiikGOwrG32jGHa": {}, "wpWH8mPfLTUMDsX2": {}}, "slotId": "PgPdQVrsfQYpgRM9", "slotUsed": 29, "source": "OTHER", "sourceItemId": "A7V0EZ5PrXiCqwct", "tags": ["DW3ocRMtFTgAMsXz", "ORnhDnCgHU1tSzXF", "1zTljqcMGYvkbRjO"], "toSpecificInventory": false, "type": "XZAaSMjp44vOE9Cc"}, {"customAttributes": {"UpKbj0tncjUI1YfA": {}, "CBacYzO2YKdQWLFd": {}, "0NF1Vqo1dZHolhpO": {}}, "inventoryConfigurationCode": "Wi32XghLtgCVlmjj", "inventoryId": "B2Kq4YLET7MwSBci", "qty": 66, "serverCustomAttributes": {"3e9ceoGR9c5cC5U9": {}, "lMlJPuP3mfrXjk2k": {}, "C1FrFs7oQeXR1cxf": {}}, "slotId": "k0puF01B7KhLkZOn", "slotUsed": 30, "source": "ECOMMERCE", "sourceItemId": "I8SPRXKU1X7lMkMI", "tags": ["YtwkutowfH3HuKm4", "Yh2WxfwycDbaMrVp", "2ANf0fy9D383OzDi"], "toSpecificInventory": true, "type": "WzwT7maTLRLj8n9Z"}, {"customAttributes": {"U4GZXjIcgT1MDAkp": {}, "wCt91rqgJ9LDhPuo": {}, "Mikxwhtt50GsXFqL": {}}, "inventoryConfigurationCode": "ypH5cou3umh2q5GU", "inventoryId": "5FYKsIFwOs3wnmlB", "qty": 69, "serverCustomAttributes": {"UfS9PO5xmJuzuvYO": {}, "OouCI01aTeQwJcOF": {}, "R0Mlkez14qqkobCs": {}}, "slotId": "TwttD76W9bw7qZbt", "slotUsed": 29, "source": "OTHER", "sourceItemId": "rUyQYeWhFdpziiUy", "tags": ["chZAUIbHr0I53IX4", "f5bqgCjAwPNYV1dl", "cghyVte8YlXdHBHT"], "toSpecificInventory": false, "type": "y7pHnzDyKeMeHwb2"}], "removeItems": [{"inventoryId": "LInOMOxJCjb36vd9", "slotId": "w0xa6vNTcDEC1LAe", "sourceItemId": "E9SxUiRlE99jAQuY"}, {"inventoryId": "DqYTjprXGd0xMQ0Y", "slotId": "jHcUU22VNlMJvG6O", "sourceItemId": "yf9Ec67Cdj9LfxPR"}, {"inventoryId": "S7maXpmW0W55k8M2", "slotId": "iKq1FAB2tlY2pDc2", "sourceItemId": "cwEQPxVzjIS6yi8x"}], "targetUserId": "bKHo3ZyDKEEtneAG", "updateItems": [{"customAttributes": {"JJ1U8ko4f9c9k2K4": {}, "ozg506lUU3Z50Edm": {}, "pQlbNap4YeXkZxKZ": {}}, "inventoryId": "MKG2S4W2lALzBCFU", "serverCustomAttributes": {"Oe4IpBZE8PJn5xBX": {}, "JRx6WMkwU6nR7MWT": {}, "iBnKXzpXHGwoaDI9": {}}, "slotId": "cjgGROyhWPzjt4R7", "sourceItemId": "GNQqPomV3PNTUXBq", "tags": ["BaODMZfjZdBOmqhr", "xIZVynv8NjGo2ERn", "XDzWSOO8dwiv1vow"], "type": "ngSJhkLRj6bZBThu"}, {"customAttributes": {"BXgCZl8NX7PvoNxh": {}, "NC72OAa0VBhwxx9l": {}, "DFpuHQ1A3PoJ18Of": {}}, "inventoryId": "4esfpn7jdkDGUC35", "serverCustomAttributes": {"OAlLtcShcKk67ekv": {}, "gf4c7kGXHSdC7N3A": {}, "MFxM8kl8V8RpkFv2": {}}, "slotId": "kWuUrl8KQB3NfBQn", "sourceItemId": "lR7UH9a1Zj2xdXMu", "tags": ["l7MbhuD53qO2w7AM", "hJuydfEMQZpdD8Mn", "y4CRVsiUsR3Dsy4Q"], "type": "7fJKru1ddmmjoEYO"}, {"customAttributes": {"bCLBokmArp6yZjLx": {}, "hVynGAB9M35HxXjg": {}, "83lioH0SjTyYMsEz": {}}, "inventoryId": "piYguvFPOKkHaNzV", "serverCustomAttributes": {"CuhsJrsIpOFzMKrV": {}, "Xs5gtGskmgtjTUtU": {}, "X903F7M2B7tTrb3I": {}}, "slotId": "gcez5Cs9JY03gHnR", "sourceItemId": "rpf9bDcLDZDCCxkj", "tags": ["Jdn8twh7KBvxxJ8F", "KkK4X9yQSwQjMh7J", "YZXe4cuzFHX45hfx"], "type": "XFndCU18sJ8GtAhL"}]}], "requestId": "0g2Pnfd4mzthtq8z"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '14' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["XkPnYaa3FydeCzCR", "iqbgdam1kRyQVUtr", "7H34XDmrEtYwn8ww"], "serviceName": "VY9xZMnCkKQqi9ty", "targetInventoryCode": "CK8QBAYfM3eaC8fT"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'GEw4s3AuZmXsrjIM' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["i5esAxaYAwiHYYVC", "BWaGjC6H2gZUpToF", "4B78Kdv6hRSrNvLb"], "serviceName": "lbWAJlPUEq7JdJmY", "targetInventoryCode": "GWocAYMwHgLWB5Dv"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId '6foyAqPzJysHRV4o' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'JlybSSiq55ObBHGS' \
    --limit '60' \
    --offset '10' \
    --sortBy 'updatedAt:asc' \
    --userId 'm83zrL4lXgnhAiK4' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "KkdtQVm4Oy4Yi6AP", "userId": "gLrsF6ehEBIHqOFu"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'O8JJf9JgieGJFFWg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '7TiStQ2R0s83CUMK' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 45}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'CeBkKrMozGQVPCjF' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "7Sh5RAyNjYg8l9Cx"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Lxq3UkwLCNkcWzCJ' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '60' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'rrG9npeiYPW8pgYE' \
    --tags 'R3xQ2TGPTjskuARa' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '2Lo5zjUzyX3TAGYJ' \
    --namespace $AB_NAMESPACE \
    --slotId 'r4Zo9tikoPa4OhWk' \
    --sourceItemId 'ZGSvMauA8BB8ejpz' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'X3HG9AUqEUC2ovIv' \
    --limit '19' \
    --offset '88' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4DYGNMP1rSNhghK4", "description": "MUqgYOoTDANd0kx7", "initialMaxSlots": 71, "maxInstancesPerUser": 23, "maxUpgradeSlots": 86, "name": "sc9DEdrxyj5HQqnm"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Gf3d48Xwmw6R8o1l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'ylQbtqrPjHEtseUa' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tI00jdQGwOCVhIDL", "description": "7Yz9LjCuv1WxEuL1", "initialMaxSlots": 17, "maxInstancesPerUser": 46, "maxUpgradeSlots": 26, "name": "xMoBdaWIveZczLIY"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'WUIe5Hfp9HEv7hU8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '78' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "giavBV9d58ryJMS9"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'n9HGTdMo744lemxu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '84' \
    --owner '3RymCOyK9t03qrJp' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "dKhrXuoatbWJhvH2", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'dbcVDb1woWmawahG' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'g5nrmRwXlXgJszd2' \
    --namespace $AB_NAMESPACE \
    --userId 'HKFxUYdzKthZ7VG8' \
    --dateRangeValidation 'HXUD9i7Kz6r4Z5Gh' \
    --body '{"options": ["SkHhzZoOKH7yZLGo", "ZaSFj6ASzzAKNNfl", "1M3v4UN2zIhXCByK"], "qty": 23, "slotId": "rRTj1RwMfjg7YBGQ", "sourceItemId": "VKu51bbR3rq3E98I"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'cX7QYba3qaq2caZR' \
    --namespace $AB_NAMESPACE \
    --userId 'Otw1htOTuJ2zdPSD' \
    --body '[{"customAttributes": {"BPABn2Vj0p9Cw3RH": {}, "huKIOhtzpWZKhyni": {}, "vy8OY6xCQFSTsPEy": {}}, "serverCustomAttributes": {"tjcGnOvxe1EUFtr9": {}, "cgMCGn4tT93O3TbH": {}, "HGOtkilT19xjYjOi": {}}, "slotId": "AE40H1lB5uxZgC5Z", "sourceItemId": "wwyEoiGL16TXnrTK", "tags": ["5mL9FRVuyRGtI0au", "JXGy4G44VuVNHMHf", "tk8WIS1fBzOTldcV"], "type": "N44eDEIVD7HvzoQe"}, {"customAttributes": {"BdibyLod2dOgeHAJ": {}, "QBXZ89w8pNnPkDTf": {}, "uMbWjtIjQxOn0Lu1": {}}, "serverCustomAttributes": {"1cgGGvmT43y9qfPt": {}, "Dr9sLcz97y3tG7Lw": {}, "MSPwAyVXd6zOZx1j": {}}, "slotId": "1EwMZZmt0LvXbJ6U", "sourceItemId": "Ef41JgCDmw7yUkTR", "tags": ["OootlY5ZzpmOpOmX", "2WSzsVO0sKis63th", "fal39edr54iL7Va3"], "type": "F16o8F0qyRVdyImT"}, {"customAttributes": {"ui6f7QHxhMccEZ3G": {}, "ZUKliTpRzlfue6gN": {}, "am9hKhQF96v6EZpm": {}}, "serverCustomAttributes": {"Ii3bMGUGciD4B8Iu": {}, "J8Je2Kq1V0sUCybG": {}, "DJaoVEUvYgxFxY2m": {}}, "slotId": "UYTk9pzTmwxlVsn3", "sourceItemId": "kRSBkhsmrwG9x5s8", "tags": ["VtCjrynIO0zdjfGg", "AFkRWXKjUtUSSHKY", "rH6WEAQKpI41n13z"], "type": "GKnoKTBoncFHQPpE"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '9PPZaBv1DN1blhLC' \
    --namespace $AB_NAMESPACE \
    --userId 'jPaL39srV1voovPK' \
    --body '{"customAttributes": {"i9nu8FaJC1tZYLwV": {}, "YzN3jr27sjcKQaDk": {}, "JQvr0Xtc3dOcGAQR": {}}, "qty": 57, "serverCustomAttributes": {"dDcWCiEYRtEuCHpc": {}, "TGf6vcyp75qNLzWB": {}, "AhOcByIKKkyUGpcF": {}}, "slotId": "FvVkUDwCNys6UI99", "slotUsed": 0, "source": "ECOMMERCE", "sourceItemId": "NlCKaMlHdOTURoMQ", "tags": ["uLKtqUZ7yItOIc22", "sNWGFuUUGHQ1excL", "6go5bK9JEahhUAxI"], "type": "15BwooXNDTsDnJDU"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'sSYe3sbh0T2qHvE2' \
    --namespace $AB_NAMESPACE \
    --userId 'OZbkhns3m1KZNzFZ' \
    --body '[{"slotId": "K7KpJGrDBFEeBgsg", "sourceItemId": "FD51SO4M6hbHVaif"}, {"slotId": "NArvUlCWeIrCJKiP", "sourceItemId": "cmXdX28swPSfD7Xh"}, {"slotId": "WJoA3FvzToY9paHR", "sourceItemId": "6nUjra4xBLPb7efi"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'Ykh2wz0Zbgv51WUK' \
    --namespace $AB_NAMESPACE \
    --userId '3QSClUoOJRhvrfwf' \
    --body '[{"customAttributes": {"18wf0c8cI75afTME": {}, "gyoHbtCiYF1XBmQk": {}, "uWaUfYgwehL3S7KO": {}}, "qty": 59, "serverCustomAttributes": {"gjPUslCg2k8aCZdA": {}, "S14Cozq4BVMT1LjE": {}, "FtkpvVdo9LOY94fb": {}}, "slotId": "iGXzTdgngILYEi99", "slotUsed": 78, "source": "ECOMMERCE", "sourceItemId": "d2mtJUS7j8vfkBQF", "tags": ["OvjEUuZJ7eqvUgyt", "LGyBBrzscj0fRjEW", "s0owuKl8eUjziP7W"], "type": "A19jJfIgMl7M736R"}, {"customAttributes": {"vXIGce5x6d0ZXC6s": {}, "iWAlzvg4yEvR1Y3g": {}, "iohnMMaYKhbXKfHg": {}}, "qty": 100, "serverCustomAttributes": {"JkY3KqSfyTyBCoYt": {}, "GVsyKkgPx5WggrPG": {}, "5K3se3KVmtepfg9q": {}}, "slotId": "6kiAMzBTgtWhiEn8", "slotUsed": 91, "source": "OTHER", "sourceItemId": "p6L7WOLnuIcOW8tV", "tags": ["T5TOOtkk1FapoMQe", "1LXidiTaUTccpGyh", "f6iRMqa627vKMQ1q"], "type": "xuAYuZI8b1Onpee7"}, {"customAttributes": {"jU0cLZyoiRoxquMX": {}, "liNWuQBTHI6NnAV9": {}, "UWDJmExH9QgCblsq": {}}, "qty": 21, "serverCustomAttributes": {"PXbvXGZIYtAz7YNR": {}, "8GYT08mKXbaWx3IG": {}, "kGI2jVCwyrifNFTa": {}}, "slotId": "JPSd9iLMZwakWwQS", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "5xJ552cgmuiEg84c", "tags": ["oOyEfq1Mzze45J3G", "2ioa6IJgw7jJg7AE", "JSbUZerW5kfPfECE"], "type": "zS9Qk6SBlhzROXaJ"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'ja0o4qFGLj4EzGkL' \
    --namespace $AB_NAMESPACE \
    --userId 'EjmgicNSKjLSX7HL' \
    --body '{"incMaxSlots": 88}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'd9JSBxGG1UlQxvzl' \
    --body '{"customAttributes": {"L4ortkANRrlRwc7f": {}, "bdhPa7KWWtFCfAcz": {}, "36aTL7IxjmRpVECM": {}}, "inventoryConfigurationCode": "CGUR6AJGxUN15mZE", "qty": 72, "serverCustomAttributes": {"yPFELJrvEnBd40n5": {}, "owlrzOdDd8oDV0qQ": {}, "TEVafttPNEcvv5yM": {}}, "slotId": "hCMFa9AjByevgF4v", "slotUsed": 75, "source": "ECOMMERCE", "sourceItemId": "bI4RRcJOM1cF1RAu", "tags": ["RLOyoNcUmU1gqNrP", "Y5HHUyX7q1MoORtV", "5Z0xjZKZgs57SVAZ"], "type": "ztvc3g4XwujnvnK3"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'xtZkgQeiOpShnybK' \
    --body '[{"customAttributes": {"ZI5XVdW5mjlmgZ3F": {}, "3b7K9xi2GpVsifPa": {}, "J0SJ7VwKZ84x5jc7": {}}, "inventoryConfigurationCode": "D6uDDkaPCuF6Md2B", "qty": 91, "serverCustomAttributes": {"K9yngubkcXGjnVab": {}, "TiPK4vviEbkUOJGp": {}, "R2pmwC3buVffJ6W9": {}}, "slotId": "1wOlzai630I3KpxF", "slotUsed": 77, "source": "ECOMMERCE", "sourceItemId": "sf9M0yb5Q8HmAK7U", "tags": ["QSwdcPHa95XJOy47", "K6pDZN8iavJJDJcp", "TICJvVeP669HOuep"], "type": "ipf9ZCHF7WTqVoqy"}, {"customAttributes": {"kzCvrHsFtCRG7hTr": {}, "GVyMnUjAnVggew45": {}, "rxv1jbzX2oQkiFyp": {}}, "inventoryConfigurationCode": "2usMseVCFwrKgoOA", "qty": 11, "serverCustomAttributes": {"PGTpSyWuGRXWMlI8": {}, "5kYy3z4VTvDZoJXv": {}, "PUK0bozH3bz2ofwW": {}}, "slotId": "ADXaMxzO6vuaLVQ3", "slotUsed": 51, "source": "OTHER", "sourceItemId": "xdJXoiO8gTqxSmUo", "tags": ["5JPp7vvTB01sqc9h", "t3VsocdFswXyu0HW", "VsIYOhRNK7nJmYvz"], "type": "LJ2bI2wOK5e1WxK1"}, {"customAttributes": {"YiCCljg2etpZMP1v": {}, "N59k4S5u1ObBEoDh": {}, "A58PkcgZGsD2zyMo": {}}, "inventoryConfigurationCode": "EKUQKwd8G9ovNVd1", "qty": 65, "serverCustomAttributes": {"fMOZaNA9xoUlcLLW": {}, "TiYpXjzFq09W6dGv": {}, "v3XMs77EfiaC9vYn": {}}, "slotId": "064Nc4M6wheOrXYW", "slotUsed": 17, "source": "OTHER", "sourceItemId": "eX7HvgH2i9e5m9F5", "tags": ["jQxku9l9lkRAyuzx", "GaGGDrrTzjUb3eK9", "cCl1iDhuvpQKi4xx"], "type": "BsqVqGq3MZc9Twjk"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'YPlTTDzGZXDTcLjB' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Eb9r8ugypSPMCR9a' \
    --body '{"entitlementType": "aWR2kmHJdcTqNtFz", "inventoryConfig": {"slotUsed": 18}, "itemId": "6uYx4O2GFNH9RM7g", "itemType": "xWnPXQ4wdGg6JCiY", "items": [{"bundledQty": 91, "entitlementType": "7flt44GPJLRVnA0d", "inventoryConfig": {"slotUsed": 84}, "itemId": "LGrrtJZXby8Y4uNZ", "itemType": "Ut251MQs3fLZZSzn", "sku": "hzoicmxI7pnIm27Y", "stackable": false, "useCount": 86}, {"bundledQty": 38, "entitlementType": "NCtgDUuugDJXGCuH", "inventoryConfig": {"slotUsed": 13}, "itemId": "kALsxeuTcsrVZ8iS", "itemType": "cYUjDu8Zsy536GPn", "sku": "8CUyPkvHn4NLurXE", "stackable": false, "useCount": 44}, {"bundledQty": 21, "entitlementType": "cPrlRz7ZkMkpf6L3", "inventoryConfig": {"slotUsed": 50}, "itemId": "UePPnwkbMeHkkBmU", "itemType": "EDYCH26CXjhoOvmC", "sku": "1wyZD9RopVXrJCP7", "stackable": false, "useCount": 61}], "quantity": 22, "sku": "EBORpj43z6j2uPCR", "stackable": false, "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'eZFfG7ih4HW0oQcA' \
    --limit '59' \
    --offset '41' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '74' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '67' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'CQwOR4aN3giA2ZSa' \
    --limit '35' \
    --offset '32' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'BsD4CvIsyYcOBuee' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["yeygkvJQEA9999Ku", "rFz66xVIcufRCLup", "k9WcDACOofDffQdC"], "qty": 2, "slotId": "zokjyDOINaUpf2fE", "sourceItemId": "stY27AVgrdIqtZcr"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'HxCo3WJ81vI56nUa' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '99' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'zhalJyh4d2GEPC15' \
    --tags '1vEtnpuCrNAI2j5n' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '822LNFWPS9lgURTe' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"tkNSgSqx1kPkREUw": {}, "LMpuWLnXVR5uHE6J": {}, "25Jh5vExaTYxGZr8": {}}, "slotId": "phpe543uj0O7Vjbw", "sourceItemId": "axphFbruKdsEH1al", "tags": ["iDmJXHaEPeP4EDC9", "Fo1RYUyIsrt2EF9F", "ckeFxv9RR2oS5duu"]}, {"customAttributes": {"THUEBqea0UHB9POT": {}, "tXZvo4N3FqmrGlur": {}, "3uLYaENIfq1y8sxf": {}}, "slotId": "JZOCFpaxcFgJzPtv", "sourceItemId": "tQEPkpuSrnB3ONnY", "tags": ["2Rbk7iQBTlsH8i4m", "XaLUnqIraoK7ffsU", "nU8VjOIYLkJIPWDj"]}, {"customAttributes": {"si8lRZeCQYkPONsV": {}, "TrnxU5BQ19tZdrjR": {}, "YripkTgESA6ajZBi": {}}, "slotId": "9azqG72pgFI2jB7q", "sourceItemId": "SsIGIIzy0NoxHHZM", "tags": ["M9BA5EAFtOD3nRYs", "zBvyixh1MS8GbRDs", "RpkNz3UPNUyNbeMG"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'msPjnxLBBSYgJcKD' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "uvDtOr5uSwt85REr", "sourceItemId": "iBls7o3K7DE6I8sY"}, {"slotId": "cSIj50ZADg8pBOSC", "sourceItemId": "0FRRMT7N86kZvTly"}, {"slotId": "lrXO4S4hBSsZy5nM", "sourceItemId": "cyG458GON8SisTyP"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'ZEy3dq8yeduL6Qby' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 15, "slotId": "7PvTgXUqENRAHYT6", "sourceItemId": "Kj87COPlnKujVPDH"}, {"qty": 71, "slotId": "iizI9pABudibaMnz", "sourceItemId": "e8arTJX3AGtAcpNO"}, {"qty": 85, "slotId": "CdvNdI2v8ztMSvZ6", "sourceItemId": "1OwKMp2RqgM0kkeg"}], "srcInventoryId": "vVPKUr1tzXq8bHlP"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ilLoi931OpO8nE95' \
    --namespace $AB_NAMESPACE \
    --slotId 'ugZehh880t9yCAfV' \
    --sourceItemId '5yVWsJgiv7vBGri6' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE