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
    --limit '29' \
    --offset '69' \
    --status '["RETIRED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "mGuvmTqiJ3W76ta6", "defaultRequiredExp": 98, "draftStoreId": "FGQYXGEZypxBtiyW", "end": "1979-11-30T00:00:00Z", "excessStrategy": {"currency": "CxnWo2v1uUO5isBZ", "method": "NONE", "percentPerExp": 33}, "images": [{"as": "NpZiYNtuthqq7qKl", "caption": "571XueB6IZJWKi6f", "height": 37, "imageUrl": "9nzSTcGTgh8GmNLY", "smallImageUrl": "CQYzKUExm2ObJXGq", "width": 72}, {"as": "BbScXpi50PRh7JDE", "caption": "aYlXmrKCjWph8YRK", "height": 65, "imageUrl": "yoTe0LBdor08eXlN", "smallImageUrl": "FSaVARS46sBYQGok", "width": 46}, {"as": "H9iW7EcgTf3bqi1m", "caption": "Ko32SOusQ5nTqmqm", "height": 25, "imageUrl": "MehR9xPy0iQYOAEb", "smallImageUrl": "8JumcnrFcj8njPbY", "width": 64}], "localizations": {"3TzzE5mBpXpufSuH": {"description": "CtVWRTKnkcD24bOF", "title": "R0u1VKLBGmjjIrYG"}, "y2o4RVFMNkzGCSjz": {"description": "ZiKGzi9IjsESiD81", "title": "IgEBOOPOa9mbMrm4"}, "w3twbBgSSB4xxWL4": {"description": "MFHhcISVzmlX1rW3", "title": "2jZdtosFq0swGXg7"}}, "name": "GwWTtnKe83FcxW9D", "start": "1990-02-15T00:00:00Z", "tierItemId": "t9TsNrMpvtlNwBpy"}' \
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
    --body '{"userIds": ["a35WKdFk1KtiomnY", "pysos3izj1Wb4AtA", "0TFEeH4AxYw3odDX"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PswVfDlvy4NtFX8M' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dcgETqIyKml0yNbS' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'P1ussxE8gGrV96Ws' \
    --body '{"autoClaim": false, "defaultLanguage": "9j5f5T59mLE6iJXE", "defaultRequiredExp": 20, "draftStoreId": "hQSfeTxWPlp7pvIJ", "end": "1984-01-12T00:00:00Z", "excessStrategy": {"currency": "TgjKuFoXoNrhEeVB", "method": "CURRENCY", "percentPerExp": 10}, "images": [{"as": "7vKGFddUHyX9PiyY", "caption": "wzeiEpfydSqColpg", "height": 99, "imageUrl": "tyaVcSALJQILcHZg", "smallImageUrl": "1uL9PIpTRfFVal4l", "width": 15}, {"as": "ohxlH9blIFUalWXp", "caption": "vHp4CIWJAAu17J3O", "height": 82, "imageUrl": "2neRDnlmsN88Gp18", "smallImageUrl": "O0xjkFbCzFFZCWXA", "width": 11}, {"as": "A2vbLVIcG8u3Z7RM", "caption": "tJoXLijt6Fc83UUx", "height": 83, "imageUrl": "VFRPp92iX7ahNfzy", "smallImageUrl": "rBN1nuHy5Nf1JeeS", "width": 2}], "localizations": {"nEXjQhTu7VAh5hXg": {"description": "4p367RVbsdwheqnn", "title": "vBIAN8aLvKALTehr"}, "7VBM7j1xAQNpJq1D": {"description": "myfbWLr1HIC5aiUP", "title": "FExolIEP12q6arUk"}, "NP3DkKGVEl59jUAk": {"description": "XAB1six6nyvd30s8", "title": "UUvojZk87Gpk55CB"}}, "name": "ZF4QiFEfREoiw0WZ", "start": "1985-05-26T00:00:00Z", "tierItemId": "1ICjywwEVMJPDQaV"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VexkFKYbSoy3ZD8S' \
    --body '{"end": "1985-11-22T00:00:00Z", "name": "lwuBYrRctNM6U99N", "start": "1972-10-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jSTg0MvU7ZqSj9VL' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'F6hmQPZxJTj9hiZr' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'K77dEw5szPwwCHQs' \
    --body '{"autoEnroll": false, "code": "s4dLpXvBXMh0HwAr", "displayOrder": 32, "images": [{"as": "vVALTyh2bCQtWMWl", "caption": "yn4Om3bWWOdzkvhl", "height": 65, "imageUrl": "PscamHBTzmTJN1Vb", "smallImageUrl": "uCGLTVXWwLlo7F6l", "width": 61}, {"as": "1PB91wFJOrHOzx0V", "caption": "npi54ydLbOPl7NH3", "height": 16, "imageUrl": "UU9Ti4IVrWXkmDP0", "smallImageUrl": "XaQXTRtWtwKxjogI", "width": 44}, {"as": "pP5GeZrygHiIFVsw", "caption": "9KamFFbM4bo84Np1", "height": 21, "imageUrl": "OVDEaTQmot2abiNB", "smallImageUrl": "AguTyt0BaKGx2c8u", "width": 19}], "localizations": {"cyKv8uMSLzOOKPgh": {"description": "vKoaWwqkzP3QZHcl", "title": "O1QS5gFmS1RrkXvo"}, "uWy83JXV4UIbjMyi": {"description": "NIbv4IufMBEHB15d", "title": "CVURlrnPSgxuMOUo"}, "zW3SWM3GyXcqjUp2": {"description": "D1FKjQaoPDXtyTx9", "title": "GV2gTsrubXm8sSef"}}, "passItemId": "EPXxbwA6FuaXaJlr"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'E9ZbC6MkOa14xYwv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PFRbJE4YHffUctqg' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'aipBp1udTiCh5MKD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VADcgi4Z8NjDIXjB' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'PnldeFn8M09RVbYc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q2CYWubctTIVb2os' \
    --body '{"autoEnroll": true, "displayOrder": 45, "images": [{"as": "CCe4F0StnQkW7icx", "caption": "dLPXbHKY3TSa0rdZ", "height": 65, "imageUrl": "iXRsLsPjvMD60Boz", "smallImageUrl": "ln8DYD2KcF2tXg0F", "width": 13}, {"as": "ceqd18nMikqKK72z", "caption": "xxQgQIj3UlSfUY9Q", "height": 96, "imageUrl": "1UWpP59poxpGxDhJ", "smallImageUrl": "HUOCCEHVslSDp3ue", "width": 23}, {"as": "EmhVg5SZvU9fR1tK", "caption": "RFsNfbSSJ3VmFeHm", "height": 86, "imageUrl": "a9zJzUUQs9pCIcr4", "smallImageUrl": "eLdJjMKBF7uzzPQq", "width": 79}], "localizations": {"j1WosgwusjAyIE5f": {"description": "a7G4F73ziUkE2wja", "title": "5pCEo5cdt7P0ycBu"}, "ANiVeHXlOkXAL6KT": {"description": "JLOeU1BDRTJQ4d66", "title": "sZ8UEOqjKPmIqHpp"}, "k8UUfSpwjVdlWLt8": {"description": "Hc3uExPpdkJAKW5s", "title": "binSjcKhdh5F5FD7"}}, "passItemId": "e7Nx7dQwQNFWMfis"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vfmyhje5LeRhLo9N' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EPSs7dPpUeSiWaHN' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'g8L85nfYLxjntkdc' \
    --q 'zS5EgVax2hKMwGfr' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'bwVYgd302OjG1QxE' \
    --body '{"code": "ihGXj8W72KlypLub", "currency": {"currencyCode": "YVKZYokHUMZK0Qrn", "namespace": "EzzQqwB39ZrgSNwS"}, "image": {"as": "YjYtCjHa683PK31U", "caption": "jP2x1spcX4VXRbmn", "height": 47, "imageUrl": "eSvAdF0abO1FfyEq", "smallImageUrl": "bNBrqGhCrdXBfDVZ", "width": 60}, "itemId": "4Z2v7gu1grFQFU9p", "quantity": 55, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Mk1VRTYn4xNiBpB2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tg1llQf9Td5IVqvI' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'gvjltphjvVFFzbam' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cpIQmtwVumBI8nWE' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'HxAuyDfEtWrArzdG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YcvQbDaI4tnEq8C6' \
    --body '{"currency": {"currencyCode": "WpHGQX3jmjaf82wz", "namespace": "ASFx3DzGxgyVMKga"}, "image": {"as": "e8dYCn3KFiw3pwGI", "caption": "TRNcyQKPJmSGgmHI", "height": 35, "imageUrl": "ksNRZhf8KgJ5vOR6", "smallImageUrl": "Tydx5X7oZ24DYntF", "width": 99}, "itemId": "cYg59SAR07lclyhW", "nullFields": ["j1PXd93xc3jcCV2P", "SObjlmjnAQTGXtkQ", "66zTa0ArJlUZnrIN"], "quantity": 5, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'kCrNfzLpFtuEJf3w' \
    --limit '5' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'DwX0RcJ9YQtMuE1m' \
    --body '{"index": 62, "quantity": 65, "tier": {"requiredExp": 37, "rewards": {"m3qcufQbZBvl02en": ["Un9Iskaf8ygqBz8v", "I5FnW9BRup2BN6zY", "TwpI6p3N0fBIfmlY"], "ilheowkY6aNcaH6a": ["Jrhqq1KLwBRE5h20", "aszQZgv78NCSskDa", "RrrdH1ebJ7VT5y8X"], "2d9TpR1gX3BwSV4f": ["xfjNpTGyAzTATdGN", "15anDRMQ9m482tAZ", "uXDDVWbLlrQVdpg7"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'kS7o64BmSTp9rbCL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bJwWAIGLtrq7tIxl' \
    --body '{"requiredExp": 76, "rewards": {"Hj4CNQEaTdwAQvNn": ["NKoUr0wAkVn8nAnN", "HtJhxxw9zbrwJpdv", "E4Y2C9Us2nfmYRhV"], "UpuE3fUlsJZK2w8G": ["DE2KkckvDZopZVFs", "nxEjRmkkadgaqUYO", "OAySuOylLsWDOISl"], "rAoG55bAZpjOTi0q": ["SncdBT7DjZYSjSzl", "TEUenE2yMLEiYLa6", "7RKifcSIuCwpGQjC"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'PMdRB4ZH7b67YSMq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'f9KzECXORwGnSOyp' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'y4ZFdZm9VAj1ld4f' \
    --namespace $AB_NAMESPACE \
    --seasonId 'frXk01hz4W8lhRWq' \
    --body '{"newIndex": 15}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2PiUSamv46YQAdt5' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'qynr7sHsKOwpie34' \
    --limit '73' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'Mjc5ARsRX5DCSQ0K' \
    --body '{"exp": 20, "source": "SWEAT", "tags": ["feQV3Uhf1kdTl559", "08HLZANxMRvf2bM0", "gaoA8R6Al0gdW6Qk"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'YNVA0x8MNntgZ6c8' \
    --body '{"passCode": "LnGxya7g7kPZiy6d", "passItemId": "5b8kTTRXGH3QUOWJ"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'x6jTmXMw5qLKIfp5' \
    --passCodes '["Nkh0sQU7yInTyphY", "EUYXHEoRzWHSe2N8", "JvAqfUs0RNH00NsA"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'PNgtlBWiW6gc2JOR' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ZljEPcSaunygty4n' \
    --body '{"passItemId": "Ep7xh0rtEIL1AWVD", "tierItemCount": 71, "tierItemId": "UwTLRxNRYXPq8jog"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'XMc8btg93zn1FZgL' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'K0NRzs0NN70Bih4b' \
    --body '{"count": 5, "source": "SWEAT", "tags": ["R66vyajRY7LoLieQ", "hFZuh5uzJlSfFGZj", "mBjzxVIP0pZlfhfA"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'LSruUqnk0YzbbqJC' \
    --from 'X2YAqTYTZKJzZfgP' \
    --limit '45' \
    --offset '45' \
    --seasonId 'gagpBGEyiAw8NJcH' \
    --source 'PAID_FOR' \
    --tags '["UKr7SRqDVUC4onPI", "4UYnwhROl5XfO2ki", "iD8V4tv0zhHBm8Ba"]' \
    --to 'uxYcKlf0SMsiowiT' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'kT9BPYl8Umg8cGjY' \
    --seasonId '8SkMK2FzWJtqh0Gr' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NTdU2LbTUTcCFKvh' \
    --userId 'WCZPWKAaRGqzPXGL' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'acWMVr7qxISPnt1L' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'W3MCngOs7whIMZOB' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'okcbLrixcNqsnBEp' \
    --body '{"passCode": "R37g671iJUTlaBYw", "rewardCode": "NnNjIcg9KoQuEx3Q", "tierIndex": 66}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'd5XFtuCRroBef2P1' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mPYpRTouEa1eeq3L' \
    --userId 'XQLIRW8zRHJdljNK' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE