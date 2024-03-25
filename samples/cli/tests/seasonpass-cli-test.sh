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
echo "1..45"

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
    --limit '77' \
    --offset '64' \
    --status '["RETIRED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "w1UjJT1jFKRylnsJ", "defaultRequiredExp": 62, "draftStoreId": "QuDTZrbZKpeLgdg5", "end": "1987-11-27T00:00:00Z", "excessStrategy": {"currency": "UzNuVQjufTOBmj8u", "method": "NONE", "percentPerExp": 33}, "images": [{"as": "2cpZ60AQNFBRChlw", "caption": "eeWVD7le2hGQjoa4", "height": 56, "imageUrl": "uQFXW2um1F5peRla", "smallImageUrl": "00PMmXwpG5qgstLt", "width": 14}, {"as": "SbtSOCWQ4Yq4zxoy", "caption": "mTkQKw6MZhtBugMb", "height": 67, "imageUrl": "z5S6uu78MTsYl90K", "smallImageUrl": "dkfiUFjmiiDqIo2v", "width": 4}, {"as": "y6rvdkpQtWo2sY4C", "caption": "9IRTQuFR2o1zcHr6", "height": 1, "imageUrl": "XKZgEzcUafqHt99r", "smallImageUrl": "DyJVjFUmDP1GWtn2", "width": 86}], "localizations": {"w9zEK0XXlPNtAS3H": {"description": "2NdEZzMEuZU0x0UY", "title": "zl8QYUIbdLCMjNmU"}, "oCdYM4f7BzNtL9Wh": {"description": "UxrCUdYHXrISmN80", "title": "mKOXvfwnInUc7ABG"}, "8Mzg91h2eSNrKYYy": {"description": "vNGlq9Tcs9G3OZvP", "title": "4JWX2xbVimHd6ZYU"}}, "name": "K2lT21RwVDoV8SRH", "start": "1973-01-20T00:00:00Z", "tierItemId": "A3svRhAGm4f0Slv7"}' \
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
    --body '{"userIds": ["MhHBrqPsZiwY1KVP", "G8h3oJGiDy1We8fF", "DwsuPAnVT88RBYiK"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AGwva9c7AtLGKXOA' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xUM4tUywxmFTMgS9' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JnCT4N23uYCS6D2Y' \
    --body '{"autoClaim": false, "defaultLanguage": "lSmlRsuY1V9jxVvx", "defaultRequiredExp": 73, "draftStoreId": "qNwFJHhly5WO54Ld", "end": "1971-06-11T00:00:00Z", "excessStrategy": {"currency": "k0a0n9z1kMHovWh9", "method": "CURRENCY", "percentPerExp": 39}, "images": [{"as": "u7JdSwcxPG4wFDJM", "caption": "oyDo7KX5akyazVmX", "height": 4, "imageUrl": "Bm0ielQF3ZddxnAX", "smallImageUrl": "1AeUYxjggs9NS1Zx", "width": 58}, {"as": "2OAi4CicwLNIknS1", "caption": "WF0UHBfzo6n44MLm", "height": 60, "imageUrl": "QE81rUv6ymNld8vV", "smallImageUrl": "KPYOBLbeC3HMxmTF", "width": 25}, {"as": "QpPzgXMltvthDp0Q", "caption": "CcJFMlyYgZSRM7jU", "height": 79, "imageUrl": "HHULprWoW1EcpuXM", "smallImageUrl": "bcPiLYLufVBDNm2n", "width": 19}], "localizations": {"FYJH1jOl3yYbJunD": {"description": "DdvGdGxJCp6FFctX", "title": "80iN30iN3IoWVbYZ"}, "2qUlqX6OmMzVlCSb": {"description": "KYdzdkx7K1xaEctV", "title": "xE7BPUpBxQ2gb8nF"}, "6TQadBJk6G6IzDWS": {"description": "eNgNc9vFxglTgjeu", "title": "n5OFKHY4JB5e020V"}}, "name": "kPszXAxXubzHpvEm", "start": "1980-07-10T00:00:00Z", "tierItemId": "0Vcoi7OSkNMuJo3V"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vCQknujeltwUE9m1' \
    --body '{"end": "1985-09-04T00:00:00Z", "name": "2LKFmreNa615WqSa", "start": "1990-08-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LgeOm01Ls8PKuSdG' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'nlQsgC30atf6VRYZ' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '415YoeraLLKow3wv' \
    --body '{"autoEnroll": true, "code": "zKfrTwMgIf1uXImv", "displayOrder": 33, "images": [{"as": "GGJlcRQz2wcG3lLN", "caption": "pZfPPMN7Xfn3FJA4", "height": 3, "imageUrl": "WyS3VIxBt2atZnav", "smallImageUrl": "TPWsbDfZScjazX72", "width": 27}, {"as": "bSo50rOjs2c7c0jo", "caption": "RpM1O8W3iSwx8T6R", "height": 29, "imageUrl": "vq9fdiPHWhA5TRLu", "smallImageUrl": "IJy0Ofj6bSeniGaM", "width": 49}, {"as": "a9WDQxZH27hXG9Ts", "caption": "kTYg3Sl5bAowkaZn", "height": 52, "imageUrl": "uVdjG7N3pFOhgq7P", "smallImageUrl": "1HG8ZAtaCqcROKlD", "width": 7}], "localizations": {"TdrqpE7Zh065ITuG": {"description": "Ci0AuWVmy4lUwzbj", "title": "wTlHSfhp5UgwfXXw"}, "VWSPXWz4dvzDrr4c": {"description": "ZR4HhMZxP2EJnOCT", "title": "TgcqqHCAhK8Qd46T"}, "BUrBER2FVCHe6XgS": {"description": "v1wSCO0UNI3VF4Sl", "title": "dqBAyihJSwxiqqrv"}}, "passItemId": "IlkHUpVpaOeYPnHW"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'iibSUtb6eaWi1A8l' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eDGi4feohlwPvTM3' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'l4A8AHdqrsNHcz5H' \
    --namespace $AB_NAMESPACE \
    --seasonId '9VKdlwgvY2wTejlZ' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '0q6W2EEEwpV1libl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PzzL7ja3hZInC0V0' \
    --body '{"autoEnroll": false, "displayOrder": 1, "images": [{"as": "gmiQXE3ELp6djCcN", "caption": "BKZlWHOyvdPD9G5I", "height": 89, "imageUrl": "11sW9dXT0d0vvzBK", "smallImageUrl": "jakbWO8NaAZu3IJr", "width": 1}, {"as": "H3bz6a9uTdN3QRNc", "caption": "kqbaS4pBmbie4dcT", "height": 53, "imageUrl": "c7ZyFhqPoMrVYDBI", "smallImageUrl": "HttwoKGhfoeGFISo", "width": 49}, {"as": "z1V2BmB1jfSdcCFp", "caption": "ZjuH0emODIcbNheu", "height": 56, "imageUrl": "11blZo8cRgRnALQW", "smallImageUrl": "LE1xwtwIA6FCorPf", "width": 21}], "localizations": {"9dYHq7clk1fMk1nQ": {"description": "hj3TGxcY1ymz1AvI", "title": "k3dcUyfOupsmxwn8"}, "kiU3Xz8QQ3p5gn76": {"description": "T26JmrF5ZmxldOYF", "title": "Ly6RH17TFgY0uuYU"}, "9KTScVSQxUuLoZuo": {"description": "b0z0zj0ouSk55I98", "title": "uvrWxddLejzwny3s"}}, "passItemId": "IZocxAi2CKzHbzIV"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6RPbCBquUJvhFMHo' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BRs8zjkR2PcoMfCr' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'EnpsqA0t2vA4UWL2' \
    --q 'MNOQL6HKFWvYQCNO' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'BruZW46IDfdWdoaZ' \
    --body '{"code": "pvOidjCZxGNXDgmC", "currency": {"currencyCode": "xfCFgCgIYnAUgGJB", "namespace": "U3idPW4ttBNA7oLE"}, "image": {"as": "zqkhPf1c7Lq5WjbG", "caption": "L9M7DFvYTc5p6gQK", "height": 28, "imageUrl": "IULM5DnX8y8Dj5jo", "smallImageUrl": "GVplnApgEMD9cafK", "width": 90}, "itemId": "3Bai6qk9iBY6V5ps", "quantity": 88, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'dmegPN6BxFXN03KL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XdK0zzvRpYLuF6cl' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'JHbyskSsAXBuiTaV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sGSy9LOJ3afPKQI0' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'PtZRKUwmId2fZmrO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ulkCUajjC61ynKtG' \
    --body '{"currency": {"currencyCode": "k8VT39SAB4v6k04w", "namespace": "AZ4omvFnh2HzkpNs"}, "image": {"as": "yJmebseubIh1vO1z", "caption": "6agEDcetQRfmRfPj", "height": 51, "imageUrl": "esAnS1F4Uk1epHgb", "smallImageUrl": "5wYZGB30ri1gJMsF", "width": 1}, "itemId": "aWrD0kVYohIEDoOx", "nullFields": ["WYu2VfmEbv2knPHY", "C8p2nEfc917sCNzg", "LRt81f7wUJauNd4i"], "quantity": 40, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'qTof6xNaEQRpPqEQ' \
    --limit '70' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'mnMfUYUPzVtwBaB0' \
    --body '{"index": 45, "quantity": 61, "tier": {"requiredExp": 82, "rewards": {"bF1b6DvPdekkax2S": ["FB2E93FqgLdNnabr", "28GIc2XjpWMkvIhO", "EOX1X6OMGIWHHNjD"], "ldhaC4KX00twFgdj": ["WUlE4hiccY7hbEBA", "KGfiVO3AO0d3B4c6", "o3r7DJch3P9MPILf"], "QQa38GoQ9FLpttHN": ["Yxyu4YPnwMBkblhP", "eohgMjQtR9pcz3ZX", "JUuYI9ITmeiiE2DG"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'OCxtUvFnehS8JaaK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZZIiQaXGmUZPuAso' \
    --body '{"requiredExp": 22, "rewards": {"zePc4SOkx2gFPg4H": ["FdaRZj4uY5hbe3FO", "teJzPCujQKCX6KdV", "WqGzZoq61p0ytGQC"], "px5gwVx7ShoMmkHS": ["OlomcTnMYjy72fav", "qaRwyxxetPueuEY4", "DqymxktjrYXvHERg"], "MmFL0VXDnz4WjIGg": ["S9B6IbI4jJAFDY3h", "fgHEa6zzR7mUgpwO", "U5cDdXSj5NHHXkrB"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'QMW814Ser6LaIKs6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'RROE6AVnCmqA4Gm0' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'x1l5LV20R7uYFiJp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'moYvNhYrN4XoMRar' \
    --body '{"newIndex": 97}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GdIFY4tiWHhOfoJm' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'z1AYXioTbaBjEqH0' \
    --limit '45' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'sJlZThE0Xjmy05VG' \
    --body '{"exp": 32, "source": "SWEAT", "tags": ["7HoLv5IYRvxsMn7v", "UP4uGZyiORi2oylg", "dmeRq3TznasOKifb"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'Sni4zq3uvChs2ybL' \
    --body '{"passCode": "j0z9IuWC234DelBg", "passItemId": "9p1c3UPj3S39IfwP"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'pMSshcZYEJA4JO0h' \
    --passCodes '["irjB7Y0ZTeiou7iD", "6uINic62y2rR3X0V", "RmVRWOZHYzKlGQ9X"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'YKdh7GHobqcrnuq4' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'A3QPFOTlupNCjW2b' \
    --body '{"passItemId": "BRNbQp0EUO5D4TwN", "tierItemCount": 96, "tierItemId": "3T5F6iYVlnc5qVmq"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'erRKR1FNFEc9HPRV' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'pKIW2H9kDMQmMfyl' \
    --body '{"count": 50, "source": "SWEAT", "tags": ["pSokWHun84wqY2dN", "1rvljrmIDalFXxye", "EE9vHAYOW8QFt3Jh"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'U78z8JvC5l8S6FDX' \
    --from '4NGKekbeefDzYrlB' \
    --limit '87' \
    --offset '12' \
    --seasonId 'RheVxj4ObcsTdSJy' \
    --source 'SWEAT' \
    --tags '["5Ap8lDJuWLNnVY4B", "RSCg0cNTcv3LXvKq", "GWc6eEhbconkyFne"]' \
    --to 'EdHpHXYMMehATLt2' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'G89FUV9K0Hoa4eG7' \
    --seasonId 'sSwmI2WB1P9RIom5' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nBHDBSe96t0J9Vhz' \
    --userId 'FFW1ruhZD59Lt4Gs' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'D0cxt5x4IVtgb9Az' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '3uM4JCB1Yyotp4Gf' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'WLocmhscFCJYX6Cs' \
    --body '{"passCode": "APslZcZJyxpQQL9A", "rewardCode": "XkFBP4Vgjswjpq8S", "tierIndex": 77}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dHAHJ8ch0P7VoLqz' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'y8NApHHNMw3DsBhK' \
    --userId '2ayhQVq04CxNNFkP' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE