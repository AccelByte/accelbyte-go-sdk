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
    --limit '52' \
    --offset '35' \
    --status '["PUBLISHED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "z0xEgzUrzeSTjaW8", "defaultRequiredExp": 41, "draftStoreId": "ioSRsxTDzpuSV6Xe", "end": "1972-05-29T00:00:00Z", "excessStrategy": {"currency": "UlqDjE2QcYxYC24Y", "method": "CURRENCY", "percentPerExp": 55}, "images": [{"as": "j9Ul6TuiiTU1NsQL", "caption": "ZNiXhfqwkSVKfeLK", "height": 98, "imageUrl": "b5wlApCHRW5YrTzW", "smallImageUrl": "lDvKoXktBduuc7lj", "width": 62}, {"as": "xyBJcMpJVAmRV7pe", "caption": "KvFT0a6blmurowIx", "height": 15, "imageUrl": "qMcRjqbQxCUYLIt2", "smallImageUrl": "5QohKCGe3Jy8r5za", "width": 32}, {"as": "8Hc4bB5BY265hDRa", "caption": "91wCal9yVK70GTxJ", "height": 82, "imageUrl": "bOxc1Cj1JGj5PXMk", "smallImageUrl": "aPQzKApL7MlN2gMS", "width": 69}], "localizations": {"KtAUOSIsXaJcsazr": {"description": "swb1TOPcoEUiPs94", "title": "F8kmLrFod0qweUhm"}, "aSLqmmHjH8EkMqkD": {"description": "TPi9c6Sl94K05aRM", "title": "HN5zpAxDVH5TelVW"}, "Huhjsum2V4KAQ8JJ": {"description": "eGtoXhUNqhsniAVS", "title": "tQwgKX0zQ0vTYPwG"}}, "name": "OFVZ6tigmyfmpqhA", "start": "1989-09-06T00:00:00Z", "tierItemId": "nVy8ibOiqybg5Xj5"}' \
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
    --body '{"userIds": ["wjoktndXDfINelg1", "An1FWLWXNXIPycSH", "jgjRbfm5OFay7IkL"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'cmWZuJNDuuDq34ol' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MM6W7r11FodjhRBm' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'r0oTHlo8g9uhMrMY' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'roGwNZx21RkL1imb' \
    --body '{"autoClaim": false, "defaultLanguage": "4c6qhRCydz01BM2n", "defaultRequiredExp": 89, "draftStoreId": "MfevooErXgJwGiVe", "end": "1985-09-08T00:00:00Z", "excessStrategy": {"currency": "noa6O0QAeqa87O6O", "method": "NONE", "percentPerExp": 45}, "images": [{"as": "KdAFeOHBXmLzuG0p", "caption": "zWxJnxseK2jDefnD", "height": 38, "imageUrl": "L3t4qEoKQOa2E80a", "smallImageUrl": "NpuhvW1OlA2fWMfh", "width": 45}, {"as": "Oj1UGCdlHwfPdJp6", "caption": "dUvpWQxphKhIg9EV", "height": 91, "imageUrl": "9bhRQQp0VeL6gU84", "smallImageUrl": "h5gp3iU2nLD06gmJ", "width": 53}, {"as": "uuT6x0uNqAAoGFRw", "caption": "GquSm8B9ZNNSnS6Y", "height": 35, "imageUrl": "X7fmy4QwQrbpV5Mt", "smallImageUrl": "kCbHNNS7s1XG0ltw", "width": 56}], "localizations": {"w8jcXxr2IWhIJ1NW": {"description": "nLlf6j5svgoB846g", "title": "0m4CSLoL8XhEnVSs"}, "CQGKbK1Z8xroyXjM": {"description": "OABOtCXS12GaO1eP", "title": "qEisOqfviZGYWtuG"}, "GCGK9eUaUaFCN5we": {"description": "ifE6xkaFwlFSTqFW", "title": "OfdQF3g8Of4NyZqL"}}, "name": "o9WHa08m6dqPlf8g", "start": "1979-09-26T00:00:00Z", "tierItemId": "RbQUTZu8QgxoplAW"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2oqWzbYGpK7XEslo' \
    --body '{"end": "1996-02-14T00:00:00Z", "name": "FpTU5cSNZDpsp0bS", "start": "1974-02-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hBpwj1wcU0ske9Nc' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'LRIrWvi0fbZJyAd8' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '3fqeiEECNUzUX2UX' \
    --body '{"autoEnroll": false, "code": "1s8XmOeaKFooSL96", "displayOrder": 86, "images": [{"as": "JErdhItZSYJK4gIL", "caption": "BMfKOBpr1S4GHZhG", "height": 26, "imageUrl": "Oj598qcsUqM9J8JD", "smallImageUrl": "2XbeRhn4SGwIwqh3", "width": 33}, {"as": "AMo4etW91a7n3Vod", "caption": "cX3snshyLKjSVGl4", "height": 50, "imageUrl": "u7xSXtn6I6U8qqCD", "smallImageUrl": "30fhGaDjnhdlAlFs", "width": 57}, {"as": "G76lzNqNIWsKxApl", "caption": "z3zUiqKCxe0TR2Pj", "height": 62, "imageUrl": "P6UP4pENJaPMyiJ8", "smallImageUrl": "HLUxIaRw1kri2885", "width": 10}], "localizations": {"gjCzwKvaC4ShMoMQ": {"description": "7K0CdBOj9VPta6a0", "title": "EmHg1roWZNRtArLa"}, "uOau3A4WfklQWFpE": {"description": "zwSmlFuy0IdfpIk5", "title": "DjcjJtdRQJ9ETXpm"}, "U0moOHSCTFO78z3H": {"description": "TqpAKaJDPkt7Kvd1", "title": "KRUBt9fr9aBpNT1q"}}, "passItemId": "L1kXAj1xQb2DthDw"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '2nEH7QIcPoBfeojC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XGEH7UTdUlLZ3ndV' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'vD81onHEvKBn3yC7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'k2jusXup51LIEUvu' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'TDXcbb6moFKlhAjQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hd5iNzJC31ElSh5Q' \
    --body '{"autoEnroll": false, "displayOrder": 42, "images": [{"as": "S4nxFtecfAHScSFZ", "caption": "BuBcXdCPOLCJsGOX", "height": 62, "imageUrl": "IwkvsXkPoDEXRyUt", "smallImageUrl": "NvzLPpQ50vqyT86O", "width": 50}, {"as": "QG1en0CRw9uWpBYb", "caption": "GA61Y2ZdN5jn5dVP", "height": 63, "imageUrl": "MXlJuzUZdUpaS6R5", "smallImageUrl": "iAZP05zzrE45vZRn", "width": 80}, {"as": "RvSQv6UVB3Ubjsl4", "caption": "vMA2BrnLKTIqh5YK", "height": 97, "imageUrl": "NZGq7rilevkreQmP", "smallImageUrl": "8ins1bZWBeojj84u", "width": 63}], "localizations": {"y8FZH4IeYzlDzQHZ": {"description": "iCIrlTvfjXoHblJp", "title": "DALopCO57yWc1eIw"}, "IWv9umrBPvRfCm82": {"description": "y4wzqFALubgXKZ29", "title": "QDfOpF8yTkUsHQKc"}, "BCkmUJdFSYEhKK8V": {"description": "FjZSGmZydv1upciN", "title": "J7E7u8c4aaFTqaKo"}}, "passItemId": "iVwKBPzbf8hD316m"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lDDsDaUPbLFbNzft' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MyrGqIaOgfOZEjhh' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'w3Ww6emvnZ0M3OJv' \
    --q 'wVdrZ7DSwu6GOvoO' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'zettYqtwSSmk1Y40' \
    --body '{"code": "yk5Svm910TL6hCuQ", "currency": {"currencyCode": "pj6ZkaKJZ8HnBqG4", "namespace": "uPz3Kp3g1Y07rSpK"}, "image": {"as": "IpItnfpvvJCW3cDd", "caption": "V4fppCSgJU1LTsYM", "height": 5, "imageUrl": "0hcgLmicp13S2TTm", "smallImageUrl": "TLNmBB7OX0DgtTIk", "width": 19}, "itemId": "WGbFZ7NkccA1ZQqa", "quantity": 89, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'yqrljgG0lzvh8OgR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NFhaq5v7SrLY3C9j' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'YogwjdE17SrWP81C' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DhDSlWroma5rqamZ' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'JdjSTySeFuk5iORk' \
    --namespace $AB_NAMESPACE \
    --seasonId '2Ow6wauvbX68eybH' \
    --body '{"currency": {"currencyCode": "7sIVIa0wtk4sohOJ", "namespace": "O9rR4vdp518m3BnG"}, "image": {"as": "Yy57S0qnzSZMi5KU", "caption": "4xWADCQUV4JjkTHl", "height": 61, "imageUrl": "eYbLnGnUaheLpdBf", "smallImageUrl": "hU1GthGCh8jYq6D7", "width": 92}, "itemId": "uPWIJgmCAYEbHSLP", "nullFields": ["GLo2PRZfuUyPBhCi", "hVkMNwXZKyvwjSm1", "yWMsw74CQaU6Xksp"], "quantity": 4, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'ocG9XAZ6XwweJ64L' \
    --limit '18' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'TOz9hA59oPa23UtW' \
    --body '{"index": 52, "quantity": 58, "tier": {"requiredExp": 61, "rewards": {"wRsNQUFG741fsoCO": ["bbKVXCZEfMQ05Nw2", "1FpFFGiRwWmed0Io", "9VNcpRmDfPitnhE3"], "OI3H1Cbol5u3Hk94": ["adG0mEErjvOC0KQ9", "Cut7zSY4DxOPfbTs", "ZiolTsSfUt6AMtxj"], "EXTtjCtlBOYw9Zip": ["IGhz4mymeWea83SF", "agKT4ouAVsF6GVwL", "vomvreDze5QwAwiN"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'r6hg60rLkQ4Z7HNh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bhtNpJWCKzYvsovb' \
    --body '{"requiredExp": 13, "rewards": {"EYxBSrfYoWqGItUE": ["w57NxUuJuSBs8qM9", "Gb9TRQ07CU8reT3C", "TU76bu1fSlDw2Q4g"], "rPV4t7fdwpwhLnux": ["phJH0fLDYyF2MEFA", "muzZOGYU9LcjOhNC", "dLLdM9ji77KakD7D"], "RhXHu4rStloeIOqi": ["GzLvaYjvh0lHeb0h", "xau8Qy9qojXHuBQJ", "BWUfMDH1Z9tZi5Ei"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'vPKeF3B1ddtOwZYa' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eWLyQUJGWjBRJmXu' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'afogzkr6qINdsFcp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bZJjt4KfhZN8a3cZ' \
    --body '{"newIndex": 79}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dL3Bm1qfMFB418Jf' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'tsZMMfWAbZ5LOFlY' \
    --limit '99' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'aZ40wppOy7v1Lg5a' \
    --body '{"exp": 26, "source": "SWEAT", "tags": ["lsYgdRTRPFiLMvJJ", "kj7Ng1d3e13YXdgb", "MA2KXcFGwXNPuoB1"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '9LCFkg057dHVdGi7' \
    --body '{"passCode": "ULLQBGErHwo7gxlt", "passItemId": "6RLWM8tZaeyuSlKV"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'm1sR8TntbQEXKT6w' \
    --passCodes '["h9B0URfUItYx41Ob", "OnTnpLt7ezx7qTwH", "ZuTnQuWXxNfdPRxN"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '2QvQHzb7mhnuSRJk' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '5TgjUEDe2bGIHtLE' \
    --body '{"passItemId": "XJBJ56MWfiGmAdo4", "tierItemCount": 66, "tierItemId": "SrQTEBcDnUB2kGYh"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '60bd0yUky8QnKxVx' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '9RwGewtCVpGozZzx' \
    --body '{"count": 49, "source": "PAID_FOR", "tags": ["um5dnRTXCChEXPuW", "ZiPtywaVBsTbhMeM", "8mv2mo2Xkcrcnwg1"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ijBrdocdk6nQzNpQ' \
    --from 'XdyqcBU351QX6264' \
    --limit '70' \
    --offset '31' \
    --seasonId 'x8TjO4okjBOKHl0A' \
    --source 'SWEAT' \
    --tags '["LCrCu3jnSv0bTURz", "5ob5Rkjks8qxfVMg", "KSZPYO6Z7rL9Igow"]' \
    --to 'Z9aaQ3ITr3XJRiYY' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'xqMnAj1qj1im8exZ' \
    --seasonId 'ZaDI4AZIS6TlVajN' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'A3Jr4KIThwJf2SIT' \
    --userId '93nJOXhyoK5mirUX' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '9OlY7KTNlcoD2yCy' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'SxVhlIaaMtREHBXm' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'tkATeDmbfSTQZcDT' \
    --body '{"passCode": "mKIk5Ov9yNitkswU", "rewardCode": "Pn6qIvfXsGU0168A", "tierIndex": 63}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ltFxVVc8VHWNS3Kh' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0675BhyjVgMrpqKP' \
    --userId '7VEIo0rfbpp9OUld' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE