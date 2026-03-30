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
    --limit '69' \
    --offset '73' \
    --status '["PUBLISHED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "FcJgwZL6fJvm0ix9", "defaultRequiredExp": 44, "draftStoreId": "yfjSAZDXPV87MFPw", "end": "1991-04-05T00:00:00Z", "excessStrategy": {"currency": "a7TSAE5cHezPHfuS", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "wJZlfcJCqHwjxu9a", "caption": "6ruKjOV2A63ObtfW", "height": 37, "imageUrl": "5izts4J4fluqXsd4", "smallImageUrl": "6RxxkLazHrA6ogJ3", "width": 42}, {"as": "S3CNHftzHk1B7Cxj", "caption": "P37gF8ReGV63Oqwv", "height": 99, "imageUrl": "guDvGHpYjXkcCaDS", "smallImageUrl": "vS22dC1dlOD51Lwi", "width": 26}, {"as": "w2rXBul4w2UoX66r", "caption": "8nqiia7iDarx6NGQ", "height": 74, "imageUrl": "IoFsCSvS6txTabYi", "smallImageUrl": "Q6Mor3zfmpTxjew9", "width": 25}], "localizations": {"tkrMHRQt99z9H8Nl": {"description": "RMBHDHXyPKEFfLCa", "title": "Ux4KLWkIz621NXDn"}, "4GsZ9IgHQQOI4CJL": {"description": "fqxyVVQYfMFwucol", "title": "w24aACrsKILeYzjv"}, "iXztIZCueKQmz9H0": {"description": "oYx8jJ9Fc7KYc6S2", "title": "Kve0myCWWvGD6Yda"}}, "name": "nUqMLAZbtwUGUoRv", "start": "1994-07-18T00:00:00Z", "tierItemId": "ccr3pYKql1njEXK1"}' \
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
    --body '{"userIds": ["IQiptS5QVirChu8Q", "KEjYyAIeKPT6BceO", "98zQlDo9FlUSFcsL"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'Ydog1A92eeLjchRd' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DdiEdf7lEUirPtlk' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KUrRPAPtJ76JGnnf' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UGQfBzJnxkBBqL4o' \
    --body '{"autoClaim": true, "defaultLanguage": "3n1rJOdeEo3OTrYD", "defaultRequiredExp": 32, "draftStoreId": "Esg9vI5VeflEsDrT", "end": "1974-08-13T00:00:00Z", "excessStrategy": {"currency": "tjtbSROQ8wtjgTMc", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "d9BRKiheXBCZhZG8", "caption": "9XQXx7gp65jscfaL", "height": 66, "imageUrl": "DE4ZouHrLTJ4Dsze", "smallImageUrl": "MgX04TlH2FL78kem", "width": 88}, {"as": "iaHIud6D78S1GMLl", "caption": "YEmEbhUBBTXTukZl", "height": 66, "imageUrl": "Va0aBs3KR3cfwZU4", "smallImageUrl": "b6hg2TgrFAWu9rat", "width": 79}, {"as": "9Gt1XdEz1jkFyrNq", "caption": "SwXhaJJv3fuC8aAo", "height": 100, "imageUrl": "QSRQJIlV75WFaMdl", "smallImageUrl": "LuWOmysHIDXsxrUW", "width": 7}], "localizations": {"YNW7lAKSpYcinLA6": {"description": "KVEK9mP8oG6KHMLo", "title": "9rFec0MAVa9gJSwb"}, "ekFbl9f13OyyIBkF": {"description": "8JYpLGTv40fiGiQV", "title": "2lItpUZc2Ym6u4Mr"}, "B6MyFcGKKCXIC2fK": {"description": "4LO9F3NcyOIsvkIq", "title": "4L8feRMbZdk9SRZy"}}, "name": "kaHG3GonT39odgr4", "start": "1993-12-31T00:00:00Z", "tierItemId": "QjZe6Uo8ySNJSlvH"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nmZRdzy3SZwDQx2O' \
    --body '{"end": "1974-02-05T00:00:00Z", "name": "dWvBils5hGUwweYR", "start": "1988-07-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q8fsQg2gcBql8KP9' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'wwQ19tQa3V06FZ5X' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fhcc44HPfD25xjI5' \
    --body '{"autoEnroll": false, "code": "rEYsnFIduasbmeop", "displayOrder": 76, "images": [{"as": "FtZbC1IQ3oKVhy9l", "caption": "VadDsEWzEVuOAms4", "height": 23, "imageUrl": "wfbdSXkr6cZ1w5LB", "smallImageUrl": "tpjsdapLkijz6KqF", "width": 74}, {"as": "XcFyfN9fKDPLgu1Q", "caption": "25S2oBfqXx1LSAJ2", "height": 19, "imageUrl": "qEa7CHzG4DQb77uw", "smallImageUrl": "mrhRfCB4KyEax3EX", "width": 82}, {"as": "PPtH7T2uAjc8jgxt", "caption": "UOi0gm5TcMoOwi1R", "height": 85, "imageUrl": "D3ypzBEbhauzLVwr", "smallImageUrl": "rAre40eyqsjiSkUL", "width": 52}], "localizations": {"INUjG0ZdTH76dtJJ": {"description": "DoY8Ja2TUwWeJuvh", "title": "eldORZdtffeVY70J"}, "8wGxkANiLn1WesE2": {"description": "HvMit2V0VYCJliRc", "title": "sfKHF1NwjqVKNvnH"}, "ngnVS5vZ2xHvP7k9": {"description": "g8EstqLFFainD0gk", "title": "8QErazBxeB5qhHPX"}}, "passItemId": "ZKhQ1LAAam6VxkTs"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'yf369NnSyhUBPO5q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'V1dcVnZ78ZEOsPSJ' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'JbX9WD23jdDDNTGT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KRObPBbbBG23Kh0e' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'M3uDT6jEaWCM544F' \
    --namespace $AB_NAMESPACE \
    --seasonId '0Xk7DBfAl1CCzVyE' \
    --body '{"autoEnroll": false, "displayOrder": 52, "images": [{"as": "sGUS9jNeQeMIiipI", "caption": "WAyZwl97LkpciChR", "height": 44, "imageUrl": "TP6ErwDSpbncuImB", "smallImageUrl": "Rf3z2BExfAVgoxjE", "width": 88}, {"as": "609akCms2O1pIwro", "caption": "52cxpR0pxfOwfnIR", "height": 38, "imageUrl": "5rfjS7Wt1uygpW3l", "smallImageUrl": "AQ3B8wbRHooLJgKj", "width": 79}, {"as": "6QD7dZvqUKPeeWis", "caption": "2xxjdg1xRCRv8URt", "height": 17, "imageUrl": "iNn8VH370TioKezZ", "smallImageUrl": "yKQbXwO1edIfhV1y", "width": 96}], "localizations": {"3z6K5NesYpNuYhZX": {"description": "LzneV5X19WcNu2Pq", "title": "5qeOsjYMXXjPceAN"}, "oqpQsYD3jhUphk7q": {"description": "8tRqQo8TVg3awFQN", "title": "SUw9bn605wJrglOY"}, "SdlI0g9Zt66Ijrf5": {"description": "iHsipbSGnEvMS2Tc", "title": "12fmw2EvUO8XqJgj"}}, "passItemId": "9oOU1ZGjPJFfIPam"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9KuVAC8pMkkwlXaL' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1tPq2xEgzPiB6UIP' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'OKT53DUVrL6NQkun' \
    --q 's3aCM2iaNTGCD8Qv' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'mVECM86UFAcAgwBT' \
    --body '{"code": "63071Q3Myj21KwEd", "currency": {"currencyCode": "jav4ksOctUHaNTLs", "namespace": "UyWdj5A0eKkg3bNL"}, "image": {"as": "Vif3EknkPc3LVLIz", "caption": "7m10NtWaLtY2Ktzh", "height": 11, "imageUrl": "jqqLaAHVDt1Pf1Ie", "smallImageUrl": "icBRNMdFRvng9Cbs", "width": 14}, "itemId": "o8olES5Y5HgLyK5V", "quantity": 39, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '0q8Qbem0leXaNiZD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jxsW1DnNe3WpubZl' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'NC5yOGy7p9OneIoH' \
    --namespace $AB_NAMESPACE \
    --seasonId '4KcTjzqcyEd9B4Nw' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'IiLgIUMhJEiaYOGo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eQ3hkLHfoPA8UoF5' \
    --body '{"currency": {"currencyCode": "5724d40idldYIizH", "namespace": "DYud1NoHkaQfyEkG"}, "image": {"as": "GAIdGkFaBP1EUxaY", "caption": "adJ9tiMVqLqp5OQF", "height": 75, "imageUrl": "0dTG0t3c0rOj4pPa", "smallImageUrl": "iqSatR6Tlj46GQ0J", "width": 40}, "itemId": "dVMMkfbUFZfREuAG", "nullFields": ["sIz1IzCIF5f9JWZm", "IQXkaww2Whfk3ea5", "vcSFDdruTXe4cbiF"], "quantity": 67, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'NZcd9nVGBpvSnA8b' \
    --limit '83' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'XwXtJDWuDq9sNw3b' \
    --body '{"index": 75, "quantity": 19, "tier": {"requiredExp": 40, "rewards": {"Zh48dM0xwL9X3wyz": ["4qUIdAbNnEEpqoLc", "jKGqHXvA1czL03mP", "1juED0cOkEYTQFuf"], "4mi9WLTOkRU32aUR": ["X19QakXyQrriNj9W", "eDXUkC5eHPWDS42C", "1OuVAVmrfzKaF3kw"], "ZHL0pCoUS3PiJ9FV": ["ixmt8kcuH6uxkAPI", "S2y9K1QHwb2BEm5e", "8hhtwQI1cFrBa2iD"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'klcPCPl1IsTjAZDC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rHt1EjJqXt9MoKvS' \
    --body '{"requiredExp": 95, "rewards": {"Y6zC3gzkXZrx13b6": ["aPaDrIPAoVtUcvEk", "Lp1C5Qq21T5uVDgL", "YhV9x8svZRK16puu"], "UcJBu2AkuNxoMre3": ["FUZCbWBEnW1aSMy4", "lc3mqbMO7fdJesMz", "v1FD7UVnVLt5yYA2"], "D05zH4So2Me3OjZI": ["tSQhHzZ8rUyp8ycx", "ecGtRcv9JtU8gw5c", "4mAgIntI6kxYB2vX"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'DweIVTvYIZ7FHlmk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QdKAmkKknRyRxVZa' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'ndA85Fb6Vo3vlJQ9' \
    --namespace $AB_NAMESPACE \
    --seasonId '3Y3YYfh5hFSpWd3I' \
    --body '{"newIndex": 88}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CFwI68sAEvFDAvu3' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'fhSErVINvwoNLJBZ' \
    --limit '47' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'ih9mcd6Zt8UvdSRM' \
    --body '{"exp": 11, "source": "PAID_FOR", "tags": ["KgEi0O7A59aTVIc1", "dm3erEiJ8feBejSQ", "KBezGgDW2EhF1Lud"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'HHnss7bu2D1TMsfi' \
    --body '{"passCode": "VDZGEFBBDGv7NECZ", "passItemId": "dibJgZO2b4uKq38j"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'fRAYIeSW3CAo1UGz' \
    --passCodes '["DXeJdeez8ykgLRBk", "3m6dFNUlge8m0PTI", "79di2gqxfjGligzc"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'C5bthzSe5ynCwA1J' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'KmbY9teNKgE0d0Jw' \
    --body '{"passItemId": "c1MkJmT69grafYt9", "tierItemCount": 77, "tierItemId": "8gJ7izFgIN7eZl91"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'FiCYIrjGHCs73cbf' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'vutlpTKaz9LwBUNN' \
    --body '{"count": 25, "source": "PAID_FOR", "tags": ["xPzo15XIL7TKQha7", "MknWe8Zucksgzibj", "lIZmfU3ObR2NHhVi"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '822MUEeQmnSzCnPt' \
    --from 'paT8Ch777XsHjG9a' \
    --limit '28' \
    --offset '24' \
    --seasonId 'FhdYkZs9fDsBsFY3' \
    --source 'SWEAT' \
    --tags '["wJSm7XcDjT4X93K4", "ojyCcUxNMpyZg4O9", "SISMyTgSddduTv3t"]' \
    --to 'YBMWrARrL6iYijnf' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'YL2HudnC5u4gYLNB' \
    --seasonId 'qjYXOSjxIdCspKed' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Xf8xuu7uKIVJfbGg' \
    --userId '1kXlX9xOw8GoGmCg' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'sxU4F7bNWfLJORi7' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '6b2FluIYewkCTtZQ' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'BgwVDQMvvEeJW7WG' \
    --body '{"passCode": "Ha8uzkoPg1Nj0LKs", "rewardCode": "QQINmpo6MdSiOB6y", "tierIndex": 72}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'QBf0Y14Ax7SqljcS' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FErD8BUDPB2cLFEA' \
    --userId 'u4lKcaOfurkp4dUO' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE