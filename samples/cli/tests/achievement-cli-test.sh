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
    --limit '50' \
    --offset '59' \
    --sortBy 'createdAt' \
    --tags '["DkvkclgX62Jy7QZd", "KrGCMP3NAOD41rV0", "p8GvZ6JS42XgGBCC"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "4bWxVMcjitg8FHRG", "customAttributes": {"BVxAi0YwULQAd3XO": {}, "iGw73LoEFyZpr7BU": {}, "mZwPpeaG6BDXMsku": {}}, "defaultLanguage": "7J9DlYmb4gpMtVjI", "description": {"QQIZocTP5nek1rJD": "nHA6gin2uKL3fzjX", "DWI74GOiwiwWynyJ": "CeTfeqkZ5J8OEbBu", "PmwzdK0WVksjwjJ4": "HUqTtbjreEI2HJaE"}, "global": false, "goalValue": 0.16684173564463955, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "gxZPYtTASXli6jQy", "url": "4m9wysyEW9kCzAxE"}, {"slug": "uFWN7Vxm9gYLUcXY", "url": "vyT05lvwyLbK94uR"}, {"slug": "pIU1NfL5RSXDCNaX", "url": "vLdl6nbSPvt5txHi"}], "name": {"pCxkYkG9D02Z1LpX": "y67xlI3u4qCB8OSv", "444ZzsQubpn3zdsY": "z1gq1zbzp30PWXz6", "WOzJc1uheoituBv0": "acSHF9pfj9RU8nzR"}, "statCode": "bOOeb2KfaUepXkPh", "tags": ["EtiLZrfhfWfZM1Hk", "ZO2pprWZVuaxW0NY", "f7l5fPsBbkGkJa4O"], "unlockedIcons": [{"slug": "HhqhdFGtg2xOHhW5", "url": "O57YxUpXBcPKKr1m"}, {"slug": "ScPB6cIUke1Qm1ep", "url": "azcmauyyEIB1sKjk"}, {"slug": "jqfgKMARdctaQcU4", "url": "edkgjIMHXIIRng7v"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["DD69IME1hODjUtwL", "amj8j5mT6LenAUbg", "3be0tLKwb0ZShFkR"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '1TyY5LVeslFy0PiL' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'p8BFtXmA9lOBGB69' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'DN0cpqXRVihYbn55' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"1aMIemL8xlRu3JxW": {}, "2eLqLXLm7DOmXEJN": {}, "W92F5AP8ZGCDq35g": {}}, "defaultLanguage": "jUk2ZLLmvjgxvp8H", "description": {"HxfNwOlk4LS7JsQw": "ZQyCotDWOQvChqP4", "AoLL0i9lpKeJOTZf": "HtSCsdfVt43iEa3b", "38GWvy6s8Ue7Gl2U": "rrf2gnhaqNGT8MKp"}, "global": true, "goalValue": 0.9727446856382213, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "JWqFjA73BdvalKJr", "url": "nw2on41AaBldK3vh"}, {"slug": "XO7dp3MAFHs9XkoO", "url": "HAgDFfOBWqqhhMEo"}, {"slug": "wr28XcVOVBCkfc2H", "url": "GCzjA6zcyhsIvmoG"}], "name": {"dW8WqW2Sve8VLmJX": "bLlK74Wc5YvytIaw", "KoJoKRlADCtmiQOC": "27GYkQNBh1yWhzDw", "fCMJWcgZa3itrtIv": "rrnvJ22MFygs0cYX"}, "statCode": "0zuZ9SfS3SH5uzlE", "tags": ["uFg8TupoGY9LjfVe", "KxNvdGdR4n3Kafnd", "gAt35vxyn81MDWLd"], "unlockedIcons": [{"slug": "LM2Bh5p1rZh9N1t0", "url": "emQJlvoxvLfwOrYX"}, {"slug": "qDrj0cb4jpocUou9", "url": "XQ83otOmCcBkAwTL"}, {"slug": "AHQ8A29Bg0j5zfhl", "url": "8lHmTVGOuq6D1kDp"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'ao4qaBJRNg6FGP0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'uHcCrhGuirJ5Bf0O' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 98}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'hrUPWPWSnvWsGcEu' \
    --limit '32' \
    --offset '55' \
    --sortBy 'createdAt:asc' \
    --status 'CuNn50PH2D6BvNi6' \
    --tags '["JRYCmvhlIMuk87B8", "vtGyYPQ3BGQViaOw", "FaqxSxkbFbauJUQu"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'gpQ5vlLWBPVJUYyF' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '93' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '0FMfiDzXzVtbaSVO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "q4eNT2WxXynf3lV3", "eventData": {"eventName": "ZrLpBbvspjmQEC1x", "properties": {"ocW1slTSaYU96GV8": {}, "lNsLdpt1AI0GH7z1": {}, "8NZXG6b1dvLmUe0P": {}}}, "eventId": "dskOSzSMmUNJTOHM", "version": "VRL1Y6MbICUEyvw1"}, {"dateTime": "aQmUwJ1Bu612kl4U", "eventData": {"eventName": "5inEyZXf3LFhO719", "properties": {"YIucNgDAVA0nnGr3": {}, "CukkFuNgllcfhKUw": {}, "cwaMzGUdROqvcDzV": {}}}, "eventId": "pxv8LLA8vcnoLK2Y", "version": "OFVTk0ZDesADTl5G"}, {"dateTime": "b0KJLPfveKwUOlQz", "eventData": {"eventName": "D21qC1FKYdObLaf6", "properties": {"Mxmg5iidw75mKqX4": {}, "fYaXNdQQEJHEGq1L": {}, "UExeewvfm1ovvZ8Q": {}}}, "eventId": "2Rp7bMBEnkaFrDAE", "version": "BtjuKI54HzpsDnaE"}], "thirdPartyUserId": "zu8meRK5NQlTGzj6", "userId": "Ap1otwspbK07i1PV"}, {"events": [{"dateTime": "QKIzffmFiAdXP6Vb", "eventData": {"eventName": "orYFtt9RLD12yO0t", "properties": {"nRpq8Pebj5TNX5jx": {}, "DUfKi7GfeBZrsg6D": {}, "5K2y6ezOwP5MtPbK": {}}}, "eventId": "RC6BK7eYp8UyIbwy", "version": "qt2ogIc0jqiqodOr"}, {"dateTime": "c7aza00J535FjcAp", "eventData": {"eventName": "QMElWhD9yUnxnyLz", "properties": {"pXO2MnNhSazuhQre": {}, "cBsTlINAhoFivNKX": {}, "gRjeXVNb710uHC8O": {}}}, "eventId": "2d4fffja62dK1WHu", "version": "Y9p6B8ywjjI3Lu57"}, {"dateTime": "iWIMaOH6DNPnUqVm", "eventData": {"eventName": "9smjikFu4bZhANTo", "properties": {"cN9l3HX2H7smweGx": {}, "Yri9S3htnwrkbPT9": {}, "pqdkxqpDOoVF7LvT": {}}}, "eventId": "TIPYUVEdMgo6pKTD", "version": "VPs0P8mgi0IdeKn7"}], "thirdPartyUserId": "6mUVENVfBgSeneq5", "userId": "pt4oJbK70em8aylT"}, {"events": [{"dateTime": "YscSQwUWpgZTriIh", "eventData": {"eventName": "18GMMRx1Ix94W6bM", "properties": {"bTU6Ej80uw4W0gnf": {}, "rK7SIzzL257Lavwf": {}, "bJ3VL47HrRCnU4Lq": {}}}, "eventId": "DorTmXIbeWCCxJ7g", "version": "McD8WHXYNM0YzRES"}, {"dateTime": "KSSrU9R39bXBgFNx", "eventData": {"eventName": "gOPESwFLUgMdQXj8", "properties": {"2fUGwqRapQNvBdFu": {}, "DLcmg8RhKQOulf7k": {}, "MmDMBgxuhML5q51F": {}}}, "eventId": "WNrtUmQIFxih2Kg6", "version": "AZdqav63dFx2VD5j"}, {"dateTime": "hL8uhRpUlQtgTSgI", "eventData": {"eventName": "RI7h5TZtBXusAUAw", "properties": {"irM5ez65Z3iAvFtz": {}, "1C5J1ZiwM5KkfZAw": {}, "4uFP21bcQ5989JLW": {}}}, "eventId": "nT4oHuvaCuhXwtwi", "version": "6PtEsuz4gw0TpMCw"}], "thirdPartyUserId": "Sp78w4yVcxJPZ9GV", "userId": "Nx0xXNOvFfvy6hHn"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'QTDMJZ6ZoOczbIxn' \
    --offset '21' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'uaYumz49EBdxhkZ8' \
    --limit '43' \
    --offset '15' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["LAuzRKUxSeW7SeoS", "KFT1fj9R1GxKAGbC", "NNOkyFdxDvQ2nQ9D"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'wgtFYeDl4QnJLsHw' \
    --namespace $AB_NAMESPACE \
    --userId '4KNhatAP3iee1pq0' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'nmqoZYzZ12YkStb3' \
    --namespace $AB_NAMESPACE \
    --userId 'hmGruMqBsCbWZVsk' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Q8hW632Xv4rBF82L' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'aFqkPT6qyrmdN37P' \
    --achievementCodes '2AyfwHnFzRsZ6av4' \
    --limit '14' \
    --offset '73' \
    --sortBy 'contributedValue:asc' \
    --tags '["KOXvxIzHiPmiZChF", "Ahq4ufThzJ43tA1I", "Ji7OWkqu0enJ6x0L"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '19' \
    --offset '2' \
    --sortBy 'updatedAt' \
    --tags '["jhz9Ob0cBJAdZIL1", "HUk4SkhhJ1IG2SnF", "WMclA2mm2rb7Olb7"]' \
    --language '686QiKmGIAAm7Mw1' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'G54L8nwegQfcUc76' \
    --namespace $AB_NAMESPACE \
    --language 'n3ZcBnRPhIRL0jyL' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'WZhKC1LqdKe8LD7y' \
    --limit '4' \
    --offset '87' \
    --sortBy 'achievedAt:desc' \
    --status 'JRgcmyzOKbOr7Uam' \
    --tags '["lHfFfSrQbgS37MaB", "TFAjasVFe0A4t3im", "BJ6I3JbJBNvM0NA5"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'O8YKya4xlXImjRVm' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '97' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'FNmGlQXx5xgJROoF' \
    --offset '47' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mpnvJYMjowIA3PRS' \
    --limit '18' \
    --offset '82' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["rW1TRIWg8U9mgX26", "OYdpUdKBn5nwsxZ3", "ZbCU7C1g9ubtj6I0"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Swjh3FnLvPy7TSLt' \
    --namespace $AB_NAMESPACE \
    --userId 'TGDjyK7rTw8hThPx' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'PpDyDUBGzlOpC8ev' \
    --achievementCodes 'WBgww1trSh2suemE' \
    --limit '65' \
    --offset '6' \
    --sortBy 'contributedValue' \
    --tags '["trriIjZtxF0kenof", "qg6HtP9wrlxWhT6B", "17vn4hAL7kiorOQn"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '7OeRciWVVJID8hOg' \
    --namespace $AB_NAMESPACE \
    --userId '7uTtpBclg7dbzYWB' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE