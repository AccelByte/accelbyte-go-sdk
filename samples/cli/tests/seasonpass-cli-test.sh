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
    --limit '88' \
    --offset '26' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "yLHak48ZUbxAURwc", "defaultRequiredExp": 15, "draftStoreId": "iOdi5KygpdZBdxcU", "end": "1979-06-15T00:00:00Z", "excessStrategy": {"currency": "o7X5AdcnqrnXkFnO", "method": "CURRENCY", "percentPerExp": 68}, "images": [{"as": "Ez0FQjVMcKmgZvm8", "caption": "HIlpG26QgVoaK0WS", "height": 71, "imageUrl": "cZg22qDWBEu8LEFZ", "smallImageUrl": "6zbec1sjdzBSe9vF", "width": 26}, {"as": "yhlaRgOTJLPPYf58", "caption": "O0KQ7wVfSWcMysU2", "height": 95, "imageUrl": "xuX8oZDj6YhZa2Tc", "smallImageUrl": "NbgPG7V8jxpoMbpz", "width": 14}, {"as": "epwby5bhwxL7UsYr", "caption": "ZNesHTFnRFtO7IAp", "height": 66, "imageUrl": "wCjkMVQOA7EFAutw", "smallImageUrl": "CyXUfURud8AJhLN7", "width": 89}], "localizations": {"kormka21knGrV1oo": {"description": "1T6dPxU9riVflRxw", "title": "96fBECWohEUPqSku"}, "B8dEUYauUY6VBM2D": {"description": "WXpRRQfGH3EJuKHq", "title": "iyXff321n3iUPUNL"}, "y5Q07C8ICBPSRRb4": {"description": "p4MTkMhLcENwvnzQ", "title": "cmaCrOAyCyg2hgm2"}}, "name": "uMVT2TL1PmDPfHKD", "start": "1990-05-01T00:00:00Z", "tierItemId": "jH2EYJKCdGAAnfEm"}' \
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
    --body '{"userIds": ["EpYCyjdaiT3ZohG8", "eKBGpiyNEkOtgWAe", "bGi3a9FPoS5G1vpf"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XgpRFf7QtCW6Uk59' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SMXc1iBvhRqwULjL' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'thCiKL0uxLTcuyPB' \
    --body '{"autoClaim": true, "defaultLanguage": "rz2Nc9cqFVjU2zzc", "defaultRequiredExp": 54, "draftStoreId": "U9LoIFeeBeO7GGyE", "end": "1999-07-25T00:00:00Z", "excessStrategy": {"currency": "cJq9v1jrnffXEhfu", "method": "NONE", "percentPerExp": 60}, "images": [{"as": "i6bT8Hty4rZspX7S", "caption": "wV4BOUe3vyYjKxA4", "height": 63, "imageUrl": "79T1tyA7Ey4j79D7", "smallImageUrl": "rZn1pebiqPA8bI2o", "width": 63}, {"as": "pT1dnYfmncCH0bMj", "caption": "qFKZ4P5c8liVm0nr", "height": 39, "imageUrl": "husYIbXmX4jFyggb", "smallImageUrl": "ysgIcIearmJA7nNO", "width": 24}, {"as": "oKpoI4n2FLKDKHdg", "caption": "vT3I3cvl6X8u4fML", "height": 94, "imageUrl": "rxyN8zgEq7n5uvAp", "smallImageUrl": "BLoOtxuIQUcryWJV", "width": 1}], "localizations": {"KrOwo7pO4CC1WbaD": {"description": "dtHgmiAnrUcicfvG", "title": "luLlGMtj2444ebzC"}, "iKhqQtxqxFHSZ2HO": {"description": "kRqy7A9Q43ucW7kO", "title": "0LvaWrOm3IAPVHlr"}, "UZaQwj16nrlCNssy": {"description": "LylfQ2tNxaDDEhib", "title": "apkZAJIHJTi3cnly"}}, "name": "xgtlOqSTZZAiSek3", "start": "1989-08-21T00:00:00Z", "tierItemId": "YL5p7v9imG1YiPek"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '42YaEwGN2XN8zt4R' \
    --body '{"end": "1980-02-01T00:00:00Z", "name": "7VfAsk316CxjTODE", "start": "1995-05-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CDOrTDvNtgyYCixZ' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '1NGAGNDmXDvvy1vJ' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZoEYH5CVVIo2XUDs' \
    --body '{"autoEnroll": true, "code": "iNgSmmErWHlz8cFu", "displayOrder": 6, "images": [{"as": "7fGfolX5SeKyAO11", "caption": "K6EzcanSTc0qlpF6", "height": 77, "imageUrl": "6Usql8BvyHBbCEg3", "smallImageUrl": "ndUZY6ROUfnT0uAg", "width": 44}, {"as": "Mrsni8UInqx0BrhE", "caption": "xmGIgR8dtgl9rqzf", "height": 3, "imageUrl": "7OlXyPe1pQT1xauw", "smallImageUrl": "f08FFIQ9nztEIBYE", "width": 53}, {"as": "fdqs5Gsr5aQsKhAi", "caption": "eLBemHKrGwKXKBeW", "height": 36, "imageUrl": "WQmYsv8hOrlZLbru", "smallImageUrl": "WaqI7FtcjK4M1RZH", "width": 77}], "localizations": {"5lL5VvRdYuc9o0GD": {"description": "9OCyV07Pdw2S7jA4", "title": "RmntPc22lfLJX7pd"}, "sVKVkK2ePhjo8pcS": {"description": "Cvk18XRQ44z2uVo6", "title": "LL9YNirLUrskD9e9"}, "LZ3pt2kyRaB8Y158": {"description": "ODcAmp7HuSLJAoxr", "title": "hqgxkeQ6DJn9mb3d"}}, "passItemId": "hzF2RRAkFRN6LWmh"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'XGsaNnOBaKdPdS9Y' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bUtwrMO2U82m6Bu1' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'p72Bz1Ad1jRoMomm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'slraauepHoCDcK4t' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Rw24edJj8SfRiF9S' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kMDwJ7WNYYBPF0ry' \
    --body '{"autoEnroll": true, "displayOrder": 73, "images": [{"as": "yWeDa4RKUSZ3tUz3", "caption": "kIrsIO7fnNbV8EWe", "height": 72, "imageUrl": "mKJszwZLQeHGh6Pj", "smallImageUrl": "Qak18GoY4boqi63W", "width": 89}, {"as": "HVZEw6et1WTD0Jni", "caption": "QeGDSy3wfsWtBXt3", "height": 77, "imageUrl": "o9xwTIuvOVPTqu85", "smallImageUrl": "ciS5MUapKGUhLzLx", "width": 41}, {"as": "EZFJCVOZDUMwT9Tk", "caption": "6WJIFq2xnrEEkGhs", "height": 91, "imageUrl": "7i9NoynvPNsxWJyg", "smallImageUrl": "NzfZxyOd8yoAS52T", "width": 84}], "localizations": {"3yp0HEoyNFHvKnqq": {"description": "qVHXHiqb8iKaFw81", "title": "J2i6wFpNZiTYvmYc"}, "0aWeI1BtKAYOePVn": {"description": "dTQFnJK9aYQSfJcT", "title": "Orsotr3UrTAA6chN"}, "vcr1ZhdebNPxt6MB": {"description": "dOyYpOfl8MMGjgYc", "title": "9OkFEVL1KwO5yUbu"}}, "passItemId": "4c3ES3zKUz1wNxwO"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PLvIhTJo25PNlrZO' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'c9e1kiB1gvMTSu8g' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'B48yyVnogWCkqddr' \
    --q 'NNRdBxutQ7InQktr' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'OLI2WEjgytkf1PzV' \
    --body '{"code": "jeUP7Pt6AKJoxQjx", "currency": {"currencyCode": "6H7534iJ9uh81MVa", "namespace": "TbdgIE8PB3ytz29a"}, "image": {"as": "gqWYmz0W9cm5v9lW", "caption": "yNLco6q4meGPIdTG", "height": 26, "imageUrl": "iVtTLdHxjkvbU8BW", "smallImageUrl": "31op3BrGpvyWD9Yf", "width": 75}, "itemId": "YomYaLTnjILD1hAE", "quantity": 2, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '2TTh1b7eEybmpZGN' \
    --namespace $AB_NAMESPACE \
    --seasonId '3EyVFY03JLp23yVz' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'Zk0ge4koBG6CriMn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cKSuBMxuBWinSVMu' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '6WrjgWo9xF9n8CO9' \
    --namespace $AB_NAMESPACE \
    --seasonId '4qDv3fdlGMIf5DrX' \
    --body '{"currency": {"currencyCode": "5BuuS5uAU8QfcFbW", "namespace": "2WQCHU2Fn9pnVN6A"}, "image": {"as": "27N2bDvF7SHJ3hwV", "caption": "QHsE45DgNvVzNa53", "height": 40, "imageUrl": "9VX1YR5HqiKAjtTq", "smallImageUrl": "BAro55Cp0Q7eAxdY", "width": 65}, "itemId": "l3jbAg8G6nYt1bRF", "nullFields": ["otSqMedXyU2Fw9df", "zKEHu6t5XUeuteTY", "n0GAcFtpf1t6yksA"], "quantity": 32, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'hhncRlWNxBpKYGAH' \
    --limit '100' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'XANV3l76Zdv4tACY' \
    --body '{"index": 97, "quantity": 5, "tier": {"requiredExp": 4, "rewards": {"Ndx7huTA4ywjQrPJ": ["9QJ7L6fZEKZCeLQV", "UwN3OC3QXoePw1oV", "1hHbDoWvUbVcYSVR"], "ptvOiC2eoG6DWw0x": ["piqvd5sGkSPew4Jh", "hcd5LKj6ZLy9IGlY", "99rDpy0IDLAlGIDW"], "P5WqoGOuCJBs9bcW": ["Dv55ctul9yNc52VL", "uTDOWtVcV3iVHXxD", "mWvhFcl9TTI7zIOV"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'wcIxKliXRp7oHeFb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'K7yKTFaCYaeDFRf0' \
    --body '{"requiredExp": 71, "rewards": {"PEPVOdDV0TWUH7ip": ["KBfQBwW2869CqR2B", "EiwKbIFo7TMdtjuv", "AFeSLOJyZMnGXhrm"], "qkM9DKBtOb42ImrR": ["wmHMbZFkR2brHtNe", "5ZtzVqSgvhKLwHde", "gpff2KUKT7SNIEBo"], "DdtG7LEqCvX19cP7": ["FKvo6vEOhg8qSFGB", "CjoJNx3RchqQYTgL", "Bmis9NFGMzU4ThCZ"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '3Iu4X26DpdrBlGzB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CQoUC5VXh6kG9lmV' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Xk97M4Y5ReNw35kL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xpiJewaPKJCwSTmu' \
    --body '{"newIndex": 19}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7bXtfaJ30Qq3PUrB' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Gwu8DQdXQC1TKxMN' \
    --limit '77' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'vC7ZQsjzBE9yJd7N' \
    --body '{"exp": 63, "source": "PAID_FOR", "tags": ["yjgWk4OCmSfJ1PDm", "GcoyW6ZrTOlwFZlC", "kIXUeB45MNE8CI6A"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'jCJSxskARwULP1W4' \
    --body '{"passCode": "u7qkuySCxtb4TGlj", "passItemId": "tZ15eyGB4QtUtor6"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'C6LvCD45lMi9yguA' \
    --passCodes '["IFHYchbWP5VB46XP", "8dNgRzFfSA0VoRvD", "0UXJDDjHmq58uQB3"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'kdyHXBINW3Na7wxA' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'QFFndCr8tN1zpCrI' \
    --body '{"passItemId": "M9hzmFTTDr2qVqBO", "tierItemCount": 1, "tierItemId": "ALSvGAcUW18AZ7Tc"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'gLdXsUZLcJ7L7WQi' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'jzhwgF1V5W2VVCTB' \
    --body '{"count": 53, "source": "PAID_FOR", "tags": ["NYcVXiDizPr4GtTT", "OYVX9vtOhHmuZlAM", "6zCuakfklRfCtur7"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'VwX6xeY8AZnqvvgd' \
    --from 'fegmaMtg6d6ft66u' \
    --limit '39' \
    --offset '2' \
    --seasonId '1nBJaiNrJbnd5zfL' \
    --source 'PAID_FOR' \
    --tags '["elT4rSnrGXCk5r8u", "eYnK1fz84ux00GpH", "qEqm4eo1TyogF2oj"]' \
    --to 'YUT8J7sPRJSFEUVO' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'eLdiG8ue2FWxdhfh' \
    --seasonId 'YYzHSqQWmdOvGea2' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AB5cM9mnDekyiZUw' \
    --userId 'CxUDFzIz2uZVtMpB' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'WmzwNSnj8l0xYK1t' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'h7LeAqMVz15vGpRq' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'AuzyuSpmuoIt3Tkk' \
    --body '{"passCode": "21foo76svay059Kx", "rewardCode": "PVmX5wHuf94iM6cT", "tierIndex": 41}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '1uDS6tZPZmjmhBsW' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nyMQvC8UdewJparU' \
    --userId 'oT9p2aipaCbCl0kK' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE