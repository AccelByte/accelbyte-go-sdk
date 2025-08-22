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
    --body '{"message": "UUUmSw0drzXYghJo", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "H466PBPoFig84O9A", "options": ["Qylmoe5qJQkjFatS", "C3a1cfz88Y4lGQNK", "kfsazM1yUwRJZBBB"], "qty": 92, "slotId": "3Wu5WdgUGazRFeth", "sourceItemId": "7es5kbpylawllrAN"}, {"dateRangeValidation": true, "inventoryId": "D1p2Jj3rrgO54tSa", "options": ["ubQonih8CJqSjmGz", "uuylbryF2lHVvW20", "PVsSPcPE8kGfBdsI"], "qty": 70, "slotId": "gB7kBDJnaVRT7OyN", "sourceItemId": "2wQ5jdTFFbOcJxft"}, {"dateRangeValidation": true, "inventoryId": "a2hFYx1BeydW9cth", "options": ["wBbwbuvtfkLa3jY0", "eXFAguab0Qpo9vPc", "BGBRvXo61MrXmtbo"], "qty": 82, "slotId": "Jt22Az0jTMAHdbvC", "sourceItemId": "W7NJzQATMLMhKmLO"}], "createItems": [{"customAttributes": {"B8RCNOmHarspzl0Q": {}, "BHd6Bf8KJmWQjwW2": {}, "zorq7VeO6oOh19Bb": {}}, "inventoryConfigurationCode": "RIwlkYBr4vhnGJjh", "inventoryId": "4cMG6JOSsRhcCgXd", "qty": 58, "serverCustomAttributes": {"Yo8sxcOafI4T3z78": {}, "pNB8aRYe3nbydqJM": {}, "BhDbDmOeCV2G4tKJ": {}}, "slotId": "wSlowAGOwvyEs9K4", "slotUsed": 69, "source": "ECOMMERCE", "sourceItemId": "kagXSYQgLLR7KooU", "tags": ["umiBRSnQlPHm6v7C", "Dy3V687JhpFtvbTg", "IPiKUmqdzhW7NFFF"], "toSpecificInventory": false, "type": "ksTg16kcGq2r9b9M"}, {"customAttributes": {"SDKs3KtamgxOuQmy": {}, "zmwHWx2A0AUGZB43": {}, "Q2vYA0eRIru1UIDM": {}}, "inventoryConfigurationCode": "7gb2Oqk9rOc5gEK9", "inventoryId": "xOUwsk9wAjqVfD5A", "qty": 31, "serverCustomAttributes": {"9iMNtXyP8Ej2PDwR": {}, "Mc7hbl8Ukqc2zf79": {}, "JJQqCMZZHLYQNT9g": {}}, "slotId": "uYTlxFvdRmGO94Px", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "7dt4DwzHgaI7XB34", "tags": ["vCtiiPyve0fd2nmx", "PLdOLNKBdiEd6OQr", "Z4o5mOXimBy9oMkF"], "toSpecificInventory": true, "type": "UWe5HsnLW8Of1GqC"}, {"customAttributes": {"HvhSfyjICePfFcHY": {}, "mFtYN3pvt5eK8tm4": {}, "mvpWeap5bxZ4ijRV": {}}, "inventoryConfigurationCode": "HwEtHkjOb3RhV8z3", "inventoryId": "yKZZYGOBOUXIYNaK", "qty": 92, "serverCustomAttributes": {"rlLQwGOZpC1bmrWZ": {}, "x4tVFWZFPYeDSXt1": {}, "fsquYJsNbownFokv": {}}, "slotId": "MGT5f4Lpk2CCf8iZ", "slotUsed": 18, "source": "OTHER", "sourceItemId": "1173uIn3AjSBEsXd", "tags": ["FhRpgyvcH7NIqDXc", "csXEGwJLmBylFMcj", "JmyoSvoXZJvTDuFa"], "toSpecificInventory": true, "type": "EJ0HF0g7zbw8vVDX"}], "removeItems": [{"inventoryId": "V4sa07cKNrysJSle", "slotId": "t32Zc6Cc4RlpHWTR", "sourceItemId": "nxXT09FZJtH0IpVR"}, {"inventoryId": "w9yHUeMTMl9wdeSO", "slotId": "17lroUWUQwxCOB8k", "sourceItemId": "7kjh7dPVeKfWyEjN"}, {"inventoryId": "7IW7rkDtqdcj4Grx", "slotId": "amk5ee0Vg2BgIKc8", "sourceItemId": "RhACViMDt4YAZmfr"}], "targetUserId": "3pskkYjXgu6aSwc9", "updateItems": [{"customAttributes": {"27cNzoFTLRICV113": {}, "CfJ0vsuljP7Vy2kr": {}, "mafNY0c056JFm1sl": {}}, "inventoryId": "yu0STSD2WjqkUVAE", "serverCustomAttributes": {"dPrGOxWVCrZQhS83": {}, "aKEJJsp7lChwp4VA": {}, "AoXT1h76Y7mlFpIp": {}}, "slotId": "hkhHh8xde16exz7k", "sourceItemId": "hM5u06HO8cmWJ9Xv", "tags": ["i2EEwPol4kJtbTuD", "Zyk1AU55weK8kebf", "nxPA8xgYjr10wKAY"], "type": "GA5SgzsLRwN2vPjK"}, {"customAttributes": {"kmVuQUlFIoDxWYjJ": {}, "dgIi1yDEMZRBJGYL": {}, "nIUnSncwUFzyRhPF": {}}, "inventoryId": "wUtViwpCydNdcyc5", "serverCustomAttributes": {"KBh2fFg98nysrdZF": {}, "ryR5TfoxALc6liqc": {}, "bCoqnGLiVBC7wK6x": {}}, "slotId": "Gw5VjdPlRRxQLnCF", "sourceItemId": "kfe6qhvKIBbRb5fU", "tags": ["jmn6B0aMGoveFaur", "WwiXIeSluYOJbNDI", "RRbNuvCLOJowlR9k"], "type": "ZWPaEjJDhtotDQX7"}, {"customAttributes": {"cDFnjCv2rQrATp7Q": {}, "Av8okO02QZHnV1AB": {}, "kbrZsEFc701uq73t": {}}, "inventoryId": "NL6yjm8zu2rk4OZB", "serverCustomAttributes": {"GqeIxiLBQ93jq32B": {}, "mmU9Wq2P0dj93dX0": {}, "OidxCGjHXIHSsJ0m": {}}, "slotId": "IXEtLegkR25n6rS4", "sourceItemId": "8OoTaxjggfVlU4NP", "tags": ["0HwzNag0YkyAAci7", "BjegeJjmDGnJdfDR", "SLJfyL0LulXt4ydq"], "type": "qfFiaXj700ifGX1T"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "73WuWD9MoOMBq3TR", "options": ["gbSdcO2g4QHslSMa", "l935KNuok2daPuvK", "1bECOhSzYXjlUavh"], "qty": 9, "slotId": "XtL0QwgP2l5vM8np", "sourceItemId": "ZSSLY3vrn0WsSzRb"}, {"dateRangeValidation": true, "inventoryId": "0LgcouG4j4f6tx4T", "options": ["0akklivsio2qdYDd", "IxWtqxFoaV8n6o0Y", "6YtaWmv1gSzbpfeO"], "qty": 33, "slotId": "neAxhWnKUM3lLhnX", "sourceItemId": "iTGIRSZkKeB8mAcZ"}, {"dateRangeValidation": true, "inventoryId": "NgEFqd0rQfdMaCz9", "options": ["5g2ZiP0IvjK0p567", "cLMTFd408Gh5GN4k", "PpY3lWuel56vXZKr"], "qty": 36, "slotId": "lgn3knsrqHcWjIr8", "sourceItemId": "ai4HBBf9BbQCf7Cw"}], "createItems": [{"customAttributes": {"KiwAcKOrMrlEKdHL": {}, "vhXHaQMTz5bhnquY": {}, "weFE5cdLELGYop0z": {}}, "inventoryConfigurationCode": "bpnCQV6QvzECugdK", "inventoryId": "RbdgizH93SqPspBT", "qty": 66, "serverCustomAttributes": {"xbhT2EnIhIWqXaH3": {}, "N2rc1NOe4ddy9ncd": {}, "uFNDDGYELOnLyMqR": {}}, "slotId": "chAItBwCuOWarOO3", "slotUsed": 42, "source": "OTHER", "sourceItemId": "ojzUnLwNH2fJ0yNU", "tags": ["V1j1sp2TDffQSzhM", "HA41LApbjUqE4fyT", "QcMzzIf7q4S11pww"], "toSpecificInventory": false, "type": "s0rnFEkZyFwE6Y29"}, {"customAttributes": {"zL3ySdxeljO7OQSr": {}, "pJZb7CE25JFiXreV": {}, "VfIwQGqOcICex4FU": {}}, "inventoryConfigurationCode": "FDZ3cJiNZAbKZrLT", "inventoryId": "1JOgbyodJHwUn3Iv", "qty": 4, "serverCustomAttributes": {"XdKa8ZwNXPqLiuNv": {}, "fDmuza7okcKNyrRS": {}, "NmYrXe8XP0JqKbd0": {}}, "slotId": "neukZyMOZchLLs5A", "slotUsed": 37, "source": "OTHER", "sourceItemId": "riPLkmWRuopg1yXz", "tags": ["BrwjcXEe8FxcS7wc", "06Vu3GRhb5eIGc5C", "fkDzKOgDhS267zrZ"], "toSpecificInventory": true, "type": "q4yHqJVaPQlImafD"}, {"customAttributes": {"sQFc1oKeNo8Hr9Hv": {}, "T4KZH6m7QVxEx0ID": {}, "yOf9SmCkw09K89Qe": {}}, "inventoryConfigurationCode": "MnMidZSUmF5wraUA", "inventoryId": "dYh7Vc7uIf7SmfGK", "qty": 96, "serverCustomAttributes": {"FetLzrkSaPPRNLMR": {}, "IYvzFKbi1y5uFiRf": {}, "b1WIL6MUlGkGzvaZ": {}}, "slotId": "DuGOafhNoOqdd5Fv", "slotUsed": 70, "source": "ECOMMERCE", "sourceItemId": "760vPhfm78iN4C1M", "tags": ["vUpNvjFnCmgq0rpe", "JquGsw2lGOadz2wr", "jgZryG2jfeo5g8QG"], "toSpecificInventory": true, "type": "9Bt61Zb8j4MBS6ep"}], "removeItems": [{"inventoryId": "OjWqQA4Jlc4zxeca", "slotId": "ntqAyqvrJ9LaNecY", "sourceItemId": "gfNkGv9VgaI5yvEg"}, {"inventoryId": "DM6u3iV85YZbSwrJ", "slotId": "gs0DJoPQy6RoJvc9", "sourceItemId": "pebeC9jvnh4vNxhz"}, {"inventoryId": "DiJMceWQjbYq8aIM", "slotId": "RBcFjM3aUp4ziZbC", "sourceItemId": "fB85J7ZgLZs5bjzx"}], "targetUserId": "p2ZRsd3vCz6AEUgy", "updateItems": [{"customAttributes": {"NnwyBOOZ5QrfifAZ": {}, "VSHBhhGFNlp4sPnz": {}, "WgsWAvzchJL1BloI": {}}, "inventoryId": "tfe2VranSfVkKjWO", "serverCustomAttributes": {"H09CTNuHq0VEWoJj": {}, "T6He495gi8jzWJEL": {}, "YZpcy8QRWtLdUYyD": {}}, "slotId": "01vDZ7gnXXYyG7vW", "sourceItemId": "aXDFaqdpx5Rq8Nej", "tags": ["jawfsKCrWpZfUaWK", "83mSqIz6AVboocUV", "duOy2WFCZ8J2Lxmj"], "type": "Iz7oB1HqzlF0vE0D"}, {"customAttributes": {"FR24gJyHvymDMPns": {}, "gIkaLfwhKeKKiHCL": {}, "24K92wISHni7G27v": {}}, "inventoryId": "AZdhwGGQbAXUbDLU", "serverCustomAttributes": {"Nfpz7ROr0IOgmjDK": {}, "ku1b6yVeJwYq0tfK": {}, "5dvtVdNGf5dQYn7l": {}}, "slotId": "i6c16e1d5uxst1XG", "sourceItemId": "JAFylEgHyNk1WD1u", "tags": ["Sv3fQq7PpSDXleWC", "eRYMOoXkqn2CO8mI", "2quAlYIrmWr2Ramg"], "type": "5lq0RgFIKgDE7WtE"}, {"customAttributes": {"6Pw2LcRx4yJxFG5J": {}, "9VTy3Lhmgzb2NF0N": {}, "sGuIcWtvO3NZEsdL": {}}, "inventoryId": "clFefIAz7PWgYGCI", "serverCustomAttributes": {"fopMRgzWE8hArC9a": {}, "54mnfkr49befzita": {}, "PZ2JcrlbMy08GAhp": {}}, "slotId": "zKiv89pyevxI9WCb", "sourceItemId": "OHwJvj9wbPnifg3w", "tags": ["uFfmSRexO40IIH6U", "ShoMiKJqW7Dcxvnf", "riREjIp3LOAf6zmt"], "type": "hd87roUP8TmTbSOa"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "wLcbZ7zIFpqXsA3s", "options": ["EaT06IWGDn15Ojks", "pT9txdvPX6X5CYXw", "aNqp3ozPMb48FbjA"], "qty": 5, "slotId": "1C1tPEKvhG5wKKv7", "sourceItemId": "d3pmxdlLd9XlaXPy"}, {"dateRangeValidation": false, "inventoryId": "8wMoUanfIqMeu17O", "options": ["IxjRMGfMFgt65o4M", "dYGOJOkFQXZwHDNG", "qCo16ilhI0NY46eo"], "qty": 46, "slotId": "DBBfLB99aDQ2kkXX", "sourceItemId": "Dk426Xzw45CF5N5l"}, {"dateRangeValidation": true, "inventoryId": "P1qwrkmpaZHugbN0", "options": ["Uei57HPd9U6IG2ee", "QOmFlJMNQkdJx1GO", "rogfNgPF89dL8KVC"], "qty": 78, "slotId": "T1iE01vWETCMGGd2", "sourceItemId": "pso0vtc7YtuyWpZt"}], "createItems": [{"customAttributes": {"vVgeOh3kqst3tChp": {}, "rarzAwZqPROdEeFh": {}, "xoIxAuBXQ8wmMr4P": {}}, "inventoryConfigurationCode": "GLFgljaephbkhw60", "inventoryId": "VYm0AZlzw7enetDu", "qty": 21, "serverCustomAttributes": {"PVhswbfudooOYBvF": {}, "ObZiXdvQ7udrcSBx": {}, "MvwVE5J9dvqCKZL1": {}}, "slotId": "QWfc0l4LCmHc7hj4", "slotUsed": 97, "source": "OTHER", "sourceItemId": "H8rn3elZA0aRlN7o", "tags": ["IyjroyNZv2OVY1ZD", "q1gRDYy8fBRxbBDM", "QXBympP0OQhGo43B"], "toSpecificInventory": false, "type": "6V3SwZLdyiqdoUAC"}, {"customAttributes": {"ICTaFv3IjbLMsVhL": {}, "A0WtpWNF8qf8u4Aa": {}, "G2d55OrQ9SCV0Njz": {}}, "inventoryConfigurationCode": "x9Ccm30PjlSXKGzh", "inventoryId": "njHLKEkqUUjffJ0u", "qty": 80, "serverCustomAttributes": {"KpfVSL3yo07EoLgK": {}, "wRm7lYpADmbhlRlF": {}, "tI0t02qMnp8IbWnI": {}}, "slotId": "M6cb1tejjC4B5LqT", "slotUsed": 68, "source": "ECOMMERCE", "sourceItemId": "YV2QxQuueQXTGL4j", "tags": ["CB6pgrdma3zqrZag", "ZzwpvJJmlXDEyVnj", "aQ42uOrn58VIyfhY"], "toSpecificInventory": false, "type": "4bCeOsQts8Nr93DD"}, {"customAttributes": {"aTOoN9lhPp7RTo30": {}, "bZEXDQR98CFHMXd1": {}, "RRmuocuTJ53QXF1u": {}}, "inventoryConfigurationCode": "fpZzIuaWKqxiqFex", "inventoryId": "ohLDYhda7YloxdbD", "qty": 57, "serverCustomAttributes": {"7GHkez67YNzyRXNL": {}, "WKzm7xaj60tmfkca": {}, "rSw2nGsaBSn5v1u5": {}}, "slotId": "ZbCmcqvljtxMo2Jt", "slotUsed": 13, "source": "ECOMMERCE", "sourceItemId": "7dHQAOhmAq00pYm5", "tags": ["zbKfruL1aGFv60kk", "qWmVF1iOzReiQHIy", "Y6Tf7rrYbpo3kioO"], "toSpecificInventory": false, "type": "sjNiGn32IZXcNi4Z"}], "removeItems": [{"inventoryId": "UKKzHQgBOfv83gBE", "slotId": "W8upPKFWef93QspA", "sourceItemId": "DM10MFEIXq4dNkAF"}, {"inventoryId": "YInSHEV1xXfr8TmI", "slotId": "KSkoJuv0DdvG2TJD", "sourceItemId": "NqIwWDKBvQO77rsa"}, {"inventoryId": "cRbIaU1I3DfytTNf", "slotId": "CteYEqjne3PbQ6Up", "sourceItemId": "v4yUOcRBmQ13KP2q"}], "targetUserId": "E6cP6Up4HtYfhqJh", "updateItems": [{"customAttributes": {"x6fX5QsD1pDgWaHD": {}, "WlOo3Qh5TYeSDZ1A": {}, "INEbSgwAVWKs2gB1": {}}, "inventoryId": "5kHn4kuOQ8r3WHB5", "serverCustomAttributes": {"2uDWytK0SSmJaCna": {}, "0pXq9eRiTPvEAXtc": {}, "vfWdzBFzgFgaoODB": {}}, "slotId": "FF4WZiUCV2QLuaQs", "sourceItemId": "SfdtgkjPdfbaTEPD", "tags": ["VWBr4Zr6RCJCgPGS", "RVYEUFmUdEDHa38D", "L08ICQWytB0jpkKX"], "type": "27qOZpywFy6ctJYh"}, {"customAttributes": {"0bzYW4CjLK5hvIzm": {}, "iDprbhYRGmnwUxtL": {}, "NbgoRmjwR3J8q52Y": {}}, "inventoryId": "KKT5Ko86nvZbWgUU", "serverCustomAttributes": {"at9tzT48iMSdfq8j": {}, "PjuS1o76sPjNffOe": {}, "BC6VKT2aNvKhPqO3": {}}, "slotId": "et8Hs8gj96Ndoo6g", "sourceItemId": "5GkgGk1nUlX0U58H", "tags": ["9Q0rvBcs3ObcsUxk", "faSZBMIPJVTbAvQh", "jRB0grwbE4OKLRFL"], "type": "Rn7m0fyVaAXSW1dK"}, {"customAttributes": {"7bLg6wlIXDgjc3to": {}, "VbDeL9YthRn4k30j": {}, "BWRK7C0M72ZbDOlv": {}}, "inventoryId": "MDGI89cI8Y8I1j3g", "serverCustomAttributes": {"AOspaTU1k0TA7Pzs": {}, "UrZC2dfLcZoCZECB": {}, "XZsQ7Qy8jS7WPWBa": {}}, "slotId": "ZCHZ4tLQg7w7GUPX", "sourceItemId": "rZFn2Kv0jeppKQrL", "tags": ["spVHb12xp885HgYB", "uXMJOnqJSMfHUFza", "OkbfLZAVK2gB0bYy"], "type": "nPkXuhMP8jt1xBJh"}]}], "requestId": "OQNsy4SPDmsxgn39"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '34' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["P5RyidGjSIk6xBro", "jnrObYlkFrybIZJZ", "iBleXVmlM1ubBzxn"], "serviceName": "qTOEcPb3OqSmtPJw", "targetInventoryCode": "NS1F54e3q77r9WxQ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'rWLd3mgjITXmK8W4' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["KH7e1rtSatx9u8LM", "NMwfHoOYaqVj4u8I", "pco8RK7XsxTI5TmK"], "serviceName": "RZVRWc6UCYUS1Loo", "targetInventoryCode": "XbknyhLJSCMYQ2pA"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'qjdzo5VmbXxlbMxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'KL3x8EYVQyYABDpM' \
    --limit '22' \
    --offset '81' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId '0YWVdtiU5xmlAHt5' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "dQg3gwTrzGdlrsOC", "userId": "wk0FiD3LbYvtNgCc"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'kM9UN1J27LxhLpsa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'e6iiJL3ZIA1JqkKS' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 53}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NIdOik59ooJ2nlUq' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "mZjV9GYPaDUMtUcG"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ZTGSL8Eaic583eVc' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '19' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '7GwPhsOhSvysxxxr' \
    --tags '327w6sk3fXLHgxxe' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'Rb2LEOQhdHgpbdLT' \
    --namespace $AB_NAMESPACE \
    --slotId 'beicyVYdAwVp8Ywe' \
    --sourceItemId 'L7SadRvyTcQfOg2T' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kqIVXhoRi7PIUC1j' \
    --limit '5' \
    --offset '6' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jdgTqN6WI70W2FM6", "description": "C24XwWGQPzK444CM", "initialMaxSlots": 42, "maxInstancesPerUser": 44, "maxUpgradeSlots": 6, "name": "rJJkTLZayjNZ6eud"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'z0KEWHO8ZNyb7voS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'rjHjHZSJc1ZavVKg' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qYY54dTXGrpQJLXW", "description": "NAvLmzK66xwzchIY", "initialMaxSlots": 18, "maxInstancesPerUser": 19, "maxUpgradeSlots": 58, "name": "MUPt171zfriM1rwI"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'L1MjoQXyq8ywAcR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '23' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "YLOgqzvDWdJzyFl2"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'LlVyfQMIvCN0R48Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '21' \
    --owner '166N3e9A6mudLX6W' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7wfX3RrSOOGRbLFH", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'wDwmbvM3Eq0fpdM1' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'Fm6hn9TuTH5HOiH9' \
    --namespace $AB_NAMESPACE \
    --userId 'oOX3quB3VfYU1oD4' \
    --dateRangeValidation 'hYxyRDKfhTeDybId' \
    --body '{"options": ["Xgtebnz0gPB2JE2i", "wKxjbHN60riaYVKs", "zLsuubAI83RBSkQK"], "qty": 33, "slotId": "026Bf7NYDmeQAi39", "sourceItemId": "4KOpFTW3525ow6Fl"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'bUfSclKj0QxNWSEz' \
    --namespace $AB_NAMESPACE \
    --userId 'WBFTZosveFT6HsT0' \
    --body '[{"customAttributes": {"9UTuUkCy3dleraOm": {}, "u8KJIHTAiwfG4pLS": {}, "iNdyBCy8WMqogd7q": {}}, "serverCustomAttributes": {"qgLc16lia1v9j9ZN": {}, "5SEdrj926jaXvRgN": {}, "pXS3x01aJO4Nmw7a": {}}, "slotId": "eJMSglkkJSVvNKXO", "sourceItemId": "nzJzeZZP3XGv2Xoq", "tags": ["2Xn9dOqXKQSc3Wrm", "bUTYPmYSq66pl8hP", "UQYimlNoIgMIW5Ru"], "type": "QUSS8BG2kUAZH5US"}, {"customAttributes": {"JV5wVmmqCpfccjYY": {}, "rsmIs5zLhHmEgcW0": {}, "vFOLgeaLSYYAOCqk": {}}, "serverCustomAttributes": {"KXQuYxvS9br56faf": {}, "ubmvs3kinTZlAdko": {}, "Vdz1G8OY8yzEmZML": {}}, "slotId": "rmeojDvPgymqjMPM", "sourceItemId": "cNrXV8OLJKZq3fj6", "tags": ["ujHNGE9fYmVyOBMO", "kQXia7pI9GWSEgRA", "Bn3Drz0aI8kAANV1"], "type": "9nSWUidR6RLWkJDU"}, {"customAttributes": {"QK7pmjQBVnpyCbGO": {}, "Ppu5Y7kGXkLZQ1ef": {}, "7Mot87f1ig5P2m7T": {}}, "serverCustomAttributes": {"RF1DZSVaRpFRw7pg": {}, "pbjx6AkZh5vlUwGi": {}, "B44sbwwZD9g9b5Zk": {}}, "slotId": "szyYehHqDdz8HqjO", "sourceItemId": "4ATKnxUWmBpKM4fS", "tags": ["NRsmhDDzl0nM736k", "OwFnXZmMp4IOiSh4", "fDPJQDfPp2WpQKYO"], "type": "m9xB6WiSGhurMsox"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'lZ3bdyBbprdxGvfX' \
    --namespace $AB_NAMESPACE \
    --userId '7idllc49eTajtv3b' \
    --body '{"customAttributes": {"xtjiSCZtdxF2ne8e": {}, "BUyClv0e7j1e2UKN": {}, "80m6lwsFz2UXHOeP": {}}, "qty": 99, "serverCustomAttributes": {"vbkhLk7l4LyTTrcv": {}, "qpErkH5yM4rmJYBV": {}, "UoaOoYWBP2C8SPzy": {}}, "slotId": "DXUD3KacjkP6eLnO", "slotUsed": 91, "source": "OTHER", "sourceItemId": "cJ2xV68umcLeS8VY", "tags": ["7Z2IbW597vhOIljO", "wsEm2Qw59WmFKXvH", "gtWG9BUMd9XV2tOH"], "type": "NCZdAUeDgRVmqZ4c"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'QAleoqbqDYfIJSOQ' \
    --namespace $AB_NAMESPACE \
    --userId 'rwYetuFPwDGin3Z5' \
    --body '[{"slotId": "GQ5LLEGXIM7FqXTB", "sourceItemId": "xNaOFbSoBHzU6y25"}, {"slotId": "BcvKZNA7THGhEGP7", "sourceItemId": "EXlEdWfRfwqoxeWh"}, {"slotId": "yBRARJNuZkSuZOnG", "sourceItemId": "7Rlt6XOwY7UHndT2"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'hj3Mce6vd7UsWMIC' \
    --namespace $AB_NAMESPACE \
    --userId 'IVo1WhEWAnBKptU7' \
    --body '[{"customAttributes": {"po1S8JClV1S59hzh": {}, "OvTnNmldE8D2tGa9": {}, "t7LrS6bYBeIUHOSU": {}}, "qty": 18, "serverCustomAttributes": {"zbw3YvOOWmwohjt3": {}, "QXZr2U6MKeDUdYsa": {}, "j4SzRM0ycA6s61cD": {}}, "slotId": "i5zaIBEgjhOgSFg0", "slotUsed": 91, "source": "OTHER", "sourceItemId": "lMNviojHLYxkNquz", "tags": ["4oLQmKPA71uDUx9Z", "v3a87GYmljOjWXmj", "88Q5nlkUXUgabW8k"], "type": "bHfutt3jtixFKW8K"}, {"customAttributes": {"1wa4owQiviUayiGz": {}, "9A2yvCMFmWhllI2V": {}, "DHfJVdYTcadj4iHp": {}}, "qty": 25, "serverCustomAttributes": {"yU5qQbF9die9WNXE": {}, "Lbcc0mLg4UP2o7T2": {}, "Lu4rczEt7trgAMw2": {}}, "slotId": "pmfodtJ0S43ogHRg", "slotUsed": 21, "source": "ECOMMERCE", "sourceItemId": "zH6KrkC4huT3PZ4K", "tags": ["dCjeQqHBYxdMBuKb", "tO4J34YiJxLc1FaL", "fFWCJ1XQDPyoKoVo"], "type": "LSdhbD5OB47hWCY3"}, {"customAttributes": {"rd0YiZwWv2qNZm5K": {}, "eQEdMmzo1DfRFgaK": {}, "WjDpZ7fbdDAzjRME": {}}, "qty": 71, "serverCustomAttributes": {"2OaKXxrC23d2P41K": {}, "v5zDHLmMyGwEU5XV": {}, "Bw6z3T0qJ9ToL66D": {}}, "slotId": "LZcuCLavxwzXhB6Q", "slotUsed": 36, "source": "ECOMMERCE", "sourceItemId": "NKcTf8g6PKarxSjW", "tags": ["8QkkamG8YCCdGoon", "TkTvZAFm2NHBbFrC", "VR6r3AwDhBgjjJCe"], "type": "1o1dPT52MFoi0SQI"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'NvhgrQWb8Szy8kkd' \
    --namespace $AB_NAMESPACE \
    --userId '8QFmHitiRHuaJjMx' \
    --body '{"incMaxSlots": 3}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'kkLzmW1uxF6ctJUh' \
    --body '{"customAttributes": {"B92GGyB8htpxC7ih": {}, "TEiyTV9GCb36Eh1Y": {}, "bxfh0QhKGuDZ3kTf": {}}, "inventoryConfigurationCode": "nE1hHKJQyc4eLt4i", "qty": 14, "serverCustomAttributes": {"U1l50DgkYFDwRQNp": {}, "EB0caE2cHpOQZgEE": {}, "JfbC2K3opHRRVjfU": {}}, "slotId": "h4SsjRAiVjtTO0el", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "rGxfXWpPeXE5ZlEJ", "tags": ["xg65rj7olsAlRjyy", "6jVX8jhxcwrZWVA3", "S4GtwW2zCFLCF4fe"], "type": "zGrWlmiIixUbdQdy"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'KgzPT8RqYyklo8Q6' \
    --body '[{"customAttributes": {"vZ8A2i0LeiBYXpyd": {}, "IvntKZnM9suDJnhD": {}, "XuZR0HExlZmPzfiE": {}}, "inventoryConfigurationCode": "yQbVCIpdCJGFdF7t", "qty": 58, "serverCustomAttributes": {"OrL1mOpLk8yorLJh": {}, "dGO2Tcgg8HtHS8f9": {}, "1rGZJYHIdAnQ59rd": {}}, "slotId": "PWLNCRqLSBlnKwIK", "slotUsed": 42, "source": "OTHER", "sourceItemId": "xlmX2ltrecETkrKq", "tags": ["GmuN5aoxYcRrHLBN", "YGRaGAKlqvDfzVwi", "5ZIiwjauVXTAdhNm"], "type": "0m1qSwNdtw4UUvrc"}, {"customAttributes": {"c4ltn2YZlk2EH0mq": {}, "1y9o0QveqdIjYkN4": {}, "NShBwtDO8MM9qNgq": {}}, "inventoryConfigurationCode": "IWxriTH8KRn1fRdH", "qty": 69, "serverCustomAttributes": {"zCabnTLWqEgtuu2v": {}, "5niPaSUgMcPX9NZ8": {}, "7p3snRwo8wbABftJ": {}}, "slotId": "LYmyPGgRjUQVV2uC", "slotUsed": 30, "source": "ECOMMERCE", "sourceItemId": "0kDYEQUUgxvEqSMN", "tags": ["0hLdKzwAHMx7CND4", "38JlvXtCjDLXzoGZ", "9t4v0SYFMSdLQJc7"], "type": "uV2ftbnEUdndhooa"}, {"customAttributes": {"zcE4tjyhyIw54AnU": {}, "cl2qHWiupLelCDm7": {}, "Ro4iQi4RHYv2cQf8": {}}, "inventoryConfigurationCode": "UQ6hNOVwu3XDQdMM", "qty": 81, "serverCustomAttributes": {"a5Wh8SKvnczm61Wj": {}, "WFEuLGHyqLYI35O6": {}, "OF7ExTJoPbdfROyJ": {}}, "slotId": "Ke73sbuoVOrezkCg", "slotUsed": 96, "source": "ECOMMERCE", "sourceItemId": "zhva9eeqanLZjIC1", "tags": ["BJwa9Z5NGwAr8nyo", "xibLKtKE6I8nfMOP", "nbBZM8uHxPmtBnUf"], "type": "ln4QLkXOyf7Z481A"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'l3SeF8axhWGESSjX' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'UmItSwzqo6PgaDSo' \
    --body '{"entitlementType": "DjQieZiDHKBiebMH", "inventoryConfig": {"slotUsed": 33}, "itemId": "RC2784PZuxbkJefK", "itemType": "PwBVSm4wCp31EnFD", "items": [{"bundledQty": 83, "entitlementType": "ZmVK33pu6F0ZDqSb", "inventoryConfig": {"slotUsed": 68}, "itemId": "En5s9u7lklpkSJhQ", "itemType": "DpvTeD21cIjTgSoY", "sku": "pwVhLm7sw6ST5SOq", "stackable": true, "useCount": 30}, {"bundledQty": 9, "entitlementType": "z8Zv8cU5jwXW0vvk", "inventoryConfig": {"slotUsed": 7}, "itemId": "pcehcJ3vZ2RJXiO5", "itemType": "TAT0VZoCKkg8Ccxo", "sku": "8WXC427pUr1yMEVs", "stackable": true, "useCount": 82}, {"bundledQty": 99, "entitlementType": "oave0aHKCjFBreDb", "inventoryConfig": {"slotUsed": 37}, "itemId": "wJc5RCU1mOtSImtO", "itemType": "MXxQmjQShmRlIPk2", "sku": "unr6bKxnQt5o8rW1", "stackable": false, "useCount": 23}], "quantity": 35, "sku": "HtJGlD8wN5rxUw3G", "stackable": true, "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'zvO1kkSsXSIzP9Xl' \
    --limit '90' \
    --offset '63' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '19' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '79' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'V09mjzWQFjZSQYVS' \
    --limit '59' \
    --offset '81' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '2dkKZBqNEwYkbfwB' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["N9CRj3fI6tzwJWjx", "UGU6VpDEIoVE1ljf", "OpUxWUBNusHYLUjy"], "qty": 24, "slotId": "J5ZyOIG1RFa2ZujA", "sourceItemId": "1Ei7uvp4x7D2ExNW"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'w7q39733LTU15ysK' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '61' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'd0p8ftACb17GF06W' \
    --tags 'AgrmSLWUqw7q8DjW' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'OwTuzK7slFNwLMMk' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"bRkm0WErIjVaZ90x": {}, "DBgAbrvdh6ep9HAk": {}, "JLJuevo3pV4Pe5qf": {}}, "slotId": "4F1gVousT8K1Kefo", "sourceItemId": "1r4mJGVBKZcVgnWX", "tags": ["kjWW3c8MuxAiU5Nl", "tHz5S6JdyqaNkZCx", "RrU5lpSTTxyAk2kI"]}, {"customAttributes": {"Q4jhDDcgmvxjgUCg": {}, "w3ZJcvAsrassblDC": {}, "zLX44kP7qRmu1yBo": {}}, "slotId": "dr7Fk1SFK20wbeEA", "sourceItemId": "3BZ1VG5RiPGciowb", "tags": ["54k6tpq7T27Tfbx3", "ldwQmatPcutUUgvp", "sn7BlWOLETpybF9y"]}, {"customAttributes": {"cC7TTv88myBS7bWQ": {}, "QnGeqDQXqhmUQC1E": {}, "3FSfpMEGB6Sw03Z1": {}}, "slotId": "mVpC3dz9D5yzuHnc", "sourceItemId": "sZZWczdz34WwEgvv", "tags": ["Zl2TIbIn3dSiZzAe", "w1273TysqcHtM9qL", "kbW4iwXcPx3XGkbQ"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'wibtR03swOA3nYSD' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "JptIAC2q8n3g8rej", "sourceItemId": "ZsW8fQHhxnMbgM16"}, {"slotId": "LukbO19iJ0wEFQFI", "sourceItemId": "srH6oagNyij6aONB"}, {"slotId": "XY4UWtInW25TPdkb", "sourceItemId": "jRrwYSr5LInGe9lb"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'nRQAjRuSmKDnC7Q3' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 29, "slotId": "9qCeIGNwnKLaH3bt", "sourceItemId": "y1S0VTOnvKtW8amF"}, {"qty": 57, "slotId": "QmUN5jDRFMU9Jn52", "sourceItemId": "qJ9YRqWJElaFLXJC"}, {"qty": 96, "slotId": "VUSBnZe2mRL7Pa8D", "sourceItemId": "dzVduvweylui1hcw"}], "srcInventoryId": "xT9NbbRMTtaL7PTW"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'uZdKVNyhs57a6qU0' \
    --namespace $AB_NAMESPACE \
    --slotId 'xlxsMcBpurSTrfLf' \
    --sourceItemId 'P00f3dtiLEXG0Rj7' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE