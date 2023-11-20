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
    --limit '10' \
    --offset '87' \
    --status '["DRAFT", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "1ELHuPfvRWa6wd8a", "defaultRequiredExp": 52, "draftStoreId": "XWbAlWOppctZzjME", "end": "1994-06-08T00:00:00Z", "excessStrategy": {"currency": "3ewtf3wIsyuqgW6q", "method": "CURRENCY", "percentPerExp": 4}, "images": [{"as": "An9e9t6nYzO8CMMC", "caption": "V484bCjXr2E5qyaD", "height": 16, "imageUrl": "FnRSKPCLyi68jukv", "smallImageUrl": "ibKrNkqCU5HxJiep", "width": 70}, {"as": "h5jgxrW4Op09qWee", "caption": "4FauSOVvEzVsys0n", "height": 35, "imageUrl": "SiGE5gIesobz7Gah", "smallImageUrl": "dxETvoVQaigpHPMj", "width": 97}, {"as": "UW3RlQcVTlnZVXYR", "caption": "A9ggXdqzvrQwlGZO", "height": 48, "imageUrl": "3UM0HruKqGkEcGP2", "smallImageUrl": "Vtu7m7A8uIYwjj96", "width": 84}], "localizations": {"3gwyARqggiy8D9QE": {"description": "CBlyRXZ5wdikgBco", "title": "3f5ZW1EakNoLR7Y7"}, "AbvKADbrHhyIBXWC": {"description": "RJoIo29JBSJWCELF", "title": "eipQ5ATSBhCy0Tu9"}, "AttbsqglA2e0WofR": {"description": "9pbnqzyY3poZ5tRA", "title": "j7tqvNI08u4ha2qq"}}, "name": "ph5qElSsYnQppLGT", "start": "1972-09-05T00:00:00Z", "tierItemId": "8rDzdfbkF6Yia426"}' \
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
    --body '{"userIds": ["fPYLx5KPRU7OPhl5", "32quB5AzCdiu2rWB", "VXe6cweBy9ZBZLpD"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hSuYDK5ioIQKyVu4' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pEkKjfUHsMVfMdLx' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QLNzsyUPLL76DNAm' \
    --body '{"autoClaim": false, "defaultLanguage": "an9CGUJB4SKoTf7N", "defaultRequiredExp": 44, "draftStoreId": "dgDAux88mmef9xfV", "end": "1989-05-24T00:00:00Z", "excessStrategy": {"currency": "cEG3oPIxNQmoI7rE", "method": "CURRENCY", "percentPerExp": 27}, "images": [{"as": "MEtA3QEygx7p5O43", "caption": "LOTDBiZSNpcu8ux1", "height": 26, "imageUrl": "HAAMbpFSr6dCJugD", "smallImageUrl": "fdW0z6mmqd5Rsdsz", "width": 85}, {"as": "t9zL1amJhItbeTb8", "caption": "UTMZEhDDKVH0ZyJ5", "height": 97, "imageUrl": "5GwIokUC8AMDgPwh", "smallImageUrl": "7D6ICFisX8UVQgF0", "width": 89}, {"as": "T0xjC0M93dPK3354", "caption": "TaZcXaILog0DoVvY", "height": 10, "imageUrl": "hiVxBL0xMhd0Rxd0", "smallImageUrl": "OZ1dtgo8LUVn7GT1", "width": 51}], "localizations": {"rZq91AUlJb43305f": {"description": "zlcDUB9f5GMl13XU", "title": "Pr2onqVzvmtUFN4i"}, "Eog3tPZiMzpLDHwZ": {"description": "LCN3ZwTh9uwSnpsC", "title": "n231mY5TEdNz0VRN"}, "bCM6eyOm0w9tXgaM": {"description": "CZ3G3GRt5yai1FhP", "title": "w6vTsG0X8k5C0H0q"}}, "name": "MZkEQolrWORjSdol", "start": "1975-11-23T00:00:00Z", "tierItemId": "OFt033UejeWulJjm"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'c2N6htqrXOmUflX7' \
    --body '{"end": "1987-03-30T00:00:00Z", "name": "i1co9DT5ohtX0DzL", "start": "1998-11-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6D9oBcYTgAKnK9D6' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'mLfuFHvmXPy7fPuO' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'dReaoCZXea0qAlre' \
    --body '{"autoEnroll": true, "code": "7WQv3oTEvQP3uAXF", "displayOrder": 23, "images": [{"as": "zHedOCgx1ju5Tn7K", "caption": "fDTKjrtAzmVqfNTZ", "height": 21, "imageUrl": "1dcSDKmvo91zV8Fi", "smallImageUrl": "Kg8VKJtz3orjv98L", "width": 67}, {"as": "NSyeL6qJjYxXr611", "caption": "WrIsuaO75UrAW99X", "height": 83, "imageUrl": "uK8mAJ51H8VmSlDm", "smallImageUrl": "vWvU2bBKyaHeZN7T", "width": 52}, {"as": "r8JFv61WwmOXjz30", "caption": "QgNRu2nGIT1VHsNW", "height": 37, "imageUrl": "h9sGCVIftVUzWCFy", "smallImageUrl": "shBCbd8hEptWf1Jq", "width": 19}], "localizations": {"vMcuxiUsIJDM9V4Z": {"description": "XZ7Xg8neRhqWgIwl", "title": "N1hscPJufrC5KB3G"}, "BOGgr5qWgnz2RwUp": {"description": "uxNCVHR2kdPZWC0k", "title": "MSeajZ0MGOaaXwAm"}, "sWjTL01FuDPzSb5K": {"description": "tQr7W9QwQxUA15sK", "title": "XOtrWDmhFABDyq4e"}}, "passItemId": "QikNeOR2mNCwNDTH"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'gUeJqfEeO19Dwgmn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HGbfeEz7F0p7pAZ3' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'WbZeVz5uLBCsD0Wb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'p5AwPM2l7MDYbtTs' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'utQjpoq8Ddn2WHq3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zmRqi2UnoY5bJfjv' \
    --body '{"autoEnroll": false, "displayOrder": 56, "images": [{"as": "ltuR60JF1Jy543lY", "caption": "JcuhlgQbiqkqBMwf", "height": 65, "imageUrl": "1BReMGDXPoFA4Zcs", "smallImageUrl": "dZyYDMitdfmG0KWK", "width": 69}, {"as": "0HAN3fGvwSbEaA24", "caption": "MBkfZyw0Ab3L5vBM", "height": 66, "imageUrl": "sg0LE5t454bwiobB", "smallImageUrl": "hZdwtNd1bK37k4bk", "width": 45}, {"as": "tpQNvo2rm1BJnZG3", "caption": "USAOvoO9umTWAvZt", "height": 8, "imageUrl": "3aeZBiCJwJTnNpF1", "smallImageUrl": "Y9D3RuHhPnrk3IVc", "width": 54}], "localizations": {"58XwHIB3v6FH0Vqd": {"description": "0QhOKoOc3GSW4VzK", "title": "IhAbMXDTSY0OgD4E"}, "I2S1N8nF6JDctgP5": {"description": "iVeAMwfKAgkS6L60", "title": "X7wlekMdtJ5Wj3Oa"}, "h7UEOEcAoAbMX2vQ": {"description": "wmL2UFVTxiZhdCXs", "title": "iZOs4GOn2ZDHXzOg"}}, "passItemId": "WtL53CR3XHYy8R2g"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yoUadlOBLpMx0OpE' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4y91BwOGSAxyRkV8' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'xJKCCy7WmWQenJpg' \
    --q 'ReVNagvwxCw5NFJf' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '32nR1CB7W07AVI88' \
    --body '{"code": "30yGh7Kw53Kahqjj", "currency": {"currencyCode": "fdyYddrAdEkj2i0R", "namespace": "3zBRHzAYiUKz9egh"}, "image": {"as": "XKN8MTMdaCSitoQp", "caption": "BKCS0XoV5txDbLiM", "height": 67, "imageUrl": "S1z9jRvxOaT96nrs", "smallImageUrl": "fvjcbas8wZacbMju", "width": 83}, "itemId": "hwgKbkq2YD1vR1cB", "quantity": 41, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'rZwxflbPDCXLjD5L' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BpePKBMMYkfMjSme' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '0itboYsSlNm3WwwO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'btdEypa7dOz76FOF' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'r5KKQcGztKWEG9qT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jachgpagveJDQbX0' \
    --body '{"currency": {"currencyCode": "ejovi0LTPmwE8AE6", "namespace": "kAf78ZOv434kENiZ"}, "image": {"as": "4cL9hHAYqOSCa9GU", "caption": "c7FuE0s5jc9nAcVt", "height": 77, "imageUrl": "gfBE9I0Ay6OcVLvN", "smallImageUrl": "jdCyAbh1G6Rwbkxm", "width": 18}, "itemId": "8rrPpusSrj8yuSkj", "nullFields": ["qOTAHBvy2MT892pn", "fixIXZYjmA0lfbTH", "mKmBMs7AlxR15aTb"], "quantity": 10, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '3ikahaAaCEAIXMwZ' \
    --limit '6' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'B2I1kUQiD9UirAi7' \
    --body '{"index": 2, "quantity": 16, "tier": {"requiredExp": 46, "rewards": {"EZTQbIzJR2SCHGB9": ["xbAVkABT3A1wU62g", "kOb96mWGDI1SaZgp", "dRPsn57NPxyLj59H"], "HmMhzl9X0C3oW8Ah": ["1hMmw5HAcFLiBSTu", "MCOUxY90GgrgQLEZ", "OJhOu1yAASEnhI7w"], "s0DSEDQkZuXWFE6s": ["fb4QPm0q2tREITGJ", "HP7fIUCysnns4gIM", "my5a18EsNgg35L2H"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'CLvWppEvD0Bg9LZD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OwrZCcYyFkEc1Vex' \
    --body '{"requiredExp": 28, "rewards": {"17NoqTixntA3vGfx": ["8bCtIIocGRaNTwNi", "y4J9RNvprGItQXvJ", "CdxUzcKkT23MKpL0"], "dn6TRC1hIYFjuMs7": ["MC4Bnhxmw1nPgoui", "gJJx09729J8vcguj", "omcBlCuJGhoJhTyt"], "SCFtSdbMMMLJKnvD": ["UYqxFEGeSzMgNLzO", "joMSPUKBoGUWvVVk", "OiaAT9r32DdzQFww"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'RNNj3MZc0Lprh8Bo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EWB3GDb1R7pWTPTu' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'FW5jH7G9p0TCJgef' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ig6avL487Y8DpWVe' \
    --body '{"newIndex": 58}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'v1yqEw4wTAZAPb9B' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '96nAkyuhGtNEgWXO' \
    --limit '42' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'FdpnEhBoWVGVg1au' \
    --body '{"exp": 92, "source": "PAID_FOR", "tags": ["Bern8wt6q2NnEzmN", "N1maatdnWlNBJyt5", "LXoXrtXZu3XBt8CU"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'igdHXFKwfSMxM3py' \
    --body '{"passCode": "16w5FgrGobQvy6iI", "passItemId": "0azDg7f5IDJMStHg"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'qaTPbuXAYa6uCcHl' \
    --passCodes '["KAvFLVK0jhvA5Ehz", "kJ5Vi5RXRhSMBt7n", "azHnkM6vKEdO3C4x"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'n9HBSCYXlsIbnlBO' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'pIAq37vtMmBUkqQb' \
    --body '{"passItemId": "BtAiPe3UzcVW6ALL", "tierItemCount": 46, "tierItemId": "Y2w3PnANLgZ7Zh4x"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'NUQY7Q079e8RNBF5' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'iKcer7gJ5E2oI794' \
    --body '{"count": 42, "source": "PAID_FOR", "tags": ["sGMOGJ4PRVL2vEaN", "5pf0ya4F7HyuWODU", "63MaLXyywpqk4Irj"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'MAsEuwyZBzQYeq3B' \
    --from 'ptlwl5xM5u3P7OUd' \
    --limit '82' \
    --offset '24' \
    --seasonId '6eUjSPPqkxfMkfEI' \
    --source 'SWEAT' \
    --tags '["5Yr3lmoGAo8H4b9Y", "3523wfv8GEd3Sn1Z", "cAUFJaDVEk3wvpVQ"]' \
    --to 'asJ3zb6N0oiRjTsv' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'oMnhcoLmolLeTdky' \
    --seasonId 'ZrymRFO7EM8TSguU' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'obYhnRbloBcIrMt3' \
    --userId 'bJK2LVhj7PDrbdjW' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'MqnhoX7hroMYosKU' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'wyNgNdsVsboOfddl' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '5ytUeQszEZiSdMKw' \
    --body '{"passCode": "zuvgrtvhoq2aHq87", "rewardCode": "W37F6rVzyo5zTitX", "tierIndex": 13}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'NXNKv3RO3bfOK5Fc' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ndjUxx5mIRSps5cE' \
    --userId '7wm8OxfOT2zRLQUb' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE