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
    --limit '9' \
    --offset '98' \
    --sortBy 'listOrder:desc' \
    --tags '["AzawBhKnABo0sN4e", "RRV0DYpfC0SVOjnm", "1sGkxF1em8C0D2M3"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "i3dgCzsSePDSVn1j", "customAttributes": {"NqgEyud7wdgCrRe8": {}, "IrAQsfKwb95ILZDo": {}, "e8cZIjcJPIPWuEth": {}}, "defaultLanguage": "LGnnLbwz0s3yUAwS", "description": {"1JaEMB5DYBFFQRvS": "tZdhc2nvovKGQFLp", "tYgF1ZlXjR5B636P": "PdNnCKZUx7MPay0R", "QbUO7YLmAl4axweS": "2Zn01Ad0c2eRq3hb"}, "global": false, "goalValue": 0.7613429558402872, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "An7cy9aE5Rj2aCQ2", "url": "xXlf1kdDOxWAzFZP"}, {"slug": "1ryWmsmEAB4l7gXd", "url": "HmivzLjybOL8FTZ0"}, {"slug": "zvq7Ydz26FQzNtSd", "url": "SHI6niJLbstigwuq"}], "name": {"fXCdLBHbJu7ZegCm": "HI0Q5vBcKXwDESsG", "3yNb3wCSv5LS7D4F": "H6bchKDmvGNUEEWB", "6skoaiIokYy6ViOw": "0PJRoZyxciVFdMEG"}, "statCode": "juPHnSlu9Wq2SBWr", "tags": ["L0duOZ9uhu8xqOPy", "xInMfwNS9ZOWEWYS", "mecP6SCbduqIKCx8"], "unlockedIcons": [{"slug": "DKZnRwusIykb1fw1", "url": "HrJkH860Ij1vBFwR"}, {"slug": "70adcl2Xeg2sHvkw", "url": "TES9NH7vl4L80xoU"}, {"slug": "aXYUFPwPYuvo5VT0", "url": "08EGBWjSWAqVwiwh"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["f4IqOxPOtWHcFEE3", "YWehYJ2axYVLI8jA", "FmRzFiphf9x6yqJZ"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'ZGrNNRw5MJSiBjb8' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '3eKG9608AAbBge7Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'baWw4uOZyvEZ4gVD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZRcS3PQrMKAocQgU": {}, "YhDvq92SDE2pPEYL": {}, "Y4iB4UKVwqhhscK0": {}}, "defaultLanguage": "o6OjmL0DPjYZPSVK", "description": {"dkf1rp2O89byv26s": "qiZotXREal95bR20", "QyTjVDxmYjT02Y9K": "SGqmYBIxZJ4xDDfu", "AaY1kLg0XJoXjpIe": "ij33zSI1awlNlsLg"}, "global": true, "goalValue": 0.15085484576368258, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "zGs7hl3GUULe6ATM", "url": "nCvG2I71GodbXmEA"}, {"slug": "Ue5okdooXn8TQT0c", "url": "bS6x0AE274V7jeKn"}, {"slug": "hveKFJzHZtCypvNl", "url": "z4eRMY9tzgjpR1Xh"}], "name": {"7ZtJQBCjgRuvGaNe": "Zijl2Jh6pFRves0X", "ldEySRafZaq91hV9": "12Cw87AYKkVudnET", "tZCbWw1NtvJSCW6T": "bbdq4bwmjshqSLr7"}, "statCode": "7ckdAWPW5ml0ExDE", "tags": ["6iZjryOQuP1cEYiM", "M2NEHS0fmqiAy5PS", "woediAHihOUKX7pq"], "unlockedIcons": [{"slug": "CSH0cViheoLDmOHe", "url": "LXR9Q3dSrS67hDga"}, {"slug": "w0OSSG6uGSAgNBg1", "url": "Hw5ITNRiYvfR6NNk"}, {"slug": "dEFY84BGpkUwpTbl", "url": "RRSXgMzX7Nxaewv4"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'yIHkP2TbeUnsXzLC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'QoR8N0EqFjKlyJ3T' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 28}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'zDQWfoErjwSQWGsr' \
    --limit '7' \
    --offset '15' \
    --sortBy 's6fyHtUBlpgJVz4w' \
    --status 'gWqWfaMQkXA09gPz' \
    --tags '["KC4tN0wSN5OkM2Tq", "WXxhEipP3OmWJW79", "uGwpwZnV0g6ZBJiX"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'mTMHoUaTrr9fuen8' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '16' \
    --sortBy 'fyharXX68aG0AtlB' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '2qVErA3Umb8kLnIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "IaZj2yUk92oOi1uu", "eventData": {"eventName": "RlcEZYgoPgNSluMK", "properties": {"LmQ5fPeN5k1iRSca": {}, "pVfjOePVjD185rUS": {}, "Bp1FWg8SBzCGhEHp": {}}}, "eventId": "zFXGUHB3wOq5KRPa", "version": "16b3vxgjlwJ5v3mR"}, {"dateTime": "1IUD0bbzNXoKUulk", "eventData": {"eventName": "4hjf9GKqr7jVuvxa", "properties": {"1MyvNrmZmt2o1tmP": {}, "ZeGg98vOhmQp0FfG": {}, "aTNlWvHZfCx4NBUO": {}}}, "eventId": "OpiwmsRlAVOG8g0r", "version": "Ys5TS0GborcbVRyh"}, {"dateTime": "1c5Xv2AXnpqD15Ur", "eventData": {"eventName": "rBpHYagwQBKE5qRq", "properties": {"hPUvQd5a0gyzsy8k": {}, "PUprZAPIx3AnCrXF": {}, "KEmYIpTtEUqXjGyn": {}}}, "eventId": "5tXg2Roqg1kXozx0", "version": "9rt0btWDleaxq87g"}], "thirdPartyUserId": "tZRjFebr5eHfh0Mu", "userId": "h5y5cLb4M43MI9Ci"}, {"events": [{"dateTime": "Y13oId5MTKEUMnS5", "eventData": {"eventName": "qzHbiZy43X7y7SfG", "properties": {"VHoKGOKT23ck4Lju": {}, "NGPDyloGy4PmTEAJ": {}, "Olt8xoiV4LMm5XzH": {}}}, "eventId": "l3NgOEAbLNU916Iq", "version": "ihD17fFNXiyTbFdu"}, {"dateTime": "7AmaQ6T6cKkLWQRB", "eventData": {"eventName": "5ZFH0q8ksD4vIDr2", "properties": {"T9TU0kjiAB0rZHNC": {}, "4fDA8h5mlymLZmXt": {}, "5iJpWGwWAFPhuYdB": {}}}, "eventId": "u52VkDXYFRiRMv0k", "version": "n2VljD2gwCGqpLSg"}, {"dateTime": "FY0ZNMo3pdPjruvC", "eventData": {"eventName": "bUwIC10juPja6isn", "properties": {"tRDtemxx6yYdJnuY": {}, "xlF5E0f8sEKXb3qX": {}, "55Jg4V3XhdA1tHzp": {}}}, "eventId": "T3S81hfxoEXCdC7h", "version": "VxnRmXwAWF395Oiq"}], "thirdPartyUserId": "DaK8j5JxmtqtxhFp", "userId": "FxIikTsB6e32umJn"}, {"events": [{"dateTime": "qJKF6Bok5czlcMKH", "eventData": {"eventName": "Ie3ifZbfCQGjOwzo", "properties": {"VHrfwbTYfb6YEsKk": {}, "rp0ylkwemgZvnwxv": {}, "qCFEx7RNxrhbdHkm": {}}}, "eventId": "DxAAPtRvnAWAMYFA", "version": "u3uvzxRlEOxgJQqw"}, {"dateTime": "ANKMxkH9kjUlkoW6", "eventData": {"eventName": "4gDywXOaDzrhPMqo", "properties": {"oxxkmeIKiUqyGr3J": {}, "7xPoRsKAyEhsTKoC": {}, "UofgdZY1D1sOtgCK": {}}}, "eventId": "ODBHLq3NqDpCj7mU", "version": "N8TyZSYdOXlIs6FX"}, {"dateTime": "zt4UjYRkbHVGIYIE", "eventData": {"eventName": "xUmxeXpsRQ3EDfVx", "properties": {"veXAGCbWwRPPGFcT": {}, "q4edIKWQ9LeL3H05": {}, "meW2KOKhcdycbWzX": {}}}, "eventId": "iCrxdUAXhY9APGVM", "version": "gpszzpY9CEWe47x7"}], "thirdPartyUserId": "PXM3rGChDPizcihp", "userId": "nOvES5RGiPHX1gUc"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --name 'BwYVguLVMpEJ6c2o' \
    --offset '0' \
    --sortBy 'qSxY5ZmXWY2AFyF2' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'XMtUoAa1HDcY7LkE' \
    --limit '60' \
    --offset '67' \
    --preferUnlocked 'true' \
    --sortBy '3YyTpzjQUaxbbtgQ' \
    --tags '["HUZstFJmYt6ZMW1i", "ANA35u0tele5aYhP", "EjXGU4sq7MXLWGfY"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'fKEvyQkzfVad0EQ6' \
    --namespace $AB_NAMESPACE \
    --userId 'nbpAEex2isBrWqAv' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'lVH6Ee7If4vOCfvq' \
    --namespace $AB_NAMESPACE \
    --userId 'iZrAGfXrSPzUyfRz' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6EC9nnpMBh65a8wp' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'lQ68d5CREecSC97w' \
    --achievementCodes 'yXDIyuLDXN6RBtMN' \
    --limit '65' \
    --offset '19' \
    --sortBy 'LjXcbBZLoCvzabMx' \
    --tags '["viRPNyD0JEPcDLW3", "Z1X4AM41nmBUqLiu", "T3AyZDApWq47eYuf"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '67' \
    --offset '14' \
    --sortBy 'updatedAt:asc' \
    --tags '["ML3fLc2PWdL9ain0", "UJAVJdrABqmibGXB", "ivsyl08PiS0rnIHW"]' \
    --language 'EW9oNubaKpYQHusW' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '0Tp8FopuojFHqwSs' \
    --namespace $AB_NAMESPACE \
    --language 'KjbbYvFofI6Xygju' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xQKFgYQhr44DeSaJ' \
    --limit '16' \
    --offset '37' \
    --sortBy 'ZARZSSIjm3faH2IS' \
    --status 'agHhK2tE6TWL4caF' \
    --tags '["nSqqkuT5xl3ves9s", "SE8sbfGLwvEt0Ycr", "Di9cAzpjvIYJmvFB"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'D8IlAA6nRJgJh7wZ' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '50' \
    --sortBy 'ZYqE3DLla6lnylSE' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'atIARRorTmfRICwH' \
    --offset '68' \
    --sortBy 'vrsW9MbmI0rHHlJF' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'wXps5fC4J70LLri8' \
    --limit '69' \
    --offset '56' \
    --preferUnlocked 'true' \
    --sortBy 'UQjhvkVB53qlnyWH' \
    --tags '["Yx11y5YMfZeyfsVI", "aipZp64SWLAYWQuf", "OQ20tvSCffqhHglF"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'c2Zsm8pJP6vmSjIm' \
    --namespace $AB_NAMESPACE \
    --userId 'W1iqPdUQJKFhIhtd' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '57cAingo4zbqq5yf' \
    --achievementCodes 'ArscFsSDAQ5QM7SZ' \
    --limit '64' \
    --offset '93' \
    --sortBy '6BiBpxXnssUZQp9w' \
    --tags '["UIONP2mQ4BVfBPkK", "QoLxR2cWmwVLwpjw", "njsHl3xRCizxJQo4"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'mzt5ChjGjqFaJS4b' \
    --namespace $AB_NAMESPACE \
    --userId '3MV2276BHbdknQIc' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE