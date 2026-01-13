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
    --global 'false' \
    --limit '72' \
    --offset '7' \
    --sortBy 'updatedAt' \
    --tags '["LV7qAkF0nzSsWsG2", "uNj6fDujAAcjpRYM", "XSzrXecrcomXm2Xl"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "hrlhzjj8skJeWzfs", "customAttributes": {"MFayHw1NbliyMaiK": {}, "fL3wQLVUNkCkZwI5": {}, "EW54XBkz0V5r6R39": {}}, "defaultLanguage": "WBg0xn5qxxzwvm7Q", "description": {"cCKtuJ5GTetHrOAG": "pp03xqwrkp6gfkiu", "NQLmw3OKssdrcoXn": "uKMXreoMBvCJXwHp", "PLH5RGuIxvix8TiX": "geTx40SLpIpBKMOf"}, "global": true, "goalValue": 0.6690713256305585, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "sks2yPj9aMI6l3Vd", "url": "HsMOnp3VlIrTCKLW"}, {"slug": "807V1xjGa8eiGLXI", "url": "DDkgKCLC30EO5HZa"}, {"slug": "3R3OmKHNJXJ7u0tX", "url": "F5DmojTclnhD2D3C"}], "name": {"DKy0jXc24XA7S2WX": "1kUPfb1jAU32B0NV", "PwXWnTKkeyBFgV7Z": "CRH14KyTwYzCtjOL", "Y1yXZTtv3u3kfliB": "fA9c5jSDPj5zzX1X"}, "statCode": "8uafm9d0M521JPa7", "tags": ["VBClj3b7IAh59XEs", "vTS9bGw7gz6ysQPi", "00WTCKyn9AHo1utI"], "unlockedIcons": [{"slug": "vBlViKi5NiW800CH", "url": "MF33TWUC6aYF8T1b"}, {"slug": "RkdDB4iPuFD4PeaA", "url": "xp4Gag6Dk4hrxrYr"}, {"slug": "wnGQ20ecBid9gHi7", "url": "hup3TNlBGbzTHDAq"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["5ic5WiDh00KuNe9b", "S7DJnFkLQaPijhiU", "jL2CMYMTYJ5MevHz"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'PHfxGIGxUk5POeAR' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'fxXpPMVd6jJ8LFAE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'lIjg05D3W7Cq2rCu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"NfPTprYqN3c25qVF": {}, "8tdT7zKP0caQpm2T": {}, "Ga2ycvykK7TYAtRg": {}}, "defaultLanguage": "yNpn2JcXUjl0hM3a", "description": {"hlPXLusYAiw6Xx1Z": "7eFBoA7uDmDE065h", "7ailKvtEP1riPBzs": "eVAP3GSMzgFdklUA", "8CVgdnVorCaxkcpQ": "g3gqGo0lMZe9Qugq"}, "global": true, "goalValue": 0.20527243907222603, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "4PgKete11Ezkz6HC", "url": "iOlP2BwiKgtBDGUx"}, {"slug": "JBQd6p5W99vspTYA", "url": "Hx7Kj4s2zUQv4nCC"}, {"slug": "Lw0C0S26LKZ5L7OH", "url": "WpidXwvE5074aIoc"}], "name": {"InUvwUqY4gbW08y1": "kr6iQbjrxROt00XH", "LLSoWJs9UmQkKRF9": "DSa3arlEBX2eSWcU", "vn3659Qatg5fYYqN": "onJByfBcc6TYenUZ"}, "statCode": "RMjkEhoAP4OweHew", "tags": ["7lIMPb7R4ZtEma7W", "2eC4HU2jxqur8kDV", "DA3ZDd8EN6ghSBRn"], "unlockedIcons": [{"slug": "cJ4hMNZQ6vBaAVxh", "url": "UrSoRK4kkM31MQb6"}, {"slug": "IWAjxsDw5JrsIl7f", "url": "0crQUNxbApq7wqGx"}, {"slug": "BoJwh7iO7Z6v8X7g", "url": "z8puTIiS9EQnVgmo"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '6XF5l9Z2ouLmhlxW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'hAHP7BAloovnhuHt' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 17}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'XLtGPQDEFDCNzQqg' \
    --limit '72' \
    --offset '36' \
    --sortBy 'createdAt' \
    --status '5lSQY8Bw19ZtXV1N' \
    --tags '["Qoe7tdfX8aWRi0ei", "rxPNxpcFg0uWd7S6", "j500KHpBiMYOMchM"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'AjV1TGe3vuJF6jYS' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '2' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'lO9K6lUu5CYNZKEB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "WGqNlpN1D7twFxyj", "eventData": {"eventName": "PCHoaZEcvPbIhcBg", "properties": {"Jt5JYnIRWAre6wws": {}, "etmuRFJRTvGnTBf8": {}, "9J7ILtNrWzWhEMcr": {}}}, "eventId": "CILm4Nvhin8a8kQJ", "version": "yYjHKix8G8skmp7k"}, {"dateTime": "erMpZtAmRvt5pbfP", "eventData": {"eventName": "m2FFk50gwWdRtRlt", "properties": {"sFm18mjPpD3dEQyy": {}, "u0xBdkkvLhLnoacs": {}, "nQyvq94z0Jt2czZU": {}}}, "eventId": "uWtzs8iEOONnbS6N", "version": "Gh932taXng62rXRm"}, {"dateTime": "vzcboOmG1s2Swr3c", "eventData": {"eventName": "LRfRWHr3nLR8OMxq", "properties": {"C3W8sPmyIL9bMuJV": {}, "ZU3L8oUSenyjGlK4": {}, "yvSyea4bOjG4hD0E": {}}}, "eventId": "Tpqia7GoJI63w2cx", "version": "pqxZYRR0h5rIOzMs"}], "thirdPartyUserId": "EDsc77tQFE893j3U", "userId": "JnnuFvYsTBIOxc98"}, {"events": [{"dateTime": "iLlj35lyHsWXQc4i", "eventData": {"eventName": "SZlVmkcNxdLDhGub", "properties": {"oILYi802gdmxdMpA": {}, "GXCD5yrWVu6dxLq2": {}, "BKJBnpylX5D5pRcZ": {}}}, "eventId": "DvLPgpLYZfaT5Zdw", "version": "dRlmXCYTEzi9m1NK"}, {"dateTime": "ti5CxCF7DFwOrHv4", "eventData": {"eventName": "UGYzDJnwgehTve5h", "properties": {"IrHigV0LBRX0JUV2": {}, "DtgyQiP3P4pOHBZr": {}, "4TE30svzOrfWY5w7": {}}}, "eventId": "Mg2A8VPtrC5eQIMi", "version": "OEb6EBYLqe5EfwKM"}, {"dateTime": "aqzvhmjVgCfTUiec", "eventData": {"eventName": "dakEeVC4se05iN5M", "properties": {"yCkC38fHosblw6Yp": {}, "K4kP5Vcp9rXZytUF": {}, "18atEVighxR4K2Zc": {}}}, "eventId": "SQ7vMLj3ofVONLHX", "version": "WcTM3OMz7VyTw8Mf"}], "thirdPartyUserId": "eHyfwLPgZQQ7RXcW", "userId": "8heU2AnI4VCWfB59"}, {"events": [{"dateTime": "2k1urw68IbBSCxMz", "eventData": {"eventName": "NWCLmTGpGfo8vfQG", "properties": {"QK5mBa8jalqEY2Jf": {}, "uyGEbk4UGum8GFFm": {}, "YkIvcM2u4YLeM5XW": {}}}, "eventId": "1ZerjLjPY3YQGo2J", "version": "G24DvopBeZGxHmMY"}, {"dateTime": "KUJgQqPxQWJf5Q55", "eventData": {"eventName": "surkBeJtwM800FwZ", "properties": {"ZBjDKell4KZ2rz3N": {}, "DSi6TIFXOaKrrfx8": {}, "nv7SrhNYoe8SNgQb": {}}}, "eventId": "VDjTSLJbPcnshJSF", "version": "DT9cp1YhNQl8GLsT"}, {"dateTime": "HfbEiQqt7824EUNF", "eventData": {"eventName": "nWi6rRWnFGp0f5G3", "properties": {"mtuazI9oWSz2QLGl": {}, "HHquWhZwWq1co6RG": {}, "1xX7CaZpTK8RtwHB": {}}}, "eventId": "1h8UaPMuYSvwsl0U", "version": "3nF1G4yGZ97tWXuK"}], "thirdPartyUserId": "AZmtlzyHXO2DSs0z", "userId": "KR07aDWwh9cRN97P"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name '1NeRIbDKC8SkuVGL' \
    --offset '52' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'JKQzqZgRkJf8YyXz' \
    --limit '91' \
    --offset '69' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:asc' \
    --tags '["s7o7nhPNH9mmCjqx", "7jdrTtqhk7erq5jI", "ZY6fIOM2xO7jnhCV"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'urkUnbqubqv8KsLC' \
    --body '{"achievementCodes": ["lse42Xan6skRlkk1", "80nnXHb51UUhBoij", "G8NnyMoql8tzZsP1"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'yenppco5ce8fLFAm' \
    --namespace $AB_NAMESPACE \
    --userId 'Y5jnASVDEdLdxQEd' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 't5JVu3oD2cpBDrFI' \
    --namespace $AB_NAMESPACE \
    --userId 'Lcuqwhq1hHz9Cp4n' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '0Nqy5rDGaOp9ro1F' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'x88IYcVnbNvgml7R' \
    --achievementCodes 'Pkxx8Tguvc8nNu2u' \
    --limit '100' \
    --offset '22' \
    --sortBy 'contributedValue:desc' \
    --tags '["sT0xDneVsrysUVnB", "VzVzUxiMdRZdwhjm", "8wG9Ybgj5WhBtYjm"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '45' \
    --offset '47' \
    --sortBy 'createdAt:asc' \
    --tags '["IjtesW5Dl6FkU2Bq", "ZEdTv8NOPF6WjD2N", "nGCaHUarRway6xPK"]' \
    --language 'Pr2HbPoPq2pIxefr' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'LoTa9bbQxckgcj3n' \
    --namespace $AB_NAMESPACE \
    --language 'IvuNhPzeR2h4x0FA' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ioAJiXt5uNkk1rP6' \
    --limit '10' \
    --offset '73' \
    --sortBy 'achievedAt:desc' \
    --status 'RB2eR1kwOu1FjCpp' \
    --tags '["qiP6yFq5eReQxQ33", "wJOVl5HGkheUHzTP", "SshVIhYPXaV9gPOE"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'Fy27KFUE5N3NarHh' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '17' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --name 'Zkf7zpsyj8yGu9wE' \
    --offset '9' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'FD2rXwL1MKMGCSmt' \
    --limit '22' \
    --offset '40' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["8EdldxbNBxDIcHQa", "YsmTgcVY6XVhUTs2", "NcfWqxLPQWrEsz9t"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ZeROOJY83DW7Y5LO' \
    --body '{"achievementCodes": ["kSdYYMrIRQs8h6Va", "Lo4U02MUXsjyM7vG", "Dh7gfNu04yjOLTw5"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'bsRlNdZ34PUAX9c3' \
    --namespace $AB_NAMESPACE \
    --userId 'phdkvJ2wuD5hphyw' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'cMzC4STBLfzhukYa' \
    --achievementCodes 'JS5vVQH7KPVzP7do' \
    --limit '65' \
    --offset '7' \
    --sortBy 'contributedValue:desc' \
    --tags '["NC4n0pUdFnomvH5Q", "njeLrjQJZ9tPGwVO", "hhikqtRDyw6D4Kkt"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '0LZXb77zYVE7R7KL' \
    --namespace $AB_NAMESPACE \
    --userId 'QBjKmccwdV3W1TcO' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE