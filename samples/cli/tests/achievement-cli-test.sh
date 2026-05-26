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
echo "1..31"

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
    --limit '13' \
    --offset '32' \
    --sortBy 'updatedAt:asc' \
    --tags '["tXt9hXt3NhKQIWtd", "NVKyCAZKN2N115Ss", "RMYMMSOBXocb9CfM"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "rz3Vzx4GOZTrFK2y", "customAttributes": {"I5DUg79G64FyDhut": {}, "00fwIFAKM1YGVE4I": {}, "W5nrTVSfUO2x8DJU": {}}, "defaultLanguage": "tl6fVoZ3GUaSVdgZ", "description": {"KfPr0uc3fCfVJVyW": "gfQ2cczsQa3OplXE", "2hqfZvAvJgSwuVdX": "RQCklu1mHP3d5Wki", "97BCLqS4sOOlzSEb": "8v1jisv8rNvIZ82A"}, "global": false, "goalValue": 0.04169386826225252, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "ytoq1T7Sw0iZIs2I", "url": "HM05OzPgWYy1V4uN"}, {"slug": "obaLt0pFXk52ecOQ", "url": "XSosH8FvFlFV8Kj5"}, {"slug": "IY0H9lnjlpCKZNTc", "url": "yxLjQ233bkfCxzLZ"}], "name": {"RkGsHV1dGMCg4Ni5": "ENlbSnWypHMrS4Wr", "jW0ipFGTfHNfPkls": "Esil24fdhTRjV4vK", "bipLgXDqQ49FzPOm": "7faKn7Y0GTvDjqLn"}, "statCode": "bCchQu2GNkUubtV3", "tags": ["rAUQBQOqM2EhXjbh", "BQz1q9dAmoptk4WU", "tfX5wZ7nxLVuCqkV"], "unlockedIcons": [{"slug": "X7AANaQiQVOyYpjp", "url": "WcAzTQjld0TDs5DN"}, {"slug": "TASYUhoFZN38Glr4", "url": "qU8j5xjGdnXlPbpA"}, {"slug": "9ajZcYkuSQ5n1twb", "url": "c68t7uISwF2jUl4M"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["OiPMtKJHwzNhJUmK", "9SVwpWsBgNBZsAjj", "10Etl6ojiVut5PmB"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'K1ShfQdgs3ZSk37G' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'a4Ws1oTdaj6UGVZ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'bL9hOzUR1foSpWgy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Ocy2d1FlHtjcAYlF": {}, "zjqRB6aIqNAfnHIj": {}, "Hd5N1LzgAWvLU3t0": {}}, "defaultLanguage": "d6dgSvB3nLP2Vyn4", "description": {"EPcdbCgEHrqKsCST": "SRxgCDE1Un8aPAGA", "18qzShoyd99j4eJK": "4Nb9ya4EAOLyXay2", "dazD9HdolAUnkSsK": "ibL8ENXJ1vWFNJ3H"}, "global": false, "goalValue": 0.981330217249247, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "CUxv1sAwZ1Yj8HyZ", "url": "N9qwiJAWkkEbjNvJ"}, {"slug": "yxgyyRFRdv36cCyX", "url": "I2dMz6t2OgwL4dKQ"}, {"slug": "04xsT9YectpFBoil", "url": "77KVl7S16chU5b8W"}], "name": {"zsQo1j2M86bdkqPo": "YZ7jMoPEfL4OzR6M", "dZuK6vLKxB791hon": "Nq0vCceAwlShEeZH", "d1M5g5o8cfBq6uiU": "iSb7YWTfzSdzPi7c"}, "statCode": "UJo9kJ4ujgzwDSeQ", "tags": ["fQJvaH3SmiDl48e8", "lipGAiddQ0fLi9yT", "Q7SIsKdG0BdNso63"], "unlockedIcons": [{"slug": "Ur7vFkOnDPlszPTz", "url": "vVVTfu3jelViT7yX"}, {"slug": "ywO9FGjKtYgLxoY6", "url": "J4dVvm8uucrxcEQN"}, {"slug": "AvjkkzCWjdDOUmfu", "url": "kjk3EAuu4O4LsLtA"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '45lRL5fwlCilDt1N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'FsM1NAnAYEj05OMr' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 78}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'DKaC59ODP1SIX8pp' \
    --limit '95' \
    --offset '11' \
    --sortBy 'createdAt:asc' \
    --status 'hrCEGi7W66T7tHCl' \
    --tags '["CY4ECQXar1BazGRH", "I9sUiSmSxObO12EN", "h4f6CDFtHItYUvbY"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'NkRsiTU2KMmnJ5QL' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '55' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'eoC6kGE9FXPOR7aQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "JG6IvzMlMfXiR76m", "eventData": {"eventName": "MP5Ar0YYNT2eFTlu", "properties": {"7cwTojeHzKUSKCg1": {}, "ALAGxBtgowJ8Mgze": {}, "RtcJU9dewjYjKxu8": {}}}, "eventId": "bN6F57ZPJhYkp3Pk", "version": "I7FuQuYpRib8YCFN"}, {"dateTime": "ymtvcxFPeUZcPn8a", "eventData": {"eventName": "i5E0yYO3pQ0xvKrR", "properties": {"UH804UhKBABXmqT4": {}, "jPiM4Z3FUYKcYXpm": {}, "7NGv2f9jxiVRDzku": {}}}, "eventId": "Wgk53LDUsB7R7yFM", "version": "RE6zMnt8UzOTEqkb"}, {"dateTime": "oAVYDTUMByiYCevF", "eventData": {"eventName": "RgORZgsJ7PyiVVb1", "properties": {"CQqMrFCRCMkLgVV7": {}, "bZobG2DDFbbAGCtU": {}, "YvQ5SFMgTQx2bqyN": {}}}, "eventId": "CwjAGZbcmpCHBLVC", "version": "XTfDamKHylEwH7Y8"}], "thirdPartyUserId": "8i5wAmLselQGSNDl", "userId": "tDRU6EfC9boEOeON"}, {"events": [{"dateTime": "D2bfQbGagkkt7XVX", "eventData": {"eventName": "7pTsWUddKs3GwUPQ", "properties": {"aGZCbF80RcMrdae0": {}, "Uuoz89bqmqM92qXs": {}, "cqnkMt8UVYbY3fR0": {}}}, "eventId": "nqlAhgSbUaCOwKwu", "version": "XusBWdztwosb6xhA"}, {"dateTime": "fxQ0uQ6COnsxKtOP", "eventData": {"eventName": "W4wcDHSISw4svzes", "properties": {"pPIMWiAtW6F4fkUR": {}, "zFU8bSc84JDrncOL": {}, "KxFHGmyvXxR0YSqW": {}}}, "eventId": "f1x0p6TJpP8IgnX2", "version": "ocPn5V5jOzkged4G"}, {"dateTime": "3WqeWNzMVf3bmcZY", "eventData": {"eventName": "oDHc3NABvp2YbeOM", "properties": {"Mw5zQEm32uo0hc0K": {}, "YA7MmeHUuphu9FEM": {}, "bPdpMiAARuQlPGyA": {}}}, "eventId": "1vRtWJVPz6Nix4o1", "version": "THazPmpPahFs9VqG"}], "thirdPartyUserId": "DmRR7Eh9qauK2MpF", "userId": "uH1gDYghqefHXp1m"}, {"events": [{"dateTime": "YEWsnaBQT5yw1CLi", "eventData": {"eventName": "LMMhTvdgCqB5vD1K", "properties": {"umFC4eScQbZnROq7": {}, "lvLHtf8THbP9oCI6": {}, "gXWDihgcuaV4xPPm": {}}}, "eventId": "8isYMBYQ2mGortyL", "version": "Il4UMNi39szPqPFp"}, {"dateTime": "QSe2p3XwVDTgybRl", "eventData": {"eventName": "pTDeH9IBj5yRZyPk", "properties": {"yKs67esdHYWc8Nwn": {}, "uv1nslw0nAP3VU7e": {}, "oOtVOG30f9yNlcJ3": {}}}, "eventId": "XjJKeCDS1nuxVrXY", "version": "09svoAa0M2wxB7Dx"}, {"dateTime": "dju4XOdRWPHdgifZ", "eventData": {"eventName": "P4iR09mGz6f0i7dA", "properties": {"zKvVHyv72US8irZI": {}, "CFBVTGaSTAXGxEpZ": {}, "WIlhLomYuR0Y5kEy": {}}}, "eventId": "Zl70JdG4S2pHDS81", "version": "W7bkPLXgI1lax2Zc"}], "thirdPartyUserId": "6P3Xx5VaDGhFm9rO", "userId": "OA42Lm4Pa4awwc9c"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'SvLvNRrFjcHhK4is' \
    --offset '38' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Yu9E8rCOXVNaDi8t' \
    --limit '50' \
    --offset '9' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt' \
    --tags '["fioussaqGaHhjt1L", "3ko3aYMg6Glu7rmv", "tnI2Ea0l0cisFNYh"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBatchQueryUserAchievements
samples/cli/sample-apps Achievement adminBatchQueryUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'O9BePvg5pP9yfmF1' \
    --body '{"codes": ["XVZXpJWfPILcLMlJ", "rRnCLAjWxh9xEGp5", "TXCEWwQh3RKRbiGk"], "status": 39}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBatchQueryUserAchievements' test.out

#- 17 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YqQDpsaUDuaP7pi8' \
    --body '{"achievementCodes": ["5z9c6zf29JAySGhp", "eeTG5lgzoBAWXMQJ", "QFhXCkCIDTVykUa3"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminBulkUnlockAchievement' test.out

#- 18 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ttFzIdQCTZeUOGdk' \
    --namespace $AB_NAMESPACE \
    --userId 'pLYV3c8wJPHB9cF5' \
    > test.out 2>&1
eval_tap $? 18 'AdminResetAchievement' test.out

#- 19 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'it2wwmkXgk6VJzrM' \
    --namespace $AB_NAMESPACE \
    --userId '5Yzuk0gWuwBq28lv' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnlockAchievement' test.out

#- 20 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RE4M3Ztdc0JhKWWp' \
    > test.out 2>&1
eval_tap $? 20 'AdminAnonymizeUserAchievement' test.out

#- 21 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '7QRbmdmkbE9sgEsO' \
    --achievementCodes '4xS7rnl8kbUH9giv' \
    --limit '5' \
    --offset '49' \
    --sortBy 'contributedValue:desc' \
    --tags '["xDQ5Lyk83hcuGLsq", "7vH4Lox5i2f2GR3N", "U4Z5Oq31yUeQfVv1"]' \
    > test.out 2>&1
eval_tap $? 21 'AdminListUserContributions' test.out

#- 22 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '38' \
    --offset '61' \
    --sortBy 'updatedAt' \
    --tags '["szZtSm21tgsdsmdh", "rx43glynrVNZ1dTp", "37cIu6XljKU54Ks0"]' \
    --language 'mbRhYmbcQgNt90dW' \
    > test.out 2>&1
eval_tap $? 22 'PublicListAchievements' test.out

#- 23 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'E5UtFOj26mpCLuRQ' \
    --namespace $AB_NAMESPACE \
    --language 'JdpZfue1xUjRlcRS' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetAchievement' test.out

#- 24 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IhqfwYUvBiSHsFg4' \
    --limit '15' \
    --offset '27' \
    --sortBy 'achievedAt' \
    --status 'HNb1Fx38q1duyWRr' \
    --tags '["xQfNalGhmKWo0uSI", "rc83jPn9bAry3gXa", "KWij7SnvWbWnbAlP"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListGlobalAchievements' test.out

#- 25 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'tUoumcJ2XdxSQa9g' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '50' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 25 'ListGlobalAchievementContributors' test.out

#- 26 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --name 'IV8gIGuc4gv6lPDS' \
    --offset '46' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListTags' test.out

#- 27 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vAKffZF2lfv9uzpv' \
    --limit '81' \
    --offset '81' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt' \
    --tags '["akPabk3OB39KPPfI", "9O0b1paA3jk32WhX", "uluUpztV9e7L1elH"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicListUserAchievements' test.out

#- 28 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ALSTCC14hcfL1FQQ' \
    --body '{"achievementCodes": ["9FaQS46m35qKMfG9", "kNinEaYSAaFq5GLZ", "tg687GWHc4227iO9"]}' \
    > test.out 2>&1
eval_tap $? 28 'PublicBulkUnlockAchievement' test.out

#- 29 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'daEo9wVQEFLItdLv' \
    --namespace $AB_NAMESPACE \
    --userId 'V50Lo4WfqF88Ek0t' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnlockAchievement' test.out

#- 30 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'goWl1qPLRA100xpB' \
    --achievementCodes 'Z0pBIon2aJ7A2PmW' \
    --limit '63' \
    --offset '26' \
    --sortBy 'contributedValue:desc' \
    --tags '["vYKnn3Q6hyYFxmKS", "PhFAEtjMMppiUiYO", "pu8vkCLCMLnMJiDU"]' \
    > test.out 2>&1
eval_tap $? 30 'ListUserContributions' test.out

#- 31 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'EaFGK0rzsBxudWUJ' \
    --namespace $AB_NAMESPACE \
    --userId 'b3jquezlvSBUVZeY' \
    > test.out 2>&1
eval_tap $? 31 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE