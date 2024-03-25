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
    --limit '76' \
    --offset '85' \
    --sortBy 'createdAt:asc' \
    --tags '["eLCgEzdvwZMabbXS", "N39eZoNrBtxkK76u", "iSUo8rkOWGxDPQZx"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "IK1XKv3K4mlKz4nn", "customAttributes": {"j8B3pjv9q45qf3tj": {}, "gpb6dCMkNUdPa4F0": {}, "yw5EpA3ssJ6ky9F1": {}}, "defaultLanguage": "lMstj1U08LndDoMi", "description": {"GwzwvFT1AbyJs4mM": "2ub4tXXGpTskseHL", "u36ymPVAlBFoipKX": "tGsMvSSSez4H4T7V", "7paRMtdpDbyZX0j3": "5Hqmuua89ZVdqgTs"}, "global": true, "goalValue": 0.7084337450186717, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "vOz1tRJFTBeD4TBc", "url": "7GoRFFOGdFIObh4v"}, {"slug": "6CHte6ZepV8UYmP9", "url": "HVTq8rrOEOCobPoq"}, {"slug": "pDDckw2I6o30qKO3", "url": "EUstphearGMuF5Kf"}], "name": {"F6CiEcwoFb2aqE9U": "evof2GNnUBolo2e7", "93g5NsknnbblJvaN": "NA3logU4ip5nYwa4", "kdwTADTEZd4DW62A": "DkG3qeMDDciipUPJ"}, "statCode": "xcAUU2GIZ9zmKU0T", "tags": ["mjQzcfTJjqxu7KZz", "XaogIIEtufiOPElw", "FfHsbxvftUu0z1ms"], "unlockedIcons": [{"slug": "YCdLRyVGDXkFYWD6", "url": "HXhQcnxp9lZQbKJe"}, {"slug": "uWnzsMqnrmDQfwu0", "url": "1NYsbEwcOjBHLNJU"}, {"slug": "T2Jbx9HmwcxSO1iY", "url": "EUywdsXJHasPtDgM"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["0kkckpPEttBpSlpm", "XcWrFQFnPRhIzv8I", "muWAGIspqzWdMLjw"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jOdK0TdUc46zPxrp' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Dv3e9EyODAD0nygv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '49uLVqruLy8nJodk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"iGzFV6xZlGFhQfcR": {}, "HwwQKsB4HtdHdBJN": {}, "5x5M22SCYzzDtpIL": {}}, "defaultLanguage": "wKNan3hx3ZpLNmtA", "description": {"YmXLvCUiIaMD0btt": "RRwXXuA7bwKzoPER", "ZnZWCuInpPSmXYkU": "poXti41zKpI2bslN", "OEJfaNny1JzTkd0O": "EAaEHpATHZZyG8gG"}, "global": true, "goalValue": 0.09483707746262349, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "grJv6rzNGknDCKr0", "url": "dK2wC0mQ5FVW0tdH"}, {"slug": "OjwVR4c8sGgge4ZB", "url": "BZGw50xGo4250UrO"}, {"slug": "RlRkvPB1wCo6Fyyw", "url": "ar6CJMjJ7CDkk56Y"}], "name": {"89dC4VP7mnnfrjOX": "knxGBX85E8JyLQKN", "LQRzUw0SZk0MENu6": "23BiWnqDbkinqD2q", "Zj3ol5Fa7djyGa9B": "YhdyDAfP2mdBHZu9"}, "statCode": "nE2oa6zijnzD26ac", "tags": ["OWnYdNDDrv3A0Zjy", "olzdvgFkkEcIoWNR", "jzqbimZFymDKUwhh"], "unlockedIcons": [{"slug": "9VRmq5VEdJfAg466", "url": "xGfA7XqTcZDHEkCM"}, {"slug": "vkCnra0PuF8jB45b", "url": "7doCmtVDld5wu7Nw"}, {"slug": "eXgIAdlT9i4nNgDb", "url": "BpjCozbmDzZcVPok"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'FReUEfxomEnUzNRH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'rsEyblLDfo3z1hdZ' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 59}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'RsdCKzOc5cw8wEWV' \
    --limit '51' \
    --offset '32' \
    --sortBy 'FA2QQEw3iCTwEoLz' \
    --status '8hJH444aKx5aAHUu' \
    --tags '["FRO5KhUV240M23SG", "sI0eF8cyHLWMG5Nw", "U9K1vJ9uEo0JTqaF"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '5NUz7KL5WBbyfCre' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '13' \
    --sortBy 'XMnXQNdoeIxxxLOv' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'A7J1JifesCf0PfMW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'w2sLU4kbkQMVu7ws' \
    --offset '11' \
    --sortBy '8PjgFues0ecYBIlm' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '76B5Mg0tbdeAnpzr' \
    --limit '8' \
    --offset '25' \
    --preferUnlocked 'true' \
    --sortBy 'PWFBCxpA4Xnk2xHz' \
    --tags '["i4fRFuZOMfo62rjD", "XCqDDNrObIhqyuZe", "PgOq4iMZMyavT3fb"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '84fh7pqNzsUopni7' \
    --namespace $AB_NAMESPACE \
    --userId 'NFzYahkbwz2JPSB7' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '2B0Eo45Vv0uw69xv' \
    --namespace $AB_NAMESPACE \
    --userId 'garipvuCCMuUIHFr' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2q1pc0KKPJLVlKAU' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'pYrNKqDRjQ3Qm0V1' \
    --achievementCodes 'jbaCoIyODoJNBcmM' \
    --limit '50' \
    --offset '72' \
    --sortBy 'emaEV2FJiaiZV4U7' \
    --tags '["SJ7DD6NaSmb4C7ta", "4QtoQLUDj5eLYM8h", "DoEMBH2CutYNi9zk"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '43' \
    --offset '53' \
    --sortBy 'listOrder' \
    --tags '["ymO5obHGPS3Rb7PJ", "k1kxqIJgzBdI8NbE", "zC90a0tFIuH6SWQs"]' \
    --language 'BJ1Dejif0DMqKcL3' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'f6ROlPYMvkrlQS1n' \
    --namespace $AB_NAMESPACE \
    --language 'HPZOUwkgT57OnFSt' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '4F4oIMZdI6UzLnSe' \
    --limit '70' \
    --offset '99' \
    --sortBy 'JyPysUAQHiOeonQh' \
    --status 'UWAWDzma0qU4ogX1' \
    --tags '["sFY3clK0ZJ3J3FtI", "yqTZXKpXTtNwfAFR", "DwgZtprjo0zbbPIF"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'qnQWnBySAsEjpUJB' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '80' \
    --sortBy 'f6dw5DHyuL9OxguV' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name '0V4MGSNbqkV99ZAn' \
    --offset '6' \
    --sortBy 'GRKIgvajia4fT3Y6' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'cvMNaEDwxQPpRVBA' \
    --limit '77' \
    --offset '63' \
    --preferUnlocked 'true' \
    --sortBy 'bvsfwRBQKc33mkHA' \
    --tags '["y66VrTiH3GVx3GiM", "E9bpGdE33Uq6DXGx", "EaVRPLl7HNz5VHGG"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'wgaYItZ9wIPI75Tz' \
    --namespace $AB_NAMESPACE \
    --userId 'zcWCOdFTRalv19ev' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '2rVKrSA61XLkuRrN' \
    --achievementCodes 'BwlriHXZquK6cRmU' \
    --limit '97' \
    --offset '68' \
    --sortBy 'akHy6bvxhYnadmOI' \
    --tags '["pfX43a2nN3H4cX4K", "Fc16OYFTmBrxcOt2", "yLXFS9WlHMOC6265"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'wbB7hi0hOxIkJQT2' \
    --namespace $AB_NAMESPACE \
    --userId 'UImiM8me3FIAXPQT' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE