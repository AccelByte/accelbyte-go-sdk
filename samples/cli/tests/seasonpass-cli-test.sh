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
    --limit '17' \
    --offset '11' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "aFB3w2iETdgNoCo5", "defaultRequiredExp": 71, "draftStoreId": "Aq8vbK2byfnNkhtj", "end": "1998-07-27T00:00:00Z", "excessStrategy": {"currency": "TJph2kWrREy673dT", "method": "NONE", "percentPerExp": 79}, "images": [{"as": "RbDMcEmwcKmeqmqV", "caption": "tfTbSqXQCt4jHzHY", "height": 15, "imageUrl": "dwDcJRVAwdLqFOQc", "smallImageUrl": "jBFjm6x600FghBgO", "width": 95}, {"as": "PdHdTd5Ri9cgCEZQ", "caption": "1Dxz147jCbxhLLQr", "height": 8, "imageUrl": "0UDL8US8CxxL4M6x", "smallImageUrl": "eoRdjMQ8DilaKnH5", "width": 68}, {"as": "MP0K0ZS7h83HUn0i", "caption": "hM7QvF6dCe9uidhM", "height": 8, "imageUrl": "NWSKNGst3rEpsll1", "smallImageUrl": "CsWPrwykEvqYRXvd", "width": 82}], "localizations": {"IVMwtxk9ZK6Kg7fw": {"description": "iEAH6MDrnMJ99iyC", "title": "4DRTQpMJ0zh8kYEA"}, "jNlHmt08bmg2WQ0G": {"description": "o5iTnKWujqSpQJNz", "title": "63m21YqVB3XTJqhh"}, "PjpJljfkKy3lZB0j": {"description": "sBtf72m6a9nWG5G3", "title": "uAhl1NWE4gfRPoQZ"}}, "name": "VXyMWxLNQEmLUzI9", "start": "1997-02-23T00:00:00Z", "tierItemId": "dwtyJZ4FKXyNE4HA"}' \
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
    --body '{"userIds": ["0NUOSYTJQ1UFlvyI", "S1M6Rwi6qI5EOSnz", "qL21KCjlssMDU1rP"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rUxLoGmQNd56SpK7' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RXCxuK5c081CxYGf' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Meco1RUmCd4jo5YJ' \
    --body '{"autoClaim": false, "defaultLanguage": "QNz8yl48CTRh9xK2", "defaultRequiredExp": 97, "draftStoreId": "aYYT9UNrQSuHsuHs", "end": "1985-02-14T00:00:00Z", "excessStrategy": {"currency": "oSSpGVfAzRlfVUhG", "method": "NONE", "percentPerExp": 47}, "images": [{"as": "MZETbFwEQY9MHFVe", "caption": "o9XJIx21eItjinWb", "height": 88, "imageUrl": "APpVpbDLm0ap6riq", "smallImageUrl": "v8NoEUncykAGuKRM", "width": 10}, {"as": "wj2WzHPYvQNP88G0", "caption": "AgFk5KmGNzuCMbQw", "height": 12, "imageUrl": "aqsgDXXwYKeDHhdS", "smallImageUrl": "zf0BdQMDxpN6BjUk", "width": 24}, {"as": "JJoTmpOZrN6teebM", "caption": "LGOAdNbtJtTeMlCe", "height": 14, "imageUrl": "3cVyfpYtAQ4nAUYY", "smallImageUrl": "1Bul3KiprR64iiCa", "width": 93}], "localizations": {"BUagfx68DneozzJX": {"description": "qIZBBV5X4W8x8rzW", "title": "oaRgQjnLeSCA3cyb"}, "cyxuRzEWXZjDdeme": {"description": "ZifysPtefWIfZs1Z", "title": "y6uvlmEYLL1SzMSp"}, "0QsHgAEjN2TxUSnO": {"description": "t2EmhzcBfS5FtwQw", "title": "ZX56URMGbXJjjaI8"}}, "name": "NbM9nkniqty322P7", "start": "1979-04-15T00:00:00Z", "tierItemId": "9xX65idtMb3jO8Ys"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vFKewwFMVLEodemG' \
    --body '{"end": "1997-10-16T00:00:00Z", "name": "HLMQ78I44GmHLUNl", "start": "1973-09-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 's5A5WG20ejvrtYJO' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 's8aE9w3V2prFTLM1' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'GLUPYisnyzT2vQ10' \
    --body '{"autoEnroll": true, "code": "BL7Kws1wItXAxh2z", "displayOrder": 35, "images": [{"as": "vnrwdUmA2OKjZGO6", "caption": "PI5xTl2y8se09X1M", "height": 23, "imageUrl": "yXukqqk8YqUok0Bf", "smallImageUrl": "iWEODJiYnkgp3ZjB", "width": 52}, {"as": "mnccqoKaE4o94p6J", "caption": "2OtknCsfeBSGQRK2", "height": 56, "imageUrl": "yXIVBn4h02t2LAVZ", "smallImageUrl": "YDcIOCVsqSK43GLt", "width": 36}, {"as": "JstpKzYUCOhVPWHx", "caption": "vZzc5GKS5SV5zMup", "height": 29, "imageUrl": "agNnu9FSwwGvoDhK", "smallImageUrl": "ZSjvcUXZP4fdkRBZ", "width": 46}], "localizations": {"JcLBmiwueFHTdo1U": {"description": "DbilReSSIkq2dgGd", "title": "IIXTV8WWPgnhtcNU"}, "LaaqgWZAECTmTyHF": {"description": "tiVj7eT8Guo7KfGb", "title": "kMzBAWfbQr7uQkun"}, "lBUAscU2fhlmUTOU": {"description": "KPdplcvKToQ8KBhK", "title": "4gRm4H1y7cfwKmfH"}}, "passItemId": "KDOEOLzhU3pNUD07"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'avUYnHX60Ftdbh8x' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LOJC2r9rTe3qJTCU' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'MsDNFKoKiw0gES5x' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kt5JC9pvsjtzMknX' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '1jyRDd3FDPS1suNr' \
    --namespace $AB_NAMESPACE \
    --seasonId '7pPiLTYmHIW7pRQ4' \
    --body '{"autoEnroll": true, "displayOrder": 90, "images": [{"as": "ovvezYhAHm0z28or", "caption": "WDP8DXbupiRnd6Bp", "height": 23, "imageUrl": "caQl9YfOu4PDPV0E", "smallImageUrl": "8jPAZvFpsuTObY13", "width": 35}, {"as": "tl1MChPZxWcKmDoL", "caption": "qFA85eL6te8X3NuA", "height": 82, "imageUrl": "esyYc5O2CoPE6JIk", "smallImageUrl": "1Jz6wgS1Rv1qvKwE", "width": 37}, {"as": "bL8ZC6E5EL2r6vHy", "caption": "xlq1pfBk7m9L5YRh", "height": 22, "imageUrl": "zcTSiHqZs9jdVdGc", "smallImageUrl": "QmVeSMgZO1IThcz7", "width": 77}], "localizations": {"pUYiz87ozWce0zbp": {"description": "bCRctAD0L7wn6qCo", "title": "3CxpDjYeWn1chLwm"}, "Gwb6mMjYZlhiYzIq": {"description": "P0sk6QTUmUupU6YK", "title": "Qi81NZJA8E5uNaWA"}, "p098JW8EjeVJij6o": {"description": "MoDIiXJQJDWLMkl0", "title": "YIf4D87S5ykayzSd"}}, "passItemId": "boie6YGutMeiSdTX"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2hOkw6oye6oZh3OI' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rbInytbJIcD4PAim' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'x4llGEgNrzlbxgwM' \
    --q 'mB5ti2ihPpaAFiFO' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'A8YnJXkZiRIOnES6' \
    --body '{"code": "18zIUvQODfRTBE6Z", "currency": {"currencyCode": "TLextu6PWnmOyMKR", "namespace": "jBteAsudeG1pJzb9"}, "image": {"as": "gl5ZWSjPpEMcZtVv", "caption": "Hmphu3DnSLa8jrAj", "height": 35, "imageUrl": "hUI6Nrj2UJiQ6Gtd", "smallImageUrl": "l8umdoF0hpQoqb60", "width": 35}, "itemId": "KKPbRmSqQw5SHUfh", "quantity": 4, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'gBjRMxnTAUfIQMpH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qA1sBgUyzIF75Jxx' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'MK0bogGpd1Y3IvPb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jbogevmR9C9GQDB1' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'dcuEovaB0HXyaS0x' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VX4VADxKg0GuCRLM' \
    --body '{"currency": {"currencyCode": "nKfTjEh6BD9B7STo", "namespace": "p1GIXiV6qg4wKgC1"}, "image": {"as": "pZFCXvITJA1xqlfY", "caption": "9G4xRdzJr8DAbc1z", "height": 30, "imageUrl": "Y5hDemiClOkRad8R", "smallImageUrl": "y4pKCqrY3j8yOEBr", "width": 16}, "itemId": "eTEiy4S7lZ8rb5B5", "nullFields": ["a1VoowkcOi2lIzjs", "B67MrFyXEJhkXKbB", "cThsHYTK7A75VByM"], "quantity": 8, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'WwgOT1ywcc7EUqkP' \
    --limit '90' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'LYcYybxNjnsmIZtM' \
    --body '{"index": 77, "quantity": 13, "tier": {"requiredExp": 44, "rewards": {"y8etPEiOeN4El7qN": ["DHW87DwdDwK4Y8Qo", "FWaZi4Y8T4aYfQSA", "OVxCe4Q3GMqSQsus"], "a97W5f7HzfrVIc4t": ["4ZFkpaD7jyrNZl2Q", "O6IGGiNjZgF29CkN", "aEoL2xRgfKi2fDXI"], "1DRI8QfUBSUuwZ69": ["k30Rjio0HVPod8Zh", "BLBhhQQu4nE4dUrZ", "VvdoOds3YmVylb3r"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'IkvVMSsssYFdVgGX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uoz3weO0cy1oIMS9' \
    --body '{"requiredExp": 96, "rewards": {"V8IrgW4vwE1xCYSF": ["BABHR5rIIUwKxEYj", "7wBfTVknUZePaSQf", "EZ09X9PS8J175UVa"], "FuhWtwnzh2iFtamy": ["jWjzyUQVhVEYlOwU", "CyxKurecS2ssga4G", "gNZ2qhfjcaIC3g04"], "KS8hghwX4Je5TcVg": ["nbSUr2AeG0F3pE0h", "gYA44M9ZW7VXOeRR", "qvs6N0L3uJ5qumMn"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'rcNdDC6KU4ZvTkZL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QADDGkYrJL9WK1eC' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'I4b3mk8V0zqJK02Q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QXl6Fj0Xs2DqQ0tp' \
    --body '{"newIndex": 60}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gpAD7lkPyjwP9wgq' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'nVg9xad5R4hrAslW' \
    --limit '28' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'Qzt0NheTXcdaJi9V' \
    --body '{"exp": 82, "source": "PAID_FOR", "tags": ["3r1M1z09ZdNhGGgb", "5sULWFPLvo5qYcxy", "tw5sUugxFNepkMsD"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '1PSdvNeb7yWR0dyw' \
    --body '{"passCode": "KKoasKVF6JeU6orh", "passItemId": "HDCMKg311AW9YP5B"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '4h4Kn5DyjWNgcVcv' \
    --passCodes '["d95hbZQSEYGAhDYH", "yVsRHSj7q7fukEM0", "dD6oYD3NEWPeJljC"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'K9E9VIOryDVgKSMT' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'x2XkcXRUcTqFxNpV' \
    --body '{"passItemId": "inqDaHF6elURTPFl", "tierItemCount": 43, "tierItemId": "i5KpMjn4WX7YHaBu"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'vu9ynvprtB72q3kV' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'oSiR9B35HG3UhTbV' \
    --body '{"count": 38, "source": "SWEAT", "tags": ["RxAwiNeW500QBVGB", "8FAlus45KaSGXHPn", "7oe6aS08AO6cRlv9"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'N6FAwb8ccABDpj1T' \
    --from 'NExRLosIBrMmGAOE' \
    --limit '17' \
    --offset '12' \
    --seasonId 'wCj0BZBvvlqClRDW' \
    --source 'SWEAT' \
    --tags '["gem3oANsTrcPoP78", "qXiESx1n9m5yAwkE", "rHFvSHNNkTSyHx0D"]' \
    --to 'XjOXuafgODA35umA' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'GNoa0rT7aNEApCYS' \
    --seasonId 'iLXwl1wxDh6M8CCQ' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yBamsJGASNKbyLIO' \
    --userId 't8oGsYCYaAGcaUly' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'kVBde1Rp13Kdm6nf' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '7OYfcQzHgSmbeJY6' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ZiApbSeyFSJHV4Ie' \
    --body '{"passCode": "IXJBgewMHD29bNuc", "rewardCode": "dBYZW3SLQLbd9T1W", "tierIndex": 71}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lCEKQccZDRzaksUC' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gt6qkL2q51HQRoYP' \
    --userId 'dKtM7CSMY4dt5QvA' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE