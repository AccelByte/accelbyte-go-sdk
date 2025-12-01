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
echo "1..46"

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

#- 2 ExportSeason
samples/cli/sample-apps Seasonpass exportSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'ExportSeason' test.out

#- 3 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '51' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "qC28ykZMX6qKjVSc", "defaultRequiredExp": 71, "draftStoreId": "PIuec9VJjJ3PlSOy", "end": "1989-01-06T00:00:00Z", "excessStrategy": {"currency": "w10pmjn4ouguZ7Od", "method": "CURRENCY", "percentPerExp": 35}, "images": [{"as": "Ok74fryLqeQfozm1", "caption": "26xXaZSxgYGcujnX", "height": 55, "imageUrl": "VUI71zp0La5tADuw", "smallImageUrl": "xStGQgZzyYWPWFmF", "width": 56}, {"as": "AXUYiTLuaMyt7idN", "caption": "dgnQVGNzCavhCxfF", "height": 38, "imageUrl": "aBsRQSrdZ5Tl2QIQ", "smallImageUrl": "1ZTVKEdSA8wONQ8x", "width": 20}, {"as": "9ztK7biowo9ta4KP", "caption": "M5w8JuGrbNbMyylI", "height": 76, "imageUrl": "VsA3RwsGFX3LrpUZ", "smallImageUrl": "b0LncNJyQL7xBRnN", "width": 71}], "localizations": {"SXrRox4o8VSTBdBg": {"description": "8FP5jbwNKGt8wM6O", "title": "rsDJhFzMUaFiQhsd"}, "lS8ewTvYT35xqd0Z": {"description": "8C277shFinH5Ag2K", "title": "L6LDOKmK23bvdTHh"}, "77EJ4l3xlpX1cXnW": {"description": "LOh0YEaSimHeksIF", "title": "zoVba7VSkPb0XslC"}}, "name": "8IabrjSmkViYiJXk", "start": "1979-07-17T00:00:00Z", "tierItemId": "7qgJceQtjA86yEn5"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateSeason' test.out

#- 5 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetCurrentSeason' test.out

#- 6 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tWXYKYT55Mku7h2T", "oXjwL3YMV7IeZec9", "8bm0G6bNjdpRMHUi"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'ALuP7ikPxI8EaYbX' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Io1dSgwcMaq095Bm' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CrgqCbJ9Nmy0f8bR' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RnTlspbbqOWlgrGq' \
    --body '{"autoClaim": false, "defaultLanguage": "EyWFgmgqESokCfCH", "defaultRequiredExp": 27, "draftStoreId": "K5bhHmTc14yrYF0k", "end": "1971-01-06T00:00:00Z", "excessStrategy": {"currency": "OC7zht2oVX9EAvSr", "method": "NONE", "percentPerExp": 89}, "images": [{"as": "txhzXjpQXGLQpvXR", "caption": "ZkyqK8y56U2qmCwC", "height": 60, "imageUrl": "mS0mEFS5LOWG8AGI", "smallImageUrl": "PHszkPur2ecYeCUy", "width": 17}, {"as": "ot3LjVcjdRhHlLjA", "caption": "rMW46F9bmx3yZvjT", "height": 9, "imageUrl": "A3AbJHiR67ukeakr", "smallImageUrl": "3G5VQNnSw0B7tidR", "width": 74}, {"as": "j6J9OJmmrWE6DHdl", "caption": "lRs7dYmDTFu3D7od", "height": 42, "imageUrl": "UhDuRKdey3C6WJFk", "smallImageUrl": "mMIz12r5uUthAODB", "width": 78}], "localizations": {"CbLxhtFMG7b34i8Z": {"description": "vhHiYrx75nqe52qi", "title": "jYuPlOSw7eJbaKuf"}, "2i9yCfQD7E0Kd0wH": {"description": "YgMOcd0RcHyCpIFP", "title": "AdqBK4vsdwoehTr7"}, "8BIoWNBGC2zdFV6Z": {"description": "sqO13uN8RcgpvhEc", "title": "WjjSA2Kz9PC5qbBc"}}, "name": "evgpBJpl0eerLPAH", "start": "1976-06-22T00:00:00Z", "tierItemId": "2ZIeaIcCuIOZLB2T"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pDPPIc1JFPaswfrH' \
    --body '{"end": "1992-01-13T00:00:00Z", "name": "8kgJLqpLTuI5B8lC", "start": "1998-06-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CvNMJYJKFwtYPglk' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '2jHwRC323ZcLvgOE' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'A7mtnNJNmBwmuGfv' \
    --body '{"autoEnroll": true, "code": "kkM61Zmc1fgkUfLz", "displayOrder": 42, "images": [{"as": "ULv0vyafnk2D9XqF", "caption": "FLHpcMrbORRxkh6K", "height": 5, "imageUrl": "nk6E5gW6V92PFl32", "smallImageUrl": "O1w7PUZSUTK8KQCl", "width": 39}, {"as": "8I7NcUtMConhNgpf", "caption": "GLF6hZBEnF0U1vAl", "height": 51, "imageUrl": "U0pudJBjrMCenGgr", "smallImageUrl": "4d6EikAv6Ov1lG2S", "width": 66}, {"as": "LsPgsExgGZB2ipkx", "caption": "FOOst64HZcEev680", "height": 83, "imageUrl": "0iaLPBQUDRXQCtpA", "smallImageUrl": "mA7a6sgBYx4XqQ88", "width": 88}], "localizations": {"rikvgw9xfo1XVyFo": {"description": "suUg8iOcExaI45je", "title": "O3YCLDCdlMAxpIcO"}, "0YYlMm8xVueHi6Z6": {"description": "nRIJnPTmulsH7ExX", "title": "6ucRWToq895tGf98"}, "VFoPIYIlaQ3meSpD": {"description": "e2x7qGSznpVL8yzn", "title": "2TEXvs6eHnqzJWyr"}}, "passItemId": "lOuhux1IhZX3qQKX"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '2NA2ftYU7gFJSXxU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xxql4GFD8hG35nyZ' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'l2BWrLTP0pVmrqFV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HSZ9w4HlwBq9XuVK' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'sLL86mn0ZYmhWPxN' \
    --namespace $AB_NAMESPACE \
    --seasonId '1mUWuL8JxQduAqto' \
    --body '{"autoEnroll": true, "displayOrder": 27, "images": [{"as": "qyErJm3kxiEdEf1k", "caption": "4wcqnKcNsqCsXlb0", "height": 31, "imageUrl": "i6oz46qGjVQeEwgp", "smallImageUrl": "nxEkChy5Q62sKGhv", "width": 50}, {"as": "XD74rGtHvyBEyOqv", "caption": "xMCvyNRe8lIA6Iao", "height": 60, "imageUrl": "fP1sXWTxzaOiEnyu", "smallImageUrl": "IUWchIcaU62peOc8", "width": 68}, {"as": "4kl5Q7wW6mL2S0NA", "caption": "lptFYiNd3hhlcFdg", "height": 99, "imageUrl": "LKEOnb2mxsyZDdjS", "smallImageUrl": "gelWq6Ij9SSinYc4", "width": 31}], "localizations": {"gM2HpNuo3uykcOc7": {"description": "pE5sXEAg7hs5TIuW", "title": "wpZ8R4np5PVPUegM"}, "8gakj94usTuXffYU": {"description": "z62AsW66kweEnPrS", "title": "95is9tz2PEodTUSa"}, "VlrEgjuwYv0kE2kD": {"description": "46Fc08E7HeKhAKUm", "title": "CqedwkSaILPLqT1G"}}, "passItemId": "QmNQOEbysPx9j9mE"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YrYjklTr1P7T4ZIv' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZV1G7pEeR7xX8Kj4' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '899VoGqGjnNKjSYU' \
    --q 'kyI2GttpTUM4w7kI' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'gaSOdM4nx65ye2ny' \
    --body '{"code": "wUYlaSp8cMXMsgZa", "currency": {"currencyCode": "B9lzGnXtPu8AyEwE", "namespace": "eJetW23tAlMPRP1X"}, "image": {"as": "hpYRGhJQaF3uUgwb", "caption": "aW7nbaJinx0jaGbM", "height": 94, "imageUrl": "m2EV6rtTBeOQFZSY", "smallImageUrl": "RW2esERWdcBuoCnk", "width": 46}, "itemId": "LHGgQTGnfn07rjMo", "quantity": 75, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'losbTkvzUnpzW3nU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'c5kAegQDd7QoKsUk' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'GmrjWmL7aWoKfjqE' \
    --namespace $AB_NAMESPACE \
    --seasonId '9dWgiiW2N32LegdV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'bnfUBdD1i1wjcNtC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bkoEQc8WeobIpI1a' \
    --body '{"currency": {"currencyCode": "744bzubvvO8pto2K", "namespace": "lvSjRjvAXrFe05nT"}, "image": {"as": "1GhWNLicZMGn9dJF", "caption": "gr5qLqY5Ratd2DRy", "height": 93, "imageUrl": "HZfLzk8c4eccQxr9", "smallImageUrl": "ngTWk2w4sZEwFWdl", "width": 79}, "itemId": "v0wMUqVkj6gJ6ywn", "nullFields": ["4MA0EPLaRYsCoTFj", "hzJV1gzssrWooVrp", "2AIygW7ZMW8iKW8P"], "quantity": 97, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '8tqQWIYVxyTjRNQd' \
    --limit '48' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '7BkNOANFR5YXBdOx' \
    --body '{"index": 94, "quantity": 19, "tier": {"requiredExp": 11, "rewards": {"1hnTwuofPlTqI9n2": ["CLXaVw91GLdbue8A", "qs1DWcrtu9d4DBlC", "ANil7GeFlTV5IxHJ"], "I769FIHkHlQjRZqE": ["mV4jvkfFDRgRMLRa", "iL1KqK4AAtRMOVmu", "lJh3gauaNJiVTs7E"], "fLRFxsODtxcmNx8Y": ["YNg6dHwwFb8nLOoG", "MlJ2ZiVMpdkm2BIh", "Ahol5GWuP2dFkIrd"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '592M2rn7vklKOYyM' \
    --namespace $AB_NAMESPACE \
    --seasonId '0OjlAzQNHxzDXdgJ' \
    --body '{"requiredExp": 39, "rewards": {"BqEB2HLkpCWq1dB5": ["tOcsZ3tciYc051j4", "TMmxp6xi5L9OECn0", "1f192NZvjLxNQNqk"], "pkUclhDKEzHfkN4O": ["uKk4xCMfgv3fDURs", "pbeQAkjwqVppqLHj", "mDSlGqR3ajrYz7KD"], "qPmWkc0PsBa9PGWc": ["ro0iuW42CwfI6HMf", "R57OXHbVIhaMFO7f", "pk2dd8ZYg11tLiUj"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'wuwjnsgKSxwWxAxJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sWmuEK4JRMhs11AF' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'HGn6kkq68mlgy7BV' \
    --namespace $AB_NAMESPACE \
    --seasonId '0xhgku4yWQnckZe3' \
    --body '{"newIndex": 33}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vFZT2JCdi1mJeBVZ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'H1h1G3tiBhpdWeJG' \
    --limit '87' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '6V54Zc8fvCGfwsBO' \
    --body '{"exp": 55, "source": "SWEAT", "tags": ["bMwEEb1mvwXgp2Dk", "08TknCDFtAygfCuY", "LMg9lOlmZrNy7Etd"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'gAtRoJlK9aAXh4gu' \
    --body '{"passCode": "SvMoy8bVvzOn0876", "passItemId": "Q3pUWEZCKHTVRiK6"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ifLc78G4dDZ4pxSE' \
    --passCodes '["xiuS6qcZGDaMcoxi", "8zdXUP02lKuMQzsK", "cMYTzxgxbaDsiCea"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'WiUyOz9sXZrogxuZ' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'mkwzOtjSkpvUEeIV' \
    --body '{"passItemId": "PzQmO9xQjvfbhIjo", "tierItemCount": 98, "tierItemId": "Lqr6jkpuM7aUJimI"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2R1bnaVMrxLMZB54' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '44UbueFkqICI6CVt' \
    --body '{"count": 57, "source": "PAID_FOR", "tags": ["ITqQowjDr3anbGIh", "5GKbH22OL1gzbmJ2", "2gkKtzqB3o2Je6in"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'UA7LmVg2MqpPoPj6' \
    --from '0HrN4JPXGp2JnXCe' \
    --limit '77' \
    --offset '60' \
    --seasonId 'ON6cK7aTORenH6TL' \
    --source 'PAID_FOR' \
    --tags '["F5ptnLclZrJyJUAY", "CE5eOyFr9e7b4Y3G", "QwTfOGNmBNnbt1LX"]' \
    --to 'LljuzMFFY32ScjtX' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'a6WWmEVpaVWUgXNE' \
    --seasonId 'N2lmX51ljIY3EeMk' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dJ19vBVgt84DLEzb' \
    --userId 'faQaSI3MRuXaV03p' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'f6jDlc5efkXgYnkz' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'R5uRGFx3DacuUeEn' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'W0yC1YVS1HIuBS6F' \
    --body '{"passCode": "ufbJcW32i0KVBWcw", "rewardCode": "e9PMi8fM7nJM88zU", "tierIndex": 67}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'x1MFx5yyAPn6RuFW' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uKfpov0VXz1erA1T' \
    --userId 'T3kQawC4pxr5IbU1' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE