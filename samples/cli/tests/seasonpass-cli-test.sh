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
    --limit '77' \
    --offset '55' \
    --status '["RETIRED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "ScjHFNjsY7cNDJ2Z", "defaultRequiredExp": 77, "draftStoreId": "GwN6PXgwGyKjBACu", "end": "1990-03-15T00:00:00Z", "excessStrategy": {"currency": "RezPNoKz6xBoCm65", "method": "CURRENCY", "percentPerExp": 51}, "images": [{"as": "lexLKik1p1VUF0VR", "caption": "K3Ss0VuBwRdLuldc", "height": 25, "imageUrl": "gTIjf9QEUWcZifiY", "smallImageUrl": "qoia4ykS8t6bobQO", "width": 53}, {"as": "NlGtC0A98uwTKJpE", "caption": "ey6RI8F8DyZHBbej", "height": 41, "imageUrl": "bFm6fQt5BtJcGfoy", "smallImageUrl": "AAyIhea2ShbrdaXf", "width": 70}, {"as": "ZnfT4Y7Lia5KXmW6", "caption": "m0bvxhziZ3jYclRE", "height": 24, "imageUrl": "IQg08DbQvM0PV7Db", "smallImageUrl": "E6ZgE3ttTbnlnRzR", "width": 89}], "localizations": {"st7cThawSaPx511i": {"description": "oXI8ltPN7mJ6Xdbc", "title": "pRmjbcuiVkpylUTj"}, "lLc9TR2Gt1lqcuYw": {"description": "nkOIYVqpiJKtdOIt", "title": "PJqtE0bORuEP0yp7"}, "2emAie3kNWyFzgD5": {"description": "mgb29sVkpdGVMVBF", "title": "RI6hSkuO7B5rH3tk"}}, "name": "bA1ANj90kfGDVq4N", "start": "1990-02-08T00:00:00Z", "tierItemId": "PBXpp4WLIQEgyn5q"}' \
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
    --body '{"userIds": ["Beomig7hCzdueBsA", "D87EN6kUrqgid22Q", "D9tPxUwz3j8pber3"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nxlielXJapqqV3Ez' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4CJjy8F2L7Gh77Oo' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FG3xzvfSVRuFdCKh' \
    --body '{"autoClaim": false, "defaultLanguage": "6ObY27N0MFqmPc3d", "defaultRequiredExp": 84, "draftStoreId": "McfY4MP5ZDN8sF8B", "end": "1985-08-30T00:00:00Z", "excessStrategy": {"currency": "58pRDM0UN7gBb0Sq", "method": "CURRENCY", "percentPerExp": 89}, "images": [{"as": "gHKHbXdUZf8cGDIt", "caption": "BxRANqJ9Nh9ntwcm", "height": 44, "imageUrl": "07BY6qI1MM5DW9px", "smallImageUrl": "PGn4hY24uO93VToc", "width": 35}, {"as": "43iavxlJ0kYxP1Xf", "caption": "gghYsugcEVDpKRIR", "height": 43, "imageUrl": "UySF9zfWrlOWsPVN", "smallImageUrl": "MmtdBOXKhVBJ9m0k", "width": 35}, {"as": "ft1pCLVhWjNEstqw", "caption": "9OiyPzxyxyzP4we9", "height": 43, "imageUrl": "j8R0foBBCK39SUfG", "smallImageUrl": "ibBFq7luOdFqLjEZ", "width": 23}], "localizations": {"VoML0WXrvoo8Te5G": {"description": "MKckoCeYa5Yit8Fp", "title": "BCUBGYQgx9fDYhX1"}, "SDrqAJtBvPaJyG6c": {"description": "Uf0bPApKcOHcdkl2", "title": "klDwSWZXZ90MGKZR"}, "DvPRmEeqD3k0FBCU": {"description": "7oJOWGsdOJI7enRn", "title": "Uoycd3fALaigiSsi"}}, "name": "gX75htBH7TxPjmYq", "start": "1974-11-13T00:00:00Z", "tierItemId": "jx1mVcykEd9l4KH1"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xCoNmSMBp4FxoVSo' \
    --body '{"end": "1973-12-28T00:00:00Z", "name": "T5mwOjxsDMBNOd9s", "start": "1999-06-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'R850xzI3jDAnPDYG' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'ewaDwucersPwKWuk' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '3k0B7TXqljkZqsUn' \
    --body '{"autoEnroll": false, "code": "oVQKI8WxyahrvOL0", "displayOrder": 61, "images": [{"as": "NW4RbkJKEC0DIgxe", "caption": "p0xNzkO6codGOCJq", "height": 48, "imageUrl": "Kuzi1jTwivmrPGFD", "smallImageUrl": "6cgeAK52FNdh9X2v", "width": 58}, {"as": "52gUg56cmPaYEYZo", "caption": "tSqtBewIX5NZFMeo", "height": 76, "imageUrl": "opWCYCFRccxHD5v2", "smallImageUrl": "Z2nFQdPmkFAbni6Q", "width": 27}, {"as": "8Mvd2udlS2FpPDoL", "caption": "ONvwESuGu0txeR5c", "height": 99, "imageUrl": "znmPKei1WLpb1NDM", "smallImageUrl": "GnkAY0oLvvy8biMb", "width": 9}], "localizations": {"WtZ116j4DpgPD4tN": {"description": "NhCgluaxM7gpN51X", "title": "br5Z3vGLDhXkeit4"}, "3pyT6rTst4bU9zSQ": {"description": "e05aUt3nTfEc33kD", "title": "jnuOQBk737RdKFDa"}, "hmxopT3zlWwnTS0a": {"description": "BAr0ArxJ1dOMY0mS", "title": "9IYTOjQunSFA1FgK"}}, "passItemId": "Tx0DJViROgO1pv3X"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'Bh7AaYfdayDGcFfk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hxra2I0ykHpEIuem' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '8oMIm8zOJveKdMEX' \
    --namespace $AB_NAMESPACE \
    --seasonId '9exdJ07BhBXsc2aF' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'qT2eew2EHtPta6lO' \
    --namespace $AB_NAMESPACE \
    --seasonId '80DZhPFDOSO3d6Cg' \
    --body '{"autoEnroll": true, "displayOrder": 39, "images": [{"as": "j6ZsfRFqjLrCdIBH", "caption": "56L4vZz20dRZ7X8h", "height": 74, "imageUrl": "PWOK7FpfhnVoRzQY", "smallImageUrl": "UfSceB0TM4KmtQlA", "width": 64}, {"as": "VihW8ypKo9Zb8xzu", "caption": "KZQEOajJO204t7HU", "height": 61, "imageUrl": "QUeiHMo0MfzNFVMI", "smallImageUrl": "JycTDnF2fUqf1zS3", "width": 7}, {"as": "4wcLisXi80t8sOuN", "caption": "adnFRTxpcqqDQBHH", "height": 53, "imageUrl": "I809jAgTA7kTlg6O", "smallImageUrl": "I3E7cJtvnLU2x7no", "width": 1}], "localizations": {"SsfjknVArc59X1gD": {"description": "cxZyNPxxbtPw5ijK", "title": "O9K4jVUuwUkOEgIi"}, "m7rrjNaRS1snjD9U": {"description": "Q1PjPkiyTrVJWdA7", "title": "8o5saOknwshllkFy"}, "d5hrWnfHI6jmFMRl": {"description": "CJZtvG2aXTsrx0bv", "title": "VDra7S13CIu92lbW"}}, "passItemId": "y33o7SUCPSRGl28U"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nubXI5KOll56KZit' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qx8fxQZlnCxbhhUi' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'iyMc4gbDVjTNNDl3' \
    --q '4JPbw4T8TmCDnUfq' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'k7CbZj6AUkyVUskk' \
    --body '{"code": "GNrpoqcKxwASCeRE", "currency": {"currencyCode": "ao60EUUUPTuFWvv7", "namespace": "j5g1MuDGwkyMK6it"}, "image": {"as": "FsW8XTUUoA6L0X63", "caption": "SsccVAQqU7IPLpiC", "height": 100, "imageUrl": "jdMVXlTlGNvCwl3y", "smallImageUrl": "iQe90Jbmoc994s2q", "width": 43}, "itemId": "B4NNheemYrvSJyYY", "quantity": 48, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'jKTNG2SekQbDVkvY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'p7KOuu3p5iM9w8zY' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'E0MtUbAI69PDEAUo' \
    --namespace $AB_NAMESPACE \
    --seasonId '0Q4sXOOkNVuMSu5F' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'uXTBkfOl5vqk5UiE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LWo7jJLeBfv8RraB' \
    --body '{"currency": {"currencyCode": "KpCrkvx8jLQJOZzL", "namespace": "ghUwD6CsKPj0n39q"}, "image": {"as": "AIQBZtWX8QRwhdG6", "caption": "4WszSgncyVreJoFh", "height": 24, "imageUrl": "URhqCqBegPFadrfj", "smallImageUrl": "9cuATauq8n717CJf", "width": 5}, "itemId": "yOertxuaVUB0wQQA", "nullFields": ["WaQBTrpyUp4PfSmH", "aSHBm1RsavC8M2Cj", "Ha991bICgBJTrNJO"], "quantity": 34, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'dXgPZ2RI5cEcNKzy' \
    --limit '99' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'ESsspOXXxSo4Ns1e' \
    --body '{"index": 56, "quantity": 55, "tier": {"requiredExp": 28, "rewards": {"pNctr9xZynMW8HwI": ["IjTciyXvYCdvq0Fq", "QIxDXtupih13fV1E", "NGKYrEa84pTntwee"], "BWN4fJwvfpklzOG8": ["vZB9PaKbjgZFQJbK", "0p1e0yCfDLDV3X2s", "Yr73hmu5TsdJtIF7"], "7y9vDfkhaLlhVzg7": ["bcBZah8tJNZ8VNXL", "rv9Ulzsk15jqZB9X", "5jemh9uHaLL2dF3P"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'HhiYxEObGzLMGaul' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yZ7weSDfpnW1VUmi' \
    --body '{"requiredExp": 98, "rewards": {"q79FEObuHWdRdqJL": ["QACAguslrPWS7XQA", "wWJ7hGch6glezJMr", "Pu6usqquMgFBQy0M"], "gfesBLOeilZ4LqFd": ["E3I5ZFylLRdMSO2h", "Adrl6FdbfU4itnNs", "h5A9jrzTIrgbCyzI"], "GbVl5IagrKNUcE3f": ["IdQ3gWYLGKfQhoKJ", "cmHSSrCr7nvnqWdh", "RfoDHtoQFap79rfm"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'd8IWpfL55PYWNeYY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WhIim9p8eGQJOY6O' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'IbLeMvpDxka49ECV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MOzCis0jtQfrTS05' \
    --body '{"newIndex": 34}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5UoWIQa2S05fuaaG' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'iF3x6yYxhM3WqYyh' \
    --limit '59' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'uQiNMDmlP0IeKNc3' \
    --body '{"exp": 5, "source": "SWEAT", "tags": ["keNXyOw1Lh4qrd8I", "TseEY3bOuru0iHhN", "2QIQf5J6x4TWs64b"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'J6HRHNWupQBh3eMd' \
    --body '{"passCode": "hqFpTpfkNTV1bOin", "passItemId": "79SLOlGyEBnJtZhN"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'amp9hGyo5efdDzX8' \
    --passCodes '["hnLwPERtf3vjMoeC", "AstJsJup8KGTBNtG", "hO0NkkymEuNL9TEj"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'DoMPQU3sWHPCejqt' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'MlxnM3NjV71smyuR' \
    --body '{"passItemId": "bQo6q7DsuqUj7W7j", "tierItemCount": 90, "tierItemId": "XKBVUwkKJpZ1mQXf"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '0TV24JXUS6hqMwFQ' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'u0C5scFpwkxcExBy' \
    --body '{"count": 42, "source": "SWEAT", "tags": ["NfYyxf0ipEsO6vuf", "ZZ9JU45DijMMDgL7", "V1CarfKyCgYhwOe0"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'afU80pEfUGIn1Cw6' \
    --from 'Y4GjY1eVEEwMdsSi' \
    --limit '69' \
    --offset '4' \
    --seasonId '0WAp3W3AXXwvn1db' \
    --source 'PAID_FOR' \
    --tags '["yIPZkPefyQEB3Wgm", "MBTXMdJqwaBDoggq", "RdU5yxXuFbxy8aBw"]' \
    --to 'i9TeQUqSAEUiKeqX' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Kk7toCWKe7YJ4LiM' \
    --seasonId '1I1SJJsURrTtFWUD' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NUF7GCo8XQi22jvI' \
    --userId 'Zv1ICUGEEsydLQxq' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '1s8glL0zzCQnGX6H' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'SvT7cz61WH9OYMVW' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '2EeJKcdXK9RwWrdh' \
    --body '{"passCode": "F5s5zK9LM3k2imBu", "rewardCode": "3XHlSky8D5RidXuj", "tierIndex": 61}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'RodGPR1uhhe3oKnw' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'F4mFsxFLwRW87bO8' \
    --userId '6aWvJCsojGme2pwM' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE