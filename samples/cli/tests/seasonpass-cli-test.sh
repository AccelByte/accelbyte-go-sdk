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
    --limit '9' \
    --offset '72' \
    --status '["PUBLISHED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "cyQLBFeSfZFKABRM", "defaultRequiredExp": 90, "draftStoreId": "z8nWcgMu8BpIjixy", "end": "1994-04-14T00:00:00Z", "excessStrategy": {"currency": "oWfOb1pDzHMu238N", "method": "CURRENCY", "percentPerExp": 19}, "images": [{"as": "xTGeopQj4AwZeqgI", "caption": "WkTyHdte9BSEoKcK", "height": 0, "imageUrl": "LkOoYAaHnZ2kQmMq", "smallImageUrl": "sALqttfHG9ATWTID", "width": 48}, {"as": "x8QOauJZofwg00cM", "caption": "nFIkbSOCYdSDdGr5", "height": 10, "imageUrl": "RB5iQE5bgCi47eKy", "smallImageUrl": "fhHzkCsKYnJ5aEHJ", "width": 22}, {"as": "wdjqu09PwnypURd9", "caption": "4kIwNI0aV2XCj78x", "height": 35, "imageUrl": "2xEX3iPYb1NVvnTb", "smallImageUrl": "GbebwwD78QhlHSsi", "width": 52}], "localizations": {"uJOaZlrp8hbpK77B": {"description": "ShuAt7KOVrybHiHj", "title": "RgLtfFF58m20lcC8"}, "Y2Ev3504ebExu2eM": {"description": "xXv5EAX08Eqm6513", "title": "JFvlkej82vncnBj2"}, "yrvbnsS1gvVBL0vf": {"description": "ky2bUwPrVa66Q9cs", "title": "nUTJXCL2v17LQy6G"}}, "name": "fekhkG43VNJaFpdu", "start": "1987-03-23T00:00:00Z", "tierItemId": "oeUcuisf2wOSXPdo"}' \
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
    --body '{"userIds": ["mV5qgN4kJdTk7jBf", "6DAndOu32GM4i9g8", "oefWTyL09Y4uJ46z"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gELLcLFIaItFafwL' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kezrVlWJvTYmQvZF' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8qBsFrDiFYukCHTy' \
    --body '{"autoClaim": false, "defaultLanguage": "vaySvfOfKaYtIOP0", "defaultRequiredExp": 99, "draftStoreId": "SuBUbpEoN1PskHff", "end": "1973-06-01T00:00:00Z", "excessStrategy": {"currency": "CLvAScJ2uQle3bFN", "method": "CURRENCY", "percentPerExp": 65}, "images": [{"as": "HkxSr1KcvIgTrahK", "caption": "xoOX1O8dZgMySJrp", "height": 35, "imageUrl": "HuMWL5kum5IDaLJ0", "smallImageUrl": "jLS6oobV0m07gFVw", "width": 20}, {"as": "TaoHFNW9M5FVl1z4", "caption": "5dvl54G2ZQUTS9YC", "height": 55, "imageUrl": "9tJLEmhrVbuwwh07", "smallImageUrl": "IvNvdxyJt8g0Y111", "width": 61}, {"as": "kPvlEagI9cLN0TEL", "caption": "6h4aoIMood48Ucco", "height": 89, "imageUrl": "UYvmVgR8rPZANkGz", "smallImageUrl": "2vNno9w6OXRb5x6w", "width": 30}], "localizations": {"h2HiilIQOfIM0nXF": {"description": "4YnN3ltWz2n5lwcD", "title": "KCGVlkFMZSmaWI6R"}, "jnzJuAAHrEdk8KV2": {"description": "P5akGgEHX0uG6NQG", "title": "tx0oGaWFYetJSmQn"}, "Cz3jua99AJ1247u1": {"description": "hfQTRwolAyRqhcVi", "title": "mZYY77nY0PQUHGT0"}}, "name": "VGgAHRXspcU9bRiS", "start": "1990-10-01T00:00:00Z", "tierItemId": "N0skxB7KWu1HIOBR"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8oJgCXMxMONlF4Hn' \
    --body '{"end": "1987-07-16T00:00:00Z", "name": "mBt3W2k0xeVdnr3D", "start": "1988-06-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PvCcLsL6YDdx93a2' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'IYvRVwXcBFGqNJvd' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'JyNazp9jswsw8fpD' \
    --body '{"autoEnroll": true, "code": "wRukpoLIermi06LM", "displayOrder": 29, "images": [{"as": "TpKT2kvfG0QOP2ki", "caption": "dbaxSAC9xmw891Ea", "height": 9, "imageUrl": "7bS4qyFC0MHIE7MX", "smallImageUrl": "V3Nh9bqefPwIufIT", "width": 20}, {"as": "8BqpiFnoaGBRMPLD", "caption": "EuUKzNU0TAMAlnjB", "height": 40, "imageUrl": "tBrJRFJdxcHUjGQl", "smallImageUrl": "cSDcZiKLItLXlnei", "width": 52}, {"as": "eqEHZwG3vFpPwGSB", "caption": "LOpbKrtCKYjd7Bxe", "height": 37, "imageUrl": "PYziCeVveVKgKolf", "smallImageUrl": "rL2iHV1T9UCQK92o", "width": 36}], "localizations": {"BE6SLwrD3MX8nUJP": {"description": "GzdcBnMQkh6BUGtK", "title": "UEtc7NPAXQ6arGM9"}, "lN9y0SetHyhr6gum": {"description": "VZS20pNzg1HmkrrN", "title": "GY5gqPvuJqQdKE7n"}, "BtW77GxzY6cvaHsH": {"description": "Ar2J5qCyRLeHDnWV", "title": "3NiRQPcORPvIbZNZ"}}, "passItemId": "uVS1IpmUJ5YEBtgi"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'OtJ0ryFdGnmZmXgh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'txYD2U1JgFwngHUP' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'MvszBTywqYwfhR1w' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KWBX83lUkfDu1IvY' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'qZb13TFE8PhHUnCP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iLdSARGKfD4rojZ7' \
    --body '{"autoEnroll": false, "displayOrder": 21, "images": [{"as": "GsC6uFpZknca8CZr", "caption": "8LLe0DFGAfnrcggo", "height": 72, "imageUrl": "1FEkCpgz2UZVRFn5", "smallImageUrl": "YTph5Ei1uzNmvRLr", "width": 83}, {"as": "RAMThLSBpxI20qHE", "caption": "Wc0cjfKAdD2ZVVDK", "height": 9, "imageUrl": "XaXBWF6IuE74WNSn", "smallImageUrl": "jBC7AdsIitvwyAJh", "width": 79}, {"as": "yZeUCPGKMfh2fHGv", "caption": "PKgXUJzd7vR17GG3", "height": 88, "imageUrl": "f2Pfg8BY6OS1AoN5", "smallImageUrl": "gKpaUNwjkXNtvlGO", "width": 20}], "localizations": {"dV6qV1IF7yxL8uSh": {"description": "kQmqBdY0bkph4T1Z", "title": "GCxLduM6gqCUGmLQ"}, "mdP6cWSgldQhM6sR": {"description": "oELlFcvSCnkkE6BZ", "title": "6C4fR1F68zDGNf6B"}, "mFKzHoBscLWhilx3": {"description": "PiBqMHLmr2hM3l89", "title": "8asInF9YXspNPCb0"}}, "passItemId": "2pCsdVHJ49rbyJEZ"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0ngIYiuY0NcObR0v' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kU7NWg0ktZZyodpm' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'h6iVOi4kOJKmSC3q' \
    --q 'EHIriGwZ9PxRbzXy' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'TjbpMIKpLw6hnaKx' \
    --body '{"code": "ni4l6P2xQchCHrhG", "currency": {"currencyCode": "EMbo9uMK9nd8AkKi", "namespace": "Xs42h1nd3jsMQrM3"}, "image": {"as": "Bj8i6T3U7MfvnwaI", "caption": "nwLyDAJ5msjaMYnF", "height": 99, "imageUrl": "4vEKERR2SygodJIG", "smallImageUrl": "omAzEXLgDvjqmvaZ", "width": 80}, "itemId": "qRGn8EU4O5kQ8Wqz", "quantity": 10, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'bTLpqjXO85czy8O6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BO7jT7zBAOvNh4xX' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'Ru3UniUgxq0kOTc3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'raN6tti3dZVIyfLX' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Jd6dHtPzZaOuzEny' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LndxWZ9r2CojsOCz' \
    --body '{"currency": {"currencyCode": "qazsny546VcGMsWW", "namespace": "VW90Y348FYn75b9Q"}, "image": {"as": "Qvr44VL423IPLHq7", "caption": "50pJKCgNX2k3glI0", "height": 73, "imageUrl": "UhDDuXoZ1mloumnr", "smallImageUrl": "751bQ48xC47NKBva", "width": 46}, "itemId": "8EwGQ5KXblX2T7P5", "nullFields": ["AZETKjgdYyGYsecL", "Jj5up0SLABTE1NSe", "h36BLWbMducpuPKD"], "quantity": 12, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'fIhHbdJbk0ayGNXU' \
    --limit '53' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '3x9PCoP4MRcHjAWR' \
    --body '{"index": 45, "quantity": 67, "tier": {"requiredExp": 49, "rewards": {"U7cXrjxMsXBziOvr": ["UjYOW0UNQHx5clI2", "Dj14T5bHEds24JDb", "78Y00Hyivpbx7mbe"], "HEKSnXUkCwy0TXCK": ["wz5y5bFXEBHd10vP", "TiJqLpNMzk5BSrKL", "PH6affDyNH0w0Gqj"], "17nAqCYt2oQFWzD2": ["eDGBusxK5SjiKy6p", "vSQduTS12tnW6fqM", "vX0kw2PPih4uKPTz"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'sXwKYAezd8yT1Llj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'P3K93uMVyqCgJi5y' \
    --body '{"requiredExp": 37, "rewards": {"LnXlw7m2oNDE9j1K": ["97ZtJegO2fvDENlA", "XGJgQXPdRjhLMVa4", "qHOOnHPnhc7e0bpC"], "2Hn4zzdNWgUEcE92": ["ueouFXIWKQ7yKauJ", "RbzV5GeAXogjZ9zb", "y8OubetFHBSbXr61"], "Fe9V0cVaCSxBl2kh": ["U8iwLNoVRFH3WJqh", "IzDHZuBrIITQFeU8", "QhB7UlyFDLyIhXg6"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'QjbpeREu7hYONSfA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NgC3Plq3Dw8yX1Xq' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'yn1t6y3cCYlndKmg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WQo0lLCifBTOyRE6' \
    --body '{"newIndex": 73}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Nu8M36wLlwAHxYIX' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'B9LNMIiHDy2bmioM' \
    --limit '19' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'yJZdZVDzl9DWtSjC' \
    --body '{"exp": 9, "source": "PAID_FOR", "tags": ["4nCrdyvVhJkKtVHn", "pBUIFXYqLb2rCquh", "77XXRI4RclpjzEVD"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'EiJHHHZVaSDOo3rd' \
    --body '{"passCode": "EGN6Na2BCHjgY3aA", "passItemId": "MqX5rvMAJzKrzLho"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'g5SnmQa3eozdTwtT' \
    --passCodes '["aKZMrMZ3IdDQtEGN", "rUAzdRjzvrl5Nz54", "r5Hc5N4RosnJeTfK"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'TTYIpb50DXDQSbNE' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'wyo53WoClRtHQv0Y' \
    --body '{"passItemId": "Far4wkoUmddWzeo0", "tierItemCount": 89, "tierItemId": "we90LmvokriwGWhX"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'i5R0VM25tWlmjJ4H' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'XaU3XRVSisgcDEpv' \
    --body '{"count": 35, "source": "PAID_FOR", "tags": ["2tG6TQvYR8TgTmyI", "3M5wXXjDfEtyTAhC", "e2t5HxGEk6wFfvKv"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'aYANMdt5ifoT8wGI' \
    --from 'xJdQGk2h9oIygOxf' \
    --limit '89' \
    --offset '97' \
    --seasonId 'mBshh6VxzZd97Nzb' \
    --source 'SWEAT' \
    --tags '["hDk3b1VKNSdPOdNp", "CTlBy2cbdEbCmNPV", "LPpsuPfzQXTZJ7yH"]' \
    --to 'Q9SLpGJXnVWEwZQH' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'eKi2NMGzFBY4tYOu' \
    --seasonId 'TtSMSb24PwiBVPiv' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HTHop36k4h8wFzPB' \
    --userId 'Jrg6LyvC3JP0HSM4' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'jG6e6f3JF69GPqJT' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'RTH5sj4fNVYMFReY' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ez14heBsfuC7wyWM' \
    --body '{"passCode": "zwMRijKfGz5YZRt9", "rewardCode": "qPfkZ8bDXmGuOdcO", "tierIndex": 39}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'doQs3GbmyWbBfv0Y' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5Q13578Le3vfvBtJ' \
    --userId 'ceqjb0oRJICGumFZ' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE