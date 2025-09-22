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
    --limit '50' \
    --offset '81' \
    --status '["RETIRED", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "oGuJddgcUVoryHVc", "defaultRequiredExp": 29, "draftStoreId": "HOIGXdGmJJxSuAhv", "end": "1995-08-29T00:00:00Z", "excessStrategy": {"currency": "8rvVr08dwmKkluwX", "method": "CURRENCY", "percentPerExp": 52}, "images": [{"as": "cxMumx3lDcKYnlhW", "caption": "vL6G6aLd6hrKpFUN", "height": 96, "imageUrl": "ZqubczlO9FpxkcMd", "smallImageUrl": "H1wkh1bsyJD7QUI8", "width": 2}, {"as": "RDuNC98Llc5Zhnm0", "caption": "yVMixXhAd9chHSDw", "height": 23, "imageUrl": "ceEqHN5DAnLYOL5l", "smallImageUrl": "bG7gUiGEW6PfSb8E", "width": 23}, {"as": "hVpRmhuJ82pk0BYh", "caption": "coINhQJKQUWcM0Ie", "height": 62, "imageUrl": "4sXTr93pRNsyFh8K", "smallImageUrl": "XdqboKEr02Th1GMr", "width": 3}], "localizations": {"OTnrvBXXQOXAFAqP": {"description": "YQjYygZsbtTPNgY0", "title": "tjG0LX2OUueG4wcE"}, "VrrJwiUEeqOk2ouX": {"description": "Tt7EzeJId6aohIuK", "title": "iFbsdkOZ3XoYV9hx"}, "NMy2gbAyAV5RfVTU": {"description": "e9jjx2BVT1m75S6e", "title": "8ex7wSxmxyglEH7z"}}, "name": "7TQO0lNPrXviDeIt", "start": "1997-08-14T00:00:00Z", "tierItemId": "F9fgywHZjs8wSg2h"}' \
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
    --body '{"userIds": ["t0hz00ATjtRAe00C", "JAY4dtrygANhdohO", "nVxa1voTIOELFNmF"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'zV0Ia3kFnmBl0IYj' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'F5GNmwoITSM90YJe' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q7OYraRAKBF540v1' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OE4VWH66W6gft8lT' \
    --body '{"autoClaim": true, "defaultLanguage": "IlpqFhMqxq2UXaK0", "defaultRequiredExp": 76, "draftStoreId": "QfSTKRaE89R0b1JX", "end": "1984-07-17T00:00:00Z", "excessStrategy": {"currency": "P4TYctsX7rjNQogN", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "DJXdgcfZlo6Izvcv", "caption": "GdWNsIoXrtKFDRc0", "height": 37, "imageUrl": "704rB8GiZ8rWdPbe", "smallImageUrl": "aguv3Ovoz8vH6g49", "width": 18}, {"as": "yJmoNzb5PuDIHtjo", "caption": "JJeNIx6HCBKq49qP", "height": 97, "imageUrl": "kzcts90wCnlLu5BP", "smallImageUrl": "OAn8diMqPtDczNv8", "width": 22}, {"as": "8cs5gfpNsgGybBwm", "caption": "kQlJz7G7WT6HSlHB", "height": 0, "imageUrl": "XLLbUTQuOeFqVpI4", "smallImageUrl": "PJf4E4jU1bDm7Au0", "width": 44}], "localizations": {"OnyX1l2Vp0YZcfYX": {"description": "XD9tyq6a9tB7CeoP", "title": "uNIB5QCETUgkgYuA"}, "qyPrMoJz5daEm8W2": {"description": "MbFGwDvI3lOY4bRY", "title": "towKVjvK2EkXinPS"}, "V1JpF6qYZRZ2tAg2": {"description": "rlPboCxM4PopU09a", "title": "L6S4LKo5rzCHI1Pr"}}, "name": "EpmtCuPJEiiJsM0n", "start": "1984-03-31T00:00:00Z", "tierItemId": "P8zBbQ6FvXuAERZx"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MOtLy0kCDdGQp5YC' \
    --body '{"end": "1993-06-21T00:00:00Z", "name": "XWmn830tnEFONWqx", "start": "1974-09-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'szqEgjJqKUjNbtja' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'LuLwDq0dHEjUbZDO' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'bZvDgdxbkcDB4hRW' \
    --body '{"autoEnroll": false, "code": "RXsI9q7vkiTCtQBd", "displayOrder": 97, "images": [{"as": "Hf23eBajoiE6YbvD", "caption": "bgZFQhaaW7qSdken", "height": 15, "imageUrl": "IIiL1aVI2OH5NXjN", "smallImageUrl": "qsUpnHKdmmTUt8QI", "width": 35}, {"as": "B1T5Y59cns5w3J3a", "caption": "REmlOo2ssCp6j9eE", "height": 20, "imageUrl": "Qol81y6N0KO5Sor2", "smallImageUrl": "yNz0c4KaKwDmhmji", "width": 56}, {"as": "6VLX6xb2TbNGlBl6", "caption": "ni4X09wji1xltseJ", "height": 82, "imageUrl": "OA5eB1ZiO5bmrhoK", "smallImageUrl": "SlvU0jlLr4jdTrKH", "width": 52}], "localizations": {"QKyAab1cqSbUCY1F": {"description": "wFY64iSPx6Atw2Sk", "title": "FF9c8tGV47LyfQN7"}, "P0bb56MKT5vCS9Ys": {"description": "I2KlhRZbQj0za1Pw", "title": "70uuwpWKrBYMEJOS"}, "8dYxz6KiKAcbdTeZ": {"description": "sJ3ZtRztK1aFtEVm", "title": "Bf0v6MKMuGoOCQcA"}}, "passItemId": "J0USeJ9E9fCMnoSI"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'rlFU579mlDxf5lHu' \
    --namespace $AB_NAMESPACE \
    --seasonId '3aeF45xRPYtJh341' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '2bC69OIrcsd47GGX' \
    --namespace $AB_NAMESPACE \
    --seasonId '5Q1B7qO6KkNyYDUk' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'XofUWD7xLyc4KwBW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'I0VvHY1G6HHjIfZC' \
    --body '{"autoEnroll": true, "displayOrder": 83, "images": [{"as": "mDF7RLz5baWtlcsY", "caption": "8M2oloeKQer5KyIG", "height": 44, "imageUrl": "ImAPYnEsZAxyMoXw", "smallImageUrl": "AI1fxe5PFfdKSYso", "width": 21}, {"as": "mcmyXB57CcmZIbzO", "caption": "P2irVvEMAZXTdVK9", "height": 67, "imageUrl": "jD3A7Axy5kxUZPmo", "smallImageUrl": "LD7CNnTInsLumXxo", "width": 0}, {"as": "l25MJPjZyJ5DlEtu", "caption": "IEIb4JPDWiY7rcd1", "height": 69, "imageUrl": "F0xLzKeoNN3dAyxe", "smallImageUrl": "A7AhmrM0tYwFUGSa", "width": 66}], "localizations": {"eMsxyiCkUTJIygjD": {"description": "MUWge6VqHPlN5rE8", "title": "FOjgk44v0jqbp1BP"}, "zlMlkC10ytVR07hV": {"description": "2UsTaSNbZXKl20Aq", "title": "qWFTjFQuUcbOeIzE"}, "TIrbaaHGTlxq1KvQ": {"description": "RhUpclbz9WjjiJCc", "title": "enfFuWvTdqOToKW7"}}, "passItemId": "hKOqzredi7XbJeIW"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LkNgbGzpmfyDUThR' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mvj7kiYioFKrA6ig' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'JoHKsh25iLWSpfYP' \
    --q '9VnZiVgePBM0smGO' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'yEt6fuFl0fHcpZCs' \
    --body '{"code": "Y6q2FkWaKoJ9O7Lt", "currency": {"currencyCode": "RR9M0zMSIsc6PR9p", "namespace": "SP5Pih0jybwyRrEJ"}, "image": {"as": "EpLoEpIkGyEhRyZ0", "caption": "Zdg3gg3jP9hjq1PL", "height": 9, "imageUrl": "odDa2dNDtEWnMOFE", "smallImageUrl": "CFQSPQrxKZCzztaq", "width": 87}, "itemId": "NmkGQYCS4f0LuUaT", "quantity": 100, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Sk1D34b1A44RanOO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'V3SZpl3uIrT8QSTt' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'jtrVDPKiGPMt8n68' \
    --namespace $AB_NAMESPACE \
    --seasonId 'srfniz9ZyRIHfijt' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'IfoocGnn7JWeBHBp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oilxiupLhdDoye2H' \
    --body '{"currency": {"currencyCode": "YgLpFlnhU9FkMgH7", "namespace": "KMriVyolwtvnPTj3"}, "image": {"as": "q8l8UxinLKNyV5GK", "caption": "YDsdtM8rq2ZHvAqR", "height": 20, "imageUrl": "YOdXM84fmdO9pYiE", "smallImageUrl": "CU4gEQ1rGP7XIBZp", "width": 52}, "itemId": "GCkxaCM2DWtwEVas", "nullFields": ["kOUvu2CZ96mv0xoP", "T9ac3xXiSwWk1g33", "UlTcgoyQhNH3mN1j"], "quantity": 81, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'N6BCT63hiE7XjIG7' \
    --limit '31' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '3IOylAIz5LB6Qmof' \
    --body '{"index": 18, "quantity": 52, "tier": {"requiredExp": 19, "rewards": {"3AtiAvsWFFNWRDv0": ["Iz2fdbYPomrOrPxc", "sfu5JoptJG5TvJTS", "Bb1vcTicsrfHCH0Q"], "VDAj4DERMqvKiSCf": ["hqNffbirZjBc50hc", "Zgv1xk7xs3CSZuRV", "pwxWEsLNDKjW8Mid"], "d53gU8KbwseFqJBO": ["XDq20ecBmh1gSQeP", "feZI43T5Q5lVSlSW", "CFfwja9BwowvIqZ4"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '7t4EmclMkrJ0xsRa' \
    --namespace $AB_NAMESPACE \
    --seasonId 's2hIokiu4uTGh7HC' \
    --body '{"requiredExp": 21, "rewards": {"ldMpeEN4UEirWfCn": ["ErSh6B59Vp6XRrUP", "VEVB9pCsN8zz6Kyb", "nxr73GzGMg6IzOpM"], "sAKMh1YfVlzNHeOj": ["80jNV4c90wOGW2mf", "gYffjqY1J5FUwBBj", "2cjHdqt9AOqgbq9H"], "78TUt35rTo5H5b0u": ["Li5oM1RE1RACttXZ", "qOXyoy2J1TPTAlwi", "V3GUdNU5A3sSOfDY"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '1woQUMZVqRIBmRd6' \
    --namespace $AB_NAMESPACE \
    --seasonId '98U3QVdv3knXOa3k' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'U3dOeNVxDReyMklX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mCgYnEPFgqe6d0SU' \
    --body '{"newIndex": 97}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bSg9WA47ErNIsFZQ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'd70YnnsA7osI1Bkc' \
    --limit '97' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '0s5ZGh2iyLQqX1tk' \
    --body '{"exp": 49, "source": "SWEAT", "tags": ["1IxQACC820NYFTYD", "YLLT6YWwnwX2uCUq", "ed4LG50TvgojOrc6"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'wr5GPq1w33TPk9Xm' \
    --body '{"passCode": "rAHwUp7UZtg22GS8", "passItemId": "tSYBNeUMpWJbxIOP"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Ud8Lm9lVIAQs9zrE' \
    --passCodes '["i7SwIZlVnzdDsHJA", "dJoBRbBv2UNUbbXt", "trgHLhFQ6xGg4cZC"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'XOulIPB7nEkwuyCn' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ttO5aspJ0gGBz2jo' \
    --body '{"passItemId": "SxPNyDBmQzoWKboE", "tierItemCount": 71, "tierItemId": "2ZoKrx9rNvcOxImJ"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'I6NOYxOxSQM2JXl8' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'crpuYJVF4wGnDPG4' \
    --body '{"count": 99, "source": "SWEAT", "tags": ["rZoVF65WcGqYhD7a", "BICEdiLaOgJG8k8j", "3VQud0dQaq7acrIe"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RFynpNgjcI1CdA1N' \
    --from '1LewCtOVIYGmDuIR' \
    --limit '18' \
    --offset '10' \
    --seasonId 'ERtdnHSmmbay5jU7' \
    --source 'PAID_FOR' \
    --tags '["B3dDksp6bwnWy5Cf", "IAgcIUfGW1VMiOqE", "cAah7sM0Jtw0rX9H"]' \
    --to 'JRKzZQdq2gKc0bvG' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'VZkZdQj0mrTeoFzt' \
    --seasonId 'XgPsMYkBhyidcL41' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dxNNScsaHA2WvTCL' \
    --userId 'UD97nr7ZoGGxTPCj' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'YvLkMx0LL71xerzg' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '13HTEhxRYJoAQcZm' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Dk0oljCUB2jaCknC' \
    --body '{"passCode": "0mhhf7rh3daITDgJ", "rewardCode": "3lZ0aJVtlKE3jbab", "tierIndex": 23}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'c2jMLi8ReGsLwsdN' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'geZVHAEx3yLwnr6x' \
    --userId 'kWHMOmrqVYzOuCms' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE