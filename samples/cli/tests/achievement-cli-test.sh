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
    --global 'false' \
    --limit '92' \
    --offset '93' \
    --sortBy 'createdAt' \
    --tags '["knwuSzS85ZcYyYKW", "aL2riDAqena86iPw", "5rDFKCNRGfKsWxVa"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "vNQnLUSYH7zxulqR", "customAttributes": {"jzffO7PY4cX3XchT": {}, "XysizOubzaltJMZo": {}, "fxbqk01RvJrRMa42": {}}, "defaultLanguage": "E5slWyVDAiz7TxIS", "description": {"FVuyGvEwK50zTaHT": "YeMsU76NTJzPLxX7", "7oD4ckLPCRIb7MEZ": "jCQqQTCsnu84aWDF", "YeW0CkGHqS0Nb47v": "gUudFvKXKjzFAtlU"}, "global": false, "goalValue": 0.3507846669752962, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "LDkX17PcEtZqeK6t", "url": "8C02BRgVei3IiFwf"}, {"slug": "jJRdsNSc01u5wkKI", "url": "zxwy2Rwr2VTaJ3XC"}, {"slug": "peDpCvW8gpqyKsqu", "url": "wgze1UfuukJDro4i"}], "name": {"zegqsTwi1MQWBYsj": "DWnsvkQZT2fpkxQY", "Hyu5DCrSXOHqdi8T": "kNeapzTrygGpbMUj", "DfHISAZbdIpfu8jE": "2SaDxMwrQh6CqSaf"}, "statCode": "dqcT3UpbaODlrLp6", "tags": ["7Dc16GrCXX1eOnY9", "gbp1Zz0BslWg1kz0", "xUWK6qdN5yr9PmRq"], "unlockedIcons": [{"slug": "vVOAN1WS3xOsw1oN", "url": "MEYkyVxlPJ7J7Pd1"}, {"slug": "DRWD9IEC5Adcumgy", "url": "sLAl4iCtGGv9DTtG"}, {"slug": "GYD3ik66EOJ0YGjx", "url": "JrytlENZ1vK2cdk8"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["3Im1FKro36cK8C7Z", "mmEKt061cGlydUDn", "aVrfDTY0XE00EPQE"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'AtLDNYiFlZKcuWdA' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'jvB2Drj4IfScA2Hj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'MDETKfGCGk75d12p' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KRJlFnPY2DVGAyRh": {}, "Lmb6ocrRqGydgSBW": {}, "2umL5X74Ioiq4QBX": {}}, "defaultLanguage": "AOR22LurydFScSb9", "description": {"008bcLgislPnp0q7": "fAKxmM5MzhS3mqI7", "LN2PxskDq8l21ZVu": "TytvUtJDnAXL8JUD", "xhdOid3wGMQiv65b": "FmR5Oxd8LMJDceqW"}, "global": true, "goalValue": 0.06606544302840489, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "6n97UXfeqH8w5xt3", "url": "jIRi9S6jZTUFDe2p"}, {"slug": "YeQoAcxKth33tFJj", "url": "8X5keoeOImP2HdqI"}, {"slug": "I27cEyfgUetI7ECs", "url": "EKfNeO0PRiCiIOPY"}], "name": {"BeFA54rWqDDsYOdn": "5foVsCeB3MpyssLL", "stuBCirPef7zyBVT": "lZeLsYVCD5T3NOE0", "EK3lQm1vXGGEf9Yv": "dnEsgZLYtVlnIkuX"}, "statCode": "pFjlgyCpxQ8ZUS9A", "tags": ["RcOzqQLAZu4Xx4rb", "uHCJQfCutaer9XHb", "AjM4lcwX4KnvMhh3"], "unlockedIcons": [{"slug": "zSQSJlSmaTUsGZvE", "url": "VbJIQS5Hw7ur9px4"}, {"slug": "7Jffo8p9zCXCTNg0", "url": "Go0uhYTD8ZVuWzt1"}, {"slug": "FURQKy9h6pT9g0hN", "url": "w9nGqoQJoft49HXE"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'o3dlSci48IWybncI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'cS6jTGSS4wt2CT5O' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 32}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'RulEYUgXtvZOG7eI' \
    --limit '74' \
    --offset '65' \
    --sortBy 'achievedAt:asc' \
    --status 'CdkHg0xmR1oVW8rN' \
    --tags '["myHGBGDXp9gnDANF", "3rOHzSUt9rpVgYWa", "bkxiyfspPEtU95c7"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'pm1sBG48FooERHZx' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '14' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '2wbPaBNmrmhyLKGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "liFUcVRGgNE2ua2T", "eventData": {"eventName": "foHjN3FnYTp1FJbr", "properties": {"ryucFK7zZQyUeRSs": {}, "YW5Dd7eXS9zakAUQ": {}, "pbgKpHSluiNcIW0f": {}}}, "eventId": "prq9T1g2tZp1KozR", "version": "mGTsuUWZT6Uz11Hg"}, {"dateTime": "rCFAWWjl7YJLHvgn", "eventData": {"eventName": "RBZvpceSDDJXFNO7", "properties": {"73BiUNmZ5HUSGVJ6": {}, "xc7bCijICexFe0Gy": {}, "oh4Otkp2mlcysTU1": {}}}, "eventId": "HXxI1QoroWSiAsMl", "version": "1f2LNpgzxnehgqet"}, {"dateTime": "tEkPeSu91kDFg70s", "eventData": {"eventName": "tA4dVGhvSDFEQUZ0", "properties": {"goZGpcBLGIsJsvIq": {}, "5Wh1Ly1NtVPlsvzi": {}, "m7v7tUBjnEtAScxc": {}}}, "eventId": "j8GcfnaYuTXqvfo1", "version": "As3nxMEVCmBW8Ox6"}], "thirdPartyUserId": "JzPEjgnWxIxz1a6g", "userId": "M5uTERfPUtfxfmBW"}, {"events": [{"dateTime": "3kk8qctVwxr1VP8Z", "eventData": {"eventName": "pstqt0yYm1JX3QvD", "properties": {"5IqmAAV8Ic5FMMxQ": {}, "Dt5ToQEvegYtOaHO": {}, "J14GsENUFaTS1SZy": {}}}, "eventId": "AzKUcXXd3g9Umsk7", "version": "N2ZnFZOrJRt35FeD"}, {"dateTime": "bsS95uFE7Sl6uSpW", "eventData": {"eventName": "4Qt4MnNg3Clny7Mx", "properties": {"EsCpOiZi7Th8rgFw": {}, "XxeWMGY2TthDWeoz": {}, "kvXctNENaeewXzLO": {}}}, "eventId": "UpymZwR4NAqmgnvK", "version": "LD8DBBEmbKiDcnGv"}, {"dateTime": "xT3DKpErMQpvOXNu", "eventData": {"eventName": "U8NUmgZkeZqhyWaq", "properties": {"LZqIBPaioy6rH51b": {}, "SrSGWtIu70pbxjra": {}, "zIHgBpnP56tRtGGv": {}}}, "eventId": "PrAEQn87bxv2FGPM", "version": "Ioa6ORzD2bkddxn4"}], "thirdPartyUserId": "4j8lSlcKdRCB42j4", "userId": "JDRn8KJDMZOslcpt"}, {"events": [{"dateTime": "NNw6OdF1TKfymJBp", "eventData": {"eventName": "vsPWuQcP8TWlGemg", "properties": {"zbFeAzggI5VddIDp": {}, "5DUZsI79BMU9hpNb": {}, "zPb19yO9HA4XOKKU": {}}}, "eventId": "ONU6XFpkfGH2nXD9", "version": "pUGpetk2IM8kpZmV"}, {"dateTime": "ain9KDQ1gZ71RTaF", "eventData": {"eventName": "9QpDmWCfpT7a8BQD", "properties": {"NyQ5UWUx5D41udsp": {}, "hbg177j5nqzUuDFt": {}, "fArUUgzC2NFVgNq6": {}}}, "eventId": "7vzdpqyPDiqqjXJT", "version": "QcNvElqjPOMYmzPm"}, {"dateTime": "bMbLW7OECUsmmVmZ", "eventData": {"eventName": "NKY8iLRKjkkJ0xIo", "properties": {"ihxIbWUj8Q7x3rEA": {}, "YMkOKd41kdaDUYGz": {}, "DO8tsSq5pmx9WLXP": {}}}, "eventId": "iE93g2cafcJCcKGd", "version": "hEhxDWM4lWUNAMNU"}], "thirdPartyUserId": "g1jz0pucqqeEqKXG", "userId": "PoFGgxz7tCHrXyOM"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --name '9Y4GOrRfFJ483ytm' \
    --offset '13' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QoUkc78nrwP1n2LU' \
    --limit '23' \
    --offset '65' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["ESSJuB3hb7ulEqdR", "j69TejxGUjeCga9d", "259H2ePPkQO2pZ3x"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'RUFsZBUwLBC3rNi7' \
    --namespace $AB_NAMESPACE \
    --userId 'WzAXgJiAWcSwqaDG' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '5TOMuTvKhrgU7lG9' \
    --namespace $AB_NAMESPACE \
    --userId 'HTrTPQ5vobBm3sbn' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'OWVW3xfNiRUBmnBE' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'AOPIbp3afUiZyobZ' \
    --achievementCodes 'MXyoWNWHhIWbAEeq' \
    --limit '33' \
    --offset '41' \
    --sortBy 'contributedValue' \
    --tags '["konziCmWchaEaog7", "sKAAqrTkS0IX9aKX", "AdQJn8tKcawwGgBl"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '83' \
    --offset '94' \
    --sortBy 'updatedAt:desc' \
    --tags '["adaIjo8XiAMAlVCy", "L5gFFZQgxekI47zU", "apvxwIOAt8gbyrbk"]' \
    --language 'bZUfgnP4vmREnand' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'UjORt35oZCGyZh0Z' \
    --namespace $AB_NAMESPACE \
    --language 'RXZurtZBtATAnOY9' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xOYUZkxLcLN3ja8o' \
    --limit '41' \
    --offset '73' \
    --sortBy 'achievedAt:asc' \
    --status 'NN9kDGtt4NKpLELg' \
    --tags '["AP43D2qN2jnauGVV", "Q2cakIlWD7BTlkCR", "P06CquAHwEKhPJE1"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'YIMOMqFOks97xfUT' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '31' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --name 'a83WAOfRmTzIXtt0' \
    --offset '97' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'b3c0L2xLDR1gnhQY' \
    --limit '45' \
    --offset '10' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt' \
    --tags '["HeHaCVXPfP2UfGQj", "W11L3ZmdpAPYkAlB", "dTvashJDpPsm709b"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'UuCMLN2m6BOCTQ1P' \
    --namespace $AB_NAMESPACE \
    --userId 'rDwlMN9PcUcrbgaG' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'gt5ShF0pNUIvSXGl' \
    --achievementCodes 'ekqbNQhYY5MWGQVR' \
    --limit '97' \
    --offset '27' \
    --sortBy 'contributedValue' \
    --tags '["2GMl7kIXBzEynhIM", "qH60pITpgCjrjLJm", "zakaNYVjSF66Tcdf"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'iLleBt7ugSmadNex' \
    --namespace $AB_NAMESPACE \
    --userId 'zv0H04WV2yH0McPY' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE