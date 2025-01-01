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
    --global 'false' \
    --limit '67' \
    --offset '38' \
    --sortBy 'updatedAt:desc' \
    --tags '["7gGTnOt7ij5b5Rv6", "2wgFT5XvnaFruRYf", "IvGFov41AEILImsZ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "0bUCApdkWWwRKHnL", "customAttributes": {"LvdzCwRy02XhC4WK": {}, "rjt0AluzsGxPSDwq": {}, "8WMWE2Db3jaULjTs": {}}, "defaultLanguage": "EF7XxVT58cU4pXJp", "description": {"vvysIkIjduWsXrns": "7zKu0JDwThz5lYn7", "MRH7crYg8KjR1CAk": "PNAPiyO0mKQd7MHo", "fzivJ5PyroY4PC3b": "UHi58CuqOA1a5psB"}, "global": false, "goalValue": 0.886597821901175, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "pMX6sWqIa0NM45wU", "url": "18trW1XB5EmuhHw1"}, {"slug": "roTMfUeL1NtabMOP", "url": "inALeqkRJKBGChTR"}, {"slug": "pU7Q0WqP0cTpLdVR", "url": "TOQSrUwcvgWQD3SR"}], "name": {"QN0bWNtxFFC1anYj": "0uSQiVgnoWFngj3Q", "au7IxRSo00Qxlyio": "GGzWTmv6lmdb664v", "5VutJu1wj3q6Qty6": "hLONhgWDiWP3Pchp"}, "statCode": "olVmYb2wCiIwRyTh", "tags": ["Tdsse62xRtw4FFIp", "FijsqrpawQEcUZhY", "Y8RYqphhkgb9pig7"], "unlockedIcons": [{"slug": "tVlVDbQH9FJafPEB", "url": "DEd3T0RnvcvXsanZ"}, {"slug": "uuY5FrHnL9bJ3ipS", "url": "gPeUUkwuz49WcTp9"}, {"slug": "XkF7PIuaTO0p5cHi", "url": "p673f2E7KPTqXbNY"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["LHIuaiZshCxdIxwA", "p20962DGslQlL7zY", "pyP4LxWlTAeAMtb3"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'eUXpl7ku0GeK2VLr' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'yGOKaM0JJBUCXf0S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'P16m5XEU3zkqtIvU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yPJ5TSBKiXSgf1H2": {}, "ljqpkGR0kC587hO2": {}, "0m5dOHcHCc1iSz4u": {}}, "defaultLanguage": "LfVXmm7W8IakKT3O", "description": {"d30RL4tUOCeEhLQa": "9R9HsACocRowQdIb", "6Rg07idsMEL8sozA": "gU7jp2cFDYrNNVTa", "85FdigiaHpWAsaHZ": "0GikoGmGOAHSr0ES"}, "global": false, "goalValue": 0.9080017406714952, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "DsoNDjwKTTV2uN3e", "url": "wD1qavJ8g6paCxYS"}, {"slug": "rgGGap9gLJcKynCl", "url": "olFKtZJr0tXEKK1y"}, {"slug": "P5fSqBZzKKdD0cdl", "url": "ckLqBYtXMCJEb9xP"}], "name": {"row3SAla1qPirw2z": "JydlrFCjuzJNL8Lv", "9DrIbs5hjaksXawN": "nj22binZhsNium1F", "lWu00iRephvSGQT2": "zglK1rZeMht3dHWC"}, "statCode": "IXMDi4QNP9Ow0s4B", "tags": ["pcZQH3CmcdqxpRkJ", "eMqR70ABVCloU3pL", "my8fvLDf2WzarGnZ"], "unlockedIcons": [{"slug": "3Avs3S6FbyJWTcKP", "url": "8vZzc0rMOut2bTrR"}, {"slug": "eSdRwm70EAoXmUm7", "url": "VKBMhA7uSTd6cNEI"}, {"slug": "x12yQtOYb0Huz8M8", "url": "JBbai7anKf2qfCtm"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'MYP9UvdKR6YE3jmu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'QFbSN6uNm1oObZqW' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 96}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'fI9JqAgHmY9ReWDM' \
    --limit '46' \
    --offset '21' \
    --sortBy 'createdAt' \
    --status '7YJAhNzriEByYlpo' \
    --tags '["YZNkpP6EbzXML08E", "ZBHJ7rqcM1OgEQHS", "KjiViiIDmbqFkQ7G"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'EoN3dm8QTYlsJo5O' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '40' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'vuFf7Fp52QDxDLoX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "yGQUa2fK9O9aNP05", "eventData": {"eventName": "TOOjLvk7g8rFMYj1", "properties": {"NOhMPe6jGyk0SYgo": {}, "LBujPNsj0Zv0XnpR": {}, "mQ9PgEr02yG3z4MZ": {}}}, "eventId": "MooBaNGJ8qn88Dp0", "version": "c58lrHVm7Ejgzfoj"}, {"dateTime": "3MJnAUpTSjjm5leV", "eventData": {"eventName": "WWkrx0AloYGO8Bzj", "properties": {"9o9sfw8mP5CsGr24": {}, "FqMkJ7X8kPNcOZ94": {}, "a9GQxHiMaS1mSPVu": {}}}, "eventId": "KCfZDZUJmw6g5LOg", "version": "qxLRmGzVRHdkVog1"}, {"dateTime": "I3B1N7WfuEdJxtdB", "eventData": {"eventName": "p1wKnprK0aZMhuaH", "properties": {"uWlJMKz1ad0YhKzP": {}, "CanLpzcjynoVd7Wy": {}, "35wylOroAh2XUFO3": {}}}, "eventId": "uNSqdMlkmPS5BLfd", "version": "OKaWdevyOCPxFGzI"}], "thirdPartyUserId": "ylCCFqURcv643odm", "userId": "ZrjGkXBSrfA7KGSx"}, {"events": [{"dateTime": "GnRpEFPjlTbQPdhr", "eventData": {"eventName": "dxuVOLyJY57mlyBj", "properties": {"vECBxzsg6VQg4YFp": {}, "Dyt2E5bshRU6A1jU": {}, "td3h40Rrb5MyS377": {}}}, "eventId": "wi2xfOMjLkilbGkK", "version": "OBrXx7anJLzoFgQw"}, {"dateTime": "rilIRgOs90esl0cW", "eventData": {"eventName": "gydaXOb8YYcGxDSS", "properties": {"kj1WPdyIjgcBID0Z": {}, "O9psQJOHSMWPpxcq": {}, "Q5Z9kvvPhGJuTkQM": {}}}, "eventId": "QsrFiOzvKsF5LKl4", "version": "hcu3Sh36foyX1yg3"}, {"dateTime": "ZTbGAjKmHo9T10cr", "eventData": {"eventName": "kB5N7WTCgkmXCfcs", "properties": {"gezTqc8OTzSUE6MX": {}, "eaYBru8cGzFSLORW": {}, "BDDhorUZloxd3LU2": {}}}, "eventId": "7j3WwbuMILqx8rdp", "version": "ibsLllm4MfMluJnV"}], "thirdPartyUserId": "wIurgJJUMANWMOAL", "userId": "ULF3X36tDVEQvkPs"}, {"events": [{"dateTime": "Au11CI1c0vyPSVJ6", "eventData": {"eventName": "yWbTVxm2vPYbjuZr", "properties": {"QFyF1hyJc7wVQ39f": {}, "YSklQCF3gsN38e3U": {}, "zZJ4bZbbJE4Q2Akh": {}}}, "eventId": "Ekf6yazUdaqKwQkp", "version": "9DZKfJXZr2wstkDq"}, {"dateTime": "42NRx7u50v1Xh4Lb", "eventData": {"eventName": "R4R83W7UKOx9XrxA", "properties": {"6jfI4jojPcqf8ZWg": {}, "9uYFgrDeXdNgVluR": {}, "mpnIYJaxfoTxIaBW": {}}}, "eventId": "NZ7UHcOTTRgEATLz", "version": "TYAElDK5E5URLmyO"}, {"dateTime": "IQDJjPQUf7Y9isg9", "eventData": {"eventName": "Fy8TYdQfQSmmTgDp", "properties": {"I5Il7n2dnd7TpdXd": {}, "5EHpxDG3odeeyBT1": {}, "kw7V8FnewZS6xtTb": {}}}, "eventId": "SHZBg3ZyVLcpLPkQ", "version": "LKhy0JPophjtMNfl"}], "thirdPartyUserId": "ATP0vM5jtjjVsLEc", "userId": "mBsT4Eh7SKtcZ1Lo"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'kYhy7utfkS3W0NiB' \
    --offset '17' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'K8FPtQk4qLmqJnTP' \
    --limit '44' \
    --offset '51' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["qih4yxAMrci8Ns72", "jDCh6ShImxzplaPf", "yPVl6rAvSeChBwpn"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Vjza4429fnaAtRKg' \
    --namespace $AB_NAMESPACE \
    --userId 'tHY9K86uJ0XbTzdl' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'AGV2NmQD7VSnbmHL' \
    --namespace $AB_NAMESPACE \
    --userId '1c71rOGmch3PtUFS' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IThOaqsvRFP9VVap' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'z9plG1LzppUoLkEl' \
    --achievementCodes 'MITzhcLulGBJTpRE' \
    --limit '90' \
    --offset '2' \
    --sortBy 'contributedValue:desc' \
    --tags '["tvgKRQjKdmFkaJ1Z", "VZ9QUCVPa4KKpOhP", "EDPvNqAvjuTtfuKq"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '98' \
    --offset '19' \
    --sortBy 'createdAt:desc' \
    --tags '["IgojH8Mk3ri1Q17R", "WIq5xzB6X3fyz5if", "ogeyr3KKRqkwKcdn"]' \
    --language 'ivmO0T0GUtpQB14z' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'fmSgZgOcztxbtmS0' \
    --namespace $AB_NAMESPACE \
    --language 'N7VEAf7ZuROlWH6e' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ErLyyrts8mWnAm7i' \
    --limit '77' \
    --offset '42' \
    --sortBy 'achievedAt:asc' \
    --status 'cX6RnLdXTxlyEbnm' \
    --tags '["dYV3f4LdVw5MuGhz", "UncfRfvAE0AZ4YBR", "2o52eP7od3Wc1SZZ"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'rG7iNue1G4cS8irK' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '79' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'P89pbNpXb2XNBMnM' \
    --offset '60' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'dHj4G7Sq3CcyYBaF' \
    --limit '99' \
    --offset '62' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:asc' \
    --tags '["fPm4o5p6iGxv17VX", "vGsvSOPf5RxOD2Ak", "2ndessGm2u2hjFT1"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'ycaZgj8MwnDPTbG1' \
    --namespace $AB_NAMESPACE \
    --userId 'Nl96hVjABeTzB2E6' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'V3jp0Rk5QVv30eT2' \
    --achievementCodes 'Db6kqAvPARqhWQwZ' \
    --limit '51' \
    --offset '27' \
    --sortBy 'contributedValue:asc' \
    --tags '["SKCVKG2ebIYVuKuY", "sB7snM7o1o26ulcD", "lEAZcFjSqlSEJBUy"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'MQETijOvtEG5wiSx' \
    --namespace $AB_NAMESPACE \
    --userId 'XYhGWsIzRP8Gro7C' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE