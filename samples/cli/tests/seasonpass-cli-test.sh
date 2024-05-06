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
    --limit '66' \
    --offset '33' \
    --status '["DRAFT", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "w4IreWJyHejf3qEY", "defaultRequiredExp": 83, "draftStoreId": "hCSiutBc2EcKs40U", "end": "1975-09-18T00:00:00Z", "excessStrategy": {"currency": "7jtaZCIpQ8kAgxH5", "method": "CURRENCY", "percentPerExp": 53}, "images": [{"as": "tajqua2bLnbhLMCc", "caption": "uiAljj75fuwmoZF4", "height": 7, "imageUrl": "YpAAv1CeAy4gxgfx", "smallImageUrl": "DQg4WoAwrgCRVV0z", "width": 52}, {"as": "03nnEY31rV74pdlc", "caption": "dYyAiigZpjiSR5hv", "height": 22, "imageUrl": "1Sqlh1F2lBBaTJ3m", "smallImageUrl": "odk3JReJFou8xTrd", "width": 17}, {"as": "HB7jhbokv6vLdbYf", "caption": "lDIAggIdZJ1TF5F1", "height": 45, "imageUrl": "oGyffFPt9TisGb0W", "smallImageUrl": "pUfhVMbp4r0BkCtf", "width": 42}], "localizations": {"vL1j7JlUFRqRbGjk": {"description": "Z5zvq1YpSD6q9Rjn", "title": "E5cZKFAssywwN41Z"}, "xMt3QtF5CcEPpuNV": {"description": "iIgkTJHoDkfNyt8C", "title": "IjEYwFOt5q1k8uSS"}, "QMkXO6ZD4E2r9Sw3": {"description": "ZiZhZhsMmzt5rOV8", "title": "SHc6JKFGT3DfIcVT"}}, "name": "QGJ3lwQy8fX5CWjp", "start": "1986-07-20T00:00:00Z", "tierItemId": "wS5KJ8lmQz1q6ANP"}' \
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
    --body '{"userIds": ["P2JU5RPbmeY9RzeK", "zRpQJntHNZwKJpbK", "8xe8tJAMhIeELWLe"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GwiGwiF0sVP0VlVH' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'R0cGyac2j1qu4MeG' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7vO2lIBVmNBxbBKq' \
    --body '{"autoClaim": false, "defaultLanguage": "X89ZVOKCpFQKhwf0", "defaultRequiredExp": 3, "draftStoreId": "gSvWU3Eu1vAqx4Rc", "end": "1985-09-30T00:00:00Z", "excessStrategy": {"currency": "q2lgSBu40G9CYwKP", "method": "NONE", "percentPerExp": 23}, "images": [{"as": "E7I4tSIYy5KfLPO3", "caption": "ATBgCID79UM77NiF", "height": 80, "imageUrl": "we3e3FO14OU0yXzn", "smallImageUrl": "Bo1vdPWAPUuWlikG", "width": 31}, {"as": "FcaS2ABh9lGqtGso", "caption": "68LpLzWuvfdjzsPX", "height": 39, "imageUrl": "IKV4jES3UPf8meW1", "smallImageUrl": "zQYJkWGkqk65FLnc", "width": 0}, {"as": "xPeeYG4EuopCtYD9", "caption": "xZOsUzi9ly3ArwvE", "height": 13, "imageUrl": "XrsIQQDr4RnVBbGG", "smallImageUrl": "pVhruWQ4ZohS7YPp", "width": 80}], "localizations": {"b0jvzalGn2Mb0F5g": {"description": "Dg38bfX60o6jAtmu", "title": "hVMQue9SOYK6UfLI"}, "brVg97aP1kN6VK16": {"description": "tFgus1LNrAYuzLRY", "title": "HlpWnDnCaKKRnWl3"}, "k8QZokVkX1L4D8Up": {"description": "Q4foLgJMF4n1sdS2", "title": "TnfEbNRC4hoR5MM3"}}, "name": "Huml00IyICF2iHxD", "start": "1971-05-24T00:00:00Z", "tierItemId": "YG2kPy3yRcYAebOn"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8xWnLvjHbOR9Ma5z' \
    --body '{"end": "1975-09-13T00:00:00Z", "name": "wQkDURF0aBx63zAl", "start": "1986-10-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pDwW9EC2Zc7NgzpA' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'OHPQj9YuCwQ05vw3' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'IXg8a35PEXHguQD7' \
    --body '{"autoEnroll": true, "code": "uHL4XCZCJF0lWNEM", "displayOrder": 33, "images": [{"as": "jKpTtxp5So9KfW2T", "caption": "NYEifiUGAceVJbkD", "height": 75, "imageUrl": "ZxMddoKoP31D6Piq", "smallImageUrl": "lwPflUYnHiCd0wpa", "width": 82}, {"as": "gve4ynTNQ2TvjUZw", "caption": "ghgDqXugRgKcwZuO", "height": 81, "imageUrl": "M3R0BaRGy9GNkBfj", "smallImageUrl": "qwtivd2SRxBjvUA4", "width": 90}, {"as": "BojrnpgQ7KYUQKqj", "caption": "Rei0OArHTg4K4v7T", "height": 44, "imageUrl": "AUMF4e1zFdSjbCt8", "smallImageUrl": "V2cPozZMMESDootL", "width": 8}], "localizations": {"dYuozBCgOKwkoErE": {"description": "oVLRijZAkOiSv29z", "title": "aO1OJl6QIvSQJK9S"}, "Fn6h0vWtdtoBtgGQ": {"description": "gYwR8mzpbOpsT0Nl", "title": "Z4zY35f11uUWoX7H"}, "NxX0Z8X7ZN4e2OKG": {"description": "V5cqmy7Xr62MaGCY", "title": "DbbpVMyccz93XhDN"}}, "passItemId": "YhZ2piclwMUbgSdt"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'mFfwcDRKefvWJnBN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rj0ib0XjIxXtemnE' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ZGG5oiJhd3YTNhFU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'r9fbYqDHSfSZd5p5' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'JE6jrpxOIVscSNPl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aX7K5MOAOc1gtJjh' \
    --body '{"autoEnroll": true, "displayOrder": 69, "images": [{"as": "9WdqrSfgWlPQY3pC", "caption": "vI4FvNhczDaWsuWi", "height": 89, "imageUrl": "HJIsIJslcvWuHcHY", "smallImageUrl": "V5Zi4p5OK7kbEdrB", "width": 89}, {"as": "BNVymkGqhop1iimI", "caption": "OTz0GbBNYIe7hJVh", "height": 68, "imageUrl": "GnnwvQ2qZXnRIcwT", "smallImageUrl": "Jv7WtrbBHPyZ87MY", "width": 88}, {"as": "TZzurALhDOIxIGxw", "caption": "J7CwYHK3iJPtxaoh", "height": 13, "imageUrl": "5BGxbtDnTF0a4Vig", "smallImageUrl": "ozkLdC3Ah61l653I", "width": 84}], "localizations": {"fdydY3xVmG2SktHI": {"description": "JpQ9PzKzTQfzJ6pm", "title": "GOTU02Cw728M2GRt"}, "TuVOwjFOtImfstPE": {"description": "lNtfbHeTMHxUIsfU", "title": "YRXfJjKbhH575kic"}, "W3m7rPvwP8AsXwCU": {"description": "CYNd1uEr9a1po73Z", "title": "49C2QcSHdkowpeUT"}}, "passItemId": "iPMEvCSttSK46Q2N"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AQC9ZTqyRyc2bja9' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9PZt9hSoJqq4xfue' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'kRswIFtbWf7LvMRo' \
    --q 'HQNePViwyqcKF7dz' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 's9U1Z0YwupIUSwsk' \
    --body '{"code": "wwnma3Eu4xBhM7bq", "currency": {"currencyCode": "C9Qk5O5rBzxV6B9v", "namespace": "wzfUJ8MeAG2Pshf0"}, "image": {"as": "Wgd0oqyRJKQgWQQ7", "caption": "7ImDZ7uabTzbh4k9", "height": 20, "imageUrl": "GqgACP5ucJMwRuNX", "smallImageUrl": "LY6DhQgvgCcBdDTO", "width": 74}, "itemId": "lzEx4EaOACxC4ek8", "quantity": 60, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '8CViqpAVineRAS2c' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YQzDiPPypRwctV0t' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'Z1wZR96I0kGJX8f6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gXrMhOe1Sl3cANlP' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Y64Cee0rPNkJg98Y' \
    --namespace $AB_NAMESPACE \
    --seasonId 'W5k6bMKmkVGrIDX7' \
    --body '{"currency": {"currencyCode": "QN7pLQeFtBa7RapP", "namespace": "O1z6BEljRcPIWs0n"}, "image": {"as": "RdDoo90KK7NajTJb", "caption": "G2VGB0tEc94f5lIQ", "height": 34, "imageUrl": "TV3TE4zCX8zpOYGu", "smallImageUrl": "R888iO6ZDlrzYCHS", "width": 26}, "itemId": "y7K8Ka0zQdyCVBHw", "nullFields": ["x6g7H8qjZUjGhcvS", "fLnP6s0OsbRNkNqq", "enY9WBWP4tDGe68C"], "quantity": 6, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'xKLl6dSLjaWv6v1e' \
    --limit '66' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'FvGZJQxKNqhmi0Ge' \
    --body '{"index": 57, "quantity": 14, "tier": {"requiredExp": 10, "rewards": {"TecBAz6PJB0tnX30": ["V72BOMoNItnIQgfm", "Vw4Pp45sIyxWCMnc", "OmOpN3ZwllHOPUNE"], "fH2Ot8FLFhkW2pkO": ["4U0bRoSTnj233nAB", "qIKddfcqhEBIZpVm", "DSQXvaTfXMjdAT9n"], "sZD4g8UAUl54cnnC": ["NvHsj9lgDJ0sNAMU", "ZVw4DSdKqQf7P6Vf", "uARoWLvrolzcjrsw"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'mIAjqxpDAHKiHMvC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ApIPe7YRk2xa7sMR' \
    --body '{"requiredExp": 26, "rewards": {"R7pYdVUbDzsuhzgH": ["8O1P6h81ZQsiYF0M", "oKCFNfaLc07PukJN", "oXhMIqeJiFAxG7MC"], "CtkkSvtLzgSQGlML": ["JYLrFvJxUiDJQ2HX", "JwdOpwd4srZdUSsh", "4MEi8xLQ7jGGfw6P"], "I1h7ZIGjhLfDXq5L": ["nXpxwQYQswjiQEJ0", "mbE4hNsEG3imVmYC", "pZEQzOn7Yu7eoYt7"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'Lcnlt35ShwL3uYX5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JvC8w3uuN7Vecaj5' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'w6KUZCaMUCfnP0TQ' \
    --namespace $AB_NAMESPACE \
    --seasonId '0STbks5V3PHP1jGy' \
    --body '{"newIndex": 85}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BgAlJXBJGLIsplRm' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'z6orn6qj8FH7J1CU' \
    --limit '73' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'TzpsUVk5AtOQOnZj' \
    --body '{"exp": 73, "source": "SWEAT", "tags": ["zAfhNwTsfVx4b7RP", "TjOqd4lT032Jn7Ql", "nVMSgJ9U1r3nfgLN"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'AXC1wR7BvDl49vie' \
    --body '{"passCode": "eFcP9h8c81PamfU4", "passItemId": "BPO9AYimgOSiCDAQ"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'MAaJq3vtuC9c9aT8' \
    --passCodes '["wkIukJQsHWMfixZK", "5mx61o9ioKT8XD9q", "OzHd4W0PpohJWL62"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '0mD5E9DzevMzZe1x' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'DI08YJbg5U8RwvSh' \
    --body '{"passItemId": "xFEPKiXSTwYv46vV", "tierItemCount": 7, "tierItemId": "kyK16HKTEKAoJxOm"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'csxauFxeukAhYrcN' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'LrQk9eURWNI8RaPa' \
    --body '{"count": 6, "source": "SWEAT", "tags": ["noLD6n5udw1zgmXv", "NFVvZNrY65clxEGS", "sWi9d1SPpgyVlVDr"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'N2qJGsEDBuZ3slOO' \
    --from 's2gNbSLlKjEQNO6X' \
    --limit '4' \
    --offset '16' \
    --seasonId 'fvfqBFejIs9xqPnF' \
    --source 'SWEAT' \
    --tags '["mfvKSh0dJmshOWeb", "4WnNIGZMldvTI3Ay", "BcfgJAuKrpHltLQS"]' \
    --to 'NWddaSbcnRrvI9dy' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'EK1lb0SQghp1NT8H' \
    --seasonId 'bizlx8v5AAyk0Rnf' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lAACvZu3WVto4zhA' \
    --userId '87DKSNoCU1LxbRBJ' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'WvKUixyAtp7MtLqb' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'NlVtkw12IDCNAeFz' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'SdMPzuduNUoUKYJQ' \
    --body '{"passCode": "7AYCAgtzIJC5g4kq", "rewardCode": "L0T708rzuVX8ddhM", "tierIndex": 26}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LrNCvNn17HpTonWn' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QSHDQjosr4YiblML' \
    --userId 'iktaSNsV2qsyuvET' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE