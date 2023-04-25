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
echo "1..91"

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

#- 2 GetNamespaceSlotConfig
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    --body '{"maxSlotSize": 59, "maxSlots": 15}' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '8bUcMh9uFKcvuYcb' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'pd2ep7lNJw93MZXz' \
    --body '{"maxSlotSize": 2, "maxSlots": 16}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'JFZ24B2seMRP6456' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'qBhctUy5v8P9G2Kn' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'qnKdW4NgS0qUKNAF' \
    --userId 'p905Q2sWJFUUlL3K' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'D6pDiIPlMRjhSsNt' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'IV1WRQiKsgNnhdV9' \
    --userId 'okSTmoqscT7sJuPn' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["Bpb3LVwQNoVmAKdK", "j2UjDKo6YLj2I7yn", "sVbjYmS13ESyNf5Y"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'T94W6S6r54R42vw5' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LuIFBdF9M02TpBUH' \
    --body '{"achievements": ["A7WJTH5vPRE738dh", "afKQa6YBQYxnNbzK", "djkDqzlJXv0cPuIZ"], "attributes": {"owPKbEw4dzW04Vhy": "VHXfO6P4ilEwWTUs", "Xo8X5N40wjl6Ypdc": "9gwmB6hTIfNDm48m", "UiXsY5o2Dfur2q1k": "dNRFpfrfdmaxHvBj"}, "avatarUrl": "dEs4TPqXTeLiMrQM", "inventories": ["ZCSrHSX5sELqLAWd", "nbNtAQOcREz80xf5", "ofNhwyBNDUo3VKZO"], "label": "b3w17pS5Wewy3qDJ", "profileName": "fd2ZTd3QEAU1uZos", "statistics": ["Jp5BWWBRAcTCjnX8", "kwJoYxaraAX0z5q8", "LR981LWnkvOaWx8G"], "tags": ["JpqdQBhX2a48DoJl", "RKfLW6r2e6hjj3iQ", "QB9N29SoeG8HdUau"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'iQUvbjqW5imkRDBX' \
    --userId 'cDPxOBGrb26LJy1o' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'BLHyldeInBy5xFr0' \
    --userId 'IbXddO1VXueitGRg' \
    --body '{"achievements": ["2fWx5c3hufdMaOyW", "TJxvOM6ND9LwzdjT", "CH3Xq624bUZn864u"], "attributes": {"ZGCSxEbFgUnrWjaC": "SKe064GLitKton1k", "id4QU0omE9sQqrxb": "c6tPgQ6an1slgwxo", "mYIx2FxqpaSpfl1N": "YS9QS6WwiclkcHkw"}, "avatarUrl": "v8NN2NM5I0ZiHR2J", "inventories": ["WOCIFRWrj1RjKbXc", "pwX8oFZqOyk1g90U", "STAW902E9l51WGyd"], "label": "G2SDeCilyFs66dkX", "profileName": "lW5uFyyAE3cu2jzu", "statistics": ["V6pHz5lXm2qblmHA", "B8Gn74xUM80uz4Je", "gQgiRo5NtyNijzey"], "tags": ["3KVWJBq8UguaT5pU", "aBobhkKuuu5xFTqM", "vSiQEY3LxoVZO14n"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'hHOTeE3KSY2wTQNG' \
    --userId '6dOcqsoBmo6mtlX9' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'RPeGlC8hercFwdY2' \
    --namespace $AB_NAMESPACE \
    --profileId 'JFJxn8MFtjZcJv4I' \
    --userId 'lWEFK6MIC7UScsuT' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '4voD2m68S2LWYtsx' \
    --namespace $AB_NAMESPACE \
    --profileId 'HhPpnk5KZotjlrBf' \
    --userId 'uz8A6O85EZMmM186' \
    --body '{"name": "cPFsyGmE02gJv9Ti", "value": "71NV47F8Wg9s7O4p"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '9twBsZjlPG2o6Oz4' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'SETQ2D2OAY888ngX' \
    --label 'RZw1QNkWJrPS5rf5' \
    --tags '["IVgIuzkpoqsgZpKG", "r3GuhmN8vcRyc0cm", "2Bnc5LYRqT6q3iqx"]' \
    --checksum 'tefoj3Q7psDy20Pe' \
    --customAttribute '16kzADqpLagwixFG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'RZwXLwtxaasyfdIY' \
    --userId 's5y3RWhOzW9kwBx7' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '3X6VRtVyOT0lpsnF' \
    --userId 'NzmFbL2Hvgr3gWhS' \
    --label '6baPVE4QLisLH5o2' \
    --tags '["htjlD7HcCCcoNr69", "gMiNdsbtpWsQFBXW", "Rgy1TApKb771g8L4"]' \
    --checksum '0l6mY9UaVW7GR6hj' \
    --customAttribute 'uVl2cGahvKeTpykX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'v7tFCfPDVY9KGple' \
    --userId 'nh13VV40pa4VNWVU' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'ZMEga9oLHjbqF8kL' \
    --userId 'MMO0OTZEYlIUib4K' \
    --body '{"customAttribute": "Hjl6jYTEMrfCXtMe", "label": "8OZSbIXL5Pxvciz6", "tags": ["CIbQfwMkXKpzsizq", "CqoSRlp5AOg8IR51", "XAjERTklnPCkKQhg"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '74' \
    --statCodes '5Wcwuv82aqNfjD7e' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'bowdmNH0GOHkn0CZ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '62' \
    --name 'zyTsPwixgnV1jsP6' \
    --offset '41' \
    --sortBy 'nNcBcRe2Aa8Rdmcm' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "TINLurXjoLwTedqI", "end": "1983-01-18T00:00:00Z", "name": "XWNf83lki5PnBUn9", "resetDate": 81, "resetDay": 87, "resetMonth": 64, "resetTime": "h9Tei3EzUT6eEN2U", "seasonPeriod": 49, "start": "1985-10-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["8aM88F7kIxIJlfZG", "FpauI4yzYD8MuYzn", "mscKke6bHu99QUYU"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'd8LFGWzQmk4op64U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'pxuJ8JJs9sY0xosj' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "ly7lrYeLDUYUywbl", "end": "1987-05-15T00:00:00Z", "name": "qFVJjoB7Y4POsDlv", "resetDate": 83, "resetDay": 99, "resetMonth": 58, "resetTime": "YF5MQwW1lLzs4JNy", "seasonPeriod": 92, "start": "1994-07-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'z5TLePrHPeAJe3s5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'DOzC3LScI4bwPWAo' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["iCDzKkKeM1LZ4fzR", "sjNkv3NwPpAYLpGT", "GZi6gnbhFv5Hpfm1"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'pijPVeWJEroqbrvu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'JbTIJQ6NGOepZhba' \
    --userIds 'iQcAlZ5KRE89hOxP' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6736021013686322, "statCode": "2mUVWFs4ojYYknDa", "userId": "CYj6SI4nYNYjuIeB"}, {"inc": 0.5101083037067623, "statCode": "aGTPmQnqcRISh8zr", "userId": "quaqxI9rc1o8AwY4"}, {"inc": 0.7382553090887966, "statCode": "pHz9OSfGZ1KO2uGI", "userId": "dD97ZzEopiqqMtat"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6363040853049237, "statCode": "P8UxwoGMQxIW9aZW", "userId": "AkzxI01K8kj2RGyC"}, {"inc": 0.4587655971164295, "statCode": "vQLh1Z9IAnx7YCXC", "userId": "Js3DnN9jcYGNdIqu"}, {"inc": 0.7197984660699667, "statCode": "owkSgSgORBMwQduy", "userId": "zbhaMMHCuC0ydfNL"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4TQOCMMOfeY2QVCT' \
    --userIds '["fYPitFytJoz28PpY", "jbgaxwKgTnpdQv9d", "4gRAnJbEyijxAee2"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "W6Ftjk6nZNhu2d76", "userId": "tPi30Shws2avZZOU"}, {"statCode": "IuhLf2yevCW2rgfl", "userId": "3552h1FTwTKbdSrD"}, {"statCode": "ChHSLEbypT1QWm3b", "userId": "mUQwVXIpn47fx8D8"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'kNSSknAFMwi98Qzx' \
    --isGlobal 'false' \
    --limit '22' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["184kRn9Z7gyRAKJR", "D7Fn9cO1E3GFx5fd", "sF8jlGEFLjpJfcCP"], "defaultValue": 0.20278576955225425, "description": "MWrpC9i3fyK789Hu", "incrementOnly": true, "maximum": 0.2728044989158903, "minimum": 0.8056219265402047, "name": "xsdx1Wl64nRo2nLT", "setAsGlobal": true, "setBy": "SERVER", "statCode": "lwzED1utoc2xsqlW", "tags": ["jHjxP39Mlu5ShwTC", "sSUd6vdjiTDPp6AS", "RSCEnpTook3EUjeA"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '96' \
    --offset '77' \
    --keyword '8npVfRJouc9gMfew' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Imi9Tgc1SpgpJObm' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'LaGq2NphYI8pWSly' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'SKUuk8PlTn5py1kE' \
    --body '{"cycleIds": ["8o1UorKlc9NqkDyN", "Lazlx9L8ZL7FY5Lc", "Pv14fOKMsO36pwgE"], "defaultValue": 0.7255367357734104, "description": "WuanZelbzWBbzBcT", "name": "UXdEHjIIhGbU6Hgo", "tags": ["J6QJhlSluC75W07K", "LoE7iXGVUoXObe5i", "N7ymrQFfuOG1Ogak"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Y1XB0jlzX0d8a1iv' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'ucwew2x1L5Wr6Jyf' \
    --namespace $AB_NAMESPACE \
    --userId '9pvMoQOvpBgtLU9o' \
    --limit '19' \
    --offset '52' \
    --sortBy 'daCo1hEuFZtJ2jEA' \
    --statCodes 'tMv7ZkduUqA4C0ei' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'K1ibs0V9zYco7fVl' \
    --limit '38' \
    --offset '9' \
    --sortBy 'Jy8Z18pVuMW3BKp6' \
    --statCodes 'rDFg7e68KFX6yrL9' \
    --tags 'kShEgqcjKz9xloLl' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Smdkr0GVZxu9g85s' \
    --body '[{"statCode": "SdLxJO5bfX8FSkzl"}, {"statCode": "FbkhUsMK5g0MlZCC"}, {"statCode": "3gRSXzx9yY3J1j87"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'n26eml6TlwYJ38Fc' \
    --body '[{"inc": 0.8346900625099594, "statCode": "6C3qrHuWM49gFK8t"}, {"inc": 0.04336031124716011, "statCode": "wgl8kKXuW5RLpgqQ"}, {"inc": 0.07900818674881516, "statCode": "tbjtlIhx659eDcUc"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'gxM9VIiHI7b19dq5' \
    --body '[{"inc": 0.3689956779155301, "statCode": "1lhMFtbrN5f40lX2"}, {"inc": 0.8474569231836993, "statCode": "OuKbJEpzP1nObpbp"}, {"inc": 0.8992546320259432, "statCode": "rdNF3CymT6azUheA"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'J0eLaGzUF14B6Toq' \
    --body '[{"statCode": "UPMzARz3Bly4273c"}, {"statCode": "aaeAg7TL2f7LK8oQ"}, {"statCode": "qNGofRtX005FRQ1S"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'vBu5AExXvKzXacbK' \
    --userId 'wR80UnbDXCW7kSzF' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zaB7MqoTVeSNUY5Q' \
    --userId 'ya2ct1D5lFvub9kQ' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rCiHcrQ5KuwvEeOv' \
    --userId 'LIHh2ijbeU35pGMU' \
    --body '{"inc": 0.5259687380023217}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ogHGo94f1yJZr1ix' \
    --userId 'CwMXKwrhNzWd92MF' \
    --additionalKey '8zQZOumSYPaEtHTQ' \
    --body '{"additionalData": {"vSGuCtsLp6MstXPf": {}, "caG53BapCpqccEGn": {}, "SuVdqwBzMlGDNUph": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '13' \
    --statCodes '9GkWfYHo4Xbo7NiF' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iFg5Q58MdlwmR4Bx' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '85' \
    --name 'Zack3pnbIyDP77mQ' \
    --offset '31' \
    --sortBy '9u2HylrYanM2FA9j' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KOpzBn9kwaXS5tSm", "PN0Ux9pdJ91YIBU7", "6rNIFf6gh5xK1qyt"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '9itYwlQpw4mUt45u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'l5erPmgD9gFquhoG' \
    --userIds '1Q9YZji7lzGENy3J' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6877207403497536, "statCode": "x84MSlE9foGM5alx", "userId": "AbLcgyizGGFIZvRO"}, {"inc": 0.5823073463206447, "statCode": "Twa1jTVbcTCxWy1C", "userId": "BfOIHx1WZS4Gnj1T"}, {"inc": 0.14590366924637255, "statCode": "umQIZcW0Yr2vmnUO", "userId": "tLTP5AgNoChjOWGF"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.04726975462455407, "statCode": "igC2IMuxl5tGNdiP", "userId": "UCjatxrJTSVLR5bp"}, {"inc": 0.05317814855646774, "statCode": "ca6AwZlcwQjJ8jIz", "userId": "zvXAPvRhXgWoD7Pv"}, {"inc": 0.21614476638523294, "statCode": "02DtO7YLDIoQpAff", "userId": "wSmcMbSBvR6cWyGH"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "hZzmjmwlTNoB37Y9", "userId": "zx1495PozJcSJrUO"}, {"statCode": "cOwLiK2gtJK5Ytmr", "userId": "xEqkk4gkqtpbFs8J"}, {"statCode": "QtUuQg581LFkqOrN", "userId": "LSUtLGPZOAD5L7b0"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hZC7j5dFb5ilvJS8", "9Kd4FKg3n3an5jdv", "kyGJmYqp52JYpnmf"], "defaultValue": 0.5245956586282994, "description": "HC6zywtNTLxRxjhn", "incrementOnly": false, "maximum": 0.8904532783466016, "minimum": 0.5047337950840717, "name": "Xl8xVF6QA53WP490", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "TBnB7EZg7f8oeGNY", "tags": ["A98Np9WVvrtLM6MS", "aELDURoaNiFyPWPy", "PLRcWOZeNwzX8PAM"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'Kbzc4thuyaZDWNI5' \
    --namespace $AB_NAMESPACE \
    --userId 'IaY9ORy885uOr7TW' \
    --limit '50' \
    --offset '60' \
    --sortBy 'Umlp698d1EHHNQPn' \
    --statCodes 'VLkgWeOZOcyElP1r' \
    > test.out 2>&1
eval_tap $? 70 'GetUserStatCycleItems1' test.out

#- 71 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'BM33aKEaAoOirNSy' \
    --limit '29' \
    --offset '75' \
    --sortBy 'Io5SA2JwQAHyQWnz' \
    --statCodes '3OI5aixH0QMke0Qf' \
    --tags '3FCt128s8coZ6qn1' \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems' test.out

#- 72 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7HWS7bNCj8i89hhf' \
    --body '[{"statCode": "iLV2ITxMZUBvFzag"}, {"statCode": "qSZmZF7JqeBxN0n3"}, {"statCode": "ErYqvm4acD8tfncO"}]' \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkCreateUserStatItems' test.out

#- 73 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'KNjoe8IHakTPWfSi' \
    --statCodes '["xOWVoHp5PnijGPQG", "1BGOat2jKUrG4lHr", "9L1FAyqZBV49JVnV"]' \
    --tags '["47U0qoHkblL9l18K", "cz5IPI9pB9hP9Wzz", "xLifIOnpYwcCwf2q"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems1' test.out

#- 74 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'McQoZWgXEDA9J109' \
    --body '[{"inc": 0.28627554494486385, "statCode": "HK8xK47fLZcuXTql"}, {"inc": 0.3973529602082283, "statCode": "26UT1Ii9SHCkkRya"}, {"inc": 0.3159875982983067, "statCode": "uT0K2bKdOdfiwMjZ"}]' \
    > test.out 2>&1
eval_tap $? 74 'PublicBulkIncUserStatItem1' test.out

#- 75 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '7Yxg3nuqyNX4xeSr' \
    --body '[{"inc": 0.535078713699993, "statCode": "rHpFNfj54cpr8fVT"}, {"inc": 0.3836072933663979, "statCode": "UtMzUb8cdkUib6M3"}, {"inc": 0.43253608699157065, "statCode": "7hynJUu7V5GmS9FJ"}]' \
    > test.out 2>&1
eval_tap $? 75 'BulkIncUserStatItemValue2' test.out

#- 76 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'xG2xyW7Nl4AUB65s' \
    --body '[{"statCode": "I0AeyO2r2G8Uxjrk"}, {"statCode": "cleB3NgpfuxE3U39"}, {"statCode": "WD4JPG3lIzqKhuqt"}]' \
    > test.out 2>&1
eval_tap $? 76 'BulkResetUserStatItem3' test.out

#- 77 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'mUQl4kCsrtHrJ6Vo' \
    --userId 'ZfVyhKbFckiqVz0g' \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateUserStatItem' test.out

#- 78 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'lBp346AqxAFSsdeT' \
    --userId 'vgg1AMkDajC9tDb2' \
    > test.out 2>&1
eval_tap $? 78 'DeleteUserStatItems1' test.out

#- 79 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '64TJ4wxSsP3VeJtN' \
    --userId 'sa1pQ7IjPnkfI6LF' \
    --body '{"inc": 0.7723897280506247}' \
    > test.out 2>&1
eval_tap $? 79 'PublicIncUserStatItem' test.out

#- 80 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'H2d1Hw2mY5grapMf' \
    --userId 'xwaBocqv4WbqDWfT' \
    --body '{"inc": 0.1943753746777438}' \
    > test.out 2>&1
eval_tap $? 80 'PublicIncUserStatItemValue' test.out

#- 81 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RWpVpCc8hy0anvDn' \
    --userId 'g4hgnkxVzFpnjrad' \
    > test.out 2>&1
eval_tap $? 81 'ResetUserStatItemValue1' test.out

#- 82 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"cPQT9IrcqHBkSlnV": {}, "RIBLJCIXvewH6MU7": {}, "dHomdlMndrH4zk5X": {}}, "additionalKey": "AOMVhMnj0CsNc9ae", "statCode": "g1wbE4iDbYEUw1uA", "updateStrategy": "INCREMENT", "userId": "yzx1KKHMYwCZLynv", "value": 0.684252459166776}, {"additionalData": {"qHpetXoPO2lQmSgL": {}, "sfjvy8r1a6AH6Glw": {}, "vO8rulFGtyFwNVXA": {}}, "additionalKey": "lqlNZCVbpWDF1Mdh", "statCode": "fYYOysoQFR5B92qV", "updateStrategy": "INCREMENT", "userId": "1GWtYKZmEks0lnQi", "value": 0.44982633436103314}, {"additionalData": {"hZjVbxhE8Djyc3Mm": {}, "6iVYkupTC14ilTnx": {}, "IyUVSuu3cRy7cSBe": {}}, "additionalKey": "iNfntXtHHvRzYuof", "statCode": "3UdNfT7R5EPSb7WK", "updateStrategy": "OVERRIDE", "userId": "XTBak6bWBOWvxjb8", "value": 0.3011815769290851}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItemV2' test.out

#- 83 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'n0OMUyuWtyobmAJ5' \
    --statCode 'kLCozUf39YKPoDv6' \
    --userIds '["b1IrpVCj6RzCvMqr", "M4Lm6KQyTXXj2b8X", "CRT8Gps7tZjx1TzS"]' \
    > test.out 2>&1
eval_tap $? 83 'BulkFetchOrDefaultStatItems1' test.out

#- 84 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'NOnzIyHonE6NdRPS' \
    --additionalKey 'JDXDRwXIhXDh8z4Z' \
    --body '[{"additionalData": {"YuKVEbzCloSXmKOP": {}, "126eXuLb0Dfh4pLo": {}, "sM00Wjj5PRy9LBSL": {}}, "statCode": "D5TmGzZ6lK1ZtjYs", "updateStrategy": "MAX", "value": 0.2876321878172592}, {"additionalData": {"af5ANkO4Mb4KD53j": {}, "St9d0ICstJfQqOEm": {}, "uQyNw3y02huDTJ0G": {}}, "statCode": "an3KXBgFiVO1tr9z", "updateStrategy": "OVERRIDE", "value": 0.06202366189776087}, {"additionalData": {"enE7aSEgTN9WzTXt": {}, "9mw1xhc0NiiDrs6m": {}, "BgwyVfbpMBwZGljO": {}}, "statCode": "ZID6cbJMpr0aomPU", "updateStrategy": "OVERRIDE", "value": 0.5091043851554061}]' \
    > test.out 2>&1
eval_tap $? 84 'BulkUpdateUserStatItem' test.out

#- 85 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'lid1L41NTgJM31px' \
    --additionalKey 'iIiYJ1EMNqtQbJUI' \
    --body '[{"additionalData": {"wtZf4NtA75t0zYVU": {}, "3qEFo8UaGr6D71ar": {}, "w4ko2BCOIrZfU4Ea": {}}, "statCode": "Pxaj5YALt6XHGlHj"}, {"additionalData": {"kNVohOaTtFHGphit": {}, "Qv7dUdR8BIF8BCwR": {}, "cvGjErlJrMkX0LCK": {}}, "statCode": "dydYNCTF7akud15B"}, {"additionalData": {"J0Up6g5cQ7ZsjF4Y": {}, "PjxfrjQ3W1JmEeQD": {}, "O2SmHB5NiUyxZx7g": {}}, "statCode": "AjLTeqRVaZR1BY88"}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkResetUserStatItemValues' test.out

#- 86 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Yd5mqUN5A8VSoynt' \
    --userId 'MbREljb4sor4aCOM' \
    --additionalKey '3tHygsNOmb2b2PiI' \
    > test.out 2>&1
eval_tap $? 86 'DeleteUserStatItems2' test.out

#- 87 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'tvlH9u0ggPcgGZfy' \
    --userId 'fLmHjV9uYcYBPALt' \
    --additionalKey 'rkgfXh2Os9M8Hz95' \
    --body '{"additionalData": {"5bH2hksMBrPnrIFy": {}, "qFyZnaSjtLh0NYQm": {}, "bqohW7YIWRmkZ4Mr": {}}, "updateStrategy": "MAX", "value": 0.08680853018998103}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserStatItemValue' test.out

#- 88 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"yi7h6g5jc22CCA6s": {}, "i3vSec5O9fJ6ic6k": {}, "yKds0foOIcGTq2WH": {}}, "additionalKey": "kRkmNvEYduEvgsJW", "statCode": "9s077gXAfp4DHMK4", "updateStrategy": "MIN", "userId": "zVzAk6T5XZ6uYxuh", "value": 0.6100195277217713}, {"additionalData": {"lyck5KzppoItE8i6": {}, "nd1Q7UVx8qrCMfkP": {}, "mzjT2NzV0Wz95Ojf": {}}, "additionalKey": "FReuCtr6WtkpgL3T", "statCode": "wm1w6LGifBDwjdNt", "updateStrategy": "MAX", "userId": "NMFPlYK6lb49xqCf", "value": 0.08089089110968517}, {"additionalData": {"lelgdoAC3sgWnck7": {}, "IG31TSNxv6SOUp5U": {}, "3iIpvpxibg1JWoCI": {}}, "additionalKey": "Ef7Bimy61honuL1w", "statCode": "ZafRiZPJxPyUD1CG", "updateStrategy": "OVERRIDE", "userId": "LMPeUpc9exKcDe4z", "value": 0.6916942429709846}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem1' test.out

#- 89 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '2XgRj14urROfJOgy' \
    --additionalKey '3ihY7QuAACMLSBTQ' \
    --statCodes '["LVmDx2HeXrjLvvHv", "fwtP1lkTHT5gp8Ma", "uSK5er7ddLQMG6kY"]' \
    --tags '["63cERfR0DChrQEnu", "JddRX1s43Hv2pgc1", "pqXB18YC9pviOMGw"]' \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryUserStatItems2' test.out

#- 90 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ihBMGyEBYI9855AQ' \
    --additionalKey '1jhIB9PtuDP0ldVv' \
    --body '[{"additionalData": {"CAuAdMbGaDE2u5ak": {}, "Tc9GqTLwiuZo1BqD": {}, "Lx9bJmwWf6HSxY0t": {}}, "statCode": "B1DDV9eFFozKUhrH", "updateStrategy": "MIN", "value": 0.5378654384996825}, {"additionalData": {"CtSgU7o3bULZb0px": {}, "PcCLJropoIIQjqkk": {}, "J4HoG7PM8j6zqTPT": {}}, "statCode": "IPR0ZUdgQQeevSo1", "updateStrategy": "MIN", "value": 0.6436353451958031}, {"additionalData": {"a8zcAbxGhyUEOKiB": {}, "LDgyk5YsvWRlVFZJ": {}, "SjB0qFLR6tOphn9K": {}}, "statCode": "ZDghdnTm5zHvWGFb", "updateStrategy": "MIN", "value": 0.33272042711359273}]' \
    > test.out 2>&1
eval_tap $? 90 'BulkUpdateUserStatItem2' test.out

#- 91 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'r4Osa8GnV94RHEhv' \
    --userId '8PSCP27ONjXgSKMf' \
    --additionalKey 'KgBK6p4iqFRY0XUH' \
    --body '{"additionalData": {"HOYKy3HEoD4zqtWv": {}, "uSVUpd2MDqnuhdy8": {}, "oUvElLO10vU2miI9": {}}, "updateStrategy": "INCREMENT", "value": 0.8269158588459861}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE