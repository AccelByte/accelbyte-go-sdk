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
    --limit '77' \
    --offset '12' \
    --sortBy 'createdAt' \
    --tags '["lf8qg3QFMWQtwIVk", "ovF05zVetKNuQUCz", "pWKBL6NONbnFgxvP"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "nhxlvKqvDlDRucY4", "customAttributes": {"qYK8CNTtJIWLjPuX": {}, "b1MUyLYeaud8D119": {}, "7NdNp9TLr4ttYw01": {}}, "defaultLanguage": "IYYBmOcK91WX1vzy", "description": {"HiJU27n5N1WKLGSn": "5tktqcG5CvdifVfV", "6ALmCAwrUhbcMrrL": "fOMZPytXc4jKoaMR", "w9UjBywJ1XPwiqoC": "PO7FrBm1myk8hWfn"}, "global": false, "goalValue": 0.7029995325138483, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "VtLBiqMdr0YZFltN", "url": "A0zQdc68JZXh27zL"}, {"slug": "ZtFv0xhOQ33cS0TQ", "url": "VmARNPlWV5NXuVp3"}, {"slug": "I1YO2zA5hzdHraq6", "url": "hQpgQjCse8F8KdLr"}], "name": {"rrOgMiyRDs1V0vq1": "q0K8SMa6xklKZByY", "TsspFc7R90Tb58jA": "GpSKlESLyruyHGRx", "8xQ8KYQHtAYz4qOx": "fpNFJTVCCQAFtQpe"}, "statCode": "mhTpONGR7GC238p1", "tags": ["pZ8N6pS3gtJuux1h", "Tr88eRKazO9iLTWg", "dXPgBh5PrPEwRKMi"], "unlockedIcons": [{"slug": "Vv6akTxIQClsD2qd", "url": "ZA2iKxU3sTJxQsn1"}, {"slug": "Wdvc4G0e1Jzjyd9I", "url": "CfdlwWIvUvclQwek"}, {"slug": "pF3YRHLBYnG8oRTa", "url": "8VGFuvisek2gu6TU"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["B0abkWDgVDttgIL9", "SmbHgVd3CZMJEmPp", "s4F9ZmitsH2ufD99"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'Pn5P8mPUeodwk2It' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'vbGDUvlsvcL9Mp60' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'j1WxnPQN9hGhWMt5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"fkbpsVe1i16ODavw": {}, "Ri4R2hHA4wp180za": {}, "fNABLHcMLXvg7Ibv": {}}, "defaultLanguage": "75J5v6IDXlTB0PLe", "description": {"9QcgbRb5LVbRBjTP": "BV04d5FIAmoGCvYa", "qYZCXBy5XsIaFcj4": "r296PBUXIw2ey186", "DWIU6assElYNWHp4": "eWeT198aw6QCSHcv"}, "global": true, "goalValue": 0.6769080048632414, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "GuzWrGAXefTQHhvB", "url": "7o0g8qTui0hbvgdG"}, {"slug": "chccrRr5wg9HlEOQ", "url": "XfJBe4pOJzkUAcp7"}, {"slug": "7aZIB5mfLOIBJCns", "url": "LoYdc411Wn00F1k1"}], "name": {"EVCEpt4u5hznU9e7": "AJGbLbAHhhJB8XRm", "x9C8L4HGOCu7tscM": "B7lXs9Rmhx3cNWmV", "QiKCF3NjXk4bEPJ1": "8YG9x5dWn9CQ6EBW"}, "statCode": "zcip65fNKKQkM7wG", "tags": ["ijmJwOirMkzfFXRo", "L9IU5atwOVtmBrTc", "lJzSWeCupav5ZAOc"], "unlockedIcons": [{"slug": "tTIU6e8eMuUT80H2", "url": "gGfLaCNkmV6n7Y0G"}, {"slug": "hWK7w52P8IXs7Kgo", "url": "LP2eAjzk2dSZgJQu"}, {"slug": "yaQzD2srzGNhLUOP", "url": "9xSlCbVQRzCtCfOT"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'AuhghO8WEQq86AIg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'vush9J3aLKykB7eq' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 8}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '5OOigyZXm2xUWrXB' \
    --limit '12' \
    --offset '64' \
    --sortBy 'hDcGnvBSn1LYXMyG' \
    --status 'FIBCpETQEQvVjZCl' \
    --tags '["c1cRvcQKCPD2FVLj", "Bkffka6ExLrDfBkN", "QE1NSWJwSeleAZCR"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'IsZORAmmUBCA6I0f' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '57' \
    --sortBy 'tMhvUjK0fBSCEhAa' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'YfX18mCzu1ndyIRh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name 'fHgPXiocQRpgMpoK' \
    --offset '27' \
    --sortBy '5K4o1rmT1prk0Unz' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6ggtdIfhLzOzYCUf' \
    --limit '4' \
    --offset '20' \
    --preferUnlocked 'true' \
    --sortBy 'MIgQr6LNzFxeWasC' \
    --tags '["bU03yTv73fVF44qD", "i5rykT3TFBKnNqHq", "ZXgAkelzXy1v9G39"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'J8klrmIRZWaBctZn' \
    --namespace $AB_NAMESPACE \
    --userId 'RI6hIjpKkUUOrxvY' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'xIR2ftdcHaNJ0SrT' \
    --namespace $AB_NAMESPACE \
    --userId 'x2mH35L3ZxPM6Tom' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6TYjVMlt2e01sPFO' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'sEqggrgrfx8qPYcQ' \
    --achievementCodes 'nXFk1n7z70Ovxz8m' \
    --limit '45' \
    --offset '67' \
    --sortBy 'Zi5h8rhDkEZrv5WM' \
    --tags '["zK7fpT104QHm0gf9", "CKQOaipthvYHenB4", "fEbm3cR92jNSaoYc"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '50' \
    --offset '73' \
    --sortBy 'createdAt' \
    --tags '["fnfXUy7jwiZIGL0u", "Kji9neTBM360rUS6", "FsEWXy85GKWfPJYB"]' \
    --language 'j1XXty6X8lDeFQES' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'upb4sNI0TFi6EOHa' \
    --namespace $AB_NAMESPACE \
    --language 'jtqhAANG4du8YlcS' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jefPuIjOVPDrPUnh' \
    --limit '17' \
    --offset '82' \
    --sortBy 'CE773VjY5HEoy9g8' \
    --status 'XBBiW3lhwkLkKkhX' \
    --tags '["senaTIu1YRdzc84R", "6f5k3DewBFVmbaip", "29kzKztjqpolcEbO"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'C2uITuqssksV2kR6' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '70' \
    --sortBy '59yiX4hLBZ4uKDHF' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name '7uwIDz7sQvFbPvO1' \
    --offset '64' \
    --sortBy 'erhFkFA1BTrFevp1' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ONMzE3HcEblINUo4' \
    --limit '75' \
    --offset '46' \
    --preferUnlocked 'true' \
    --sortBy 'eFVsUgr0AovToC8w' \
    --tags '["XPVRYSuVIEGdclg0", "IgXv3apSSbvlvJH0", "7Sf2H6MeqCP85hit"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '9KPl6WS3MLPH8p48' \
    --namespace $AB_NAMESPACE \
    --userId 'X937zMchl01fqIQC' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'QpHhyvtw9qCvWZJd' \
    --achievementCodes 'TKEBVLObf9yhQzns' \
    --limit '41' \
    --offset '47' \
    --sortBy 'YDpdNkvxG00OUdNl' \
    --tags '["SdrfWUmiwtWxv6FT", "PLcvCo3Pr9nQi8x7", "YdZo2E07BlxmadLl"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'd9WrGw8d5Z3ImNEN' \
    --namespace $AB_NAMESPACE \
    --userId 'kZxLVfT8cnq0L3vX' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE