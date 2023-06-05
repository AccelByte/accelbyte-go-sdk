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
    --limit '57' \
    --offset '50' \
    --sortBy 'listOrder:asc' \
    --tags '["Vd19QJokj3otjBaA", "peKVOqiVkqrLdCiB", "pFdQMrBgEz7kd2iI"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "39vVT5xGwyoZVAOD", "customAttributes": {"RaqJQkvS5D9ybWk3": {}, "WFglS20ADMLRT52R": {}, "GQs1bOHFXQ5kiDFo": {}}, "defaultLanguage": "Z8DNtfrugRdW4qpi", "description": {"PVgb6bGThPlunAJ4": "hW8aLQRXnhGIxi8B", "wUhpRdqSuYa9LZiB": "aOvuzzOuVU0gLmgZ", "PO3USXsniwuwImSm": "vTtJ5ioGgEOvC06P"}, "global": true, "goalValue": 0.10828062566283636, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "nkBsLLkVrpriYH8P", "url": "i6dijaZbuZ02vi8j"}, {"slug": "ujThSjwmasTjFs3i", "url": "z11NSKZhfcXPdAUF"}, {"slug": "8dhSK8rdVp0cRBH5", "url": "SHvmRbANcNZyFU55"}], "name": {"AV7jWxcgpXlmtOlj": "X3BMVO6XQpEWI18Y", "QhoW0nIy5vX8Sznn": "2mgGEUioGIvlB2UG", "SZAhMwRfHu0le6PN": "a4SEz54UaGyz93ft"}, "statCode": "OMdiyCfEUEJZoMhY", "tags": ["N7IqZfBqOFCIJg0L", "6SHodo7GkRmFfwfm", "UwZHlB98jml9WIjb"], "unlockedIcons": [{"slug": "DubicGRR4yAdR1a7", "url": "ILUgVn26jVruAvVm"}, {"slug": "LZvakhTdekI2CpKl", "url": "yfX5TkuSff9SUl5e"}, {"slug": "dM8a71VHu2mMn07L", "url": "muNztwc97dkLbUpx"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["iU5UwxQFeiWqIRfp", "5b0dZDthOD5cJf8E", "u0T5jsDvOT2HVtEK"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jRrXfGUwBIQGu1J6' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'aGTtcnFv1JyYnBf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'ot7ujIpbKeF5MRZs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xnDOmt04u53jAspF": {}, "3ipbcNzunSwI2mzt": {}, "gdkjoTP8S0BbQK2I": {}}, "defaultLanguage": "vGH7R90TacUGEJy1", "description": {"msJ3seSs2v6dscLJ": "LQPxG151B2bQ1nFr", "9JQY8Atvv4gdiBcy": "xCdIinK1zDjYEqTd", "7ftcrhu1IcT97KmT": "3OxdBUAnWztcUwJ4"}, "global": false, "goalValue": 0.35003378447529365, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "JcFeEjwl70dHhsR3", "url": "23bDg1aeX6DnL5qe"}, {"slug": "LrsKyfEKlPSvt5wj", "url": "o89JtMRJEbBtc6ko"}, {"slug": "TEAoyA95qwmm8Jqx", "url": "IL0zEqrhV1dKCFam"}], "name": {"HEESpaqqXMpgFZFQ": "cGzu9lhRkD2te2xs", "MLP0tN4Ha7JUTkus": "oV6IOWFiI6ZbykxZ", "ZUojxTWRKxBJZu6W": "QFzAKRoJteDa7Boo"}, "statCode": "SwgE7SUkz1iPPiqT", "tags": ["CjQDV1ygMAgHG9Cx", "4VSebwu221PbLIF8", "bk5t3TbdyPNHHHRE"], "unlockedIcons": [{"slug": "dI3ugvSbitF0BA09", "url": "4FTMMhReKvMMJhrU"}, {"slug": "YGaBoamG5136GdFr", "url": "43USm77T7Sk1dvvh"}, {"slug": "EfSTKpGQ1TEDKZsC", "url": "2Vle8vTm7SgXlixK"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'jjD6skdSHkXkprYl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'qONJUPdS6yPqAqFv' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 27}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'bN4DvEgXvT7SgN72' \
    --limit '9' \
    --offset '72' \
    --sortBy 'JguokvHUXtZOIqPQ' \
    --status 'E3qrjxPbqpXvo71L' \
    --tags '["xNTbZCLShPuFVOqX", "EZEGZF5h8nyJeXNM", "1zT5eviPFZRtGmXY"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'WXTSsiCio6p919GF' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '7' \
    --sortBy 'dxAfAPLLOOmIhB6j' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '7jZ17HGQpIdN85wi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'xDwpHEgYYphhCcwH' \
    --offset '24' \
    --sortBy 'iFfwUtZRnw8agfOo' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'tlsAE7TyDoYOmb4E' \
    --limit '23' \
    --offset '4' \
    --preferUnlocked 'true' \
    --sortBy 'wp7u59XPXBqVuTQF' \
    --tags '["ByABGvZqmwQcmPj8", "tUb0Ist1xmqn5E7z", "411OWQqZAapMiaAm"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '3HIRif9CpcjbwFM1' \
    --namespace $AB_NAMESPACE \
    --userId 'TZ8L79xEnVyAgT6E' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'srI1IE8ZUIdzts7h' \
    --namespace $AB_NAMESPACE \
    --userId 'AESIR2Pz3NmXS4AR' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Mo9VU2A88qTAvlrL' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'YaD0fZ9zTzKNEbxf' \
    --achievementCodes 'qoRUcVemJL3N42YA' \
    --limit '63' \
    --offset '19' \
    --sortBy 'XzWTekxpz4udqGLd' \
    --tags '["aVhPeU4pESKkySXG", "5Jqdg1bgPR4WMLTG", "E51oRM2Sw86xJ9lK"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '42' \
    --offset '60' \
    --sortBy 'updatedAt' \
    --tags '["HGzuQkNuRSOHVBBp", "pXpApMlUCyEknYD4", "PB894d9bQLmgprKB"]' \
    --language 'Cv7OYAJlqe7IBJyv' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'TKDe6LcdoX8ABB3t' \
    --namespace $AB_NAMESPACE \
    --language 'mMpHA5kpKrKgoo5d' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '0F1Y3Sx7iYp8mbe0' \
    --limit '24' \
    --offset '32' \
    --sortBy 'Ut796uIJHfhXh90N' \
    --status 'qCurqqkFnLnWEqXf' \
    --tags '["lEuIw8pRZopedc9L", "uIAhQXMTpPWmiXEB", "MJjutxErrH1LWlZz"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '4SgRxmqpXoHoPeMr' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '100' \
    --sortBy 'px0xIiS6iyqVp1ZH' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'DvZuMoctIsmwk9ic' \
    --offset '19' \
    --sortBy 'tGUai5voigz3407q' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'nT63d582OrtXy5yF' \
    --limit '72' \
    --offset '66' \
    --preferUnlocked 'false' \
    --sortBy 'YDYw0DEU2UazoUAp' \
    --tags '["zBsFs5n4whI6Szfl", "Zvyu1ghpwmZO6pAT", "LopqklDebXtt5lTF"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'G4Ttig4QLIWRxtDL' \
    --namespace $AB_NAMESPACE \
    --userId '1CeXJhpTugwGf77w' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'CF5aSgrgkFOAcCwz' \
    --achievementCodes 'REwZyZniey8IfTYL' \
    --limit '52' \
    --offset '50' \
    --sortBy '5DIh9qYzlv5XhadN' \
    --tags '["t1fZpp8gRB7YttWt", "aKVQYsGSnaSasxtp", "fqY3f7W182EYrKih"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '3spK2F35tpjr5N1f' \
    --namespace $AB_NAMESPACE \
    --userId 'eAYg2FceAN4kgLh4' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE