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
echo "1..44"

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

#- 2 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '33' \
    --status '["RETIRED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "1H730wfdtEjtpR4j", "defaultRequiredExp": 48, "draftStoreId": "LVQyw83fEvIb8oVS", "end": "1979-01-30T00:00:00Z", "excessStrategy": {"currency": "hx7YVlG5cAybDMG9", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "juUIkD2RFb8peavl", "caption": "a2fr4y0ZGLO1ZYTl", "height": 75, "imageUrl": "6Oj9c3vHb9IGiaNr", "smallImageUrl": "oOoHPgBi4FhCa9O9", "width": 95}, {"as": "LlGVnLJjFDNLFjR8", "caption": "nbeI2dosKpaHCgi6", "height": 1, "imageUrl": "qOrxJsVBINCMLJT8", "smallImageUrl": "2xoqwaFNJxYWOtX7", "width": 48}, {"as": "1PqZFk3jTCFnwvqx", "caption": "dgpEbRHKMj271Q5F", "height": 18, "imageUrl": "sY0LLrm8KQdCB9in", "smallImageUrl": "Vx4nERrMC4wh94XM", "width": 7}], "localizations": {"HCx0hNOiFyjHZJjc": {"description": "QtraB7vLnq18RWdU", "title": "mzvcTAuMeZhgEd9e"}, "CqwkIYyHZruk9tPW": {"description": "pJnWKjiK8sQJFuza", "title": "b2Pvp0gPpS5My4xt"}, "SclWnYAL30szUPaq": {"description": "CvphR3syOWox8Hry", "title": "KGbMjXBt58HaTT0j"}}, "name": "B0Y1WhjVKhZMdyb1", "start": "1993-06-22T00:00:00Z", "tierItemId": "sUqvEnt0h5LQQpag"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yTu1nlpsIKug3KyN", "vaxnTvCVfXlmq8pQ", "7XaHh7JQmue0RqtQ"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hl2URk397SniqWsQ' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PIW9larEtu3JWAWU' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IOQsAl5O98OM0gEv' \
    --body '{"autoClaim": false, "defaultLanguage": "sn6DuCM6bX0fcPHk", "defaultRequiredExp": 92, "draftStoreId": "xLdjere3BQdMD0sK", "end": "1976-01-13T00:00:00Z", "excessStrategy": {"currency": "mRnNun0ucQuyZwT1", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "O8Yex8MTPCbymwWm", "caption": "fjBjfQxn2iSPt306", "height": 43, "imageUrl": "weleNSpAJiOa8xkk", "smallImageUrl": "hXPwSR98Wy8miwxI", "width": 42}, {"as": "E5JiXymnWIotOP7V", "caption": "hiqQk2YDyhrt16f9", "height": 74, "imageUrl": "J5INbGU3VfXMKF12", "smallImageUrl": "9TKtKehIYBSjGXor", "width": 67}, {"as": "pp5PSezBCIYvVgSk", "caption": "i2dLHSbMU3tqr8kz", "height": 47, "imageUrl": "kCZHlnWOMuugMSlL", "smallImageUrl": "YtLL3V5MKyfpRVWC", "width": 20}], "localizations": {"6vhscWNiMzBbAaz3": {"description": "vQJb4n2kWvitE3zk", "title": "6uZDm8F5s13AxdHy"}, "LFWWWHA6qwaNbZAD": {"description": "yNDTRR85vGgaGQw0", "title": "Lvd28OvI72OoB16i"}, "V2kFueIEnGmf35Zj": {"description": "ZTPW4YyGI6C1kFo0", "title": "lPSWL3eVqL0GIDTs"}}, "name": "8gnasPXKLkVEC3Ph", "start": "1971-07-11T00:00:00Z", "tierItemId": "OihqAoG2UjA4KEjr"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NbNkWmvCoug3iFoX' \
    --body '{"end": "1971-02-10T00:00:00Z", "name": "bcNkrg5JcJ3z57uD", "start": "1980-02-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tfRh00pMI6l3yeJ3' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'CjWzqGqaRzg8NVUq' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'AWHCNHGaTtUcQolr' \
    --body '{"autoEnroll": false, "code": "BDAaHmPD7HlWiv38", "displayOrder": 40, "images": [{"as": "f08DGZAaYLMYQjEv", "caption": "DoOe4THko5JGNkzW", "height": 47, "imageUrl": "ybcjIDHVDtTnaVPg", "smallImageUrl": "hkfvVw2zlMavifLV", "width": 53}, {"as": "9F2t5YcONaX5dVpA", "caption": "uAoWSKXjFwLEt1hH", "height": 34, "imageUrl": "du1uXciaWsAYLGn5", "smallImageUrl": "mrpUjnEgOA4LO5Px", "width": 66}, {"as": "DgG2WNju9EWk0GTj", "caption": "xEk9uLo7qZQ65JFL", "height": 5, "imageUrl": "aNfqh03nYNA2M5Mi", "smallImageUrl": "oRi2ozOslP7rzWMX", "width": 92}], "localizations": {"ju2YtDXdOpiuULGG": {"description": "rl6p6l4p0l3GzxVA", "title": "aoGIxPckWb00toj8"}, "AXeWQECUHBBx4CAS": {"description": "DC672qdLJOrnC1bi", "title": "lies48Pp8jc0WwL0"}, "RJtSxgo4BVi6lhLO": {"description": "RzI9CAlJL16scXcd", "title": "ltBvq0ix0jpTW33N"}}, "passItemId": "dOR0SxpagWDsILGo"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'VxANqqAkxrQqmqgl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ltWtDjSAauGJmoyS' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'etS5wjuHzih9DGUR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Lg1N31ndvGihispP' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'SmKDiFAHOcJs6iKr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QZpLJEfNVn93daaU' \
    --body '{"autoEnroll": true, "displayOrder": 57, "images": [{"as": "kFczemlY0AV322DN", "caption": "BQsQAfCyJLNIGk6h", "height": 97, "imageUrl": "GNAGHDmNk0LaeZph", "smallImageUrl": "odv6NeXUKu8eLHL4", "width": 63}, {"as": "7MCBucdcHrZ668SZ", "caption": "zBreQTg3Yl7v1qyC", "height": 79, "imageUrl": "6kS3OdIWkxP1lWWC", "smallImageUrl": "7fPK6aSDNhfzS7bK", "width": 97}, {"as": "BZYSQDLztoHWWI17", "caption": "dkXEJfyFIBzH65uV", "height": 84, "imageUrl": "NVb2PrRFuCTZkK7c", "smallImageUrl": "ZTJVexDkoKcytymX", "width": 28}], "localizations": {"QYvWxGJEcB3qG8R1": {"description": "ajncWbI7zIocnBN3", "title": "XBOuXORLsIsxSDEO"}, "AyqcoIdVvlQ6CC8i": {"description": "3duMSLkg9UAmzV5M", "title": "8rcyVkijFe558KeR"}, "NYwvtwrRqAn5gmRX": {"description": "EPlaf9z6Mq17LqoZ", "title": "ZeiOoYjVoAgXhaww"}}, "passItemId": "ggMW7NigiquSKM6v"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HLuBtMRT5cHBfOxc' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mPpf2W6D61GAOrd3' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'gWKMtts91YuTb1FB' \
    --q '7DlKI526yVWfVFtE' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '7NaNjRAismz99Rfg' \
    --body '{"code": "zP3AWhHSzRQ6ijDL", "currency": {"currencyCode": "CiDfljHZC4AzIa2l", "namespace": "luTJuYBHmf5AZVZB"}, "image": {"as": "bQDwksXRaULVbtc4", "caption": "t1PoGR2e8k4aQIZD", "height": 41, "imageUrl": "TTqH86K2TRsRIiFE", "smallImageUrl": "Li9rSrFzV2vBeTFw", "width": 12}, "itemId": "AfWKpxrFl9pPqKHr", "quantity": 88, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'xklWmAcjCswuPDdM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'H2z1uqPOXuMBHUMf' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'LLiYuFP8RtxV7LDq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xWgbGeq1o5R3vwFV' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'EEBhhI2RVVwq83Tn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yw1fYAjl7spy4VVW' \
    --body '{"currency": {"currencyCode": "fhzIM861P6TaF2BD", "namespace": "PMkx3RQLthmj92Wc"}, "image": {"as": "M216Ff2lErCjJ8pG", "caption": "VH5JnYtack6q5uMJ", "height": 39, "imageUrl": "8fwYRvZxbhDdEQ9O", "smallImageUrl": "06kaLvEJn6Qwhft1", "width": 55}, "itemId": "sKdQjqCMUSsIW0El", "nullFields": ["W8DFhldUNAQ1FETU", "odIt1lTxf4aiEOJb", "NJrxCGefysHnXl8G"], "quantity": 52, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '0ZdypcwoBG2KNIdb' \
    --limit '53' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'sNNY4wqpaZf5zuVP' \
    --body '{"index": 40, "quantity": 67, "tier": {"requiredExp": 68, "rewards": {"MIMguoPghDWNGnza": ["4wBQ089x6XnwkUO1", "j7cQJoVmoLNiP33B", "HGIcbGSJHX0Jwtfs"], "oxGlSolbF6boaeuI": ["JJaJner7SavZno9Q", "tP0BKKfuQEwIsWJa", "lxpX9jMITaLQ0moN"], "ZZycXYbNX27ZYxMP": ["OJmQcGlI9VPzAqyN", "foFEljNRoajKDECI", "7krHYmKQPpvdbaiL"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'zyxZwZCpIBCBuAo6' \
    --namespace $AB_NAMESPACE \
    --seasonId '4VGzNVwvkwbJQdeS' \
    --body '{"requiredExp": 78, "rewards": {"OQ0aO9WZoetkuU7X": ["f5nX4THWnb7ti7r6", "U9Ym8TtVUdzSiC37", "tjdRIwQKbr64LmFc"], "G4qCOGZqSgmqm9Lb": ["jy25AX3hQsxeYIlj", "EyznIHv41UOYUb15", "kvanMmdu0m1YrvgS"], "eGO0q3F28EbCcwea": ["eLFtfitCJWPPwMzO", "8cpXGoI0mCrnlJ9W", "AINlgIgRf8h7PIFa"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'ORmZl1vr1fL8aciR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TzXQjoTWsUyzm62Q' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '1R96aFCD1WHuHQNm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jx5HrahddtPaslKs' \
    --body '{"newIndex": 39}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yiMuSKf4qn41gPKZ' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'D4yhVA4brwMkzIpz' \
    --limit '16' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'dNOGMcoT1FVTwGUt' \
    --body '{"exp": 80, "source": "PAID_FOR", "tags": ["Nh0QL8sk3cRrDsJ2", "BAAZtlKBeb1laciK", "wBb027zNKLd9jHer"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'DUaZs89B3ksiiElH' \
    --body '{"passCode": "P1KHUPSxlyTrvUyK", "passItemId": "OaVwJNeEcJsldbvX"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'aRXwUWnGtnm6BeB1' \
    --passCodes '["wJdljS8Dlt0YflFZ", "bIEyWRE50NaxaLGG", "GKA7EsjEIlHwwJ3r"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'NyPfaDQJd8s0ybor' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'VIG9T2atxxtz92Kp' \
    --body '{"passItemId": "1eY1hNHLZgYyHFNv", "tierItemCount": 36, "tierItemId": "rQRTUWcFgNfKD8Kl"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Tq5aIhpffAqT6UQu' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Qk8YZbCwRaQjgs7t' \
    --body '{"count": 25, "source": "PAID_FOR", "tags": ["dDvtvQfMPo7Z230B", "CqpjbqG8HErIfSLO", "XLeDA3AxBVrjGm8h"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Fl1dAFh7QPKFT08u' \
    --from 'wbb0FUhKTi40Yrzn' \
    --limit '83' \
    --offset '89' \
    --seasonId 'NjbPasoW2EUaSzlP' \
    --source 'SWEAT' \
    --tags '["64IqZyg2B3sVZ8xo", "m4GxZYkVj3osISpH", "CIfrBwZNuorwcHc7"]' \
    --to 'iTpHBHaAH6hhg0PL' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'm5lKtoZzXnwgm0jC' \
    --seasonId '07wgilC7mn0FQSum' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '69FXgCMxIbtuTHDv' \
    --userId 'J2Iox2RpmO6WlU9G' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'nrW3qXGjyX83YprV' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'VUXP1FsGIRGfXCMf' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '1fzOJLsoeQKw4ptQ' \
    --body '{"passCode": "Un74t1eTLWjAuCit", "rewardCode": "2RpFCV2JaOmGbVDE", "tierIndex": 43}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lMh6PhScddFOVk2d' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Dj9IY9rCYzZQsc3a' \
    --userId 'WKzwYrIgxqe9mRRT' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE