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
    --limit '4' \
    --offset '57' \
    --status '["DRAFT", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "6FKRyy1GqhHb1GSJ", "defaultRequiredExp": 8, "draftStoreId": "PkmA2CbL5e12U5hm", "end": "1986-12-10T00:00:00Z", "excessStrategy": {"currency": "EvD01kqDlSA1ZxOt", "method": "NONE", "percentPerExp": 87}, "images": [{"as": "44frVsKZNqEnjcfH", "caption": "ddwFbyNfRIqUr0P9", "height": 56, "imageUrl": "Z2jpjwC8VDyBwSxn", "smallImageUrl": "mTtk7GfqBphk6NHJ", "width": 52}, {"as": "IKMG4po41OMZhtaN", "caption": "Pb4JnlmhCICi6b2A", "height": 6, "imageUrl": "qIMut1xZgEyfmHEk", "smallImageUrl": "elkWRzfEDwy8gsyz", "width": 54}, {"as": "ElGOxuGiQ3dvtwyv", "caption": "jPoQkqv5VJX1bPzl", "height": 6, "imageUrl": "NracsE8TCgx9BVfn", "smallImageUrl": "dIsw6UrMErBzsRl9", "width": 12}], "localizations": {"Yo4DY66u9lB8akfn": {"description": "BieFINsQerYtk3jE", "title": "pYM3fb7lZy4fOG7j"}, "0hYT2imfJfiy5VXo": {"description": "gdLN1geb7ZaIZUei", "title": "nSWpjtz5fO0PM3Bc"}, "8s7FggEmuWMQC0Ag": {"description": "h6rQQawA65a8kva6", "title": "Fi7CKE2YcPW9g6wI"}}, "name": "C3EFhgBC9cPKMqzL", "start": "1998-02-04T00:00:00Z", "tierItemId": "HQGhkeuHrOWxMMgP"}' \
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
    --body '{"userIds": ["iD4NFO9rIKCItoG0", "kZCn9mTBO8wip5Xx", "7XqSNKXlEGcmWNYx"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'bfMV8dNu9H8lTJIK' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'apKJLhYuU4DWnB5J' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lu2vtkgnJlCWuWU7' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LTxtr1xGVckF3k1b' \
    --body '{"autoClaim": false, "defaultLanguage": "e3MUDX7ArXGR8tA4", "defaultRequiredExp": 83, "draftStoreId": "Nk8CfOpGbH5MWTJq", "end": "1993-09-28T00:00:00Z", "excessStrategy": {"currency": "iX92Ix4Bj5H4I3Dc", "method": "CURRENCY", "percentPerExp": 13}, "images": [{"as": "ZiAuLEEmMt0TdsmW", "caption": "AWRUqgKTFpFwfHmB", "height": 92, "imageUrl": "Jgcp9vkPolmbe6oP", "smallImageUrl": "1gV4roDRxK21QYqk", "width": 33}, {"as": "9nRWQEY0freHy1e0", "caption": "DctCPrtSZoWEA7ej", "height": 49, "imageUrl": "NtQ4cT3CwilHl5a3", "smallImageUrl": "1V4VYxF4rodrKlp6", "width": 63}, {"as": "u0eMqP7jnhWZsfiB", "caption": "Qi5u944DysPvS7hN", "height": 26, "imageUrl": "GccOFTjHb7DrL2zp", "smallImageUrl": "5iCx0rZIKbAIXAhJ", "width": 52}], "localizations": {"QHmmqzBtGxQiNiWi": {"description": "ko1aLWveAlFrhVVz", "title": "uXdGYXQhsBRyRynI"}, "Mc8ihcSGGPDspUqX": {"description": "VHL3aUjhL4P9RnY3", "title": "bW3ycWvsVkkEJVqK"}, "wcLzloX1CQrZIdxX": {"description": "ThRl3p4tmPoWfRiO", "title": "1H8PHzTwXyDYyoAu"}}, "name": "HPNjV3n3W9jrq6k6", "start": "1994-10-01T00:00:00Z", "tierItemId": "zpAZw5niQ6HUEtBZ"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yygBq4yT4nuV5f80' \
    --body '{"end": "1992-06-01T00:00:00Z", "name": "Ti6wkKoeorzMziYd", "start": "1985-07-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NXxUa3VW7PQwBFVo' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'YTwqEK106RfzyOHa' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'peHC8v4uIMhgqwZr' \
    --body '{"autoEnroll": true, "code": "otCaTpwluoFgsG0J", "displayOrder": 73, "images": [{"as": "ocwQMulw41wQsYhm", "caption": "o13x4gVYA4ZdD2bh", "height": 54, "imageUrl": "zIfzzJnGQwgm2ar5", "smallImageUrl": "mVcMmbAkaIQNYtbI", "width": 76}, {"as": "FWBGGB6MXpQkeVyN", "caption": "QTxUJYS0uNBfVnUQ", "height": 64, "imageUrl": "RHrCLHYIv7EsASbG", "smallImageUrl": "4R8fftWfXXpdywVT", "width": 66}, {"as": "He6FZ5Ljry3OMcGA", "caption": "UVsWqdADzT9zKd7j", "height": 73, "imageUrl": "7GCR4GaDZooAy747", "smallImageUrl": "PoO5OcDq27JMHwcD", "width": 93}], "localizations": {"rYMCY8fHKp5fxajT": {"description": "vvat5h2pOnobz1sN", "title": "Z5Bgv5cLfIPwReaA"}, "8YqAtaqKVUCGDav5": {"description": "fGLBcw5V1stzNuNf", "title": "IJIElmegAGtXKPCE"}, "dUczMSocqwrQpwU1": {"description": "BtMMrzIBL8rJ7v7Q", "title": "HG6ygpJWXffzHrAd"}}, "passItemId": "J4UGRYB8xEWb2cZf"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'dikwYpJOgWGKjwsA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bCJxFXZQm8dH67qU' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'RS6wFnLFspxUxwtZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dNX6yJkiMGl1eQ9O' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'flHyenNqppIDIjWt' \
    --namespace $AB_NAMESPACE \
    --seasonId '5pXAnvuOQwMqOSlO' \
    --body '{"autoEnroll": true, "displayOrder": 32, "images": [{"as": "S6YyMRD14MN1AbrE", "caption": "i7g0j88motpMBvVe", "height": 70, "imageUrl": "w9MsmTnDfPKRBwa4", "smallImageUrl": "WPA3weKkEf5VF42y", "width": 97}, {"as": "LJSq5OTLzPacUcJz", "caption": "3Ezzde3DtVxlso72", "height": 77, "imageUrl": "GIZImjSuIPBxNJeE", "smallImageUrl": "2RX1Imxj4Cf8oEmd", "width": 73}, {"as": "m14DFpnhv2yIzXmY", "caption": "i9HjDqL0vLYRcKfA", "height": 92, "imageUrl": "NMaTodSialJ1budS", "smallImageUrl": "KFnHp2eFY2lZ1Cw6", "width": 20}], "localizations": {"Q3YQyzEeXZRk5eXb": {"description": "MGU6KziJdAMVN5IE", "title": "4yIE3B0OVB5qKwBd"}, "GyltVKAL82ORqJUw": {"description": "BzKO2udiopu50NJs", "title": "lOHyK6eHN6zzw316"}, "PtanMEjPEJUbdjCm": {"description": "fSZ3lLQl8Ojczu2b", "title": "S4a99uxGT6CsI3t1"}}, "passItemId": "I6TZg9yBk3UBpuPu"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xlZdjEicajZy3qGt' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CHUMqOPicmltnkQh' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'jKO3A9TJJFbGkldh' \
    --q 'f9ZTecnuKG3EU6HI' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'kcW9Z5t7I1kIzXrs' \
    --body '{"code": "Jbs5lWgBpRQHI9Pv", "currency": {"currencyCode": "fMkEfiyKVgtaTaSB", "namespace": "IjZ15f2q7O10u5xX"}, "image": {"as": "7kuEv4XMdzuq3FIh", "caption": "TUPqyVJBxuRG8NQP", "height": 13, "imageUrl": "wExjkNH0suiJUmR4", "smallImageUrl": "KPkIpoqxhK29bLtR", "width": 39}, "itemId": "PY41DKXTJhoHjNm3", "quantity": 65, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Ivr84A9BBxNlaMln' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OfEHhxiMU0SUUD4N' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'NIbUjKZABTuxSqeN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MUPlrHSMCQjnFQv1' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'pZhMujUXG9xerY2d' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YLksGek07GG1GsiN' \
    --body '{"currency": {"currencyCode": "e9V8H6RmtbRJeNu0", "namespace": "OWp0zlE9FMtLV6mE"}, "image": {"as": "kIjT74iTYyoK8Mdf", "caption": "ze7GmTRbhd75VWmx", "height": 73, "imageUrl": "AaEkmXaJskBQhG7P", "smallImageUrl": "X5pttrmP13TwmdwF", "width": 70}, "itemId": "rMWgzvQ7sMymmb7P", "nullFields": ["M6pH8PVuFIQsJT08", "WaH3RlU1RmEYvYBC", "zLegcpKVt7n0RdNg"], "quantity": 6, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'tdplbBP91IMR0W9w' \
    --limit '80' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'HuxqUYkyfRC4LDFa' \
    --body '{"index": 21, "quantity": 96, "tier": {"requiredExp": 46, "rewards": {"gdHUR10pBmt5PX9H": ["8BkN7l3Yc3Tcainr", "7QNmy2GEeU0HZI6u", "pGe6QR782Z7eo01H"], "FEUWt5jQtBMcZFO9": ["rb78YrgUp9fPTYOS", "Bqhz08heG8Gwtlkq", "Cl2suFtBZEdniAdy"], "nHkhPdiYvFls1vzG": ["IWhY5yxfKkZS2Ch7", "iihGx2dtIYLip3V2", "zzdeN8gu0lKFPhZu"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'kqTm3AOq0IS6VZeS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gYG2Alo4gnBdHZZ0' \
    --body '{"requiredExp": 9, "rewards": {"UBvJFeGjBTY6Hrbn": ["mF9QP4zf1djuHha8", "eyIaF4KzKq1BfFjx", "KqZ6Z9i5trwZy7El"], "GZ5cB8r9DktKIPTF": ["J6hmtSQHwcAQhY9T", "xPEP9OelN19qAzzM", "L6qiAYc7qdcPEulg"], "td5SXmRrekDKLKtc": ["vlzTuX6RNIOVl3L1", "PYl7dpg5AKCDU2sm", "LHCfFMUjQ6gLFnHX"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'v308mThW1O9Tf9Zc' \
    --namespace $AB_NAMESPACE \
    --seasonId '1AYpDmH2tGpLUc5U' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '54hRTFXowH7MLH07' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z4xN4KVu6VHnecl7' \
    --body '{"newIndex": 93}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7RTLOFsVubH6oqyi' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'vWmSXqNUBDMganG0' \
    --limit '90' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'DDGEHy74ZsAFa7Br' \
    --body '{"exp": 25, "source": "PAID_FOR", "tags": ["1bRl5XEASIyRCqcn", "e81MNdAYoUIPSwyC", "oExKKBGqp6IuuK9f"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '0T5UNcDnQE0wrRT2' \
    --body '{"passCode": "wrkYkUNUOmNdujgr", "passItemId": "Zm66bb0ZclTNjYOm"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '8uuBeDjEqmXjnGPm' \
    --passCodes '["AkRs6NjirkqdShoB", "ZWflH1In2nBJLxSi", "6ouc9FlP8vhjbjWH"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Jo56gdxxdnQC3lQ9' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'kI7hfHBR4B7dhn7B' \
    --body '{"passItemId": "EYkIgsfZvq9jlwSC", "tierItemCount": 19, "tierItemId": "CrKEAYBUcjsnTVGH"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'AS8YkI5g8L4zMIGt' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'i5qzSjyjfSe3k56Y' \
    --body '{"count": 43, "source": "SWEAT", "tags": ["J7w4hQslrn9VsiF6", "LDdzYyccXrxEzPz8", "MPebVzB3nYQPMfRI"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZDZYcEgtLPhgE5Zg' \
    --from 'PQujQC2NQGhMo50N' \
    --limit '83' \
    --offset '60' \
    --seasonId 'rW0EkBRAaGBiQsSF' \
    --source 'PAID_FOR' \
    --tags '["NeW8JV6vtCupLmVZ", "Jfs8P07VjiuaGXNM", "hVz7uWV5HzXz1iuk"]' \
    --to 't0bcugpIh0MFa1Sv' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Igog0vCDSaCEczWL' \
    --seasonId 'py7UimFpObaDhnID' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qvISMO8cVZiUlvZO' \
    --userId 'UwbGBwVpYqio6r7g' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '7wva1i4twZ83qXJd' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'bT8W2ZNZ69uqTTst' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'MT0KBpv3E9mfNAjH' \
    --body '{"passCode": "LS6G44jJCNNQK8uf", "rewardCode": "xM4qU1YwYR9331jw", "tierIndex": 52}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'l80JTkBGPyHCIKaO' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hax3OFaqGGqevvI7' \
    --userId 'qPh5cvuyi9x5NcAj' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE