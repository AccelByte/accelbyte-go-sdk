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
    --limit '70' \
    --offset '95' \
    --sortBy 'createdAt' \
    --tags '["A4PHtm9WFY8lXZe6", "UiBUUWzExX43qjHx", "jZACOr9Qxmy5mkTL"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "xeOuwJzbvPdYytMu", "customAttributes": {"OOXu7SNHUkcG8ckR": {}, "uVF8kZsVHVwWX23r": {}, "caHC8EkunWFqc22p": {}}, "defaultLanguage": "LmGUtjG6GR3soqab", "description": {"YKjfUIJgW2DEfRYn": "wrMecwt7FYyqt5A9", "qqp2I1OS4sPu0Dy9": "IBYvQtzdpPLZxlGE", "5kEhrGwiapT7JYyk": "zNmoVafcxNL8243H"}, "global": true, "goalValue": 0.24051885058347733, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "ndsdYpwDwy9kxGZv", "url": "7nqTs3ihuPEoxphv"}, {"slug": "bktbpIfKs3XuSsbR", "url": "BkIVj1ecAhbFBBkF"}, {"slug": "vsomgkJYSv5tZkRv", "url": "ptwv7azpvZjHIuMD"}], "name": {"OidHPFtwksoXUkSe": "V11Q0sSAZyiYrqdJ", "LCtf8qnDcX9hk16G": "IueZKpy1vjoValqV", "6pNdoshrFpEgLVZX": "vSMINdXGVH4Vsy6y"}, "statCode": "nRWga5bodsED528B", "tags": ["inLmHDNNjHgkmTim", "m7PBXzgAm4FKN8Kc", "wLIVVXU87iBBm1v0"], "unlockedIcons": [{"slug": "btwTp4IBwQarm9F7", "url": "RPJHv7aqxxOcDGqI"}, {"slug": "6occ7Wz4sjEr3V2Q", "url": "zPQOxSvG6cblGFV5"}, {"slug": "Wb0Fy3k6k4ogwdoq", "url": "HfufQsVBeU7ttgpP"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Ccbej3nRuzZ13xXA", "pKITmxYnzkYFsYvr", "ucvgr781U6ks8mPv"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '2Dh57qEvFexMwZgc' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '4iEapR4vWjMmyoN0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'XA7DZAAWs731LnSi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9GbaMLQPk6sTpm6u": {}, "MrvQFqZkpIOB8cU2": {}, "4LH5eTMxlMEExeHq": {}}, "defaultLanguage": "ZOXX5HfY92bbRiha", "description": {"tfeuWDvOcX46TgPW": "mM9ZJvPgoX4PW2Zt", "4i2zEh2mQrbcSZnG": "nHu9r8HxGgSj6ScF", "KmR6sRLtq7zMxIFO": "UrL8MpWNxZjMfHj1"}, "global": true, "goalValue": 0.7232109625963687, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "aqdzUf8gJw9Nxzwl", "url": "jlOCgiBF4QXPF6Mt"}, {"slug": "Z0Kwa2eSyksE4PUe", "url": "caLmhUqnP2JUsgMG"}, {"slug": "XNZhg46znkNFAhea", "url": "fsGFDVBBY3cBsrLc"}], "name": {"fc4iF5qqhI2BcWYL": "DHq5Nso9xiTB32qV", "I0ZDWzih8je98stz": "cuuoWbHzRtoYngm8", "uqojnDJtdHZAoZjM": "d0XJO4a43AuQAfpV"}, "statCode": "5SRFoTulrJhSTOt1", "tags": ["tnVoGDGkzbMDGg32", "5ZBPFgJlPDXzdfiQ", "WpGp82bVhqJClewJ"], "unlockedIcons": [{"slug": "2f8xP48bejFAm6e7", "url": "Bdf71rE9ydG218OG"}, {"slug": "kvKGZbm0HluuLFKZ", "url": "tPa98bGHvZhpp3JY"}, {"slug": "RLJ0hHA2YbRBc77Q", "url": "3K2ExTPqvNFNKUdh"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Lk8ixlyjZhdBfdxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'qttMOb3JFqkFUJmL' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 98}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'mUE0mce8Epdca7fY' \
    --limit '2' \
    --offset '49' \
    --sortBy 'createdAt:asc' \
    --status 'gZuEDJAUnNgev7gD' \
    --tags '["MoW8WRH6bSyYw61k", "Hc8JQNcJVr9SygX9", "1SsGHqMwPG46hvWC"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '3GvwkRfbTGaa0GKv' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '8' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'VDxGlNlPgb5nIBjI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "ooMehr27SjjXx9hW", "eventData": {"eventName": "cC1avfFW5Hd9nqjr", "properties": {"4fqN5pzCKuOknVvn": {}, "ppqr5CWMhcHWKPuk": {}, "LLsaGZbayDPDZoRq": {}}}, "eventId": "RwbJO23Sa4JgGOxd", "version": "mUk6QmgAmGQvnuhR"}, {"dateTime": "U7ZqcoUhWdcdUTA8", "eventData": {"eventName": "202qrRITf7U0Rho3", "properties": {"kZjFr76vlf8nc42X": {}, "fQsAD0LoNJqjnm2n": {}, "uJzzeOMSz3GuN9og": {}}}, "eventId": "F1RjuQWlPLmuusQa", "version": "pswzXqZNXkpSt0hX"}, {"dateTime": "RpDpqzLJ8vd4AIxd", "eventData": {"eventName": "sBzVj9mGTWSXMkHo", "properties": {"mlCxOhIQDcr9EXuY": {}, "WDVJvuD30U2IiFKy": {}, "yL9asWD8KhQTcWzq": {}}}, "eventId": "VnLY2QwvMrXKV8bn", "version": "Vufyu6B5MgNHDPKJ"}], "thirdPartyUserId": "zD1ct5u7raIAorTN", "userId": "I07gyMtJEaxRfosr"}, {"events": [{"dateTime": "Aqtf17i13U6bH8N9", "eventData": {"eventName": "lFoWwv3xPJsqbWjL", "properties": {"S9c6QniNn1kr3vir": {}, "LudgFmTC0kfaQKgx": {}, "xDhW9wcXJMZ1t2ty": {}}}, "eventId": "9BFRX9Xw7sbKmY7L", "version": "TjbOqg9kRaXuuQxu"}, {"dateTime": "ZlDeNW8qhHGfB183", "eventData": {"eventName": "xxhaYq9Bza4KKlaA", "properties": {"VoHjuN7SpHPVgtid": {}, "VtdmxlL9fNqeoixU": {}, "XgbdhgBxk8YQhiDU": {}}}, "eventId": "eEHs0TOs85hXIxH3", "version": "d8CeKDFHvOnH3TYp"}, {"dateTime": "rorr99uHZe4cZPDJ", "eventData": {"eventName": "xBZ1lhuDfyKTGNSW", "properties": {"hMk1xIkfMYDunLi4": {}, "FDhAT8DbYkKd51KK": {}, "Rtg4rllP8gT1ptFM": {}}}, "eventId": "1UXn13Vt5yQlbjG5", "version": "7UnRuC0mQoIMP3Kw"}], "thirdPartyUserId": "t0MiSJrDlpBUtaeO", "userId": "6MzHRpt9h4ArbpQh"}, {"events": [{"dateTime": "ax3Wy1ovGXV1lpgS", "eventData": {"eventName": "773BbjafwGOzvk9G", "properties": {"raZ7KLEEJa2KYi7J": {}, "BlFu348XhyHV3ktP": {}, "E4fEorkLgOBvx6CM": {}}}, "eventId": "G7vs4EjshMwXZNRL", "version": "m29OCsNNyeAk7ehR"}, {"dateTime": "TsuFANK8jiu0aVl2", "eventData": {"eventName": "XK6t0vAqnY9A9RNG", "properties": {"wn4R55eSINak9GRo": {}, "gxZP5UDXr5B7kF2a": {}, "OvrCnJkuVVmYNnaf": {}}}, "eventId": "q2MqFmc9eLqVkYxM", "version": "QFceooEO02rtFDvQ"}, {"dateTime": "G2BTd3Jb45kH9Rrr", "eventData": {"eventName": "iBcbOSgQAAcUQ1Fq", "properties": {"u1rQrbTZ8ekpEZ2f": {}, "zb9YOc1l4KSFDF5A": {}, "p7SKLNYIEWlKLKZi": {}}}, "eventId": "L2FQp31a2ql9rEKP", "version": "XQsmNXKvLnMDkebK"}], "thirdPartyUserId": "QS5DgrGrdFHUDXXq", "userId": "n92em5WGviRILO7i"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'Sw4NZ7VgvMifubhf' \
    --offset '65' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '7Mwu3rASa1uVX1QZ' \
    --limit '32' \
    --offset '93' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt' \
    --tags '["xlKIYSEJw5OenHc3", "Fmm1iCN0L3uafXQ6", "O01iRnfhHxdrXUHD"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId '0kMGvHrofqTnDbQI' \
    --body '{"achievementCodes": ["OQf1tpIZrF7voDeX", "zOyQzzvAvjFfDpb2", "9bV4e7V1asdKTWVc"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '9jzjZuEDhtHNS9yS' \
    --namespace $AB_NAMESPACE \
    --userId 'AnoDaJxjC36Ua1w8' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'utyIS7iN2yYb4aS7' \
    --namespace $AB_NAMESPACE \
    --userId 'inu5ldzaJp9b4dTP' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '22ym1iHpTIAwEJNc' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'F94r9NRfgOFqlqHX' \
    --achievementCodes 'KAIYpCjh8ZJhUhM6' \
    --limit '5' \
    --offset '55' \
    --sortBy 'contributedValue' \
    --tags '["jPLDATiAhKMLAjTl", "C4GKY45hCDHlCIO1", "c3AaSTJUoscaC60g"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '29' \
    --offset '60' \
    --sortBy 'createdAt' \
    --tags '["yQI0sqKgT7IIG95l", "gRwjNBI56RDZtCHz", "i47ceFrwbDroQ9Ao"]' \
    --language 'z9eRo4WN5tONRnTo' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'tgVirp4oDkt1PeW9' \
    --namespace $AB_NAMESPACE \
    --language 'y0hpoyr3JnyuBqkj' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jYxIn1KRk3jxrSUm' \
    --limit '30' \
    --offset '30' \
    --sortBy 'createdAt:desc' \
    --status 'KeBklRRBBq7yCd8m' \
    --tags '["PkIfiZlwNjiowxo8", "MUT4I4Z1vax4bwSM", "0lDD7bgoodJSYyuI"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'JNKOfrXU25yDu8PS' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '57' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name '0TKXFpeGe4ocFkYX' \
    --offset '79' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'b6AuAGiZ2WOaOLoK' \
    --limit '87' \
    --offset '65' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt' \
    --tags '["kWorXMNPbFDPk1i5", "LJYRNAStnmF6sAVU", "u0b1ZKJHH8JMpaEv"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Jk6OAlEnD0NcL5dI' \
    --body '{"achievementCodes": ["RIELfpOXlgo1yGrL", "3WIsMGqT3D46H2NB", "R609nvm2I88lJEAu"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'IYL0iTqr6fIEHJeB' \
    --namespace $AB_NAMESPACE \
    --userId 'KCOM9ZWtDH0MCODQ' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Q8fqj2e0rd1AmUxY' \
    --achievementCodes 'kir2Tk5xdzrU4Q94' \
    --limit '80' \
    --offset '99' \
    --sortBy 'contributedValue:desc' \
    --tags '["skbeSHekCvJf1ywr", "HCGwm3UeByXXxJ2k", "EEUKpVAvAl52v5Lk"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Ar2QkKOZ8AjPM0GC' \
    --namespace $AB_NAMESPACE \
    --userId 'XLQEEOdM3SRMFV7v' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE