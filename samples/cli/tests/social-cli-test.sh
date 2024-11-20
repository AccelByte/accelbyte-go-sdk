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
echo "1..99"

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
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'UuF9NdAfAiUmU3OP' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'e5UQKO6sHqc6jGFC' \
    --userId 'HOSnpujU4vwsp9lo' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["0R3ngLvQm4EYdEEN", "IiqeGFALkcHOuigu", "GhbieInBc8FIQuWi"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ec8HUHT3PSpa3QWX' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'CyKeJqmJveoIdomn' \
    --body '{"achievements": ["BY88TSa3gav2rPWn", "IcecF9IRsViL4jUm", "h4ijSplHvvBFIoZI"], "attributes": {"sJeMQQgtF7Yhwmbr": "n4CyT8Vnv0GOHZgo", "TBSS71cqLFnp1B39": "z0Z6pfETuUQxuUl7", "ahhOn9UMwGarrMpw": "3LCCBsMKX92lL1pr"}, "avatarUrl": "1FtEOJz333XFhYJf", "inventories": ["OhtSa0uycFjxbFMf", "iDREIki2jyGY0KTH", "TYnGJ7uofilFU3iy"], "label": "W6KF8KZOb7kkBfxs", "profileName": "vAhun0hBfTfKlIJ7", "statistics": ["uLojVJRS86YeShmK", "AyHq85gRxLHro4L3", "OQLsfqTbVljwEnE1"], "tags": ["MGUuILgPne9NoYL1", "RvhWHMcHuKoQWqBt", "0cmxTRbnf4QktOIG"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tRBeEDmfCTM0jvcN' \
    --userId 'XTCe3IMuiYmzv5P9' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TXYZIjLQD9VJR2V4' \
    --userId 'WkAinfF2cWTjaBWR' \
    --body '{"achievements": ["AB5uZ7Zs7N3MOXR0", "DX8uVH03laZFj5Mw", "y2wWCWdpHSgRSyMD"], "attributes": {"tkGGZhwqeyWp3voE": "urLr5LfGhT5RIByx", "OLvTAZul4azLRsQf": "680j7r4Yw0jGl6Au", "OeOnWGRpWi7ot7la": "GKyyDPVlcplgltFB"}, "avatarUrl": "TZWVenrCILbcEAxv", "inventories": ["sxDJBtVEq47yrDZH", "kpKPyCBEuP4xFmnf", "I4dFiNpKN7MhUctY"], "label": "1tzr7g6FSDKL1avE", "profileName": "yTh4twBMMKa1MHMD", "statistics": ["PXOUFXBb4sQSM5tV", "BWucS9Fo2UPgVkJ5", "wD6VRJhrnxraO8Jv"], "tags": ["M8OQM9SY3oyCJlQe", "LdENJ8NU1eBPLEOS", "6W0glgSEi7Y9ICFa"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TKmkrM8ldaEL0opP' \
    --userId 'BSLMw4QxfnBUF3Of' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'bDUhNjiXpqP3e3Ew' \
    --namespace $AB_NAMESPACE \
    --profileId 'A8b0jmoGG10wzp5j' \
    --userId 'PdsbzSsOhXx8OHoW' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'rkqNpbsjckPU8A2h' \
    --namespace $AB_NAMESPACE \
    --profileId 'JKVI30j6yhv5DHlO' \
    --userId 'yMVMuFjh8bc44XgY' \
    --body '{"name": "Tmt9DHPPrRXtoOY8", "value": "oCvdqPNwXYYoeajN"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '93' \
    --statCodes 'MOV0TPccUB7oAxd3' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '9qR6enaxbGTFUqlr' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '8' \
    --name 'bg1ubyFC4JyBUhJA' \
    --offset '84' \
    --sortBy '4TIhMdwwlklub7x4' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "4F0CgNIlqNzLmFIb", "end": "1989-06-13T00:00:00Z", "id": "si0qKFRP2xwhEBnt", "name": "1GxonbasDL3vIgHz", "resetDate": 28, "resetDay": 29, "resetMonth": 53, "resetTime": "XW0p5MZcxifrdEQM", "seasonPeriod": 53, "start": "1997-11-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["HGsgwVhu4kAb4zHu", "24i5LOGYOePlO3yK", "BXUdL1TPg6o1cL7j"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'MUhLERsg7kss4vGd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'DL7MjxkFg14oEd5K' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "M29QPMmBUCX3TZ80", "end": "1994-07-15T00:00:00Z", "name": "Lzhjm6x8dVfg9vak", "resetDate": 61, "resetDay": 26, "resetMonth": 42, "resetTime": "1dk4FHogvnplCptu", "seasonPeriod": 23, "start": "1995-07-16T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'SbmZXHQtqBx2XEd4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '4JPzurwvB5vbyUr0' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["Bl6cuAkgoOcPScqr", "bXUFK507wvpmdXZj", "OXVXJouhdWyvCAQt"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Ld7E2OfcSwtTNi6y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pwlpbguRWLryS9Xo' \
    --userIds 'mVM7e9fWxYk4bCXh' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.689700061406304, "statCode": "qeFKgQTyoPtkx6jU", "userId": "H3hi8O0CIABJJVms"}, {"inc": 0.5628905933852004, "statCode": "E2qGE9WVyMeDoQKj", "userId": "Kwwp7I8KdatbHEK8"}, {"inc": 0.7531782661589493, "statCode": "pA5buKO1RT3OS6oH", "userId": "t88IwVLfEoQU8TtB"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6333715393262214, "statCode": "JDplfsF9rSMSPCV9", "userId": "LPZ4LZlY4WYxzpB4"}, {"inc": 0.19618010688042686, "statCode": "6rhDPWxULkjaNL3k", "userId": "f7NlpdvnEL9F22pW"}, {"inc": 0.731427824549313, "statCode": "Ajt7ou2h2335hnks", "userId": "Ngm5z3BdGb0d6CaC"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Zog7gUKx1jJL7N6e' \
    --userIds '["oEGbVR3fhFP2FzyS", "Z8F9jtCFQjVCGnZ0", "vxUxqCVsRId2e5Ck"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "po0E29WBinI9JlKm", "userId": "BqDtPZAIUT1sJrHq"}, {"statCode": "sbDB09LQ2FMJE5ib", "userId": "4pyHYzyGqgFo45DW"}, {"statCode": "n3ahrkEkCS0F8yWS", "userId": "py0FiemL64F7F03w"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '8EoeXjpEp9GNAgzI' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '58' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["gclUqy0QEYUhrztF", "gPrFTxWPvWIDTLrG", "9aXuTvNv7GxFXWK4"], "cycleOverrides": [{"cycleId": "bSmdCHkLZrpsrj8b", "maximum": 0.2983985111609857, "minimum": 0.9325234337650913}, {"cycleId": "yMwwVVdX4zQFq47B", "maximum": 0.24808095880259684, "minimum": 0.12341118382811911}, {"cycleId": "uGkpHk6WTB4UMt6V", "maximum": 0.6457223183389407, "minimum": 0.08198364853268592}], "defaultValue": 0.3659436501361163, "description": "Ky14Ll5wzRq1kN1h", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.6554553248849991, "minimum": 0.2664717481084621, "name": "TdnqHg02CZfgQmN4", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "bP5CjCnBCr42tJmA", "tags": ["5bt1hVtvMsfm1Bvi", "ViJGoLug9GxhvhdE", "Lxd6DLgVGYHjaLEX"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '82' \
    --offset '29' \
    --keyword 'JoTLRzGcbc27b1IJ' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'rnYnvAwmE1YDnwRs' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fuTiayI2gA3bPaeC' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'e1gBWPg6oFZX0NSz' \
    --body '{"cycleIds": ["Fm3qxv8orq8kV1Tz", "EPWN7t1EfLV4TwUW", "vvnbP1HRrjRipmdn"], "cycleOverrides": [{"cycleId": "OlltTnJPtsYBgYLf", "maximum": 0.6196865445120877, "minimum": 0.21582803752294188}, {"cycleId": "PAH7XkV8ggaskL7U", "maximum": 0.9010421014921903, "minimum": 0.7010246092552105}, {"cycleId": "mUPMZTSvaa20Y3u1", "maximum": 0.8514224839470929, "minimum": 0.12222493247844224}], "defaultValue": 0.7306945313128003, "description": "RBhA5SFQpmKG3PlC", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "Psj1fuXG3QJGXFnc", "tags": ["u8xuHoLy5Lo7LQNV", "QIBz0I1OnsU4Prq6", "vy9QnoZmlCaYokNI"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mowFagEErYafgs8f' \
    --limit '52' \
    --offset '59' \
    --sortBy 'POu1BfqYidtzBPtk' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'h6crkxYnwsyRoY70' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'TyGyHJBouDONvQ7i' \
    --namespace $AB_NAMESPACE \
    --userId 'MPCCpo8mi6NoE4Ry' \
    --isPublic 'true' \
    --limit '27' \
    --offset '62' \
    --sortBy 'aOcDIfXYr2MWZicc' \
    --statCodes '7WZ8CeoLMMNhcd1n' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oEkVVR9zTAWBr4f1' \
    --isPublic 'false' \
    --limit '71' \
    --offset '79' \
    --sortBy 'QU9voXXo4mTR0f52' \
    --statCodes 'vRBbPdlXaVz2dNhJ' \
    --tags 'qgnXO1eta4hiwqWU' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SwzuaTlWzEnAwlfx' \
    --body '[{"statCode": "Cm6HqzeFbJiyUcUX"}, {"statCode": "Gr4cYBvNSWrYqMUT"}, {"statCode": "fGQu05LMtKmXcSJd"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'WiCJJczSk47KBUwl' \
    --body '[{"inc": 0.5142772223993285, "statCode": "1oQpO3zMJ1xZe5Ti"}, {"inc": 0.6782756724989806, "statCode": "r7ICnfYbRwnZ0X6s"}, {"inc": 0.9484199955784192, "statCode": "UIGKtLvUgsRrPMXk"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'xLt2pQjrDh9N8yUp' \
    --body '[{"inc": 0.11522823732469056, "statCode": "AZXXIQluOtr67lrK"}, {"inc": 0.1071730635249083, "statCode": "huCMAx0xZhMc2Z5x"}, {"inc": 0.4452631235705926, "statCode": "PbMQuurtmuI4Kcwq"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'fXyC9GSeoXAbmRV3' \
    --body '[{"statCode": "3A9cM0siwr8rqF0D"}, {"statCode": "iSbY8tC9ktzmpJ8g"}, {"statCode": "kgAxLr1LW9CmjRfn"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'cFzuDcgvbFIIeV7N' \
    --userId 'EadFJtiMfwa4OTEd' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pYXdYeKE7cDFaMtu' \
    --userId 'vXXrOsDMBiGwksQR' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XxLya69SgK2RlGkW' \
    --userId 'FZkMcxsocQc6z6v0' \
    --body '{"inc": 0.08287300803786823}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fwbR9EF1w0NmmFrN' \
    --userId 'RBKo15pMPQ7pVaXJ' \
    --additionalKey 'XcFrV9DNCWanYLeV' \
    --body '{"additionalData": {"R1jsOpISLuwf5XNR": {}, "EnK7WmTQt6cifTGM": {}, "Mwqu771mr5ZBGNmz": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '93' \
    --statCodes 'aTlhMGsMqQ05lf57' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'KTFpY4ivfLeQ8tiP' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '31' \
    --name 'CFztWxSCGKRgd3aR' \
    --offset '67' \
    --sortBy 'mGPN3BaPyc2SjR76' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["CJyAU1iABBxsD50M", "9NbqQKYunfveZiHq", "f3cfkJmN3rdI1uov"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'hnIJENx5XyF5T844' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '4DLKN9z07N7B4A91' \
    --userIds 'EYl4LQTGVF69m6C9' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6672669213660813, "statCode": "fF4ccTqEFviqYmDg", "userId": "JyBhEearaVQb3Dxj"}, {"inc": 0.0879771906489556, "statCode": "OOOyuLNRIQA2PAO8", "userId": "jifEXQdg9jVbizCf"}, {"inc": 0.7708339303052469, "statCode": "hpEkKcsuyf3s39iA", "userId": "X8Td3kMmNttEyc5P"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8181194704333372, "statCode": "Yaw0hQ51MM8Zn49Z", "userId": "vj0ApiQ2CSSr4tpj"}, {"inc": 0.5067915648269394, "statCode": "Pwx69Lmp9jqMMFqj", "userId": "efFFfrcXl4UWbG1h"}, {"inc": 0.577861870786918, "statCode": "FydiBLvQGR1X424c", "userId": "YF21hoONa1jSagAs"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "HlYJeG2qyjOaPUgr", "userId": "2Yxhrrjs8tVvWIgK"}, {"statCode": "1R193V4Uo6kfRvze", "userId": "On9rjv8n3CJPExUf"}, {"statCode": "wiP38TqoKrlCDth7", "userId": "2xQRjM5iMCWB975a"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["73J0lfqIIIERXFr4", "pygGpzdueOKrg67n", "C0CHPDjDzCR1i8pb"], "cycleOverrides": [{"cycleId": "LqFNhQZwZrKvWMx3", "maximum": 0.01898437902765715, "minimum": 0.14900520286923258}, {"cycleId": "ujhT0EFiGsyIGXd9", "maximum": 0.10675131062361576, "minimum": 0.6836611034023576}, {"cycleId": "kMUYy74zmdMfNlPi", "maximum": 0.7534049393745091, "minimum": 0.07347868829585458}], "defaultValue": 0.1846749621506536, "description": "xEbdl3QRxDjqJCuZ", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5445722762720667, "minimum": 0.42600203879259657, "name": "faiJSY7dVTxGGZqB", "setAsGlobal": true, "setBy": "SERVER", "statCode": "rpz2aEbYC6rs4IWK", "tags": ["KqkZPkcaMoEoXnIt", "0vBpb0dQDKTW7miI", "VgLPC6OjleheBskf"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '8SSrLn3RPR2Ko2Bq' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '72' \
    --sortBy 'xHG1kLeqAzIhDD8V' \
    --statCodes '["lFw0SUtzAMm5EKkt", "k21473cJkqUMhWVG", "ZZ7z2WbHRnMdW6va"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '78' \
    --sortBy '98s5TG59UBw718Xe' \
    --statCodes '["BjGDQAGvWunYVAND", "2y1JcQgbPRYxH7kT", "nxmgAJSWc8gio5L2"]' \
    --tags '["SHjUVTtX1dA4PBkM", "YghfdJoR4rM2JbAb", "BTKhk62aqC0Ypz78"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '1d7eNraIwz6I5zq3' \
    --statCodes '["rYJzhF3AsQwAZdEg", "WwWA1JT49547zBqT", "XKOckAaAFPJFx93Z"]' \
    --tags '["vMoubfztaxRP0f3d", "KGDe0twuiP8EoelQ", "6o6YIwax6E5MtroO"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'B7cDwUwORe9crU5K' \
    --namespace $AB_NAMESPACE \
    --userId 'BVx10m3xqN6etHp5' \
    --limit '16' \
    --offset '27' \
    --sortBy 'iDgIyelIZ5f0W0Hn' \
    --statCodes 'LWUdyuCm19y8QuaS' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NDjOfjmphUDfCH5q' \
    --limit '99' \
    --offset '34' \
    --sortBy 'k09u8pzCyws0vyQ9' \
    --statCodes 'IZUyWfpLygidJXJQ' \
    --tags 'lDGIjo8S6bq3ywky' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7UmGWXziDnoLjsvi' \
    --body '[{"statCode": "Tc0Z0q1Eyxn4x3yv"}, {"statCode": "lohF9k6TJ7CRg1FL"}, {"statCode": "Z5SFasS2Cir8Sm8p"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'C2WMuokIJ4BKGXaU' \
    --additionalKey 'dFzcoBDP1GbuJaW0' \
    --statCodes '["vm18mQqLFHNN2lWf", "YSr9GwJ2srCDQGgu", "OeN5Kj746ADXjr69"]' \
    --tags '["x7S3HXTHoO13xtiw", "hNcUsNg7hOwQHk6y", "mraSWZrZXtOdaxe5"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'kT5mf1YZX2QpBRkV' \
    --body '[{"inc": 0.4275614083786463, "statCode": "37CAKt40rsayVm9T"}, {"inc": 0.2649656567502364, "statCode": "FplbMgAeR3yk78Pp"}, {"inc": 0.725365098413617, "statCode": "lp6rIEOaC0MQs3KD"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'OK6hrbfG89bZRVqp' \
    --body '[{"inc": 0.6364416529041022, "statCode": "RVJOkvR9Xya7U8vg"}, {"inc": 0.6472967539455429, "statCode": "17sZqmxfIuaxe7HW"}, {"inc": 0.24440101716367157, "statCode": "q50kMsRrwe1Cc7Hl"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'QOmYFvDwmLOifCG6' \
    --body '[{"statCode": "PKHe7qvlujIwieMb"}, {"statCode": "S0jMg1s9viPTJLT6"}, {"statCode": "nqNQwoNQd3BxtGAI"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'HzL8ikn0eebsroIh' \
    --userId 'y9vqMXNJ8vs6a4cw' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '8gjOD1fGQ4bIuZ1b' \
    --userId 'KmSB0T4Vnx6pHbuH' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'DRnJXU8BSaU4NSWe' \
    --userId 'dBwuBF0Bll7XORF2' \
    --body '{"inc": 0.17562868889445193}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'q7urCHebk9iClrQ8' \
    --userId 'r5beB527KaiiDrwJ' \
    --body '{"inc": 0.6806303029025275}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '1z5Dw2ub2Ws8WQyB' \
    --userId 'DeflkujJ9RFehsKM' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"RhjUFFZtGckXPaga": {}, "1iwiRMxQROTD9ZJb": {}, "3f3eWj4K92EVwg1O": {}}, "additionalKey": "5JaIZLJkKuXzNqax", "statCode": "iOLnnyizwgSY16sH", "updateStrategy": "INCREMENT", "userId": "iwgrCS2s7F2uaDLq", "value": 0.3051333663514729}, {"additionalData": {"55z3yH2NI0Ae3XwS": {}, "QaDmUVWhzL0BatHD": {}, "gSr9nYU1Q8okV9dz": {}}, "additionalKey": "wqEMLxd0XhUfLUya", "statCode": "cPRhcuPyJIqBuo2d", "updateStrategy": "MIN", "userId": "7AxKuPeeUtQYtUHS", "value": 0.14647941278191856}, {"additionalData": {"kZxkyiRv14hyMPZX": {}, "w4sl0N1BVnonrjOQ": {}, "KL2UYsMbEpwvErv3": {}}, "additionalKey": "ACVrvr1tqFHR7Ofd", "statCode": "NBKtlXdrX5fA3Gfc", "updateStrategy": "INCREMENT", "userId": "flCFrKxI2rAm5b7S", "value": 0.7890218369313655}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'yl3qh4XaCxppxcOR' \
    --statCode 'C0fieu6TYG01jN9y' \
    --userIds '["QmQ6K9o8ACOgdyhe", "6AkperzwQq7lrNJg", "pmACKcG4zmTf8JjB"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2G40jlVQddM5QMHh' \
    --additionalKey 'PSetj4VeMzHdCzEk' \
    --statCodes '["GGMJibi0kV4yl9wH", "Yl9zU1HvEvJJ10XD", "shxvPYwGqdYSxBSB"]' \
    --tags '["NA7vegb2vXYDZXgm", "ATw7Y9GkuySJlGs6", "0FbMx8l7rGtTyrUu"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '4RNSGyeFJp5NE9tl' \
    --additionalKey 'g0W1ueUvrebgguD6' \
    --body '[{"additionalData": {"FeySnGOUbNdRAN0M": {}, "WzNnEF9rywipmrHJ": {}, "LcDCfjxEmlfjhyVz": {}}, "statCode": "HC5nUpaanCee1yiD", "updateStrategy": "OVERRIDE", "value": 0.3908191130506933}, {"additionalData": {"yvioTiPuUGhsLt1v": {}, "7mLFhfafmsqUSb2d": {}, "UAQEfgg1Nmvmy61D": {}}, "statCode": "qi8WD6jMhVcOMA1L", "updateStrategy": "MIN", "value": 0.866903482073623}, {"additionalData": {"TY7hwRisxbNNh4cR": {}, "Fiiej7BEAcptKP15": {}, "lxYir9rMPGeqtlmM": {}}, "statCode": "eSRXSxVUyZS1gUxC", "updateStrategy": "MIN", "value": 0.9801283929440093}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '5RH4UwLkhNR4yzNA' \
    --additionalKey 'bGwEDtF0XXeBENLn' \
    --body '{"statCodes": ["9ORqO09GUhnQ7eoW", "x0OQMKuaRJQaJNIv", "39TelxipAjKYfz4A"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'SHTY3ao1nSzPH8tW' \
    --additionalKey 'KvnhL69a8n5rjY3z' \
    --body '[{"additionalData": {"t3Hj273ONwXUPSdD": {}, "XwDC840VnftD5BwB": {}, "6b7NTvF468pOmvD3": {}}, "statCode": "XBcrNpyJBw2Ozj5a"}, {"additionalData": {"PBV1YFLtn9ZokUzk": {}, "KtNJie661u3pNeM0": {}, "FzQsljODDSJPVeRF": {}}, "statCode": "lmZznuUQTwBxTQqq"}, {"additionalData": {"t0rBsYrPA5wABD5z": {}, "bL77hlvGuPNMqANL": {}, "3nii1WKsgr2ycTZP": {}}, "statCode": "Ngk9NB4jKjyWNUBB"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'iFniFL3RTYuMIlQF' \
    --userId 'Ex2K2sNJL4XtHVi4' \
    --additionalKey 'OaKtk8081Ckp9KZF' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'w7mje4dTVXKeYbON' \
    --userId 'sLqzHQgjcR0G5eas' \
    --additionalKey 'KtMEvIhgqC67O9jr' \
    --body '{"additionalData": {"ekQMF5NXZRx3mWPH": {}, "Ia1tOX4enLKg9X9x": {}, "PBHBYTKNqLgut26i": {}}, "updateStrategy": "INCREMENT", "value": 0.9310503645333559}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Vcg1KZ4UyoUslZ8K": {}, "P2ApAOZtK3JVuv3q": {}, "In5zyImTekA0DZ16": {}}, "additionalKey": "DU6Z4jo4ttvdn210", "statCode": "DH99Jv3IN9qrBuMx", "updateStrategy": "MIN", "userId": "qj3711CHFpNwjLnS", "value": 0.5598095006301522}, {"additionalData": {"N3NfhQe4svLDisOl": {}, "JX3NWdxlaR0LGkBG": {}, "c4A6gONlFL83x6bE": {}}, "additionalKey": "n5BxNTcLcrvXFaWl", "statCode": "pi7hDZxImmqH7Bdu", "updateStrategy": "MAX", "userId": "50SkVXqBuAnVYli8", "value": 0.02684006468504796}, {"additionalData": {"ygZxypIaLR0rtTpY": {}, "5RMfiWV94T7wExak": {}, "GbvHJac8RRCbzKbL": {}}, "additionalKey": "r6XfEapxFk61xMqG", "statCode": "Bpc19bhClcmfW34b", "updateStrategy": "OVERRIDE", "userId": "FdplPpiqgQNQYQDy", "value": 0.659897104778194}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'n4tmcclLN5oPaPC6' \
    --additionalKey 'kqIPRazmBNyD260t' \
    --statCodes '["5GweoO8Nu8Di7ktc", "5OZaiaXSjYJ0WP2c", "crCG0dvIAHXZUuEn"]' \
    --tags '["e2I8lIeHGQjoshcA", "MDqvJhgBp5fvh2e1", "WZg3SjzfE4egZKLP"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'unet548NLE3cbeSv' \
    --additionalKey 'L5JpNDU4p4BO0qJr' \
    --body '[{"additionalData": {"jV9DcdT1IR0TA2Nm": {}, "kJVaErnKqRtn87wQ": {}, "kzhS3mxOJah2BGF6": {}}, "statCode": "JEG47ZVri6vFr2ay", "updateStrategy": "MAX", "value": 0.7632027963474926}, {"additionalData": {"gWmqJYwp1jcUdnux": {}, "G9zHLuNNz7rv9B7q": {}, "kXhowVXPG0BDPSNF": {}}, "statCode": "A1BJbIjK5FC7623I", "updateStrategy": "OVERRIDE", "value": 0.5273813648236045}, {"additionalData": {"U3Hqp24kLld6oGQW": {}, "bq4mK42lNb6qjpyZ": {}, "kTlthEId3uNkdKqw": {}}, "statCode": "p9ojWOWvlHa5v4Uc", "updateStrategy": "MAX", "value": 0.31170304714180075}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '3xHc6GU9F9tkncpx' \
    --userId 'JOA5mcOCZ7zCg6yv' \
    --additionalKey 'UFThqonNmBu1rYOF' \
    --body '{"additionalData": {"WlzdYjuKydDQQZPC": {}, "LHqCSDOrj5SGYbIj": {}, "EsbwfzqlrbukaFdk": {}}, "updateStrategy": "MAX", "value": 0.3808797723660461}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE