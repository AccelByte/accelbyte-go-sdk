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
    --limit '50' \
    --offset '81' \
    --status '["PUBLISHED", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "c0tn9inojnqu7YvQ", "defaultRequiredExp": 55, "draftStoreId": "A7dro4E2sEa8eG3f", "end": "1998-10-09T00:00:00Z", "excessStrategy": {"currency": "rM7myYvMCBzSRbCB", "method": "CURRENCY", "percentPerExp": 100}, "images": [{"as": "FtzSVtrLN4eZJZqY", "caption": "M6I9q53MSfmFFUe5", "height": 91, "imageUrl": "FLdiT7H8MxhpWsmJ", "smallImageUrl": "4TWFCYoXk22XVOfx", "width": 59}, {"as": "ecoBVGsnoBIaBelz", "caption": "eTuL2pJWcfikMQL8", "height": 7, "imageUrl": "6fIn9QA11XumWi3X", "smallImageUrl": "F8IEm1iMZHJBWAdh", "width": 43}, {"as": "pmDkhyBtrYHBoK5n", "caption": "lJDpghRQoEvFibXH", "height": 0, "imageUrl": "5S85iipygLh0y8MS", "smallImageUrl": "5Mtg4O9q7QF0qMNv", "width": 3}], "localizations": {"Djxws0NHJs7OIiUt": {"description": "3mLZf6VDLTO2xqCj", "title": "VU9nVoH89patqxKR"}, "eDYmHVaKOhaYoAmF": {"description": "6g1JQraftgFhK94i", "title": "Hgz8xPwRu15HHg0y"}, "NRfyAjw1OU0au0C1": {"description": "E0JaCRz7byX0G5s2", "title": "hDgNcLFmBYNipcXv"}}, "name": "i5cr3WGZ8MJEUpuM", "start": "1985-12-02T00:00:00Z", "tierItemId": "ii3AdxORtD9ChuLD"}' \
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
    --body '{"userIds": ["nGEepMPTFW9ievWi", "2cE4XsRsd6gKS4BH", "Em6ydtPFK91v0VNO"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ttSif3ndvRXHREmS' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zqwuX5MatSMdKfLN' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PZZWWosWBp5TIvJb' \
    --body '{"autoClaim": true, "defaultLanguage": "AGVwcsShU2o5yeiv", "defaultRequiredExp": 34, "draftStoreId": "mULWsQT3FAkQkuKp", "end": "1981-01-31T00:00:00Z", "excessStrategy": {"currency": "HNBVMw6EaMVfkcBV", "method": "CURRENCY", "percentPerExp": 68}, "images": [{"as": "yUivofXXmajxM3d7", "caption": "juQhN7TnvCSCJDGl", "height": 43, "imageUrl": "bJVZhlvUL8VzBYMQ", "smallImageUrl": "rTFwGx1WgOjZMKJO", "width": 11}, {"as": "fGLvhmzpDsAQZqaw", "caption": "EYaVreVd3CwtYTIS", "height": 32, "imageUrl": "iMA0T3L4aTVaeBFN", "smallImageUrl": "Yc8M5z0iLNqu3QSl", "width": 10}, {"as": "FjuAyxnrw5tnP1Fi", "caption": "HUYygLDe1UyPRikR", "height": 62, "imageUrl": "JUrhH6wCN8Up0pdm", "smallImageUrl": "mtuwaSkKO89IZJTf", "width": 51}], "localizations": {"8dWTmBtBb2qaUyLE": {"description": "h3H8rsWNsOXhEl6Y", "title": "GVNwQ4EnxSsRfJwr"}, "GvSGbw2AY9EOQetF": {"description": "qD2qQBb4gZ2xLBE0", "title": "PmAZZsAGhzc5bDJi"}, "rjKRukwcD3aYNdOu": {"description": "Gu7GSamr9jJJPaNv", "title": "CfdoxsjSsj42KsD6"}}, "name": "fqqhWjdCcPqun80Q", "start": "1997-01-01T00:00:00Z", "tierItemId": "yuSSgHSRpqhEKWut"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'us4njXT4Vhi2xfc5' \
    --body '{"end": "1978-09-12T00:00:00Z", "name": "1lmK4k5MNH1y1dwi", "start": "1998-03-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eQ9Ah22Fi95I3QIv' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '7IHFqKizPKvLrsaN' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'PSlqJXNiTb7oiQTi' \
    --body '{"autoEnroll": true, "code": "zGSx7x7OGMalxaSN", "displayOrder": 23, "images": [{"as": "PlGtMql4Fu47lmWP", "caption": "scekvSSW3RYsqTVc", "height": 75, "imageUrl": "Whg8VSHh99D3wThF", "smallImageUrl": "VpvAF8JgiTfTKjTc", "width": 9}, {"as": "mTVLsRYFyghSev0C", "caption": "TvvLdALuQuKtGsI7", "height": 58, "imageUrl": "dCDHdt6BoOAo0san", "smallImageUrl": "FSQA4cOPsbprwV1h", "width": 17}, {"as": "lcBX9chHALmWS9DV", "caption": "NWwzmcXnK0OtALOf", "height": 16, "imageUrl": "xIJCCcsPQRWi63h8", "smallImageUrl": "5vnugAvE3AaptbWX", "width": 14}], "localizations": {"jbFHRaCH5ZtdjArx": {"description": "iuQ3ywulgKgWLSSO", "title": "HVTXP7InZpjd7Kqa"}, "LHzAgNog0h6Fs5Xl": {"description": "afz51b8LXnpsqUHq", "title": "8eooLKAcVPP59nw5"}, "aJ70BUdukEDS7WZ0": {"description": "hGeLLrZUTPpGqIN8", "title": "GPnVBr5CRXkSPBh3"}}, "passItemId": "tUKPi1tiLGN15A1F"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '0SVbCbJrVZxQv2ZY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fZOd4kV4QtVap0Tn' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'S5GvXYsdJUT0f7Pf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aD38DwMzzSpWZpKU' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'JtV1odurq9aC2uwV' \
    --namespace $AB_NAMESPACE \
    --seasonId '3WMPjitQoB0dNcQa' \
    --body '{"autoEnroll": false, "displayOrder": 43, "images": [{"as": "FM4iE81f3j8BERSs", "caption": "NU2uMFqkboz4Hpek", "height": 69, "imageUrl": "rwjqsmRtfZMpKMti", "smallImageUrl": "0G474Ibte5GRj9QH", "width": 58}, {"as": "8O81g9S3gM18TbVb", "caption": "bC4HLEIv4YkzEaJK", "height": 46, "imageUrl": "354WQ9NRgx0HLZye", "smallImageUrl": "QNegoNky23mx8WOe", "width": 12}, {"as": "fnx3Zwd4IYFRxKwf", "caption": "dAwavJXiyNMEAfBc", "height": 94, "imageUrl": "zmXVlIsgePwWVgiH", "smallImageUrl": "TOL7nWoVqdAyiqQv", "width": 16}], "localizations": {"61uF05Vh5QbatXTe": {"description": "yaEpu9erD2zoixey", "title": "MSY7Pjwov5LXw1dU"}, "vcdO3gCfXByO7937": {"description": "qhUIAQ938Bhm7zdW", "title": "qdJNTsQpEDNERhaC"}, "TG7NdPWtgYU28e1X": {"description": "pqxQAGLu4z7nIIHp", "title": "H6EsEFKWK9BnKkPa"}}, "passItemId": "rCHzrNVgP2AKFnOn"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sX4THjZa0D5zks0q' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tY5h0Lzj358Cvhc6' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'AzBKVIDID4Cu8ZIZ' \
    --q 'a6Ui0ncZbfigV2rV' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'trChrZ9LvQUP58GM' \
    --body '{"code": "Z6KktIn7gWpgRnEp", "currency": {"currencyCode": "Jk7K3dQP9yFiEIaA", "namespace": "XW2JBdcx2Ec2HOy7"}, "image": {"as": "4LIWaQIGgZTyU1DA", "caption": "emx99RDdvJPKpek5", "height": 13, "imageUrl": "KrqeAuW13Knbxcz9", "smallImageUrl": "bkkZJoFLtq9Akszc", "width": 9}, "itemId": "gwSiifDddsMlI7uv", "quantity": 80, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'WhK4YMvfnqgxcOvL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hbu6QP7UdOlWUWyi' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'I7XTiNzEhtOu7VZU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'e67dv4dayLPx9hE9' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'BwtC8smv9osqEeRm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'btW0ryFN65LwriX4' \
    --body '{"currency": {"currencyCode": "bI2MwMIKpcURKAbx", "namespace": "ewG73cdVQcPrOBPz"}, "image": {"as": "FlmAhlmsuFLq4Qi1", "caption": "OaY4SSkZaBo2uHkK", "height": 31, "imageUrl": "1lmFCtLIYB10ocE9", "smallImageUrl": "gthLip50n8216FD7", "width": 15}, "itemId": "ywhF7z3B2ft786ls", "nullFields": ["FZVxeTM9A5p5FeRO", "2GPdghtv3iqLaphB", "foOvsStDU6wLuSHc"], "quantity": 13, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '46gs1YPL62qnwqBZ' \
    --limit '37' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'UtttlL1y5EnpkStJ' \
    --body '{"index": 7, "quantity": 49, "tier": {"requiredExp": 55, "rewards": {"FY3FCbTZOridlixv": ["oX9dztEEKqQ7y8Wg", "NiIFiLPSMAO5Ynjb", "tg9EyJw3WurPdZDZ"], "Ahnf2quOmNfTtgKL": ["Rvzxx5pwDy0tIQrZ", "41Ck3hcjCQJXTRhn", "6Srr2b5vbufN2M3a"], "NyP04Reva5VEkvTS": ["zKwYPARTVJ013KBs", "iY29utPqjIbW0MKv", "ZXi2b8xM22WYjbRU"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'MJ2050tqih3YDChu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nCXmGPpdHDDUgjS8' \
    --body '{"requiredExp": 23, "rewards": {"XiqDlXh740mIz3MJ": ["k0HdrzdUvDTG9wbL", "m8svSHQNGAdsPCvO", "96XUE4fCatIHMlei"], "9ykoAueE78WG9bm1": ["YbUUY56tWlLxQcat", "Q55kGzozkniL3Xgg", "79gX6ow2pI1Ei5lH"], "LxvvlgRUR4YTAjpg": ["RgolbeLGpdC93jpg", "kB72xdwFZyFM5GCa", "aKpuPM6cQPITZocz"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'gc5wKSJGVFUnHUjb' \
    --namespace $AB_NAMESPACE \
    --seasonId '7bWrNq2PbuYxykbt' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'ToO96YN9dXWGIFfx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XYLHs2DYQOJnm24B' \
    --body '{"newIndex": 56}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'txJ6LAMsQ7Lmp6ts' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'NWVOGMmtrQLRWOar' \
    --limit '33' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'gbfWK8HmbFtzcTel' \
    --body '{"exp": 91, "source": "PAID_FOR", "tags": ["V6i9fBfGVdx7NvKx", "Nt0S44YBAEDAPk3R", "BfIExzeyuCDBgqTb"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'mz1bdTD1qJGFR9FN' \
    --body '{"passCode": "1XlDOQfRXioc9tnv", "passItemId": "LQGgrCu7956eBp6J"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'MeL70FhBQ6s3a0AO' \
    --passCodes '["idCEIZ2aFMDZWfck", "COZwwrwQV0ke7tVX", "Hx5yL6uF59c5JvMt"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '5nKYJDabj2ud80fq' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'rlXouzM2SiBwP4oB' \
    --body '{"passItemId": "erkg1EKyZQ9xXkMr", "tierItemCount": 38, "tierItemId": "tU61bgWc402wKQbn"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'vJpuUyEC5g0ypoMt' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '16uT5uti0Nbp4ZV2' \
    --body '{"count": 79, "source": "SWEAT", "tags": ["Yme5YwIvDb1jehms", "r4Myd91NFQV906UU", "IWrGkOIycPY8PVso"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'V6cUntG0EWEeTCn8' \
    --from 'yQuVjuf0JSWjmBJ1' \
    --limit '33' \
    --offset '74' \
    --seasonId 'JgAfqyzBqKZArUFq' \
    --source 'PAID_FOR' \
    --tags '["AFPnWvka2ENOralS", "l7KYgFKbi1dqynq9", "CdwwtSuU7NcAwT12"]' \
    --to 'wxisE4PrNhXvfmzY' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'F0UuYmG1k6U8n3Y9' \
    --seasonId 'cszuGS4mq6M5QaOG' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HDl9RIvMtD6F7qOL' \
    --userId '0qej7qy0lBkezGR9' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'EZP7hBEtIAblbT67' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'TARp7QjI3DT1DZo8' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'g2DP2Akt9gW1vvwY' \
    --body '{"passCode": "xnLVQuNoDv5Fcij0", "rewardCode": "S2xFswC8SwgRI4fi", "tierIndex": 77}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'iqbhftyw04B20PEf' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yz5A30Znl6t4Eql1' \
    --userId 'jstn4XiIyVnv1tmv' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE