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
    --body '{"message": "hKm9ViDMbPUyABm1", "operations": [{"consumeItems": [{"inventoryId": "fA3HreY0vYrM7g3Z", "qty": 53, "slotId": "JdIQacewUxoC32FD", "sourceItemId": "phAndV0ksAU5EItP"}, {"inventoryId": "A7dPRNtUw9lI4nyS", "qty": 34, "slotId": "jm7oF1YoYZjV07MD", "sourceItemId": "EaIKOiuQeYdsCyDM"}, {"inventoryId": "8b3cPy35Ac4odACw", "qty": 17, "slotId": "qeCicsdkAJXm8RbZ", "sourceItemId": "rd39wwcesjitU88u"}], "createItems": [{"customAttributes": {"JUQyfP4w9gHqKPU6": {}, "4UhsxhAK2E9tPbSj": {}, "zqnlANdyMxrkBODz": {}}, "inventoryConfigurationCode": "AzZPXy4KFfPnDr27", "inventoryId": "M49XDWA7j10KDps6", "qty": 85, "serverCustomAttributes": {"MCy8hTGCp5C8Z8gq": {}, "IKM0WwwKnw7EGXHU": {}, "TjNepGr3TyhR0cHq": {}}, "slotId": "TvHif9bnbvi9B8Gk", "slotUsed": 53, "sourceItemId": "RlpqH3XXeyZMJO03", "tags": ["umvHInwYlqsOYd1f", "I91dYZCCuDX054M6", "fgh79FwEpFOZFxEN"], "toSpecificInventory": true, "type": "sngHIwuQjLtq9GI7"}, {"customAttributes": {"QgACxWgvOY5mr8jg": {}, "PujCUW69gWXRzq7a": {}, "X9e2b97uGKrJS0q0": {}}, "inventoryConfigurationCode": "Th7CwdUniggKLqkM", "inventoryId": "9REP4eKhycqlXH1c", "qty": 20, "serverCustomAttributes": {"IW8rzh6kfKvK2gGD": {}, "7vVDCDEmMlbPBdbM": {}, "ajU9pDbw2iMxcvqm": {}}, "slotId": "kl19uWjS81SEq4UX", "slotUsed": 98, "sourceItemId": "HOBIOZFUZsCUbXud", "tags": ["xqKyBVskp3DkOPPd", "WxksSSFQ4YLwbbHs", "OPdzNj197IIGHBLT"], "toSpecificInventory": true, "type": "rUL8AneOwjrIKeoy"}, {"customAttributes": {"eSivNdnBTF4Nce9X": {}, "lQ9JQYh1a2rbLujb": {}, "M7ih3EW7ucYJq5dY": {}}, "inventoryConfigurationCode": "MchJl0a8yRAbdmQX", "inventoryId": "4R75YMajhJqVCYxf", "qty": 12, "serverCustomAttributes": {"VGE2nHe0UTp8Y0o5": {}, "5CwhKVhTCk4N25tJ": {}, "Px2X2RSu1ZownfMj": {}}, "slotId": "RBqVXbt7ULj0N2z5", "slotUsed": 29, "sourceItemId": "oWvZwWCWr6hK0aGu", "tags": ["8nsj6jqzK94SFsM7", "skpm81sm7Qo3LBDv", "MOjx3R39WSYEQg4V"], "toSpecificInventory": false, "type": "MVN7BSfGvYPCRRBj"}], "removeItems": [{"inventoryId": "5sSO6xqjkLFPSxpz", "slotId": "WKWofU51hD82SwZd", "sourceItemId": "Zmpb2IOR1P3HYnTH"}, {"inventoryId": "q8stadPgPiskPnsi", "slotId": "GyUUQxmm7IPWsVY0", "sourceItemId": "Yn7tvLQG9XXjdZ0n"}, {"inventoryId": "0wg5XCRo8KlxS34A", "slotId": "JbLMDw3Y54XdgWUm", "sourceItemId": "Mgp0FyBsAWIueL3v"}], "targetUserId": "Zsdf329msxUgnaHI", "updateItems": [{"customAttributes": {"J9gfRxW30nKJi8KI": {}, "cGFkoVL4UxvML6aS": {}, "FtwuQ3YCdd0EF8OB": {}}, "inventoryId": "gwZ53bot1HhWTsLF", "serverCustomAttributes": {"qbFzGjWtsXQwsKke": {}, "LQY9yEn5ACeIeuqk": {}, "YLCoISLDUbLzQU73": {}}, "slotId": "uTBKQsAc7lGUuUSk", "sourceItemId": "SEZ0FgBdaFH4e8fb", "tags": ["QXMVPJFJuL7IO4Hj", "wK9XLIcrzyFNQn5v", "jmYTYI1pCq8udDoM"], "type": "nnAWG6Ztuqk9XUoZ"}, {"customAttributes": {"GJt2JOstaQd1UCT2": {}, "aCBH0l10MUCGQP0I": {}, "cQsAwGaBiMNFLwzG": {}}, "inventoryId": "wIB87ItDKjDxuGU9", "serverCustomAttributes": {"1eW3ZlbIh8Dor5ut": {}, "mnMtz29UAWUb4xLF": {}, "yWlm2ZUJJlBOzh9H": {}}, "slotId": "78AxlyY6vwe08c0K", "sourceItemId": "JrAOLk5tHeeipgnt", "tags": ["dOJcFVuP0NEDpAXV", "fsleVCkWGYdsu3rB", "blKe5K5xgEMWhtMi"], "type": "MtC1HvTeBkSOUS0B"}, {"customAttributes": {"8PghmBFT0EDYCv0c": {}, "CZ3uHYEpokj6W3MK": {}, "GD8F176GDVrE1EkN": {}}, "inventoryId": "9HBr4a6Ri7SPtbdK", "serverCustomAttributes": {"7SwvHSPnt7tuEPli": {}, "7DtulRL8LPd8UZ0t": {}, "rJSkXXHxXE5HeBI3": {}}, "slotId": "phIovb6X5jyEcH4L", "sourceItemId": "08g1JywU7Chi1tZk", "tags": ["hjrJLVe4PpfDqzNB", "6kBy8olNWc409Ks5", "wqSugJetPTUoEuSK"], "type": "i0JLd257xS1pH7dV"}]}, {"consumeItems": [{"inventoryId": "gLXcdqa8VHl40TOB", "qty": 12, "slotId": "N2k5vVhn83KDfVbE", "sourceItemId": "0c3d3CiYDYL3fMao"}, {"inventoryId": "QGI33Aq7vsIjHQp0", "qty": 51, "slotId": "ttEnK44qzWtP0LrI", "sourceItemId": "JfQlH5l8SOX3QZNH"}, {"inventoryId": "V2DLJ0l7oOQjcPdU", "qty": 6, "slotId": "1KPzCMSNWXOgWnOh", "sourceItemId": "Q8sy9UB9vUOB70E5"}], "createItems": [{"customAttributes": {"WQgHsbFOddY1yC9m": {}, "3lD34eo0llNxlIri": {}, "ZtlUAUWZ3d2Xsvuc": {}}, "inventoryConfigurationCode": "wCdyWWX4ZShDUXDQ", "inventoryId": "cbVGXWZkh5aRegUH", "qty": 6, "serverCustomAttributes": {"rk9rFCf6cTivDO23": {}, "cXYxoFcjOtU0tcCx": {}, "l4C1rJv1t0PMJi7X": {}}, "slotId": "P3Fn3qtwg2qblf8p", "slotUsed": 20, "sourceItemId": "cEuEYNOibRc1uql6", "tags": ["RJOUIGx81Hswhybc", "nSv7ZzXPcWXcrNhA", "ycV1ZtKvibFgrbLm"], "toSpecificInventory": true, "type": "sP1BmixX0bhfq2MA"}, {"customAttributes": {"ds3zJzFPXwZxvaCZ": {}, "dlzW89hNHfkYmo1e": {}, "8wiJj7zhyjH6uhiP": {}}, "inventoryConfigurationCode": "NiaLFrY1voxdSz01", "inventoryId": "RXLUW5tSPYMgu4A3", "qty": 37, "serverCustomAttributes": {"SeCkqSxH2BLW61jz": {}, "6XNbVV5XJTw0VISB": {}, "smOjqIZbqHhodcOT": {}}, "slotId": "TrQnF5C49FGz7svG", "slotUsed": 19, "sourceItemId": "KJ9c7L1Ih2Dl0iin", "tags": ["CTGC2kxJi93e4vqa", "jifUimutpHTC2FwH", "utwOaN2kDOiFclIa"], "toSpecificInventory": false, "type": "7Ys12eeV6EXDUSiU"}, {"customAttributes": {"eaDKpF9Tg9p2uSXU": {}, "semTptIPTIAgMXC6": {}, "0MuthwEDHNB158aA": {}}, "inventoryConfigurationCode": "PZ4j9QcpD7y5Zlcv", "inventoryId": "gabFTMt4HPikPCyA", "qty": 2, "serverCustomAttributes": {"cTANZLLS5BlH40rm": {}, "bTU72vF16vGz69yr": {}, "JqA0kXS28llZgDbs": {}}, "slotId": "6ckklIcR2n8TncQb", "slotUsed": 37, "sourceItemId": "Cjhyd88WZJpTP7aQ", "tags": ["GCOBY67a9p0cNRgk", "W2t8vY6ngAcGYWKk", "kZDxZ1gz1zJvEtOs"], "toSpecificInventory": true, "type": "NusVSt5YAYCTUaff"}], "removeItems": [{"inventoryId": "gOE7bYJOttMNSVVq", "slotId": "Hc1IZLJt1D9CPN94", "sourceItemId": "DsZcrLXPYK4KqJkj"}, {"inventoryId": "W0l3A3Gkdvv4vQ2y", "slotId": "4uns3EIwsXUwC8zs", "sourceItemId": "BrV4E2hIKhja29At"}, {"inventoryId": "e0N5jbmDgMqjc0G4", "slotId": "Bvz5IblJBoqe8HHw", "sourceItemId": "4dAoXuVLHi82KSgP"}], "targetUserId": "zk8TOWLs7gITrAwA", "updateItems": [{"customAttributes": {"helqMpz85UmxUPJP": {}, "CDFjozhz604qhrgO": {}, "JhNFvy1npJkEoD58": {}}, "inventoryId": "M05RDXlJW7z43nmC", "serverCustomAttributes": {"FsJLdBdtVKuxenAi": {}, "A8YqDPbrcLQ94qMu": {}, "mOPg7MbCo7ZkR0dA": {}}, "slotId": "fGp8ZrioYnSGW22i", "sourceItemId": "CXyXpe83xkIWI7ns", "tags": ["Dd2M95bQZNLPcMMr", "PShvBFiOt0JKGj86", "CP8ZbNsMp8tLU2Re"], "type": "4n1q3RTXGdYuZyjU"}, {"customAttributes": {"b8r9TBza3ObGDMjY": {}, "m35rtTruX00dtrtc": {}, "gxLIuIaesAQzurfy": {}}, "inventoryId": "1rSpun5hPY8ZXiwk", "serverCustomAttributes": {"fLbnzW0NxOsiWMsh": {}, "rpr6LNKYzXg1jSj2": {}, "8lOLTQJ7ldCjxOrU": {}}, "slotId": "bUO7ZTC7a53CDlYW", "sourceItemId": "2na8krXC28xaNjCr", "tags": ["QoRc1PNNWdlmdbR9", "r23OUwRVrvLV23eX", "pYOOjvC2neUV8cSw"], "type": "xMHMnqLoqYdOXzkf"}, {"customAttributes": {"lqAUnvMbqR0MYX8w": {}, "ClHYfTH9sdaxhSgH": {}, "DaW18T91tdaBQ19q": {}}, "inventoryId": "4gOkETiBwEpz3CTN", "serverCustomAttributes": {"2UTV54zqeLLTwCM8": {}, "kDZWHjPHhvK1i8Ep": {}, "iKINuGF8Hd55Borg": {}}, "slotId": "ACJAIZAWUoTI6bjW", "sourceItemId": "dutpLHwrKlMdQOWl", "tags": ["V6T0Yx7eVUZTYa15", "BUxC92LJOOhSSdiS", "l3MI3UmSQi0p7Ntc"], "type": "Rkg6YK9yxxDvA6Fj"}]}, {"consumeItems": [{"inventoryId": "rAsHQggTUWPYfFgs", "qty": 34, "slotId": "gE7OY9y1fC8j4wNz", "sourceItemId": "CAI7tX9jzVbtu9mR"}, {"inventoryId": "6YOEQB01E5d5bE1N", "qty": 41, "slotId": "ZOGRLBviAQVT2zag", "sourceItemId": "TtQ4DYFN4fsJTEVd"}, {"inventoryId": "seF5SEcIxUTs7dzY", "qty": 35, "slotId": "vhwYqpPi4rjX6n7D", "sourceItemId": "3AIjUVGfKD055le1"}], "createItems": [{"customAttributes": {"rsEpci1DoNrGjfQD": {}, "F7n44Lrm2qkX5Qew": {}, "TxOEK33D0RlNbCL2": {}}, "inventoryConfigurationCode": "a6l7AsSHzRChE5Ow", "inventoryId": "oQ0V08ApOSGmYQ4c", "qty": 75, "serverCustomAttributes": {"xyIV4kWTjdPWuLN4": {}, "7UKVLBGVEr9T2tDb": {}, "TaCHsoiWkpWrlEQ1": {}}, "slotId": "PUuvfjnjImYUhyCR", "slotUsed": 19, "sourceItemId": "dh2eKd7I6fZZAlmi", "tags": ["cpr1kuLcRTcj7JxL", "7P9f0e8cJhboiqVo", "FhNcxPGDtJssHZ26"], "toSpecificInventory": true, "type": "EMDRlcTdMNIiHaOU"}, {"customAttributes": {"X4u56tIHJamtIn6n": {}, "woSdsTVjeqif6bIG": {}, "XlrSUVAj0FEYUXSo": {}}, "inventoryConfigurationCode": "uwKK9yUJKuYL0DA6", "inventoryId": "vLrUMtoSLETBOC65", "qty": 75, "serverCustomAttributes": {"RRnn9rhxgBAZcbPR": {}, "xgaGzGh2vyhaE15Z": {}, "uYWqTxIiYmoQGXcf": {}}, "slotId": "Jh67YSdCxKbTNMC0", "slotUsed": 56, "sourceItemId": "nShnPCYqqjyBgpkU", "tags": ["HkmlSPr7D1UGbENs", "3pk2R3l901uzA2Jr", "sPMJY4LLPTrTy7ih"], "toSpecificInventory": true, "type": "0pozA7QgWPDgLMTT"}, {"customAttributes": {"gjpILjmkijQvYafo": {}, "xGHseZWd3vGNMcSU": {}, "xVnoVsVaonL3IbOV": {}}, "inventoryConfigurationCode": "yOavUu3zvCBL5rUe", "inventoryId": "aoYvvluxFcenQfHH", "qty": 44, "serverCustomAttributes": {"QLMFVQUT9a8sk9zM": {}, "RGjn1G3F6ysmYytZ": {}, "rMYsTlpjxk9z8iVx": {}}, "slotId": "HXQLdTUvnC9urw4L", "slotUsed": 84, "sourceItemId": "AvgsQOn56FxIKpRS", "tags": ["KgGa8H98NKjdlHfd", "2LM5WIKmjLbJF5qk", "pXP2sEeNpprODH1w"], "toSpecificInventory": false, "type": "gLipQYAlIKY0KsYw"}], "removeItems": [{"inventoryId": "u4sa01yelqgzHfOt", "slotId": "gc3M7ljgnWaO9tuQ", "sourceItemId": "8WhMBcpHXKVJNtKT"}, {"inventoryId": "avJmI9XoYaa4qZXj", "slotId": "VozE283SJVFBjy5N", "sourceItemId": "LcEvCLwNRhoBXkrE"}, {"inventoryId": "tDKUerTIK9roeBri", "slotId": "dlkregJNV5jUzaNS", "sourceItemId": "Z1w94iokIlb2zeXd"}], "targetUserId": "0CLtEkwijuzS5iTW", "updateItems": [{"customAttributes": {"5sniIGp95kEIav9a": {}, "48nzGlCp1bdVD2XD": {}, "RLyTojx6D7Xbe4Ir": {}}, "inventoryId": "VyaGtQCp2Z40FGi1", "serverCustomAttributes": {"mZ6ugr6MMcDHNHx2": {}, "By7PJi9kK41vY8cv": {}, "7pqam0GcWXO0MWRT": {}}, "slotId": "oJhzSs8BogCmffSx", "sourceItemId": "4XTXCakQJEhkcSBk", "tags": ["233BgBr6BPRLSBtK", "DdrOEJlQOvAfQyIE", "WJrZValqvasNsXjH"], "type": "bTVFy9GMh0YzFMqr"}, {"customAttributes": {"PbTbOGVSfgmhjQGG": {}, "XqsBcdDMKUcfrVxE": {}, "IxlccXHzFwlSHu3H": {}}, "inventoryId": "MI8Qc7WzEwm74XeY", "serverCustomAttributes": {"TaorehnTo4pdzbtZ": {}, "02lzXOj3UDMh6LC5": {}, "KaXkbZDkCoWNH2Um": {}}, "slotId": "I2wYYINyzNmrcwwp", "sourceItemId": "FUiGieIZnadE4XyF", "tags": ["Fk0fp1ulMhhIhIFo", "FPQISjI7TynQcvuM", "eCoMPMINufaEDwOO"], "type": "O6GGlyYA1Wzn0AGu"}, {"customAttributes": {"3kJzR0TSPgHKMXwB": {}, "mPsfF7a5J9s1l0rM": {}, "QT0BCTrP92GdfcMD": {}}, "inventoryId": "nTgCxDOfpG5wIAOV", "serverCustomAttributes": {"MPdV5jH1Yu7bSooS": {}, "W7hNdJYWXSN6940c": {}, "ycrG23P1OP2erAkA": {}}, "slotId": "onDRjg8qE4UizCgN", "sourceItemId": "O4UmJL29Yupk0e4R", "tags": ["RuCKScRpdkUgpD60", "gaEGsluJfIX7mxbk", "gVuU0mviDHUKgHVL"], "type": "oaEmBSRRQYAap0hf"}]}], "requestId": "oQSOemjoPIpiHUY8"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Pa8mO7DqCqS57Pgj' \
    --limit '41' \
    --offset '52' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'xzi56KwrZ3pTCFKI' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "8TMmobAGWWrE7tgt", "userId": "HcZ4n6rAcOoHIlBg"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'VHQet6sAYUUXAlrq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'mvgDVF24ngQI37eC' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 57}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'QHZe4ptgiGyqqFg5' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "xAH4SjuxkHDBHE5Y"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'fladYutysKZlkVUR' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '61' \
    --qtyGte '51' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'NHilCv0REcFiTZyo' \
    --tags 'gKWcA3c5YJfR3YTJ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'UwfL105jyDcxJehO' \
    --namespace $AB_NAMESPACE \
    --slotId 'clbwt05KJ0noBZcG' \
    --sourceItemId 'Cx8CFPF12xutxxJb' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'JoJIr2Jr0WSqHwNA' \
    --limit '39' \
    --offset '91' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WVoPxIbcldaZxopz", "description": "SNGeRYqBVXrJKX7F", "initialMaxSlots": 35, "maxInstancesPerUser": 91, "maxUpgradeSlots": 64, "name": "EbPzrxCZ3NOeqHlD"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'jM47XJcok6dNoTUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'mgaXcJ2YDCl0tpsU' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "F9vw6gqzPj4pTv7f", "description": "59ccsOPpkCEjUNl5", "initialMaxSlots": 23, "maxInstancesPerUser": 61, "maxUpgradeSlots": 48, "name": "5WyChuWHdd4ZmU2t"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '1rlbMKI43oJq22EP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '64' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "rVdLjUcnnFcFjh7A"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '34XQ10sEYLKtwSrX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '12' \
    --owner 'Qg8MkGVDNoNQM2Sl' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mNPEL97jfkYUCvus", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'A06Jpfg0hCelDhH4' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'Ni61IhMCeSX6jzxh' \
    --namespace $AB_NAMESPACE \
    --userId 'HYorn8V7qrM14aAQ' \
    --body '{"qty": 50, "slotId": "7jfThW6s7q468g97", "sourceItemId": "QraJDyg8aFFVUvwu"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'hTa1IKNeLQXP2kMc' \
    --namespace $AB_NAMESPACE \
    --userId '4lY8x7qGdsvVXu1n' \
    --body '[{"customAttributes": {"WO2hbEuQ07Qdb3x7": {}, "bMKYRgAecjfOyKEG": {}, "PzIF8aIuZj0WzCbj": {}}, "serverCustomAttributes": {"rJMNKUg24Tq4HU42": {}, "LEGHiQq1FWuQp2bx": {}, "WV838rIT6JtWpsw7": {}}, "slotId": "waPBlf6JZFRK8l4l", "sourceItemId": "UXUe0AbAaHQifB81", "tags": ["x7uuVrrrwzhvh3oe", "7NnIHnB9Yuw3RiGl", "k9UmvFKC7FFexxVI"], "type": "KBM7DOJegCm3KKh5"}, {"customAttributes": {"3rKoJ4g7jIhmXcXX": {}, "Kk5X9vq8xHYeXMGk": {}, "erSe2M4FqEKxQEBF": {}}, "serverCustomAttributes": {"XT8T55ce4rlKFv99": {}, "8Z7gAnVcLLvDMZN9": {}, "vBrW8PIferwPsz52": {}}, "slotId": "6CabPwVr0TyEE2kw", "sourceItemId": "TJNbZjOvAXc2mOl4", "tags": ["5LCgsodLuikRhPwB", "VyW5TQZU83MNmBdP", "1wGpF39o6A8KtttB"], "type": "h3KBIDcKFmgV9AhW"}, {"customAttributes": {"jo5GeJieJwzWeBcN": {}, "mUk6YjmcYnWRHzqC": {}, "LVX42keBLAiF8mxs": {}}, "serverCustomAttributes": {"4BTxwQSQVpEPqVQT": {}, "eXJFA8vinWYRP7WS": {}, "fQVI745GhEk7kv3x": {}}, "slotId": "AhJJqqwFcyscmxq8", "sourceItemId": "eAUYqck8CSONDjo3", "tags": ["BOTqlybINVT1Dyb2", "Khx4XRBr91cO7eqL", "cF01R9ap65DMhmkd"], "type": "ZX9KzoHjZvwW9fO9"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '2o0KaTyu0nmD0Teo' \
    --namespace $AB_NAMESPACE \
    --userId 'ThEgOZs5zaqezC54' \
    --body '{"customAttributes": {"VLkLvDKBhOJnZQLC": {}, "UJn1HxCHTzU7aflV": {}, "vaG7Jke3mF0zslhH": {}}, "qty": 84, "serverCustomAttributes": {"xDHyQAOLgSTC90Kg": {}, "sD1UiNmMdvx6mpjA": {}, "LA8ZNZTn22sRDuM5": {}}, "slotId": "qCU1C2DFFZRvMWL1", "slotUsed": 28, "sourceItemId": "3it7LqeiLoFbvEsZ", "tags": ["uk5Hlde3stiDQ3cr", "SXTXH7uc5Wjj764r", "98gFYDByG0rccIH9"], "type": "1WFOSPSpZ2W3HpB0"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'Ct6aJdOCkBpRHWwV' \
    --namespace $AB_NAMESPACE \
    --userId 'dKlKsnPjJlooFQsx' \
    --body '[{"slotId": "WuDFEc70qe4uMcxr", "sourceItemId": "4Aqnls0rLF4X1As7"}, {"slotId": "3uJETeWiYCanjdEY", "sourceItemId": "hjtzIWDd4DYQOmkG"}, {"slotId": "0G3uffXWlU6F5Bsg", "sourceItemId": "wbmhgwxaHvQZauU9"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'd5JDLUrjc0zaGOSm' \
    --body '{"customAttributes": {"NsTfmnw8npKZbTfp": {}, "Vdo4OiuHqueeLHj9": {}, "AG9bpZYfUNjsLJjB": {}}, "inventoryConfigurationCode": "JUuE7FiENtQeKwZr", "qty": 75, "serverCustomAttributes": {"3d0m8WrUERSxFVj4": {}, "I7bu3ghM7tOLWVko": {}, "yBHd010f8DYyUwNO": {}}, "slotId": "aFXmyXhzNyLE4DSy", "slotUsed": 89, "sourceItemId": "nWJJV7eySJXV3r8j", "tags": ["Pngz31mGlSIddOEz", "B3lJFXxFSoLgaq2h", "xPCyw4Vu7qXOMNXn"], "type": "zU2IUfGtykixgyPZ"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'MspEwY7xKstmiwUT' \
    --limit '17' \
    --offset '64' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '79' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '61' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'IXamISEXKs4lpZnK' \
    --limit '34' \
    --offset '89' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '7oxyb3i2hxrGH9Xi' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 68, "slotId": "ME8NsdMRkZViM3eU", "sourceItemId": "Ja7S4Zr2aqqeOumu"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'V3fnu5pfElyEXzbO' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '91' \
    --qtyGte '61' \
    --sortBy 'qty:desc' \
    --sourceItemId 'ZNl6daz3JONsAYJ8' \
    --tags 'aNZDoT92fA2K5JC8' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'lFzPj6NfbDOT9qqQ' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"JAVgxtsRkMkPXrNd": {}, "lSFxIrg9GClZbYXS": {}, "z3H5dWApKLJHLIfP": {}}, "slotId": "rnHe64rcERLqh9Yz", "sourceItemId": "JSWLlmDGsJJKErxq", "tags": ["4HbL5XCtsx4PKz9Q", "bOYcC12daw5tww7v", "gkvC4yte6duoYNCh"]}, {"customAttributes": {"rnUMEXJHADZEVKXK": {}, "61ZJvMc7YQlVEQpF": {}, "CE3YYcvC657ETSBg": {}}, "slotId": "UK6Ex3q8mk4gF5ba", "sourceItemId": "ka95sTWMBvaza7Ft", "tags": ["HUKiPRcK1d5af3UU", "om2qdXPvuw1byHHE", "FQ0B5Rn6XaFG5Bu6"]}, {"customAttributes": {"tkXt3UU9irq2tZFG": {}, "AIT7V5ysepux7ZMB": {}, "idKXfqrRjisKYQkC": {}}, "slotId": "YIrtHQZFmQ6oDwvA", "sourceItemId": "IRgMAMH0cux8RGdI", "tags": ["TABeZkyiaw3ckCLw", "9p0tulEc3p2fIRCg", "ZaM8gr9Pnq1CJJUT"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'MrEAyMHmqFCqNbx9' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "5AX2Glm4z1Og3et0", "sourceItemId": "719ONlqn7u64mz2C"}, {"slotId": "nxE7tpKQYW6l7rzT", "sourceItemId": "lMdMPextTbUxpJK6"}, {"slotId": "FM7JP666yOr6gspJ", "sourceItemId": "E81Oc92CQxNSDL8F"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'S3VU94kZKPhBXokO' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 64, "slotId": "0EcvtYcXT3mfpPXL", "sourceItemId": "JgQvFhFjG96uFOkv"}, {"qty": 64, "slotId": "tCTBd9JDHPBSGK0x", "sourceItemId": "ijv4eztubor2sWpn"}, {"qty": 1, "slotId": "nBGEm3ph3kpfeX5C", "sourceItemId": "RWfB547redRZhrP3"}], "srcInventoryId": "0ODbXTq7LsW35YV6"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'jpQASihTT3s3LJWa' \
    --namespace $AB_NAMESPACE \
    --slotId '9nmTonGaXSEcRzD4' \
    --sourceItemId '2ZJ6Yk0ge2jGjJ7E' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE