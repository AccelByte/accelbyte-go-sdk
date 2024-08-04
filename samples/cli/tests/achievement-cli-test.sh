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
    --limit '71' \
    --offset '69' \
    --sortBy 'updatedAt:desc' \
    --tags '["KZsUuyUbE4T7bB1E", "bVXMqV0WxcszJdwv", "su3yz1PPLxnUTfZs"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "mNSfL61Gil8NgyGB", "customAttributes": {"rVaEOQbHgfTXHr84": {}, "UNK1WNea6ipPDBSG": {}, "pOviwNes5WDWZAv9": {}}, "defaultLanguage": "zuCksSvHqy7fIkWW", "description": {"Jxo0pN4HJKNiPKNC": "AXH0K7RtxksSstPv", "rOds6OFfqKGXlf0I": "zcYgndCFuPqqlGPW", "mKZUX70HK7EeTlkd": "sKPmVtVZ2ISirflU"}, "global": false, "goalValue": 0.8092360177294015, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "REFhqVgEfsaMjSML", "url": "OhhqDsHPxwV7qzbF"}, {"slug": "bUr8x5MUAMQfsjMo", "url": "hM8ihU7rV1pzLxa7"}, {"slug": "jADemOODcap5kWXC", "url": "dDNZ54WPWugDVSv2"}], "name": {"u067xw9a6eHKUIyL": "boaFY2CCcm7OVm13", "eUqlBb7PlnNFTdYv": "3U4dvRgG84WR7Q7e", "Ln3PtYuM7iUcmmH8": "M0ecfq053gTHO124"}, "statCode": "GYWMRM0OfBSIdAXa", "tags": ["AzVEe4dFo2DyD3Fh", "3uxrbMH9SzfxFJbm", "vAe2CVLj9T0M1z6c"], "unlockedIcons": [{"slug": "piLSecr9PvPh8GeV", "url": "6vQZiziZwM9EOJ3U"}, {"slug": "ICqUJC5Vm8PO7n3Y", "url": "aE34Tzl5Tdf68J62"}, {"slug": "hYhgGzyJAio9jZ6j", "url": "m4Cxb11FFcV7x5ug"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["YholjcNjjvEXZ603", "TTDazladNYAJmEhY", "c0Pn6i5hhEe3JdxX"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'LK6zymC7zAiH6xQf' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'XJTuNfnrJZqmgEOo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '6pL5syMCsN2ZVTSC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"okMyfYUI8clZNVRT": {}, "xvtr82xDJQeuxCHw": {}, "TGSuomglEwl0060X": {}}, "defaultLanguage": "YNL41WCyeGGdvyvb", "description": {"xW0x72VcowqcQzsi": "I45kbxk0Jv7PqL4k", "55fod8nFZskUChPS": "GKtr0hdTkmyLuxwq", "yCCRkvsM6w9FHbD6": "1Gb1mPVIPKnIKlHO"}, "global": false, "goalValue": 0.8054617270115072, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ppgFv9N9iiUTCbvF", "url": "3iSQ9b0IXS7fKqnF"}, {"slug": "qouRkFvCdWoCHtIS", "url": "QNWjs8tHEP39FyT9"}, {"slug": "SCje6w4MNuKfDkMB", "url": "2kGiGoBDNhtBRZCw"}], "name": {"gLLjoDw6MPa8qXmz": "GxlHUdpzVc3oPcwa", "14Ww57luCo34ca8D": "ANZ8RtWPX3i1QbIP", "9MGLmvvum1B5jWw6": "QemGnbPLuZ51MULm"}, "statCode": "f7nOmjsM00jItwnu", "tags": ["ADl8gsPEEOJDQTlC", "vssD97KF4gNdnUPx", "brGTKkphZRugCzJm"], "unlockedIcons": [{"slug": "xxZDq31llGN3JWzB", "url": "sRetnoJ3y0qnHiVs"}, {"slug": "q9Cyo49Dxm3pbCl0", "url": "Jqxi4GBFuViPhcZN"}, {"slug": "MJPsfavauVGtvjvC", "url": "7rjD3AJh7BVYacsI"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Pogs95XPrNnfeqri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '92HG8mnpIWEgtdc6' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 77}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'dIhNzohvSzTvfxge' \
    --limit '56' \
    --offset '60' \
    --sortBy 'yRp3E429AEeBvnQl' \
    --status 'ndmbzYHyKpNr6wX2' \
    --tags '["gDwhdFCMMrtBI3pS", "QGUHUu98tXRagnDE", "KJvENWm096MDg1BC"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'BeuPIkdsPunK491M' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '51' \
    --sortBy 'AzazfU5GnTdBR15u' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'vqlpR1AHSG9DNAhs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "cbpmXgI31S7eHBl0", "eventData": {"eventName": "dDeCBV1AoerO0mht", "properties": {"RJw8wyXfq9Eh1N39": {}, "OYm7Wh4K3uUFlfko": {}, "DF5y9Ys7Jq1B7Sf9": {}}}, "eventId": "Y2u7Udf8QksvKiFf", "version": "24ccCw1k6PPYOSRT"}, {"dateTime": "wxMkKQXcFGtGi9wU", "eventData": {"eventName": "f4BpdIaVVrFLrtb3", "properties": {"9S40F1COmzK3DPpd": {}, "rbLD5mCSkHRTSsDY": {}, "jc3NyxUyAb4g1Vfw": {}}}, "eventId": "B8CalQ6yXii38iMv", "version": "aELV3NKoI3tMPLqJ"}, {"dateTime": "r4bqSPgV5MmD1l4A", "eventData": {"eventName": "G8ekLh4k3LOg1mHI", "properties": {"LdEi8R9NkzQh32Qm": {}, "pnNKjlBgiV2NZd1Y": {}, "TKvuhJp20NSQkFIM": {}}}, "eventId": "779ZU79pD5Dxgdot", "version": "kpgpK5Ir8W1S1Udq"}], "thirdPartyUserId": "qGEkWgO9JsENMRYT", "userId": "zQiXiQYNHMOZ1Pav"}, {"events": [{"dateTime": "719N8imyVr3DfNsG", "eventData": {"eventName": "I7WWMVqjDVJoqceJ", "properties": {"6B9r0hGqdh2ltziW": {}, "MEMvzpXHr8mz7t3l": {}, "51dWFixnU9KdvJxf": {}}}, "eventId": "1QmJHcdY0bgjn8Vz", "version": "AsTxqM3aMbqIlYmE"}, {"dateTime": "Xo9GaUz6hrPaQMJR", "eventData": {"eventName": "S2UZ5DSZGC4dnDsu", "properties": {"tBeCcz68FGBZoghG": {}, "kBwXKZ6ZyEEelprN": {}, "QK9TzS8lB9eWJ2do": {}}}, "eventId": "Wd5YLBw0MSmDnDn1", "version": "A3kf4rcYmXWc3sBv"}, {"dateTime": "3vyyBNI0Va2w9vXA", "eventData": {"eventName": "b7ARAQ7LVbGIUBIS", "properties": {"orXOs4EuKLF5fNCA": {}, "qaLFXYxdnMO2iTRA": {}, "T23qRagS3tyN9nyo": {}}}, "eventId": "7vbi8HHBoyirc6zm", "version": "uYA9i2aui1Vssxea"}], "thirdPartyUserId": "FNRRFeRpWviggL1n", "userId": "zsp8W4E4rJsP5ESk"}, {"events": [{"dateTime": "6nD1a3lxlr7qo92N", "eventData": {"eventName": "nRgrNfLUydYSHpWf", "properties": {"yQINQiL6i5oN9pDQ": {}, "yPnlXjFKV3qor8ah": {}, "1aNa7CydcX8NLAFA": {}}}, "eventId": "GZ5pM6eVzxaFUSna", "version": "25ioZaq0H2tRmiv5"}, {"dateTime": "1O4odsTzrOLcVLTu", "eventData": {"eventName": "kVrOzJBF1ScFThOq", "properties": {"PnTleLFYIkk4Zl4i": {}, "lDgM1FYZEnxPdaY1": {}, "EeRRSGJcn6Yp6jic": {}}}, "eventId": "ejqEhTmjJRHhw4Zb", "version": "YPM14Yqvcs85P2Zc"}, {"dateTime": "Ugn4VhqJ5c7Xs69g", "eventData": {"eventName": "hPfXnOIFXKGLFWf2", "properties": {"vDC2H0WZR5bOTJ9a": {}, "ZqNbpMLrIGpnCKyp": {}, "JGUpEt0xh58VOB1n": {}}}, "eventId": "Vdl5Lli26V2gIJru", "version": "0BW4ojUnu2BueDRQ"}], "thirdPartyUserId": "pn7ezKY2Y3N7FErt", "userId": "MqoXtPRDHjlEYCmw"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'qJtQr0hWPDxydr8H' \
    --offset '52' \
    --sortBy 'wnoSj2fWIKEOO48e' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'e5NNKjREDWZn5506' \
    --limit '76' \
    --offset '53' \
    --preferUnlocked 'true' \
    --sortBy 'TLeGYTE7ptIN3qjC' \
    --tags '["bqsZIvVc3clDvbkL", "wgcsTTAs5HSxvqP1", "owZsVdnbGvM0p1aQ"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'PZYSMTbMsNVjTc8W' \
    --namespace $AB_NAMESPACE \
    --userId 'YVglUMceDogpoDkC' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'lWFVWG4B1FU5fCQk' \
    --namespace $AB_NAMESPACE \
    --userId '4k0Ia1XcdxXOdO6g' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KOVUQkra1B33YJfA' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'dFVcReJRfIvfkFFH' \
    --achievementCodes 'TNZSkZp94AsE5qFx' \
    --limit '4' \
    --offset '48' \
    --sortBy '3cfm8nltb2VIuDD2' \
    --tags '["FsvOAgr09rdcanmn", "sDyUGsjzmNqFw3bN", "DTHN39AOgynUqgne"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '94' \
    --offset '78' \
    --sortBy 'updatedAt' \
    --tags '["cX9rGh3xf7U2ocfr", "Ty2cTaELxPddFAtK", "Qtgikr6ri2pt8trq"]' \
    --language 'pIdDdiJl9nxntPq7' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Z7SXL8unJDp8jXfL' \
    --namespace $AB_NAMESPACE \
    --language 'LOT1243bqVgnfOuG' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'fb2DFgVESxV4JOwy' \
    --limit '73' \
    --offset '66' \
    --sortBy 'q2ml2oea8My57i3Y' \
    --status '40JXMcedMjHeAzpM' \
    --tags '["7nq4grdrbSn1gyIO", "TYCAIB7r93XCBbgN", "Gv9BXJqMZR9tMm7a"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'iqUCx8yYwX6VBUOK' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '75' \
    --sortBy '9zM596fgUjES0Lui' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'g94Fqc8t57lpVQ22' \
    --offset '1' \
    --sortBy 'PNKri0NsUpXHyN3f' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'OdrlyyXPB2NXBsA0' \
    --limit '83' \
    --offset '51' \
    --preferUnlocked 'true' \
    --sortBy 'HaYggqWbhCxuvIQ6' \
    --tags '["CJige1eP6XVlrMMy", "o82Mc2FA6RO72so9", "EoyQXtXgmHHTFleK"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'SdLzYGIhe0M9TfMr' \
    --namespace $AB_NAMESPACE \
    --userId 'ZFaFjGBbOFcYfDe0' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Efbc4vlOJ8yayWMJ' \
    --achievementCodes 'GAcctTN9ta5cPuub' \
    --limit '68' \
    --offset '100' \
    --sortBy 'C8TntkbhVOJt9bWh' \
    --tags '["ZeFyq5mV36NpVeOq", "dpCtnESTNnAtxB9W", "QP98wHPLG4WTFRFC"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Dv4fS02nfbJw1hAb' \
    --namespace $AB_NAMESPACE \
    --userId 'iNdWSuMrxkAnqnfM' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE