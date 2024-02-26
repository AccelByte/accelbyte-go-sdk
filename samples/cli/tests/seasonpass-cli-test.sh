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
    --limit '97' \
    --offset '74' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "6gfYIu1QyPqwsdVy", "defaultRequiredExp": 94, "draftStoreId": "o5L941iP5L3wTr2c", "end": "1987-12-09T00:00:00Z", "excessStrategy": {"currency": "He6rz9obM0G8yRuJ", "method": "NONE", "percentPerExp": 82}, "images": [{"as": "pz9K0AzjImvJiTaP", "caption": "1CaVWfDAccLJYF03", "height": 5, "imageUrl": "F2ekQZ9Kl6xA52ez", "smallImageUrl": "GFvG5Y5f5ofVltKP", "width": 70}, {"as": "NSwpaMReRuO5QBL7", "caption": "qTgAZrIbvbKka8wS", "height": 2, "imageUrl": "wF7TOFXpMj1cT7CR", "smallImageUrl": "Zb0A7vTGPsiUGF9P", "width": 29}, {"as": "nfAwh9IY34Q6gXVT", "caption": "2lLyUGhmcc3GqSyP", "height": 12, "imageUrl": "b6DLfLkNFnJ3ZrSd", "smallImageUrl": "ywGwWc6tpLy36WVN", "width": 91}], "localizations": {"YqHNF2bedehj5f3z": {"description": "sgpQJcA7jOQNNxbd", "title": "MI0BGRHCEe4xdjau"}, "SXQic9vTvgxgkauL": {"description": "JL1VAeV4dWZuAXiN", "title": "DKKdPUCtobMCV5W4"}, "cN6vd5nDm3UIGCMu": {"description": "NDeM66gomBlo3Peg", "title": "VnoEEkGmfm2SSrr8"}}, "name": "hhd8RApVm5vKyFqj", "start": "1980-11-12T00:00:00Z", "tierItemId": "8l435VnIT2B1lLy5"}' \
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
    --body '{"userIds": ["IcEzvMPGh6XSH1EP", "RXC4hbl9csy2d0al", "rVQGv0qM3egTfMCV"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ujm1PY3gfRs0QNTZ' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZB2fYFPs3FZuIVNq' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hsg4rzdZig1fA9GU' \
    --body '{"autoClaim": false, "defaultLanguage": "Uh5S8l6nUc5aTHTZ", "defaultRequiredExp": 69, "draftStoreId": "SQnNuQAW2OFflCD0", "end": "1982-09-22T00:00:00Z", "excessStrategy": {"currency": "VHIUtncDqN4FHk7z", "method": "NONE", "percentPerExp": 24}, "images": [{"as": "CWdZDKF8iiify5g7", "caption": "jKAOePt8d6oC77TV", "height": 28, "imageUrl": "1Xia4mEfumxm2MOd", "smallImageUrl": "PGEB8eftpo16DDaM", "width": 43}, {"as": "fDTFxhXvCpZdx8aE", "caption": "k0MdschSRAsx9FwV", "height": 1, "imageUrl": "x7rIJL80kgsZAAcg", "smallImageUrl": "SXAl7RcyPrTs5cQC", "width": 53}, {"as": "U2Qcc9nqSWVyiz20", "caption": "mmK13oUE1NSHaGvX", "height": 70, "imageUrl": "0rhjGkCPAmJPo7FB", "smallImageUrl": "nES61Upy19yU6Q9d", "width": 14}], "localizations": {"3v4yhhzjraXfo9GL": {"description": "KurXHluB4ddJk03u", "title": "oJqIHYJyCR79Rh0I"}, "s40gsXfv7K5YhrQs": {"description": "RAaCO4GJLrz7kMxM", "title": "SeHlNYumT5IMGuAC"}, "nbB8yP9kvK7BvJ8Z": {"description": "GrSl0TeR79UTFLpL", "title": "NwxTHYt5f6gk06FL"}}, "name": "yyoSnKqnNjS9UCvp", "start": "1984-04-11T00:00:00Z", "tierItemId": "XZRlxruavrV1K65e"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rDbly4tIOKibQv6E' \
    --body '{"end": "1973-07-15T00:00:00Z", "name": "4aWeWUMOgKYEOjh4", "start": "1991-10-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'O4i4LLmbVFqaletJ' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'QYTpTy5cGLtD2mKL' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'a4NX2NdkliL32pce' \
    --body '{"autoEnroll": false, "code": "cVgj1ElY70ReOAe1", "displayOrder": 66, "images": [{"as": "U2MciWb2vMBEr0jw", "caption": "FF3oycGK960POWD3", "height": 11, "imageUrl": "54KBlEN0sbcBIZkS", "smallImageUrl": "UcUqa2TcIT0uAF3O", "width": 78}, {"as": "2KOjPtBYhOHUcO7S", "caption": "HP7dx862ac2tthxh", "height": 4, "imageUrl": "JsVX6vlBhCNS5qNV", "smallImageUrl": "LU4PKBLgB9I05rsV", "width": 1}, {"as": "GbbGB7ENY3FLp8KX", "caption": "LwpYnqMMNj15ElQR", "height": 5, "imageUrl": "ivjoZvZxHBLJqF9G", "smallImageUrl": "bsX7NARSBqzLAHDt", "width": 99}], "localizations": {"nFwiGsNBtQoas1Y4": {"description": "hxCW8gGWlBD3sk9b", "title": "50YqNKcAHCeBKc7G"}, "7NaYZHtQ08448ORA": {"description": "u6qsd2cN7UZpIy4B", "title": "w90Qn01KV5MXvE5V"}, "2EYofkdKVhto9F9p": {"description": "miw5reeKgWV4Kmy1", "title": "5lXmQxLimpgtvr4r"}}, "passItemId": "VUWOtefFLxBafoUS"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '1gbGakiF3lzjApMq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TX6pWgN02RXgNC33' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'YOyABN7w3i07CfDr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TOTXGbHdDLVAcy1N' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'zC9s2FVgornL1Cbf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ed1nrKs8HzgXwicI' \
    --body '{"autoEnroll": false, "displayOrder": 67, "images": [{"as": "C9PgdFirkRPBDqeU", "caption": "HaX5XD29CXxYKr8T", "height": 41, "imageUrl": "hdH2c7ARutupCJHx", "smallImageUrl": "TnyGxbGacAJsCTZU", "width": 37}, {"as": "8gqaPSOFNXQcCmFD", "caption": "6hx26jI7E9Cpfrbw", "height": 17, "imageUrl": "FrciW8Tgz3mgJePv", "smallImageUrl": "XYVk1tauz1qjy2rx", "width": 23}, {"as": "zwvWRBybSfF50C9v", "caption": "KCJ6FR4iWltszNc9", "height": 99, "imageUrl": "xVbCRjs6bsiXwmae", "smallImageUrl": "WEbMqDdEjOCWpf9C", "width": 29}], "localizations": {"DFAtanwFTHPhd40i": {"description": "sH4BVJ5aQG9O8rDS", "title": "WEeUFRlryX0geJ9O"}, "MhVm0Tgz7BCY8xFO": {"description": "0FVRPqUjT4ffuAwY", "title": "Y0fyow80LqTsLQiM"}, "Z6CF2AGY3Vbfh30w": {"description": "YOSejuURjaqOrFzc", "title": "Dbe24ARa7pSaYve3"}}, "passItemId": "ZX3eOO1yxQNd75k4"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OxBG0Z1cnBaMrBbE' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z5DCIPaL5vAOfOsH' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'wPgAuW5ac8CiTM0k' \
    --q 'AuIHHCoKMPdEYlAC' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'UjZ5FbsUWWwvtkow' \
    --body '{"code": "emKVQekXSnFe9Szc", "currency": {"currencyCode": "JxLWIx7Kgyt0S9Dn", "namespace": "mAZOIexwdfd3WfiG"}, "image": {"as": "F4ljPpclC6y3pxuq", "caption": "tD3LDSXGae6CWOpd", "height": 77, "imageUrl": "WK6LrreiV3SB0PZy", "smallImageUrl": "P27BEXYJtr5CSZ01", "width": 57}, "itemId": "9YD9IjpAOvUEWOZ5", "quantity": 28, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '6znvRfnrkGaAiVtX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aN5u66zjmeM6GTfO' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '4O7g0s5hgdhg2Mqg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cFP5KodjYiR2yIk7' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ssIMN9qwzHxkBzHV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'F3bBzQMizd79TAYs' \
    --body '{"currency": {"currencyCode": "6kmZEqjOFRMtUUQg", "namespace": "Gj4vlvcQawSYUVFA"}, "image": {"as": "dOvNr1WwoC9X0gla", "caption": "U6JFpvcYiCfvt2eQ", "height": 29, "imageUrl": "mRQZl0wJJsHHnt14", "smallImageUrl": "WifC45PGYgzOkStm", "width": 32}, "itemId": "Z1Oy08laLhoOZRZL", "nullFields": ["P2j4hbPjUI0oC7rU", "GSmRCkYmdeLcrtz2", "Xc5Gi31yiGENKHUp"], "quantity": 24, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'bGkDhwwOaRiUoLwG' \
    --limit '27' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Stxv4tcnzovpgGWL' \
    --body '{"index": 98, "quantity": 43, "tier": {"requiredExp": 70, "rewards": {"L8TNrMfajr3PObex": ["LMY6A0MfTmfKhSVm", "sNgQGPHrOTBj2flE", "csT72tgHT7gMDoTG"], "FQnAMqgLA7vkcmEp": ["nTW893KkGErJHKDG", "pKBJ8RSo9VmUnCo5", "zdMkPre3chT7c2g2"], "VAKLXBQEdyISa1Fh": ["7XWs1uAJ9sOjb4hV", "exjT4DiGjaQha4Dk", "jIVVAVtVcH3uWplp"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'gWsdCpHl4iq9HH2p' \
    --namespace $AB_NAMESPACE \
    --seasonId 'g2BLxrsUshblVShZ' \
    --body '{"requiredExp": 66, "rewards": {"ZvKWIIgz6ShOabpt": ["EZNIX4twv7UNKMYP", "DrmAjPoJrjQgzbDM", "iVvcM8O1mmfPMVDj"], "wvcWR01v1oqKcFl0": ["fXW1CfiCPguZxJIw", "TUZJM3HfKHFnuQvd", "r1MyEAPuAEjpsXwx"], "OTQBd2ZL5QToi8cI": ["vhoHzUcsH3dHMQt6", "2c4T0Iczl8OBSDGe", "BB1SCOEW7IcZBOXP"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'LEjF3MMotzWi7dK3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'X7zdySLEXh9hlxkv' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '9IHca4be6m6vqmnV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kmHBYBVDNoqxRhYL' \
    --body '{"newIndex": 3}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'wWMH3As4j4zWySrU' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'QEEPXKvshJ3pVx92' \
    --limit '39' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'PCFNrsUQPvJGdZYr' \
    --body '{"exp": 50, "source": "SWEAT", "tags": ["JTWFnRdbuqagbTBe", "NV2E1VF2FsDcjQKN", "b4flkQRtPRQ3XESy"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'bs0T4fxW37v5XqeQ' \
    --body '{"passCode": "Ul8PruEguET21eMC", "passItemId": "IMD92SHSnyT6bGWK"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '0X5jNR0lkLnm03N3' \
    --passCodes '["CbnmkGv9lZ9Jawjs", "ndAVd7BTj7OZDSie", "YrivhjH9GMBxRbgs"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'e2WpQqvEdG6Vyptj' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'pkHMzGvrmOvtJQMO' \
    --body '{"passItemId": "w1YQ6pfj6527LgiU", "tierItemCount": 15, "tierItemId": "WOpvGySYFp1qaQNq"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'sNVSc8SixE8FrRjF' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'FpxnkoXcN6YsOkOx' \
    --body '{"count": 58, "source": "SWEAT", "tags": ["sKkw28AeYZ739Rgv", "DYFVHawVxkxp1pZm", "3sSjObeqdBeDdfGf"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'JCK2S8DHC3WjMGZG' \
    --from 'EnDQJCKKM9tGBEOT' \
    --limit '14' \
    --offset '71' \
    --seasonId '7P3tpZtWcVs81VSV' \
    --source 'SWEAT' \
    --tags '["YD1GhAlB6RlJl9Il", "MXFLNiMFt49FhSbm", "4cKxW50IVSwbyGAx"]' \
    --to 'HgfSqSSHED5q9hwA' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'DHIWP1ULgPIL6jon' \
    --seasonId 'w1Xb6iuPLCQdDKHA' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9vauEyvTS5FLzsRw' \
    --userId '0NzOnfnXZ7DKuffM' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '6PsvDMIhswAJuHiU' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '0JOO1MzaBcmXjpZ4' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'EsahWP05045o9Jlm' \
    --body '{"passCode": "csf3H7BlIgmQnCXZ", "rewardCode": "yiF830ANAaR2vWbt", "tierIndex": 53}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'F36i9SqznhOxpEMj' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YxvhKUSa9EARRwQY' \
    --userId '7ymwlMhLXZe1Z6G5' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE