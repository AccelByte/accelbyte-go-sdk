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
    --limit '57' \
    --offset '15' \
    --status '["PUBLISHED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "6WQtAPlU3Vu8WNyM", "defaultRequiredExp": 46, "draftStoreId": "xgp6SWoOuJH1JmBc", "end": "1983-05-18T00:00:00Z", "excessStrategy": {"currency": "NWdt9STb49jPafjg", "method": "NONE", "percentPerExp": 33}, "images": [{"as": "ufHqHY1ZzNlXzRYe", "caption": "ApQKNRyoKJz0CmYW", "height": 42, "imageUrl": "3lehHSNVJYwEvPAS", "smallImageUrl": "qL1Nn9nKBFUP4KgF", "width": 74}, {"as": "lUsEgCPZUn7O9n9C", "caption": "8tTBtsDSN5MEm2nL", "height": 15, "imageUrl": "nDKeNWpwz23fuN1O", "smallImageUrl": "jopZeJzg5amPFzCw", "width": 50}, {"as": "TznlrPg3pqS0OpvI", "caption": "4MvJ9QOeW1f0Kofh", "height": 18, "imageUrl": "tLybLGuRe1W1X7nJ", "smallImageUrl": "Wy2MJyErB35WoCvd", "width": 44}], "localizations": {"vIacTpB4gyFbEgmK": {"description": "geWNKnEsFQqLvB4V", "title": "4lbk1Gu5yAceGHy8"}, "5Y6etNbIHxBtK0qG": {"description": "djYd4MgBzL3nDx1p", "title": "PwnVLUzjAB6YcBAG"}, "qRn1P3FXN16V4VWy": {"description": "4WtyDD5gSlcaRE5A", "title": "paTQkXPYh94RZWyO"}}, "name": "FO9bxb1xGpRZGL3z", "start": "1974-05-26T00:00:00Z", "tierItemId": "HPODe7aPkghhiO3u"}' \
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
    --body '{"userIds": ["zJasP6lblIiy990L", "LjIqoGd0gxXu4hIq", "6v5vhAHjDbcTRK3W"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iDdGt3snvIFJL1vb' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZAPbVgcFxD0ZgZFU' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7j69nuGM1HMqoFif' \
    --body '{"autoClaim": true, "defaultLanguage": "T47VPhik6fQjA18a", "defaultRequiredExp": 93, "draftStoreId": "KAxzkYAAy6LguJTi", "end": "1990-11-09T00:00:00Z", "excessStrategy": {"currency": "5leF1aWPEjX8KJ1R", "method": "CURRENCY", "percentPerExp": 11}, "images": [{"as": "EE2tkwlb2rPeuZA5", "caption": "F7AjHqLju7ry5h9o", "height": 22, "imageUrl": "TA4K0I1j8d6Tg6w3", "smallImageUrl": "aLq16ujCA6EmH0Ue", "width": 84}, {"as": "4ndQciXMeOXHTrCN", "caption": "cYURlsclvLBphsiX", "height": 61, "imageUrl": "rqaaTDKjXkBS4lBF", "smallImageUrl": "CrRTq2yoxGv6kPTk", "width": 89}, {"as": "4pgcbqRZ62M7gJiQ", "caption": "iEbcIIQXO6H8Tddd", "height": 77, "imageUrl": "Afr7mwvdiD3Mn9Ci", "smallImageUrl": "lLvpoycqCE1qECtN", "width": 30}], "localizations": {"uWyK8VibioF6Y3ep": {"description": "ZkOpmRG3tgUfYuHJ", "title": "7toSxXbB5HrvNG4z"}, "YTHuEBLEru2OmyAl": {"description": "8y1XgJcp1lAa1Udv", "title": "GxAHzeij4jYmMnWG"}, "grKh1Z7aSKfZlxSi": {"description": "LzsnI2cfeThW4E7R", "title": "E6Qx8am9X388Hqb0"}}, "name": "eCMHP9CRQ1Jpmf7R", "start": "1971-06-22T00:00:00Z", "tierItemId": "fVLrUohLYXJStKCV"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OwTYK0aEal868zBp' \
    --body '{"end": "1993-01-04T00:00:00Z", "name": "OalSTURvCAlw2YMj", "start": "1989-06-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'J7jbcj2xbgC6B236' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q5hpiNrn6Cxe86BE' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'x0WSe0CUwUopqq7t' \
    --body '{"autoEnroll": false, "code": "UrsPTmAarsHJiWg3", "displayOrder": 3, "images": [{"as": "ttx878NG7vh2SLyB", "caption": "DijPXqYjjLqR3sCS", "height": 97, "imageUrl": "jn6ZhvH79Br4W4jc", "smallImageUrl": "WYyUNMLGvBgN9qQH", "width": 27}, {"as": "zua1DIM8ZLDAviIn", "caption": "z2s3TljkWJMNgSBi", "height": 27, "imageUrl": "kraXSMtJIVwO6ftc", "smallImageUrl": "OijDFqgLiSKU4j4V", "width": 18}, {"as": "cqBPezxOFB7EWDPo", "caption": "OxHhhPnv8oNwpJ5d", "height": 34, "imageUrl": "ABXqyOT2bnvOwf73", "smallImageUrl": "HsXDEk7pw045eMWH", "width": 100}], "localizations": {"PLKWJpgYYlj3u6hN": {"description": "sCyq8QIhAXRvnT4o", "title": "1BuCreKc688rptbt"}, "Sxc1HX2tVZP3tlhB": {"description": "AKntx6qcSq0GFgC1", "title": "sVHsPsPf8R3dsf39"}, "Q2sK5q2TutkEaZJD": {"description": "RbslMuRYhS53qCAO", "title": "bptOMgdMOdOsdFcE"}}, "passItemId": "vhXtDD1adK1T8514"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'QTyAFGADIl0PgZTp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'royJUVNbzvVvlQzf' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'gNdG6wAdz6NiG9Wb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ht7KX6C6QI9onoIw' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'keEVfDBOdCbcus5k' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FrbZC4nFu5hMCKFd' \
    --body '{"autoEnroll": true, "displayOrder": 84, "images": [{"as": "tbNAyoPVBtlwJPt4", "caption": "2rAbCxMTaWvY658l", "height": 66, "imageUrl": "HG3UYiTWgHamEpQT", "smallImageUrl": "RZB7TFhXFqZn2Mtd", "width": 16}, {"as": "CUVb4CtxzIezKBmB", "caption": "o9mUG36gth0atSRf", "height": 67, "imageUrl": "kyA8ge1wY7boCgF4", "smallImageUrl": "DtsC4xkKXPzqQB1O", "width": 3}, {"as": "GBSjSr13yLDJXjTW", "caption": "LJCITts0FGqcErj5", "height": 59, "imageUrl": "hsnC8eS58gwRsNvR", "smallImageUrl": "0urRVy0vtSxxOSty", "width": 71}], "localizations": {"Jvmy0JLWz4zLvvfl": {"description": "7VnBXBsFRWdh5N1w", "title": "jq4AxQIK1pA7GXDc"}, "Zo50BT7G4K9zZyEF": {"description": "chlG1y3LWIn044L2", "title": "eNZ4Z2rxH03Arpc5"}, "8S5MuvWQKLssZlq4": {"description": "xdaXUVD0sE7cJuL5", "title": "YLmb04z02Mk4XtXZ"}}, "passItemId": "03qCOqmYIar4CC3W"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZW2bkzFGp1azr8sL' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'r9pCu3nwU8p4Bduv' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '9JeDuP0tlx9SA6B1' \
    --q '51OUShY0Va5lWOur' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'gpUilk5qQkKWIaui' \
    --body '{"code": "4voTo1U2z1AYt1P5", "currency": {"currencyCode": "KOXTwfW4ZfR7VKCt", "namespace": "u2SJVFQwl2PDqj2n"}, "image": {"as": "B4ajR7ky4xtgQE4Z", "caption": "WByOKIWlIAWCIdk5", "height": 41, "imageUrl": "3eS2pKMh5Azha6ax", "smallImageUrl": "LfRZPtkB30TgrwHa", "width": 46}, "itemId": "RiXBXGGccUuw54dj", "quantity": 19, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '8DVpoDpdA4vM5K0Z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'aP7ygUub40tFvopy' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'jL00W5u1xu23JX9W' \
    --namespace $AB_NAMESPACE \
    --seasonId 'j8BS41Cc8wJtA4td' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '9otJjGpwPQ9kg5IA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VuAbyu2o0rqphcZs' \
    --body '{"currency": {"currencyCode": "FktxkItXVhx8TaMI", "namespace": "IyWhBl81muk7taA9"}, "image": {"as": "x22SWrWq1ireevSO", "caption": "SfRtuI1toaC2JHoV", "height": 59, "imageUrl": "9dzLU6XDQm4UVQm5", "smallImageUrl": "LplB6BHMnEABpBLr", "width": 89}, "itemId": "RIwPEQX2LvJ5ZpGB", "nullFields": ["q552evBZ7Dn0dZNK", "fvFlrqFtXNi0xjVD", "tvVHSBSYImWXWjNL"], "quantity": 4, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'Bo1PIyEJeOLYcTez' \
    --limit '91' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '4gKN8uc6od8cUQmt' \
    --body '{"index": 86, "quantity": 87, "tier": {"requiredExp": 18, "rewards": {"ICFe1BgQKV1HJH6P": ["lJ3AJPQrLu6l2dDj", "VntstnKKMLWuOnX3", "eki4t82Hc7w6GYY1"], "j3XSYZzOBrmTkO2S": ["kw1cLUlveceZpNFQ", "PD27igOljqeUwZbb", "PA4L3JHq6f7nUXym"], "kBvdUhPLEwEtz0cL": ["U6mDfpRXBvDMmC4g", "m4IsmXmQpceKQKYp", "qcbIZpfkCLKrhO0P"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'NmPRPNzONrAO3tP6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gEdoYTAGZdA3zrOU' \
    --body '{"requiredExp": 80, "rewards": {"8AAKu0VWin904nFu": ["SounWqWbF2HRIxay", "3I7O5X6eWEPiuh6x", "TORTFvrtx9u7okkP"], "EpawoB5FacNZGIzV": ["H8uVR78EITgyRJQe", "geFl4RyqxP1No7ZC", "FU32OVhIqzDkKQGN"], "a8N3Z26qrgU7VVz0": ["TXEpORyZqqfrm7DJ", "7Kyzdws8wmOBpwSO", "0ZdD3bkVaVVT5W6F"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'UHvjMfFRWEmg8LFU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kuGlYvNdNVcySwVI' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '46Mk806QkOvbLgVj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bjAcreKCwZSrzury' \
    --body '{"newIndex": 33}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OutrM689Qj8c1TJN' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'mYHQAJHLqpCRYJCj' \
    --limit '46' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'y1gQrmwDOd3ikpaJ' \
    --body '{"exp": 22, "source": "SWEAT", "tags": ["KVhv0FtMHpj7UpkU", "du6PunibPv4kLm8I", "ndQwUv5itCP5k3aT"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '6cTGWWE6hTJKY085' \
    --body '{"passCode": "DZDJup9imAJGfZkq", "passItemId": "tZ8R8FvPcKPIaA17"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'NFZUE4Z3w5BVQ6gs' \
    --passCodes '["Nnd5l0UVdu5vqT3i", "4xmvAIOgkAQy5GUW", "8wwf3O82JoK7tH1u"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'wAHda9DCsLOCknk7' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Wvyx7LPDCZtcYwOx' \
    --body '{"passItemId": "tvG2usUjHMmp7lBp", "tierItemCount": 41, "tierItemId": "nWer2zXNPRmOKm4M"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '8YDLUDCu9LpK0cnl' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '8uq2HGcBAfPMNRHc' \
    --body '{"count": 80, "source": "SWEAT", "tags": ["kYwCj8dBsedWWatF", "ffG7TDf8MziF0KMt", "4WINwVkbZJYKiKxp"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'fVmCmQahadNaDIru' \
    --from 'aNcKjaHtcWD3eDuJ' \
    --limit '62' \
    --offset '40' \
    --seasonId 'qqWS3wqX8h0CNvDF' \
    --source 'SWEAT' \
    --tags '["9FQxX0ikdR7TYrKR", "1rNl4KzPVAKLrYk8", "KnjIYL6M2dPDMw7x"]' \
    --to 'vahFlsIGYDjsezcy' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'FB49Qax12GYKin3B' \
    --seasonId 'Uy4v9h6OygaTlAOD' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3Kc6T5hnxnxISDRd' \
    --userId 'lLwRTZJsoNWKhgAO' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'qXpjKRqi7LiODkWX' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'oGT8ZxizcIMfrReN' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'KwLsSMDawkCZMdL4' \
    --body '{"passCode": "vL93w0ixE4S1cLnB", "rewardCode": "YWrmVaP1ufGXiKEb", "tierIndex": 17}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'EEM0OflZkzQoPTHY' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8t1vbu824ED8fUZC' \
    --userId 'NDe8tFPayXfpcoNY' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE