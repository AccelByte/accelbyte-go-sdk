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
    --limit '35' \
    --offset '47' \
    --sortBy 'listOrder' \
    --tags '["1rTTOxD3K7j89aG1", "lhPzTGiNoPuklVvU", "4FvsZU1OFNYXGxCt"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "yT2wK6nrR1XTrpyC", "customAttributes": {"ca75jGlKjuyUy2fy": {}, "Rz5KQs8JUVauenZN": {}, "iQbyRKOAF2mZYKvA": {}}, "defaultLanguage": "a0JfN5JB6qi4Arpu", "description": {"IskbVeKceTSFF73W": "lzwesvHhcxdBQm0P", "fRduO7YUyTJsgake": "BRX8cY5h4Tp9x7nE", "3d7t7mwyi1754R1k": "cKv7GKNpdIPxBLM0"}, "global": true, "goalValue": 0.4637214257125978, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "OsBZCwjbujyZLU6w", "url": "GUxvbLCnFaTmC5Om"}, {"slug": "jYE4wDqYLP1UJi1Y", "url": "vlsuli7vuWUvjSbl"}, {"slug": "YB25VpSRbfY0CetX", "url": "OXbBdNU0Rbcpzkte"}], "name": {"Y7hzQiq3HE5ctg8E": "uHkjFBXMPGPcTmeP", "4YN06JVZmzCqlLLM": "VFICB997zctHFVPG", "MBwYqfJGW2Np2tKR": "GB04QgmLhw3ZBECh"}, "statCode": "IDuU668FS5JSmoAP", "tags": ["PQDo5XZjF3wX5s3V", "mFZQTHdXQHcktjWV", "8QPrl3fcs6JNrkxz"], "unlockedIcons": [{"slug": "ANRtcLJsQRNB3X74", "url": "tjKhtiQnFr6yMX5S"}, {"slug": "rSPZbwHsgXWGuD4t", "url": "ZSgR4kpaOuSG1Zye"}, {"slug": "ChhS805QI0fLseKe", "url": "ofrYR31ljpqAkKen"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ILPa2AOhNi0iDF2s", "PLWDV27z5W4OnCdX", "dC7f8uVHRyrWljbI"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'HSynyMxv4wpfZoQ1' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'oPuIYVYoeDCdYZ4W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'twYHy1ioL63qS844' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"e1UWGjLL6Cn61n95": {}, "F3wacdJmOJPOZnFw": {}, "ijkEfdymZO9XyYRj": {}}, "defaultLanguage": "1ioKu57ePX8ork4p", "description": {"WGQeSaj88LqnIwAe": "Kpb8KOTGwhsJo5aP", "U56KITUgVeStxoaN": "dnplSpZdBl8Xb9MC", "opjJoj7uC4GN2jYj": "nS5jrYwJQxpPZRDa"}, "global": true, "goalValue": 0.2564198492027311, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "7B6Ex5N4QwQdGyMA", "url": "tuvCesHnUP3lm688"}, {"slug": "68dxuaztby5zcExY", "url": "wtfXElnqlOi3Pei4"}, {"slug": "QR1arJqWiDpVDI0v", "url": "AhwkKiRSEh6fPaBK"}], "name": {"yGV1CVCgPEtDy5Y7": "yZ17wUHwHozxMPrW", "MJfXpMZMcRzifYRA": "THuyFcX8HvSKYPsu", "oKKfgzmT2xkDQ3wL": "VcMzDI6bOayOIvwt"}, "statCode": "t1Qk4PWx94t2dhw7", "tags": ["4UeWi3g3a3dcH5X9", "86ggIgwtv75Ryykj", "NK1kyRM7DlhUAL7z"], "unlockedIcons": [{"slug": "HbmZYPEjyKa8YlU8", "url": "ZL214j6arD9qFhl9"}, {"slug": "XG05wQAFoHirTzN5", "url": "6PXAwV62BuJVLNua"}, {"slug": "LZXd1qqsKBuD3WGl", "url": "MtXTvfZN3JG0DX3N"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Z8Y7xOyx4ste9TaK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'BjAK1zTErcWHH7td' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 8}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'wPIjYOHXsXsHdXe7' \
    --limit '36' \
    --offset '22' \
    --sortBy 'createdAt:asc' \
    --status 'JBjMCC3YtebMzKbO' \
    --tags '["5I4eeoRjUA7fLgXI", "IvvbMkkEBbP8aWsm", "pqPwmourDxbMgzCi"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'askOnvRd8FV4HdKc' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '92' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'cgZ5jYTXEbQOBAwa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "PkL85y65dnSC2qUp", "eventData": {"eventName": "BSYAeZHrWh25bAIH", "properties": {"tmIC1VwAUCPVufLf": {}, "HeZwViZqCNdhTfmF": {}, "Fn6kXfXB5nMlUZHB": {}}}, "eventId": "qV2XYcTFZ38mMas4", "version": "awHEQIo4ByhNecI5"}, {"dateTime": "4be20zM4Qr5EPaYt", "eventData": {"eventName": "6ByWPZa0TXajFeMb", "properties": {"gIphvWM3S2Yz5ivu": {}, "kWSb3gTBkTZAGs1e": {}, "qFSL3fCYjyLwkqvI": {}}}, "eventId": "5z0TMQDk7GBpDtEA", "version": "rG3xtg5m3rSGi5B8"}, {"dateTime": "X700BWBc8jfSwkZ3", "eventData": {"eventName": "1vP6a6tH7WgME2LX", "properties": {"blp14rqzVVPdyItb": {}, "MHuAVriAhuUtdbM6": {}, "mokzMk8c5cg00rik": {}}}, "eventId": "uHTboxCahu6slfML", "version": "YzBpMXj61pv8AswQ"}], "thirdPartyUserId": "mDN6q0Pl8pFu1vL4", "userId": "WmMFtmRgO8ZxzyHw"}, {"events": [{"dateTime": "VUX1iaL9wAEZ5kpq", "eventData": {"eventName": "z7E0jFD9B4uKr8kT", "properties": {"dT5vXw3zHE2zc1Vz": {}, "Jdgs17xIHNhz9SDM": {}, "sIkfiMrHyEMx7RPq": {}}}, "eventId": "kgJeGjo31xISHbUX", "version": "UPEpkpJza6y9H73E"}, {"dateTime": "ADtZsd3mosvhLnxt", "eventData": {"eventName": "OTE7GOZj307RegP4", "properties": {"AfU0XzI7tJBbresg": {}, "T6NKIaBASd9q80BC": {}, "loAobFbcyalf5MCg": {}}}, "eventId": "pz6AFC1700YJpVGt", "version": "FBeSCtTUjqTP3fLI"}, {"dateTime": "z0AhhiDdn3bUui28", "eventData": {"eventName": "ezRW0qTkXPeDQh4Z", "properties": {"5h8kVSJnb75HwsdI": {}, "F0ZWA8YEhrECYYHn": {}, "JG7AUbQk5GN2ZEzp": {}}}, "eventId": "A6P0hp3ofW8j7hzs", "version": "VXhSfjxSjzLEixJE"}], "thirdPartyUserId": "rdzYOl0165cLfT9s", "userId": "NpQ64qBoLo69usCz"}, {"events": [{"dateTime": "R2Hgt97jwxittYMK", "eventData": {"eventName": "0nij4phkC12AQeTN", "properties": {"KjmtAAEEI9AxFEs6": {}, "2uv14moons4OzqAt": {}, "tvhV4U1jJEWZhfmY": {}}}, "eventId": "XLNYjhFoL9AjQpjo", "version": "FbRjm8DDoM17CDxs"}, {"dateTime": "lSMp8MWizFIWhsCa", "eventData": {"eventName": "M4s5ue7Tu6zXoMXh", "properties": {"KrUOBzQavitJ6clt": {}, "0xCj1mfJTMoBjOU0": {}, "gAD9Fj4SAAy7X0CJ": {}}}, "eventId": "YPumUPA1wqhRGKRB", "version": "XD1gQZAgmAzMdaYg"}, {"dateTime": "ts2zy4saPU8y59aH", "eventData": {"eventName": "6JybAp0PbW2RNOnM", "properties": {"TBgPO1nlSZ9jlVNR": {}, "XRgAWwiicvTZxFQD": {}, "apyAOrE6T3WJTmwk": {}}}, "eventId": "n2oAMJxNaSjN3TGk", "version": "VsHpmUc8Fhsbd0ib"}], "thirdPartyUserId": "8vj2pR1ZuZ4jU84M", "userId": "2i6nBSliZhM4u7Nu"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --name 'TcYuIn3Q0eT18rLJ' \
    --offset '15' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'PBiySF26eNW1O8CU' \
    --limit '14' \
    --offset '68' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt' \
    --tags '["WX0fRLksMtgd5kBx", "11jMW0Ucx3vY4qeD", "ZvKp4HGiFWPNx28L"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId '15XigYQV5Ji4yH62' \
    --body '{"achievementCodes": ["MCdHPyNo79shBBN3", "rrsjpV9M49Nc9kKI", "jNHZItZhBFe4dq2w"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'DCRkTzMkQR4gckCF' \
    --namespace $AB_NAMESPACE \
    --userId 'MDHcfmlr8imuEULb' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'vSicObdTG1GoYXWc' \
    --namespace $AB_NAMESPACE \
    --userId 'E0MYkWQYnWPz4SVg' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'T2giJeFQ4uHLtTfU' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ZZDPQcY2sobcQELH' \
    --achievementCodes 'LuDcXZOWp1sQO75h' \
    --limit '95' \
    --offset '46' \
    --sortBy 'contributedValue:desc' \
    --tags '["LfUpFCbNgDlLEob4", "vHmjrqmKPLCmqDbz", "ihaXVcIWsZjGPMfv"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '51' \
    --offset '68' \
    --sortBy 'createdAt:desc' \
    --tags '["5iaf9SupESLXiDCQ", "v8s6rVEImTgjFdOw", "zVvZmly6BP8R3Gew"]' \
    --language 'JRmSRTD9kDep9IGr' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'hKBfaK6jIeTRSp2x' \
    --namespace $AB_NAMESPACE \
    --language 'zx5G0UqE6pd1Kqip' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xeflR27q5ppTAlxn' \
    --limit '28' \
    --offset '90' \
    --sortBy 'createdAt:asc' \
    --status 'eE5eTC8WjxyuMCaJ' \
    --tags '["BnUDck8c3pdyMJ9k", "PIrGNiEbcuo3RC96", "inuuwqoNjhShKpQP"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'q7iKCOcgavzjMzBZ' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '10' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name '5pd6q1DkamwkuJ54' \
    --offset '88' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mMIknw4BmVwVF7n3' \
    --limit '54' \
    --offset '10' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:asc' \
    --tags '["9fXihIpIDBbsUIlr", "2WnajysQKODBW7SO", "9zsLKWFZZZimrkcw"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ifIBZ1dKpnxFdVsl' \
    --body '{"achievementCodes": ["aan9v3LXirKHN6sa", "qY7HpRV0GEffsScJ", "AwOkQG4p4LZ0sACG"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '8VB6fYnAQcpy9xZs' \
    --namespace $AB_NAMESPACE \
    --userId 'xD3yRsyfBlqtdo4n' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '6v7PaZwrpdnr14HB' \
    --achievementCodes 'ZQ7YmkKJdPASpsAQ' \
    --limit '46' \
    --offset '83' \
    --sortBy 'contributedValue:asc' \
    --tags '["HYr1dmhxTcdQI5pG", "9KW9xZWoFqHrdGC9", "G9kJ7ISDO715KYGx"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'oTTlnuI5U8GkC8eM' \
    --namespace $AB_NAMESPACE \
    --userId 'WIjcWgIuSS3fwsFw' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE