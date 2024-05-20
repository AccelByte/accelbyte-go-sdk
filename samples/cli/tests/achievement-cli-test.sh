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
echo "1..28"

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

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '31' \
    --offset '27' \
    --sortBy 'createdAt' \
    --tags '["cnsDs83Y2GjIc8oS", "IFJstr9Ty21SYrwK", "AW9Ga1QdA13VTAz2"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "Jzu2OBbdihBw4Ua7", "customAttributes": {"sn1ukfAHs22UP70w": {}, "R0uTmLDgrNfcxkeR": {}, "4LMqHweDspH7nnGN": {}}, "defaultLanguage": "ri596j8iAPMuRQQD", "description": {"RumYbN6TujCY9rIi": "bDTAoEYrIbPobvBa", "otvlDSeQDIpiEwOz": "8GvNfajHjeC30maC", "wxpumonej7E9iE1v": "Sbv31yukoGDeeZfJ"}, "global": true, "goalValue": 0.6638100292829888, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "gSo8g3C2Lh1TokKm", "url": "LnaWgVTNEbEQsT5H"}, {"slug": "QmLyuqibhln9P3Yg", "url": "4DUJ2aGmzPjHRNz5"}, {"slug": "9e3FhW1KntoJuNTI", "url": "ORA2JKlYE5GDKZTL"}], "name": {"cQPOzQblFX0es6EN": "zLT7EjhUAI88b4aC", "3OthuPEipRC3IKZz": "pIFmTGoLdik7hWEe", "3QJy8kD2okZZsBrT": "R8GkOj1Ff0GkyaFL"}, "statCode": "BAExSxh2c4LdOdcA", "tags": ["XvIKmtUVrQ71c6LE", "fmdAhd7QZ5T6UDea", "jl1NJopfHuxLBkfl"], "unlockedIcons": [{"slug": "B7tOw50BFXzbNUE4", "url": "w1B6mK7DG6K9uTMn"}, {"slug": "URNYpLUjRNFsbCp1", "url": "COHcSlSXAR3v1l56"}, {"slug": "UV41aGUT2aya4Iud", "url": "4iZxtTVg46GbrFgo"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["QGZT9aZNgwonywkj", "GtoCA7qG84syKWvc", "G5OPGkjgwGFD59PO"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'Y0JOdVCLSurxLkNU' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'pyIxGCUSA1HNE4kW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'kcpXKNed4WPgazEZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2qMl17vLxMK2g9A3": {}, "0j1BAvf8W4yHnaVv": {}, "mc0m1SxsUJrXzX3B": {}}, "defaultLanguage": "3I8na5Ml4kTUj1wM", "description": {"oux1Loxyo4Img33q": "htOe4yYTeGqZi3wk", "MuRCF3kUDbTOhdUC": "Kg4YcCGTMlXgWwOt", "ezsu3uJ7gS61iv4q": "MkKYoSNGYoxD8hFp"}, "global": true, "goalValue": 0.2766810612728825, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "oB7AgYlW31EP2HEH", "url": "yWTTq3v1C5pip1re"}, {"slug": "Yk2vHcvFXLqVZNf5", "url": "Yt3DXctl5R3X5rNv"}, {"slug": "o82bVJKMrcsEHPv2", "url": "yadNw0Y3XWStOI6H"}], "name": {"fLJ7t6vHFxWTFMLC": "Mwyp7MSxBYZdg9K7", "8I3pl4LoZ7CIszk4": "5HWwZ2ncUDAtINqI", "chnZCMjPR2CLFMh3": "ENwhc4gH9X1vDXsk"}, "statCode": "io8Mz2vLLuJ4ePVW", "tags": ["uMBbydo25libDBtd", "KQHaJTfleTTz9Dzo", "tCVrZiLnk5KinK1J"], "unlockedIcons": [{"slug": "FuFgTLNskwbS7yMK", "url": "vHjE7fCiqsehvjUs"}, {"slug": "qY8rf98XTXnvCQei", "url": "h3J4cGnEjYPBpt0t"}, {"slug": "qz8YychfKHivslVX", "url": "ZDLXU0e7P2wbPMUz"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '4zdbzlMFPL2FyvJR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '2AEURR4rk40VTr6F' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 98}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xYm7amAVTHO0L8Yf' \
    --limit '67' \
    --offset '50' \
    --sortBy 'zK26s7LZYUflePaz' \
    --status 'KPzmXb5BRs4kK6oj' \
    --tags '["2aK6PAocszrwEPr5", "hfS9sYzoOWHGndun", "o0osYVJE6pXRrbi9"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'W6xxcXZ7XHET6vPs' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '45' \
    --sortBy '47RpE0FUtYjW0NVP' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'TcFPGPRwKQ2nhZPH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "MnfzVYcHlaoeaA4u", "eventData": {"eventName": "6ioFJIEux1XOiVTt", "properties": {"L6T1O6DhaXbG9QD0": {}, "mFYFUeVEhI4PDnzK": {}, "japC66n3rprTyABI": {}}}, "eventId": "pboDEUaSxDIDKKF5", "version": "HLJqVXKVdSIYHtVw"}, {"dateTime": "iOy1s9heNTt1ZSan", "eventData": {"eventName": "5Tud9Vp5V8WWMo7a", "properties": {"I8Dlr9HrA0I9Oh9l": {}, "L0441IkciKef0iqU": {}, "23qkgi0C0RJUoFXc": {}}}, "eventId": "HBq8rRtA7MNRhd2o", "version": "wxyyXzrLdaRXoQ7U"}, {"dateTime": "ttnhcLUh5xAORN8Q", "eventData": {"eventName": "uwN5CFHRtEkyzQYL", "properties": {"i7g8KPQ25Vn3hZmM": {}, "WjZQkV8gWw6Zvfxe": {}, "e5GfBieVQ6w7jPqb": {}}}, "eventId": "DnteIW6DnocCLNkR", "version": "A9HnbTUTNIdrrfwd"}], "thirdPartyUserId": "NTG23bjZkugBzLpt", "userId": "tHbbkvVjYWmqTse5"}, {"events": [{"dateTime": "xROt91cnPNd4qzqB", "eventData": {"eventName": "k3HJP6kKQn16dFfF", "properties": {"JYh2T7R7afVFSv25": {}, "9AofoQ7TiGWRxXUN": {}, "73arb9LnZBy53ZRf": {}}}, "eventId": "1XecjrG7UjB99vMh", "version": "pRP4fwZIyVcWsFPU"}, {"dateTime": "rnQg5LQFq4IFor7k", "eventData": {"eventName": "eZiKmIWKFWHdGSrI", "properties": {"k0f3KUgfroDvOKvP": {}, "x9hmwOWmqmHZjl0E": {}, "pzfJsa8PReOvHuE9": {}}}, "eventId": "xT6viGATuDttHclj", "version": "6NsxT6UukZEwRDZd"}, {"dateTime": "FJcvQjWy8mPbH2KM", "eventData": {"eventName": "n1h60aPpkiotdTBG", "properties": {"Kr8Rp8yDbhgZiU06": {}, "QfEkfHHDs2UE92Ji": {}, "CF0ZwACcR0SmLIuf": {}}}, "eventId": "vuuTI2ujPAOXz7HU", "version": "VOpSmWF5LfVdDYRj"}], "thirdPartyUserId": "DdhJGkehQYy2sXip", "userId": "l2BQPotbdJ1TXHyu"}, {"events": [{"dateTime": "6IcYzF2wDE46Mu9W", "eventData": {"eventName": "nCAFZmTZxtVnHXWj", "properties": {"EiYjpLpKzzMkNCtq": {}, "FcvE6EOnBPeF2JQJ": {}, "FNzFCCoupdNLxg9w": {}}}, "eventId": "FVGxs54wDp7sARVW", "version": "FmSB3MUSdQYMzO9x"}, {"dateTime": "rHnBnFY00ZP9f8V8", "eventData": {"eventName": "4E9OybrJgiCeULlg", "properties": {"N30fTC7nLbGVSkQz": {}, "qB1Z9nHdlBAuYyvW": {}, "Ru4W5rhbTPfkn5RU": {}}}, "eventId": "mxtdXLRbk9mwjCu1", "version": "VGWYuAFVImtPyofd"}, {"dateTime": "IRnFxqrvYE7BWxVk", "eventData": {"eventName": "Rou2JY75ykcSJiop", "properties": {"vRiVASEwEQe6e9EV": {}, "HiBuiHoKI4BSuZZK": {}, "Pcg85M1uoajqaY2E": {}}}, "eventId": "R0TVDdazAGAiPV3p", "version": "1ZAnM7MTcpBuqvYu"}], "thirdPartyUserId": "kGFzp4iUlMKVuyPn", "userId": "xBx8E8fjTtjEnMYM"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'ShhRDUyQVYslIGm6' \
    --offset '89' \
    --sortBy 'I2ssYejscRrwdHqQ' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '8s8EWTcnZKvoXBJH' \
    --limit '30' \
    --offset '92' \
    --preferUnlocked 'true' \
    --sortBy '1XxkWD2qDUgdZYVv' \
    --tags '["H9bS3LFpLVJS2Wio", "KLS0lCe0XgirE2p1", "pFVdiIo1emmGczdw"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '1CC8nmlJKnbeudN2' \
    --namespace $AB_NAMESPACE \
    --userId '98u3LGuvCeZc3lUl' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'ZsqDxZCj2SHiPpKA' \
    --namespace $AB_NAMESPACE \
    --userId 'mhK3d77ySJfpchZU' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7KUi3GACbAt7AMQ4' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'HQGyd8Y9VjmOYUuF' \
    --achievementCodes 'zbFbYrWCSi2JAxZo' \
    --limit '0' \
    --offset '49' \
    --sortBy 'lVtC5dMRt8VS0GkR' \
    --tags '["5DIWg9elE7T02FjY", "c5w7w2oZlWdZyY7z", "Mu9h2vNiF1eEe3LO"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '78' \
    --offset '9' \
    --sortBy 'updatedAt:desc' \
    --tags '["uX0K3VwQD06dcrdD", "WPPMoGkxRsbewgrE", "UrejoITpPDsYnkGm"]' \
    --language 'q8HvaGYX03P5Ve8V' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'BE63VOSXmvTrqgPA' \
    --namespace $AB_NAMESPACE \
    --language 'VIuR4Zqu0OGSfO7s' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'SoR9HUVsKAbByzev' \
    --limit '89' \
    --offset '40' \
    --sortBy 'Qvn9jSJaaKPzopvi' \
    --status 'FJ0tmApjFs4Wa7OQ' \
    --tags '["ZSrkzJOBjsrgKM4b", "HUX6iILEqURcesBN", "AbNSy4gEJvnKecbt"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'cbgftKMR85A5lbC4' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '46' \
    --sortBy 'JZIbEnZC3EKdZnvP' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'QD2kMEpPhC5SPatp' \
    --offset '81' \
    --sortBy 'N1GD6mRFyCfvZ3qu' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QB4K6XB35q5elD9w' \
    --limit '78' \
    --offset '62' \
    --preferUnlocked 'true' \
    --sortBy '6cp5d1c3xB1jZzWP' \
    --tags '["ssbiWLZRtRCCMKyI", "hf9S7JE1GbSSgjw7", "0lnWIGJFWPJAwMbu"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'bhUo7zb4zcC0OX2C' \
    --namespace $AB_NAMESPACE \
    --userId 'bIul8Qqn9b2W3STD' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'vvsXq504fEaTwThf' \
    --achievementCodes 'TDq5IcmcAgtDaDkP' \
    --limit '21' \
    --offset '8' \
    --sortBy 'E0wmDZoGq9rzx2Mo' \
    --tags '["N1XFW0UcrCIhrojT", "cro2AANH36L8eagN", "hgfGKZavkLYuLnNE"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'RIesapeuE11beM75' \
    --namespace $AB_NAMESPACE \
    --userId 'sNpHaBmPCJPUWAMx' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE