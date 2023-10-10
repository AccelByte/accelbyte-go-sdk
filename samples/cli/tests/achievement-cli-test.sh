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
    --global 'true' \
    --limit '57' \
    --offset '36' \
    --sortBy 'updatedAt' \
    --tags '["hAb9mlmQS1K4mXM3", "EdoSHLXyrDDa4V3w", "fRaDuURoygBUITTi"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "8HTbzHCmONrRqXzs", "customAttributes": {"2WusMbakRt7Cojur": {}, "jCEOkiUssxvotvoA": {}, "CoxdJ3stA45NrHw6": {}}, "defaultLanguage": "DP2meLAPWyZpVOaY", "description": {"U96wmmc9GjZcpwi0": "VF0qsloMke4q7UwL", "mYqMbX0Tf3ZjA4UV": "lgl4MUtbhJu1Hdo6", "2sKOhuTLZ4FmtdVx": "Xq9iZK4meuGR4pF6"}, "global": false, "goalValue": 0.45682505678424357, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "1jSl75lRqPRRAF2C", "url": "7eR3qvqZg7g69X7j"}, {"slug": "tSxpF4bULiN7lkoj", "url": "eUhKdabs0gsLrhGr"}, {"slug": "FwnAfqZh1Atq1D7g", "url": "VzYKBMM3XolIkv3w"}], "name": {"9ZuTGpNQjwhcP00h": "CbDBjRtQEbbIdSee", "bhVbr1mD4Cbkay0k": "eIX0jspaY834K47u", "X5uElmKfmQtpv7Y1": "nOgfs9iINpJ2VqCL"}, "statCode": "ztVz2UTuiej6hGEi", "tags": ["r5SOP9NrFpkh8ObN", "BjA3zVy91Am81SVq", "KtIamG4NYU3FX4sb"], "unlockedIcons": [{"slug": "Suziq4UIEqAeVCZJ", "url": "iMP2cMt5vqzd5TES"}, {"slug": "4mHBTVJ5qwBJyQ8K", "url": "z9uG1CkVeGgaJEhL"}, {"slug": "QMe9A2aG2yjrFExm", "url": "82mh2xrhG7GH5zgE"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["zsUwxeMOSAg0PLq7", "NvM279LKRcQSYUJC", "zcWpzeRtvk6GyExp"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'ipFdxvkdfZKPmD3w' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '1i0FkNasmhU3ksCE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'IWlvYXSwHAE1CP0M' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"3LtwMjA8nKgVxKA3": {}, "eNHS1VHajUOGmUX5": {}, "oSLtX38fpvoWkb6M": {}}, "defaultLanguage": "6VuHgMORWDMnsAH3", "description": {"hLOFuwUaHZ5MH43H": "jq0iO6ZinzF2B9vj", "rIv34dFETdOmcz8N": "FJjh1yhtE0r2ArAM", "YpgB8oI7vDc5kb9f": "GLZ9s0Azfx2jx6Ca"}, "global": false, "goalValue": 0.9661288131513697, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "0CmopCGsPS7Hg4dr", "url": "CxgVodYnDOlFkcDC"}, {"slug": "cZeN0g8Dkt6wiiQJ", "url": "dh9tsGyBLZJGxApI"}, {"slug": "mY7HGSPf2n2jkMoK", "url": "XJm4EHPwmbdiJTAS"}], "name": {"2dIRzBfkeWduY9nZ": "pw1bY0JPDbdXXneB", "HURf9JFeuyhsaRww": "lUz6kP53yd5X7pVO", "kMttCAci2UJwAPaO": "Olp9iloUEcjMgILx"}, "statCode": "I5fgbS27NUfwCmXL", "tags": ["KqNLStgRUtVdpGAz", "mJTh4MsZ55G8QMIO", "Gy0uxE0flpqcyu4I"], "unlockedIcons": [{"slug": "4h9wkLsXaer1ab1x", "url": "ZPxOEmqYSZ3tujJJ"}, {"slug": "cbh6uX8oAG6UXV4r", "url": "vPer3fmR9tZJAqAd"}, {"slug": "xqX9YGLt5jJvcAyf", "url": "13k2bmbmaPPhQG4q"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'OONwkkoPwNhIuABy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'YnLMUZnt4KhbnElC' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 76}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Ubg3OrHcovuXR5QK' \
    --limit '1' \
    --offset '50' \
    --sortBy 'sgQUwXJ5W74hs54b' \
    --status 'xvjIDMFlkuQ9TLD3' \
    --tags '["8MO8El9Edx9fpwk2", "Mwq0LW12sEKzQaq1", "PwRwoLvpETFxvJfO"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'lPluWke1TzWAp8Mh' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '8' \
    --sortBy 'CYu5NUIIwj4XIX4x' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '7UcxglZAsBC3dsyy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name 'Wln7ZA9YP5Hq6FlI' \
    --offset '13' \
    --sortBy 'P2SvxOLNC9QGCRQP' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '1bAjWmMHQTYcEYbk' \
    --limit '87' \
    --offset '46' \
    --preferUnlocked 'true' \
    --sortBy 'jq9x6HEWjKfzt9G0' \
    --tags '["IBlCWnNYS5N6S0pv", "XT3NIM65CL7XPaQM", "lZes00UDV5kKAtku"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'j7GEXSokiBAhjQAo' \
    --namespace $AB_NAMESPACE \
    --userId 'wBK7WDZoh9mzAYJj' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'TNgwUCP09kmIgvK8' \
    --namespace $AB_NAMESPACE \
    --userId 'YJnbEQ6Qpa16T890' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'D5p5oP1ZBWpXoVzO' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'j7ISqr2qL8X3UHhM' \
    --achievementCodes '7PQ8ej8L1kwmQBZY' \
    --limit '67' \
    --offset '74' \
    --sortBy 'VYazz4bVpp0yUBya' \
    --tags '["b0Q6v0DoaQ50xV7N", "BTBl8YP4xDi0SFwY", "NdPsQJtVrW57JlRu"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '90' \
    --offset '91' \
    --sortBy 'listOrder' \
    --tags '["c8DecDFS1YhxyzEi", "3jiqtfKdBoMkUJwF", "WM89cQbyQrK7OgCE"]' \
    --language 'qZI3SsX8tCQkXcfk' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '7oXxeQwS07pou11G' \
    --namespace $AB_NAMESPACE \
    --language 's9FYxolCZmdKNbN3' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ppaFrOYxXfI1DtEk' \
    --limit '80' \
    --offset '3' \
    --sortBy 'PD19CBuEsRTHEtHW' \
    --status 'q1FyCcA6Wl2PIqR3' \
    --tags '["T84NmbF8SNyLS8uy", "ZmPN82OztNGtQ01K", "8kPEGUSJX2tphal5"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'QthwJsyZwN2YqP3C' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '6' \
    --sortBy 'R3JeAeipQOOcSfqx' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --name 'KwUk97E0EoMkr54q' \
    --offset '79' \
    --sortBy 'aJTWBROXLlAgPuBt' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'EhaDHKZsqqkCiprL' \
    --limit '14' \
    --offset '78' \
    --preferUnlocked 'true' \
    --sortBy 'J2Mu8ZXwG9A2NElb' \
    --tags '["ARQdUoWdsKZtyobL", "cMcB1Oe9VbtNDYgo", "MSrN4m59GzB3uzhs"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'POonbi7REIUwiaCI' \
    --namespace $AB_NAMESPACE \
    --userId 'csF3nCt6EbpkcpZB' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Ha5wkOKEi13BcOFM' \
    --achievementCodes 'vfYzpw7lno2vMxRC' \
    --limit '19' \
    --offset '6' \
    --sortBy 'JvgjcIqSvEYZ2J22' \
    --tags '["WWJAbqRdpyq2GN8L", "WkNhCyKUlpng132a", "aouwjRtCULFrZZSO"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'V9BDu5rlzKzbbbTt' \
    --namespace $AB_NAMESPACE \
    --userId '4cocNFD7mccn08LD' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE