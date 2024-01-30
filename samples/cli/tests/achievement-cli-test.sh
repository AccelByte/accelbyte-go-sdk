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
echo "1..27"

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
    --global 'false' \
    --limit '59' \
    --offset '20' \
    --sortBy 'listOrder:asc' \
    --tags '["B5aDmr8to1uNgip9", "GnlczMpPjvsvupqN", "dxmelwHcsJwbMkxg"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "JvQHpHgDBNt7z99g", "customAttributes": {"RXrwr92joQyhQhxU": {}, "JDF9e2RP6g8ZuoO2": {}, "73NXDSD8lzL4Fz48": {}}, "defaultLanguage": "gUhZMNVFEY5PrYYO", "description": {"f5Y8rMaHwOhpTwaA": "g4Tf35Dmx3G4QEZ2", "x45TD0rcQmGDITF8": "lbKNypJTuCEEYEzk", "7YKeDeyAYvvZxfPs": "gFy5TFz0KPSBe9si"}, "global": false, "goalValue": 0.24842082163225188, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "mBnaLyKHbRVbd5ry", "url": "y0CQgNCPUmrD6dIv"}, {"slug": "0L1yBe43yW9qlZh4", "url": "uz6n9FrU1CfPP6vj"}, {"slug": "kKkvQYtXzOZKgLa9", "url": "qjDYB0iuxidOP9Tt"}], "name": {"9TriSUFrS2Fl4rU6": "NfZOBniu4V4wpdRX", "x8PolGY6AR1vd0ZO": "M6KIUancTH9AenDr", "9hxA2XunleVMYn5R": "90sy6pg2HjEix9bk"}, "statCode": "ddSHLZXePZdlNi0R", "tags": ["P34AeQrSIAwfmI8D", "BAy56jklxUUNZVAv", "MRdoufK4D5vXenBv"], "unlockedIcons": [{"slug": "CyHewSOCK1pEuy6L", "url": "pxV9bPSndqsIAoZb"}, {"slug": "a5j5MI6Dn3PA2iug", "url": "uZrpBcboAw4hBHbJ"}, {"slug": "KauVkfYoKiDNOw0x", "url": "6bE89u1V7wWY3Vgo"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["DNIW1cgPGqK8YbR7", "aDIZ0dVXSiIsc2iV", "utYa0MTqR8WPEqOa"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'kJSoYuyp0viggXkZ' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 's7TWGSynwq7Agx6w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '56d8pRLUj6ZtzvIr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"mv4j4TgExilj94V8": {}, "IYSMgdZDHdV0zD85": {}, "0yuhlkLIzJuAq9Dd": {}}, "defaultLanguage": "U31jvCgLpzHkMlsZ", "description": {"mI8IG8aR7uFlevg8": "X7qih9zg3kjUTSfu", "IeDTb8Jl2GFIDG3H": "EiNOx3sop6P5EMiv", "8bzmarj1qFCWnCpT": "gfdxuhduGlrjh6Op"}, "global": false, "goalValue": 0.7753381152702006, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "bVMw8maGgk2AOTtD", "url": "OEOgVfe56ULcvaLz"}, {"slug": "1D28DqIsmbfdfMBE", "url": "Z8XQPN1zmxhh7JLn"}, {"slug": "nVI1XKfQ4neu7XG2", "url": "TzHfKjxFiWCWkrw6"}], "name": {"2wUIjI7K47Xkvf6u": "kpndAmNewRzyZHPV", "KVd2jzFEeCFDhGFG": "dd7pZsKVe3z4RDLe", "1eIW3EvzLsaBEFih": "ls8u9JeX9vx7SHW1"}, "statCode": "4FrxRgARviJnanwL", "tags": ["RXWMZH9fpSzgROvP", "uWp6posfsOktftjR", "55ZFBVpXHhdGbH5x"], "unlockedIcons": [{"slug": "6DITw8VjCIAAtOGy", "url": "nN10tAfmR35OtpUN"}, {"slug": "ZutWT9tUjYaw6VML", "url": "8WpUsckXPozk1Olj"}, {"slug": "Ca4QpATk2QFjQNjp", "url": "lc7fnD16FW1ugNLx"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '9nSnbJWznXB90wMc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'xRnZSJXuC3lqdBt6' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 60}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Al07mbB9767mXMQY' \
    --limit '60' \
    --offset '50' \
    --sortBy 'IeH5kIX6vabl10jY' \
    --status 'E3fe96bGj5wQ8bkT' \
    --tags '["7KVRzz60G3GdEV0m", "EgWWzVUkDFfRM225", "STWisN3CIwtQTAFI"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '8XgcY8glZ9S2yoMD' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '68' \
    --sortBy 'KlaIlV8K66NT7JUd' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'mi4NJBbOKSPtBZDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name '5q3FUhY65yXfzS0e' \
    --offset '2' \
    --sortBy 'eCOkmQnaWijz5DKt' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6kfuKwrLuQV9INak' \
    --limit '80' \
    --offset '97' \
    --preferUnlocked 'false' \
    --sortBy 'lmpvJTeisBZmmLg0' \
    --tags '["9usxUcEsBrTWjKV7", "Kv2ncCYeF3sIKO0p", "8eNIxyB9J0nR4PiJ"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ArFWscP0NilqlN3z' \
    --namespace $AB_NAMESPACE \
    --userId '16yhX3dClv0P81qx' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'HBrkJCeJRYGmEzjC' \
    --namespace $AB_NAMESPACE \
    --userId 'YAhXPPzGbY1pWQDX' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'yqr6aumlFZkvb2uM' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'LRc94DiCJgHnz9NN' \
    --achievementCodes 'aDlu0zMpkyfdanxA' \
    --limit '74' \
    --offset '23' \
    --sortBy 'jbRKSDZn1XQAF4rc' \
    --tags '["404JhbwQhnbZqcXH", "W2vHx2hjqfM1rmAl", "Ksci0emx6YxAcTHo"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '39' \
    --offset '85' \
    --sortBy 'createdAt:desc' \
    --tags '["aV4KbBIvCxjJU0FM", "HhMQ82e1ruDQS6Gz", "xtV80H6sdROu3o5u"]' \
    --language '9vS6IILno3eVLWjd' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'BY9lcRETXH5D72yU' \
    --namespace $AB_NAMESPACE \
    --language 'VskLTfNc2V1F4In3' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '2Tgg1AgyQXjlb29S' \
    --limit '99' \
    --offset '94' \
    --sortBy 'qSDQlb2qkQLP7oNd' \
    --status 'X8QSdgKxjuWzjJLS' \
    --tags '["MHbFgwA7sT4tPG4H", "JsHpcdXDQAlzLPXZ", "CPHYUwtRyrtSvIg0"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'dvooIoO8XaZg01LL' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '39' \
    --sortBy 'OlOcnlFVM4OOREWI' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'TrtplSG4SMlEpJww' \
    --offset '54' \
    --sortBy 'Ih5fGq4iAavBsjzi' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'RLbYQXmWFYaUO0BJ' \
    --limit '17' \
    --offset '13' \
    --preferUnlocked 'true' \
    --sortBy 'Ucu84AYbsgg52z3t' \
    --tags '["UkxTU4SpuHkoanvh", "23ZQO5Tuxxkt2g9s", "Mvfp6BFyPAZmL3qU"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'I4eklNn1fimdI38N' \
    --namespace $AB_NAMESPACE \
    --userId 'J3QWoLWQV4JlEz7z' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'SELnS6Optt87Mphc' \
    --achievementCodes 'A5nu98OaFp8vn0dX' \
    --limit '7' \
    --offset '68' \
    --sortBy 'hah3qu9PDrhSbODQ' \
    --tags '["cgMOgPC5DH2gSttN", "ntSyNeeYGVCHtatl", "zmT3gipFIJSRTiIt"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'NGogIAhahEsoz9JV' \
    --namespace $AB_NAMESPACE \
    --userId 'YDTexcv2tM3ILDKB' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE