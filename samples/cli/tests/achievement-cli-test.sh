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
echo "1..30"

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
    --limit '72' \
    --offset '42' \
    --sortBy 'listOrder:asc' \
    --tags '["2tAXIv2tbA1k7VtN", "Dg3pqpZBmRJ8EYMJ", "PtvV7sdAeu6KQQDC"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "iem83E5PU430BBEL", "customAttributes": {"wSKOf575ahieMYgo": {}, "aspHU7z5Iw0gOHX2": {}, "WAnh65K6uoK1BSkt": {}}, "defaultLanguage": "GGjDx7Rg9oiGV9Pl", "description": {"all9OpEry4ad2EVP": "pCVMkABh9ngZ72Jd", "KFDfoBMj0FveR5g9": "CVixWjo9nOfowejr", "lWTKGAZOwMdJ8nvk": "Xl3LNYIWNbU2JIIL"}, "global": false, "goalValue": 0.4747820477236877, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "rDblfngAcnXD2xcb", "url": "yhUBNpArqb2T6Vdh"}, {"slug": "Lm0tcRDCXUQPVjzL", "url": "6BILvKPDFK7ts4ZU"}, {"slug": "udv2mzD6XTxByrR0", "url": "BsKFfGjBESZUiEbs"}], "name": {"xkyzJln5TyqWn3v1": "AEZmrffKAs12NwLq", "Bcu6ioBcmwArLzeJ": "YXjCjKzTVOu8tugT", "f9xT5TKMc7LBj2wW": "4d1TfO6qNdjWw8DJ"}, "statCode": "cy7wkLiVIZvmPfBC", "tags": ["rr2w7TZdhNUUyox1", "S7fvalsRVxQyFkVN", "1CB4we8Dnw7lFK6P"], "unlockedIcons": [{"slug": "S4H20gT2EKTkfAk1", "url": "LQNAsXnrG3Shg9Uy"}, {"slug": "dxTr6cDhCQub1K3L", "url": "UFkcVbCmuKBoDDFC"}, {"slug": "ChdcDiqsfn3wVLIy", "url": "kl3nETuxx5EoSoup"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["xaq2JaJxNnQdmDoD", "XRoXzZlX0lHbseWB", "8zpDpOq1y8mBMO4S"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '6WGNHLaeLDaAb23I' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'dltgfw0xOalr0VbB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'ZdyhN1OMweivcXC9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yGX1yjwa1HYh16fC": {}, "zNoPps6fVISVdTAb": {}, "t2IRkSnfAVi40aMk": {}}, "defaultLanguage": "k4LaTtHPWy0WfNCq", "description": {"DCga3j8klXCND56w": "dBDunAaCy9wbId03", "hwlPpYx9K9b0dqBx": "Et52HmjAolLezhvZ", "WYoYg09t1owvDKGO": "F5KIgrrDzuNf3QqC"}, "global": false, "goalValue": 0.11704425814373254, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "kJwsUUtkXoFXErfV", "url": "lvgBCJ58eZy97iIv"}, {"slug": "Z4iQWoslzKALbthP", "url": "NMbx8TLOrfRfbdf4"}, {"slug": "0KH8ge2jbYpTvleT", "url": "naGWIj5BYZ7zUrTb"}], "name": {"QECYqNoNC6lTz1Vr": "tQ8c25WQO2QlbnUS", "zu1qZTCsQAzL2mjY": "P2vnl5BxMqlMFTtD", "UqI6urjO0ZiXywBP": "4jNIUgj2HR1MWdi0"}, "statCode": "zxSW5IkRtPZMVvmQ", "tags": ["zub0dUOhtUDm9ltD", "gyuRILxmIIjLItWS", "FsSZjiwUnvHHv5Gz"], "unlockedIcons": [{"slug": "qtAJIZFGLiSzcMxb", "url": "tv12IGs8vv73i5LI"}, {"slug": "2PaGkfBsT7t2MkZQ", "url": "SwA4J3Ib1MrjsV20"}, {"slug": "ZHIJLQk3ZM1WuURK", "url": "GAhdDSlHnud06NRh"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'O8aaceHM7F9mOvjT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'jwgsofXDhNetLGLF' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 69}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'OT1AJUy3x0m8YX0P' \
    --limit '68' \
    --offset '2' \
    --sortBy 'achievedAt:asc' \
    --status 'Vu4wt68iXemkw6OW' \
    --tags '["OibqZTcsb95RTWKK", "7Cgtgm46kpOfdY5h", "JUpWcGS5xqcrnCp8"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'JT1bzoeZOcQ5rVKM' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '90' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'x1xmyUg32FvvRn04' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "hiw9eAMOHbhRzViK", "eventData": {"eventName": "E7yQkVpD7irOGBPZ", "properties": {"Le3joOPvLXXeNiZI": {}, "FxkxgsCbCaS6TzIr": {}, "bg8EqaUu4SKQnAA4": {}}}, "eventId": "ScD3flJP6s8DjBiO", "version": "RuRUXSlWJCw7H2Ts"}, {"dateTime": "sNB2b6oZBJGxJfpG", "eventData": {"eventName": "gHzmmZj15oFmBOTI", "properties": {"LsgbwhBRh1YuYqsk": {}, "MHJ2w9rvFE9hBaVu": {}, "WX564V7GNI57cJca": {}}}, "eventId": "8sTmMNxl3LCgmA57", "version": "r95prIFTyxEPDIdQ"}, {"dateTime": "MjPSsMArURrP2U16", "eventData": {"eventName": "6jnhtbPsloYxgOb7", "properties": {"cWim162Tl1vizOe9": {}, "gDLRCkEDCFqGLCng": {}, "PppNE5weVvHBEV3v": {}}}, "eventId": "q27QRdZFfxIbG0qs", "version": "tV67ZtgGqeOQzlph"}], "thirdPartyUserId": "hodYohVulD2lcLaQ", "userId": "tY3dZdIafYR9OgPI"}, {"events": [{"dateTime": "rTLnfCYEOA1uBdds", "eventData": {"eventName": "9WxH4r7WT0gMqdz8", "properties": {"736KbiWswNtiTugs": {}, "YbTPuTTUFJqgLND0": {}, "lLaBdL6HHMhe9rlz": {}}}, "eventId": "q2yOsLFYVeT7OYPB", "version": "HA0QlC3MDLusWZKy"}, {"dateTime": "gFl9P2q5wVM7NI2N", "eventData": {"eventName": "Ihk2w7CSSxfzohXu", "properties": {"KHg0jmVtwotcTFXr": {}, "0Quy5XMi3hXBkCYJ": {}, "LED7Z8EbwUygMjig": {}}}, "eventId": "h6KAXrJRGYxTYr3e", "version": "uEvPvzW0zCnL8D4w"}, {"dateTime": "321SgkBs9drKj7sD", "eventData": {"eventName": "Pg7lbb6bFWTUjBxp", "properties": {"ilGo18b98Y2fIkWV": {}, "0cfhIYdKUAmY8jx6": {}, "4oAEmKjg7pFDoLCk": {}}}, "eventId": "Ism4bjK4NvEVmkW7", "version": "2bwTCNXr8m6knnk0"}], "thirdPartyUserId": "6dB3A14a9vig4xZg", "userId": "InAc15bgeXSi8CHP"}, {"events": [{"dateTime": "cRQoN92Kc08IRlGI", "eventData": {"eventName": "CJVkrSTN0gUIFwWg", "properties": {"s4oUBr7XBU5aETZO": {}, "aK4QTqzxeYIqmuFJ": {}, "8Swnf8fmteoL63ZF": {}}}, "eventId": "B2G0vJJzHJeVtkkr", "version": "EBgEiHUuOUmZpsel"}, {"dateTime": "BRm8hjTL8fnQln08", "eventData": {"eventName": "gC6TU1FL9mxW6BqW", "properties": {"G36LpHCNUnGGa5Iz": {}, "h8O8EM4epiobdoq1": {}, "jnGLjdUI4ZRI02kv": {}}}, "eventId": "R3Fs889vkOqDQvZQ", "version": "X3K64dBo2IyjVPts"}, {"dateTime": "4x2LLkmWlA19HQD6", "eventData": {"eventName": "DrikZvstt6hp5hPl", "properties": {"tSH18w63bb4OBxdi": {}, "upBpL1rGNULwf0LD": {}, "wnfKf5BwtvtbFisV": {}}}, "eventId": "JLRoK69o38bsp53E", "version": "ItOPBgXb6zA84zWf"}], "thirdPartyUserId": "I1KoPXzR8Tiha3pb", "userId": "WcuLTZHaJmC0DBLk"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name 'kJQlpUIaKFD53Rwm' \
    --offset '37' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'aEVaszvOlpVuOfWh' \
    --limit '79' \
    --offset '3' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["GuFcRQ48kRYjsEZ4", "1w1T6EMkWgfkPAoX", "qLYl6P64naBPVmgn"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lkF91lX52MuPGfbZ' \
    --body '{"achievementCodes": ["blGMtHL2w2AEKNjZ", "aP5o1WScLmICfQTf", "etFaOJ41vPlIfrH3"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'IBR186H06bSdRx0L' \
    --namespace $AB_NAMESPACE \
    --userId 'h9unATxSNbIWrdMO' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'ZJuesn8e3oCh7xF1' \
    --namespace $AB_NAMESPACE \
    --userId 'XMPK67sR8Equp4nE' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'QlJQk0J0yji3go18' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'jRCdnFxE0Xz8uzbD' \
    --achievementCodes 'S5zmjKdClsxhr3QQ' \
    --limit '80' \
    --offset '39' \
    --sortBy 'contributedValue:asc' \
    --tags '["z3iqrqFo3eycc3Tr", "UmeLc2Wtl3JiFDpb", "GMUAh7xWaPPZQS7T"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '20' \
    --offset '37' \
    --sortBy 'updatedAt:desc' \
    --tags '["w8ybWIQEIw4rhLDo", "WZcllRYmfDikAdD7", "YN9hxKpUcXmReyM4"]' \
    --language 'UhGQkyR2kaCd3Szy' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'P3fId608mSl8gQ0Z' \
    --namespace $AB_NAMESPACE \
    --language 'EErJQkgMb3cQC8ix' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'cdlQw4FIMKbNo7Hi' \
    --limit '63' \
    --offset '51' \
    --sortBy 'achievedAt' \
    --status 'CiFva2sk2ZeYaOZU' \
    --tags '["Jw41jNhyYL3lMI59", "5lNnWoksMk86G3SO", "pyxKf6H0NAwHhPbC"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'Yuve0F1xho7beV3h' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '91' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name 'jEPVjNz6LbiRzSyA' \
    --offset '77' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'w6PAlfMnPk4jNhQA' \
    --limit '62' \
    --offset '11' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt' \
    --tags '["wZpAv4IBqAp2JM2m", "B55sjZ9pHB4mhKc4", "18msdC4ETPLuJyDL"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'EYUA3AVLt88FsAfH' \
    --body '{"achievementCodes": ["jMwnsno58EWIeD1M", "ZlnwD8aKsPgi0dyw", "pgAE6fRp6EGmxo2Z"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'MxSSx79STVi7TUZV' \
    --namespace $AB_NAMESPACE \
    --userId 'sOAFJnwFCR3cj4cF' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '9EQvHWBdvy7YAUWy' \
    --achievementCodes 'rWUQrgwVC3pndi2s' \
    --limit '21' \
    --offset '42' \
    --sortBy 'contributedValue' \
    --tags '["7BjmbfMWhGZLCiqU", "CJYU6OWdIVCLevNI", "flnX7gicP5boLyt8"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'C7FEqxiw1loFpehp' \
    --namespace $AB_NAMESPACE \
    --userId 'zuipTz1Vpm4Ger3a' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE