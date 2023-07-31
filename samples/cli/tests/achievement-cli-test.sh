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
    --limit '67' \
    --offset '13' \
    --sortBy 'listOrder:asc' \
    --tags '["rwV4xQhen4ET53iM", "eOrTsvrbUwpmEohZ", "06g3wqiTEZaE7b0D"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "8KseTtLeVl2ZsJ27", "customAttributes": {"usjqG6mEGnbPc0hy": {}, "x7U6B1BXwNRPFBBX": {}, "7BwoSPbivWyLq0E6": {}}, "defaultLanguage": "hOhEeed89iZTuNAH", "description": {"jI45Jzen69dwXH3z": "wJqjqEIpce9lvR3w", "ovWTed7APy5a4b5R": "4BsvrtkID9PI2kJ0", "cUoLWjBlArNricQR": "0kjDcOEVSZXHXKOw"}, "global": true, "goalValue": 0.13464696341975724, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "uZSu2FzY1k6GIgYl", "url": "BZGatPJdq6oII7uX"}, {"slug": "sA9IB8UBa53or2jJ", "url": "Neya4zx7gxa7x0oH"}, {"slug": "gKyBwCogD3yukUaK", "url": "6Chhrw42c9Fb2TLY"}], "name": {"Phop6NZrfZbJf2Gk": "9zsvuHBiAB7Hf382", "9oFbXnvJXCt3AeVe": "XnDoiE02U76g29Gt", "EjBGBe11doLnqEKY": "TR9ErQ5TVqCDWgRw"}, "statCode": "HehDVsNLQq7B3umG", "tags": ["dLmZjul7e7F6SPdy", "OTybuCsNEZJmAuyt", "Zx1L5bQ2LqwkR3qJ"], "unlockedIcons": [{"slug": "y6JvT60J0XhU4wuB", "url": "uzG1ZpB4pv6uU55A"}, {"slug": "IEelSm0TAJVmE8G6", "url": "woTTJLih7yLGjJjC"}, {"slug": "BiyUfOFuYLrQJk9B", "url": "l5FMjDk16ufS84Lh"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["v9hBACrXOlvN3uve", "jg0pSqUPq5Astbxm", "ui62SiPs8GJfvhqi"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'mjahb4UWB8E4CsYL' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'QEjcp0EUT2uYrlXs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'CkNO02NXpnC0aXtI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tyFvoj2TFhQv2zdP": {}, "9o7Fs6QH2cAFHjhi": {}, "n7Q2VcgksOwrDqv8": {}}, "defaultLanguage": "fnecAkI8Jnhziron", "description": {"0ylnaQV6exlvRUdE": "ZOKlo4zbmkRfjtRf", "hHapxxpv2C5kO92Y": "FUbc7uSXbDa1Yv5n", "DTEvljeiQNl93ZME": "qJRw1vrIy2oOJiri"}, "global": true, "goalValue": 0.38524146670816395, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "EoZQpyzpzI5nNZHL", "url": "XxOTFlebrmlveGPl"}, {"slug": "iwzp2hBm28gv5DZp", "url": "utRGGhgbDLyzYqDB"}, {"slug": "gK7kxvGMI32YUD6Q", "url": "pv70uIflfNV8u2Tf"}], "name": {"IqtD2N7NzBKzBeWw": "nKKAUCSxCrYek11R", "i3N4ru9c8zGBPH6I": "AHSqBSOZ1f3209ky", "10Tv8W2jTfEELaDh": "U5uVIMuRH1vfOO2H"}, "statCode": "eKUwnCbHm3KDgkyN", "tags": ["u58g75G31SmWbGOq", "12Yy0FbZxppYS7jO", "Z4XJXrvn1AoJCql5"], "unlockedIcons": [{"slug": "i9hP8iKLi3PNInFa", "url": "szLhWcFbVh0XLnCh"}, {"slug": "nWHjBGcQqWVmJWPO", "url": "JPtEsgIM9kj7byHV"}, {"slug": "n9TqTbTxH1N6KhmC", "url": "oSot3UlDB9B4Cjw4"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'ZlE1qdJVu1xXGXme' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Tdr9XRFQwML02SeK' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 15}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'gehEH92WfpNHWBBt' \
    --limit '58' \
    --offset '93' \
    --sortBy 'dgGA0GVtXry1i4y8' \
    --status 'F19BpKwu4VMrPC8x' \
    --tags '["6kvnjDGpMurze7Mw", "iC583D2u3fmJCCxl", "1GWMBygdR49HA4jS"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'W1pPMrPJiwMCdX2y' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '62' \
    --sortBy 't9jVjuv6ONUgAGfY' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'AFmfiISBXNhMEeSc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'VIGFGK4kY89plTmU' \
    --offset '6' \
    --sortBy 'itkzxX7BDRX7xjnx' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'i09ELPBouQOTHvob' \
    --limit '9' \
    --offset '87' \
    --preferUnlocked 'true' \
    --sortBy 'Dy04xRwu20WzWxLA' \
    --tags '["ucxkLluSWM2sJhP8", "nyf9K5s6xrv5wj3F", "gPIIFNvRjjhYRdyr"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '4yWbY7vPSi2HWmSH' \
    --namespace $AB_NAMESPACE \
    --userId 'u6ggEVf3fWA6xh82' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '4IhpCgWXqfJk1XK0' \
    --namespace $AB_NAMESPACE \
    --userId '1H43rqrHWf2tAODZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YcbH4Y5G4UnyxEo0' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'XZrbAGdph3E5Y6K2' \
    --achievementCodes 'L6rTcPZfnlFOjKCe' \
    --limit '67' \
    --offset '17' \
    --sortBy 'Vz7EOSV45QvCcEYA' \
    --tags '["PHlMiKAUNj06qCtE", "z9HVB3LL90va1dmY", "RRVKLb1FlAVh9z1g"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '91' \
    --offset '78' \
    --sortBy 'listOrder:asc' \
    --tags '["lUpqYAk15n9FHGye", "cnF1ZhhHKakU0ufR", "xeenfgMjwzt097Wf"]' \
    --language 'cSPVw0VH7AXEJhHh' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'MCqJpDxilz5isJcI' \
    --namespace $AB_NAMESPACE \
    --language 'Ox9S69FmGtn584GS' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ev8hV5QdVURFsoQG' \
    --limit '26' \
    --offset '26' \
    --sortBy '2yVZxsqKV6eVjE3A' \
    --status 'G1nK3382rXUh7Q3M' \
    --tags '["ip7ACAHe1U5QgnKz", "RRyoyWlJ5eiA96Sc", "IYXkzvmQzE0CFuge"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'KrNd2Hf4ziMLNoft' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '67' \
    --sortBy 'WwIhEgUDoBwI2G4r' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'FkXK2rNZ7P2DtgEr' \
    --offset '15' \
    --sortBy '6gTvKXV1NZXjIAQp' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'apqn0dnw5l4X4Idr' \
    --limit '80' \
    --offset '4' \
    --preferUnlocked 'false' \
    --sortBy 'HAJ7WSsPR6b4sYeY' \
    --tags '["mELFcgAhd8AjooxT", "uIup7RSaFYJGAuQD", "8NuIhYAkGbtPx6hT"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'ynuSKaxycdz8f04A' \
    --namespace $AB_NAMESPACE \
    --userId '6q2xYXeiJJHfrcmX' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'heQBiNyRn1butelQ' \
    --achievementCodes 'oBAITRBIQbcxQrVG' \
    --limit '50' \
    --offset '82' \
    --sortBy '4uU6InF2qJ3cqxNr' \
    --tags '["oLIboDzWc44ridTx", "Cv7NaTM0eZUbmd68", "KhSwyIVSCJVQo3f1"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'PNWfPAv5xV9LE9eR' \
    --namespace $AB_NAMESPACE \
    --userId 'ARLy8DKVREb8M08V' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE