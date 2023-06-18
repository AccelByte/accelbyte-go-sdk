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
echo "1..95"

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
    --body '{"maxSlotSize": 84, "maxSlots": 87}' \
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
    --userId '3dT5ibQ3E2wSsQsk' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'rSZo8Gqy00FjbPbR' \
    --body '{"maxSlotSize": 72, "maxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'udmgoF8MuxUkxYOB' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'J6txCeW6I4CGAP6K' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '1yVl6KttlsjxG0gk' \
    --userId 'Z4McztGWCDxD0g8G' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'VDhAN3wtiIrupZys' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'XQplAAJkUKjPvUOA' \
    --userId 'yv5GVMbJWAAOrHLw' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["SK3xooiIOof6sBpS", "uxMBNiavecMq0PlE", "ijAWAXjfUF8bY4LH"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ulErNDEL6lHTKaaE' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'REKwntjfB4dHEtMU' \
    --body '{"achievements": ["zIIS7npYj5q5kMZM", "2gHv0aGRjLGSrSXB", "X3inYhdnnc6vZxhc"], "attributes": {"qQ0ioF1qK8PpXCt9": "Q8A9lcapYjGJrTUx", "Je4QEiLAUYBGADo0": "Q5n44Zf2HvEIK9ke", "2lUKVdxR9oiY27tf": "fRrJE4of0W2CYQAE"}, "avatarUrl": "IBDW1hrjgiM4M3mh", "inventories": ["MAXHkdlMGCKeb3vX", "FczizOjAmq1rl7AW", "PXnaqbZpKnDH1ry7"], "label": "Fajyt2DdFw5SpPXq", "profileName": "KcwvrgydjyDp7vTB", "statistics": ["NDm0iFJxfQpClJHi", "SBlP0w14mQh0W8Eb", "VRmF4aqpwLJNqC28"], "tags": ["hGRqROeHUA0SM1mD", "nRC450RMc1b630Mz", "rkmZfB9TtAu8zZ3J"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '3RUDHEE0qT8PE45F' \
    --userId 'pTrwNpV6pwBKsW8m' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'kg3CTVFNiAYzZh0S' \
    --userId 'iTm00zz5jc5zMks9' \
    --body '{"achievements": ["OZshkR3kyJbkPsCk", "8TE0F30qjcy1fuH1", "OipxHf4gKC1Jhxb2"], "attributes": {"84lzS6yy9grvJOJZ": "uauh6ls9ACnAqXhn", "Gjk9nkSVrJGv9KdA": "tpER6H7ETYoTnsa2", "zNFW9Jm1yQAqa3HF": "NTo47OPiCd443mcy"}, "avatarUrl": "m6kSps4OqGUPVqw1", "inventories": ["KS29QvdTPl9D1M59", "wLCp5ilMFXCqEmuk", "V1kj255fCpjfELgK"], "label": "l7oISW1Q3KSBP3ui", "profileName": "tx2AGeRtHH0JslsE", "statistics": ["0jH5fn0jDj9Fpbbb", "rFuXW0HkqFvzxohq", "Ppw6Bxwawe2IuxAw"], "tags": ["r71d32JjgGJeg7tD", "43ELI8TgqRD4o43T", "vVp4EJ5eWDaYsFh4"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gHAGPy3gyGZvsZ2F' \
    --userId 'A8hG5jRb46f2ZlvR' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'blzElcZ4Abseg3VL' \
    --namespace $AB_NAMESPACE \
    --profileId '6qSkNj1GvZF4D8He' \
    --userId 'GDA3ZaPHEcmPfV8c' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'Z1ebHkTISCd0ak7X' \
    --namespace $AB_NAMESPACE \
    --profileId '1ZJzQPpfYjYE4MD9' \
    --userId 'e2ljprHcX7ZScafm' \
    --body '{"name": "hZZcwC7zyw17yvP6", "value": "wOffnl1droTROi5y"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'EAFzo3idCWSaEGzc' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'uyG6q6ZRPUlLPbt0' \
    --label 'CyMmtssPLHzSbvSd' \
    --tags '["KA0A0d2XX3gOsrCR", "SLCkupuHwBfzPe7M", "wWKwzRezPIJSWwal"]' \
    --checksum '2V6PcAlds83nn2CH' \
    --customAttribute 'VBJqJL1uyyVy2mpJ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'd3DkLTCKjLRr63JV' \
    --userId 'iyOJswge9ufhI0Ot' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'cQgwmxVc47Ksga4W' \
    --userId '593Lk7m1s6jXJA4S' \
    --label 'qk5PFI0yOWvf9npO' \
    --tags '["LEPAyeNl8aiJK62S", "SRs11al8tegyjxy2", "TpKWiRLpcPHwNYd4"]' \
    --checksum 'G2weAFvtxKJUpl8V' \
    --customAttribute 'x4GzEzflIPMUBbK3' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'LpjwZ3wgaVBBITfR' \
    --userId 't6vV6JkFwEjvknGg' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'BXGpP3CAAo8hRqA3' \
    --userId 'bEXNS8kcGVG1bsGk' \
    --body '{"customAttribute": "oRvrvA6HCvV5kVvN", "label": "3T014pRwyZ74TutA", "tags": ["BWtm3DRAwpsyiM9C", "w1LUOqtZmlfIFfnJ", "EwDA1tRoXTpVaWFO"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '86' \
    --statCodes 'meaiD8n30sbleRqp' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'XYmgSy08qd0HlbOR' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '22' \
    --name 'HuDE8vRw0GNxTCls' \
    --offset '22' \
    --sortBy 'WbUmkVGN8LYgRyPr' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "ERshOn4mk9OWnra9", "end": "1991-10-07T00:00:00Z", "name": "Wj7htZJneBhJTOdk", "resetDate": 57, "resetDay": 56, "resetMonth": 23, "resetTime": "BVlzkIZSEue3lcmD", "seasonPeriod": 97, "start": "1996-12-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["P9TlmEBzXmmiaJaF", "bai6fpaldE7ktvSN", "ZmQvCuW2pAMsZqQU"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'Hgk0aP908XYJU4Lj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'QnvLNzqP02UoFFxl' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "M3ggmq3Erfzw3lxp", "end": "1975-01-07T00:00:00Z", "name": "jf9cx0Mjjyj0xPxY", "resetDate": 61, "resetDay": 5, "resetMonth": 99, "resetTime": "FUb3Xq3wTM1Wx1EX", "seasonPeriod": 83, "start": "1981-03-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'koJ3pQKvYrCueUIm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'ZcJQObtK4lESZmdN' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["SoRP9rnz7NfjnXDM", "Ko1H1MT5aLkCB9Lj", "Nle1UlBaK30Gr55W"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'R3lDBpgHsdl6Gv2O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'sRTpvKKoOuTWwHNx' \
    --userIds '5U7PA02bAqsaPy10' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.47960107717677614, "statCode": "tVphKL3DBviAiwOU", "userId": "3xZwoenLxYY4sQzf"}, {"inc": 0.7076563347054552, "statCode": "N6DMqJ1jEvuzPxPq", "userId": "Uu1F6I0LP5DZjzCE"}, {"inc": 0.7707158216241307, "statCode": "o8qp6gbH91iPULWl", "userId": "IrrKnWL7dXa1Ts8m"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.055036216858790676, "statCode": "UcutFDx87T1IeEqp", "userId": "hY4mtl5zXQTt43VU"}, {"inc": 0.6782103464608503, "statCode": "j2J3CoQAB6wD81pp", "userId": "JpE6X6ljpBHrDpDQ"}, {"inc": 0.6141075176803608, "statCode": "uIXfJKmkrmsi2YxP", "userId": "j9ztNuonPEZiOkHO"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'I9PFWFvgRW76fauY' \
    --userIds '["YwpF7MNVx445IJ5w", "JEuhgUnjp2kBT0JJ", "DxUCtJJtH3bJSVf3"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Y3WZkUY8omDibtZq", "userId": "LbYXdqimrpdPY7Q9"}, {"statCode": "7MTmGw2el81JcxOT", "userId": "n6lhdC0NU2hgfdYE"}, {"statCode": "HepPDx7hUlwrNOTS", "userId": "0xBOWgxWG0vyQ0pb"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'K2hstXwDcz6UXYjs' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '1' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["0OzBwWNwp6LCGQjZ", "flABsaRnp93W8l7R", "VOuONBBEZEebc7iU"], "defaultValue": 0.8060195856938507, "description": "90R4YdvpOFrDUwaL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.7256342736357322, "minimum": 0.3284888794570011, "name": "Afft2VZtv5mJGZWl", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ijEio9v5JPoagxjO", "tags": ["8gf5yItXCdbxfeaB", "RYSdb271DlPyTChe", "mLOGBe4RBtAgDFm8"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '50' \
    --offset '8' \
    --keyword 'PvIRpAZM5iR8LSmU' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HfMtCMaaRfvXPC8S' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TgWTvwagD1t18vxZ' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pAjy3ax64tyXdRJ6' \
    --body '{"cycleIds": ["pgOj70DkAjD08oqM", "7KuYk7Td2h2NNJuP", "dhUzwbnAVz49LPiG"], "defaultValue": 0.24557684162823, "description": "gwHnZWzCWbVH018n", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "yEnrMuZCTQJrrDUL", "tags": ["5jbmCjBxkm5MNpD5", "MtjWq8DGHhLi1OMK", "FyoGk6wJvCNTCV0f"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kY2UMRrbaZtQwHZv' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'x33L5K94sjxofPcb' \
    --namespace $AB_NAMESPACE \
    --userId 'i9ilYGm8Srtlnuk6' \
    --isPublic 'false' \
    --limit '46' \
    --offset '97' \
    --sortBy 'gbM3BO5sHDRkbhPK' \
    --statCodes 'TYa7y2EJf5lxEdWI' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2rkah6GY8jljXNG0' \
    --isPublic 'false' \
    --limit '100' \
    --offset '77' \
    --sortBy '04zWCzTXOM5tXVng' \
    --statCodes 'qa1xx85c4Js3CPy2' \
    --tags '18dWN4L1AAuh9iNu' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9hDqdR4rvvaEcvLt' \
    --body '[{"statCode": "FFqQ6tcP8mmJPwQI"}, {"statCode": "ukT2HNMMkG8WCvKn"}, {"statCode": "0gKNW09MGCCwSyB4"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'OwZ44rs8TJra3Paa' \
    --body '[{"inc": 0.7064739740646496, "statCode": "6wlypvLVaE5NlqcZ"}, {"inc": 0.5036975764036752, "statCode": "dnJSSf7j3dqBvU32"}, {"inc": 0.9118463345295628, "statCode": "J7RZNhYLTVHydbJg"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'TWgk7gXMkExJIXUv' \
    --body '[{"inc": 0.9022256860624505, "statCode": "PcH5A4ZDHBN4JkrP"}, {"inc": 0.20548623694713475, "statCode": "EUyI1LE81PT6pV6E"}, {"inc": 0.2368591530500349, "statCode": "nizJTBhv4sxzs03P"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'VQ7CBYnowemf2gGs' \
    --body '[{"statCode": "OtxN7JZ64FaQe4ob"}, {"statCode": "f4FPiCDl2qXE7GQC"}, {"statCode": "DEBuqmeqhUVQ4Lld"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '3ZdvTlr34fu8t6VH' \
    --userId 'AzYV2mTL05KnfTId' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QfjtEpgjk4gkORB2' \
    --userId '6VioucySHO3h2YEQ' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Qlx5NSjNF6wVPhfH' \
    --userId 'PQ3euPKQFECxBqfr' \
    --body '{"inc": 0.12018604826662682}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ZvBVRq0JN8AOVh3y' \
    --userId 'Hwj9sRAenfyXcTLM' \
    --additionalKey 'S7V3WvHSsZmlQswZ' \
    --body '{"additionalData": {"7JArWEv0NV4S5Wlg": {}, "X0qvfEJ8OrbjqcpQ": {}, "p5ueyKJsk1YlMmDx": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '56' \
    --statCodes 'PSqATTe4D3wfvMdB' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NW5fE7pQ3awA7fVb' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '85' \
    --name 'EZaTx2ICsYHzMavL' \
    --offset '3' \
    --sortBy 'c5Gxx9jENcVqMbY6' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["YmHjVcMEdz7o7AtJ", "sRx0cGOiNkxWNQQz", "WozTTwFWNBt4vZMd"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'EXqcm9LmlVFPgZ7l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QWgl3C3ATJyw1W5x' \
    --userIds 'QSMAePLKLngwcxJj' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10894256845788741, "statCode": "wkwgbvM7mt6JMNE8", "userId": "QsPjC1dGipzdgYu0"}, {"inc": 0.8453656686691898, "statCode": "SoraIF6MN1eiRg7P", "userId": "sZuWZZlZbDY2lmsF"}, {"inc": 0.963675112323313, "statCode": "yPJs8C9Nph468BOg", "userId": "llIbDyrlfd3ragRn"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7531864608289975, "statCode": "JHvP9yUZ6BX92cYV", "userId": "7PM2BhbnOqX3FJb6"}, {"inc": 0.9344481327167786, "statCode": "YOxrFJKIYTTnp3Dg", "userId": "3AHTMikjkmLlxqlF"}, {"inc": 0.6290330310941978, "statCode": "DFO9wE7FOi2lvmqA", "userId": "iVf7yE4LygjgKJLH"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "G2GhHnYFD2G8u8Ld", "userId": "dPyqhzBy5ektRCn7"}, {"statCode": "6gzaGEwZRnDMB2Qx", "userId": "yrsKgX21ofmAiUyV"}, {"statCode": "QNcMITfbmjiTKyYJ", "userId": "Dzx5TJWAJtUDos9B"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Vk69ZMpzpgoZnnIo", "YCbta23tI8pPT3yH", "SlXm63kT5ivSxWbO"], "defaultValue": 0.10254544200199289, "description": "nhXE5Mc6X2eHA9FI", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.1071308996567617, "minimum": 0.9707267738311369, "name": "0bc4ZXagIaFQvWBR", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "AhWfT2txocZ6F4d9", "tags": ["ArafqLNPUE90q4wm", "l6nazeQdrrnMdC1K", "6LBHqM5wOjnqIt8h"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'gQClUGpYx2BQZVME' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '59' \
    --sortBy 'r9fzRfzIWvk55vaB' \
    --statCodes '["BFmi6UXHEKXMKone", "6cS3RDbeofpfJMRi", "ivIsgx6cPR5Vb2LR"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '10' \
    --sortBy '18P5gYgppDMbavAS' \
    --statCodes '["Q4hAeplqNSoj6FKX", "ZN9Brc5DNHnqBtwN", "58PQvvFSJQARKq5g"]' \
    --tags '["E8E8uG4qdIaPccDl", "wEZJE14h4Q852fFB", "0f5jlPWdq01Zf7yz"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'opgNIaME8GmohWl1' \
    --statCodes '["csGIk3usWPPSKuPH", "eWetxwftUZWNVqOu", "lEpzJLaw0os1eJSw"]' \
    --tags '["3Uw3Mv6JknSlrUqL", "igok40spXygI2sCT", "ADcog2gfJ2aWDNfV"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '2K3CNw8yGpRKVMy9' \
    --namespace $AB_NAMESPACE \
    --userId 'unj5nkvm25nYkKm0' \
    --limit '87' \
    --offset '52' \
    --sortBy 'cXKpoaThixWzeFPj' \
    --statCodes 'YzAxIlqMkd2KkN8u' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3V4XFCeGdd9BgboP' \
    --limit '40' \
    --offset '45' \
    --sortBy 'i9voZUR0VxPhIa8l' \
    --statCodes 'briAWuD7Dac8QFZp' \
    --tags 'rq1DWt3vN5dBWlv8' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'h6nWCgcITK7zUk5B' \
    --body '[{"statCode": "MYIwG86ot4kP3NVy"}, {"statCode": "ctoVcDx2usnufGHH"}, {"statCode": "WFbeK23wLRWd3efe"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'cKBPQWx9FGxTIWMc' \
    --additionalKey 'BIy6upbQL3iX5RTk' \
    --statCodes '["lCuBQAys7h5gUaQ2", "F3K6ARX2LEFawE8t", "MNhqIdVz7HQlcUSd"]' \
    --tags '["QvW6cTADHk4DDLLN", "eszUk9P1PRCg5VgV", "o53XfuTg97Ibew7b"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'gslQDgdzr11vm1Uo' \
    --body '[{"inc": 0.8637930939805797, "statCode": "BMmw57DteqOvX6g0"}, {"inc": 0.9543463208158827, "statCode": "YX3QYcUZqY8hpwhx"}, {"inc": 0.06464271733290716, "statCode": "VYNoVQFnMRrFu3Q7"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'eC3AnMnIh2Pv70eu' \
    --body '[{"inc": 0.2774757046414169, "statCode": "18YpRITHeywFxPJ2"}, {"inc": 0.6107147787431013, "statCode": "KLUsiyhGmWGRnF3Y"}, {"inc": 0.7276981927659895, "statCode": "NBA1ndanvj5P11ex"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'XXXtW3SNavQVPZSy' \
    --body '[{"statCode": "Klgi30m7BIOAzs1U"}, {"statCode": "nrZmaKJ8dBzFQn3S"}, {"statCode": "venogwrTMU2i9H7a"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'yn3cmbfEQILOCS3j' \
    --userId 'cwM9vgKoQgTT6yL0' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'fDGkZ5YO3WOihfx7' \
    --userId 'N7cwFtXXB7OcDydO' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'isimeZ67qdX4VdkZ' \
    --userId 'ozPk1ZB8gNToW65P' \
    --body '{"inc": 0.20711214794526345}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'zreFWlMvUTcnVoFA' \
    --userId '71ZU5GMBkWSxAIlu' \
    --body '{"inc": 0.6356343081116518}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'y0P6jEtMQwMU879U' \
    --userId 'cvdSbYa6RCSErLLy' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"sfT5vp2IvhsSbdD1": {}, "4HH6bpcWaMS4zDuB": {}, "FKgRJy1VXxcM2Ah6": {}}, "additionalKey": "5qlPE8r3G5QEKlrM", "statCode": "drcvOC1ic9o3Hn6A", "updateStrategy": "MAX", "userId": "GyK2LvDyCsCjh2VY", "value": 0.6647352303382146}, {"additionalData": {"R2k6zzntXVkDpWFk": {}, "Ai09OLaJ16BAW4LZ": {}, "4UD9e3WHHhWKk0WY": {}}, "additionalKey": "SpyanHDFZwRF26f1", "statCode": "o1EVJcoXq1Kr2vrf", "updateStrategy": "MAX", "userId": "riqmtQs4uEktAC2D", "value": 0.38602772085329073}, {"additionalData": {"S2Ipn4bWTdWVPTGM": {}, "9qNFv9hgGsbZHazL": {}, "XdfRzIgwe7GBwEVW": {}}, "additionalKey": "klLDlPYWmI1qet38", "statCode": "dKOQ7JUkuF61HnIO", "updateStrategy": "MIN", "userId": "639wPEO83f0FSj0J", "value": 0.5348383419160289}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'mrslbAHHjH45ZYKc' \
    --statCode 'V8H4eKUxlemDJlRG' \
    --userIds '["FXEB2MyRu9Mwy0RE", "k6cItLGmsvipDOMf", "bl9KzBnnV9RDeQYG"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aw1HR1UVE4VAUvMr' \
    --additionalKey 'VtcGedvlzsmQtEX2' \
    --statCodes '["pi6umz8z8ARmKGSS", "tiuJp8jPsL6xqkBw", "r1LZnVfAK6SU3nlE"]' \
    --tags '["wtlz5Wx7iqMenDVP", "Gxk54hzZqrmtxjsW", "xlQnwJlYWvhJRR2A"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Z5ZsS5gUeZRzvt1u' \
    --additionalKey 'F1J9GZtaJdi2qZi2' \
    --body '[{"additionalData": {"JgTqKa5C03VyQlTD": {}, "7B0L1fKKeytftBYu": {}, "Iq48r7pihf2IoDxJ": {}}, "statCode": "dNqdq8To50I9AUkm", "updateStrategy": "MAX", "value": 0.22711896022284228}, {"additionalData": {"3m1A4CPM3Dm9edHB": {}, "RsaZvCrj0sGn6e1k": {}, "ceuJxZbNhDYGyOgp": {}}, "statCode": "YSHxYP86wVY9MHTK", "updateStrategy": "INCREMENT", "value": 0.5456981481554125}, {"additionalData": {"JoiBdBwIrt3UvyNi": {}, "SOUJdfeP6wjjVh69": {}, "8Q0vwtF5TTHaJTNq": {}}, "statCode": "zhuoJAX3uNZy3pRR", "updateStrategy": "OVERRIDE", "value": 0.6279481138239683}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'BVLVrMnvoc7WJuDf' \
    --additionalKey 'SFI4Qiycgs3a2JZw' \
    --body '[{"additionalData": {"7U650QVSjiIoPf3i": {}, "W7rP8smuH4nnBd0d": {}, "9Iv3KjuWNO6fFugr": {}}, "statCode": "Ki6L64T0CvbsnUTK"}, {"additionalData": {"DWOKUSskm5qE8o58": {}, "KSK6Ha6OlDbC4S0l": {}, "s4cTaFURXM2zgCmf": {}}, "statCode": "JnNeT93oRd2cNJLA"}, {"additionalData": {"r5Je5VOjNdosMaj7": {}, "m9QfwtbUmad1mvA9": {}, "WShmjLSFiicJmsOE": {}}, "statCode": "Y206Pc4Gl0fVerww"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'O75LVldDoFGM4Cr6' \
    --userId 'tfBbl2KJVdHHiZEd' \
    --additionalKey 'Q6YaHziuBLSpLtCd' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0S4wVmUsnOoOqvfi' \
    --userId '756pIHF0569OWxFh' \
    --additionalKey '4N38odWJ0legvVpb' \
    --body '{"additionalData": {"JLQJ0P7GzBNVkW9c": {}, "F0o6FBNy9BvvOLPj": {}, "DfaHjgBkzQ49BEzd": {}}, "updateStrategy": "INCREMENT", "value": 0.9419582765129241}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"0OUFhHIWWd1u5eqG": {}, "XGjw0Qihk4MwI2nl": {}, "ap2IT7yAWmJDMkDC": {}}, "additionalKey": "hBvE9j48y8BSQc7f", "statCode": "xdDtn4V0v5NImjwn", "updateStrategy": "MIN", "userId": "zLfffIeW6wA2JlHN", "value": 0.5617317090730853}, {"additionalData": {"C96UNlMbWjbamSGC": {}, "LZ4HnqXkdBS0fzOb": {}, "SIXZTbkrkXpKpKY7": {}}, "additionalKey": "Gy7Sdx5lh12qGwye", "statCode": "nsPZBu9bmFuoo9n2", "updateStrategy": "MAX", "userId": "sdx5bF0g8aXT7B0B", "value": 0.7005902620219159}, {"additionalData": {"7j76fGUv92BiQ3RN": {}, "1xEt7K0JouKADy4U": {}, "ipKfibUqyC1kuSwu": {}}, "additionalKey": "84lv6XahMH950UvK", "statCode": "Z131072lcbx37Dqh", "updateStrategy": "INCREMENT", "userId": "xBWMsnjiWa150ILA", "value": 0.8644398488486993}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'eT2SeDjvC65WLIiR' \
    --additionalKey 'bZwL3osMQ8DZqOUC' \
    --statCodes '["WjGFUNtEk8UnzcBK", "AKDCEk6MhCtFMMhK", "qj7uAGQF56M9ZPRm"]' \
    --tags '["sCu1s6YWxKPmhvQR", "RnGPGAYttj1CSdjM", "jLuXpe6JjjLudAfg"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'IRBsdbxif1H06aos' \
    --additionalKey 'ojIiA5EVWB6b8dJ8' \
    --body '[{"additionalData": {"dgJgTvmmZEAFWPY9": {}, "QCjJEYUSM0y6i4gS": {}, "MaICNoHqy0ZduMeK": {}}, "statCode": "105LdOmPyjrZBCLS", "updateStrategy": "MIN", "value": 0.27719096246580566}, {"additionalData": {"V8O8YRGvf7f1oHgq": {}, "DDCVUVHibdmZyykT": {}, "L8nDk8A67Jf3FPJd": {}}, "statCode": "VUwFxHcwAW0ghtCf", "updateStrategy": "OVERRIDE", "value": 0.5469900940000259}, {"additionalData": {"YOSPTDEDZ0fEbb3a": {}, "aFGEfvEPKEwwYtb2": {}, "2cCKm6FA3LaKzIgj": {}}, "statCode": "Gs0zFYgF0KyRAUuD", "updateStrategy": "MIN", "value": 0.9599774434533951}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AsTAUNuUBlyeaXXV' \
    --userId '0vNJFY0DIzzZ1tRk' \
    --additionalKey 'RxPRqnPsGG7ZDm15' \
    --body '{"additionalData": {"zaSJJL4KOEid4s9r": {}, "Sb3eCJt9FhBlcJv3": {}, "ObI44YWCXiRlwQ5u": {}}, "updateStrategy": "OVERRIDE", "value": 0.1578912580919516}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE