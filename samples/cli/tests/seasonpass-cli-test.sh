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
    --limit '26' \
    --offset '91' \
    --status '["PUBLISHED", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "aEGlSgk1895Oz5qC", "defaultRequiredExp": 44, "draftStoreId": "JDiHykHMBZfHj6cu", "end": "1977-10-23T00:00:00Z", "excessStrategy": {"currency": "fWbjOLN4k81K9bLp", "method": "NONE", "percentPerExp": 17}, "images": [{"as": "aJzARX9AqbLgnKTM", "caption": "aSGrGmHSwPMjab7J", "height": 2, "imageUrl": "Tz7Sus9PMyC3WcKY", "smallImageUrl": "TmOL085fkdYn73xn", "width": 3}, {"as": "jBowriLtBd8SJxtf", "caption": "hnA2HZIdmKv7aY6u", "height": 73, "imageUrl": "PNXz06K8HWknr48x", "smallImageUrl": "BPCiLvPcdKkgGK46", "width": 75}, {"as": "IJYApyLZsAn1lJDR", "caption": "efapJ3EXqKvf85pm", "height": 26, "imageUrl": "jAL6UHsy6gaxErYB", "smallImageUrl": "1zTgnIWRK6mNcEMO", "width": 20}], "localizations": {"3uqyhFJnNt8C62bp": {"description": "VFz9CLNOzFIV7k0j", "title": "AyUrFEfVCADdIxGm"}, "UN3hEteYBRDM7yKX": {"description": "Ei20YUJJLIHQ1iAY", "title": "XCfz8pvvS5VVKwEF"}, "ib1lir5o0Niq82zy": {"description": "VUHJZbaaBLRIKePE", "title": "FiWDWsshNCr1xoQV"}}, "name": "FAJCjVHuv43pXcFj", "start": "1980-05-07T00:00:00Z", "tierItemId": "uucYS92ZOwrJHhf1"}' \
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
    --body '{"userIds": ["Sw5lGTJNXlIoVk2Q", "xCG42tPkknDttjmh", "xT6zdJiy5sGky8h2"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'XzMPyAd3G9VVMp2W' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XQDNqOWgshggFWc0' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MERGbKDN1SsmCAdD' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'K6LoxGqRmFvXuwue' \
    --body '{"autoClaim": false, "defaultLanguage": "3P1oANZlVjn4DItq", "defaultRequiredExp": 2, "draftStoreId": "HHQugbLJwdawQR03", "end": "1986-10-24T00:00:00Z", "excessStrategy": {"currency": "Mz0PVob9ceeeJ8nq", "method": "NONE", "percentPerExp": 70}, "images": [{"as": "9WbJjabclvmanoCb", "caption": "A3U1Ynlqjv592bJt", "height": 6, "imageUrl": "vLiByAYrr30Acgzy", "smallImageUrl": "L8pbCqDhaB8SOGNm", "width": 7}, {"as": "ZOY2ep6e7PgGkUgR", "caption": "8CK6PWFGOGEFcNHU", "height": 81, "imageUrl": "uKz4Wp8HQyrryc5f", "smallImageUrl": "hYskEd7TvB8siHjZ", "width": 99}, {"as": "g0EEhBTpL3HXFzci", "caption": "oBbAKbQwLdVqXoc1", "height": 9, "imageUrl": "ygIEwK8NrBzI7gF1", "smallImageUrl": "sXfSIyOrxCSWIoj9", "width": 61}], "localizations": {"41kdwXoVrUevn0ZN": {"description": "k9vbC7zFl9SNcUi4", "title": "M8EJCf0vF1j3YRro"}, "mNbTudwGb3rL8rtd": {"description": "s8kWVHFWi3yOgPQh", "title": "bXuWsD1zfTsArOrU"}, "n1NLy9pw2sJz8x3B": {"description": "jaC3K4uia8lq7WNM", "title": "nmiM3QWE0bga5o6V"}}, "name": "3UOBixnLnjkJq2Hu", "start": "1995-12-03T00:00:00Z", "tierItemId": "tTRuL9sEuts1ArCv"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'M5OAjMh3dOUemeA4' \
    --body '{"end": "1981-04-25T00:00:00Z", "name": "xaNT3U5p1lC17mhY", "start": "1984-07-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OvHkC15FDx7CKMd2' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'IabBFLZNFoKqzgGZ' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'qKt80H35IjNiw2fq' \
    --body '{"autoEnroll": false, "code": "CKv5i8QE3vb1nl52", "displayOrder": 18, "images": [{"as": "t9EKulzaJPRkuke6", "caption": "aE67Lf1E2TMRZW6f", "height": 52, "imageUrl": "l3SadGxc8Qq4aATy", "smallImageUrl": "vYvhdXTin3EXypey", "width": 1}, {"as": "fSweGwx2Rs4yLQnV", "caption": "sQHPkyONswyivBx2", "height": 66, "imageUrl": "ZdQYvQ7f9o5KQKFc", "smallImageUrl": "IPPY7ekwbe6vLtCE", "width": 87}, {"as": "vDLjcs7SiAwacRP8", "caption": "3hdcqrP2wenOCjwa", "height": 9, "imageUrl": "9mfRYOaqcBdQJlhw", "smallImageUrl": "vBhIaf1be7gLw6bd", "width": 63}], "localizations": {"krjgfdnXxOsFl324": {"description": "EzomE0q5WfxiWy5F", "title": "nudTCjdugA47Jmem"}, "rR9QmlJzNeYDVg7H": {"description": "QxZpVDBPEPIfHtf2", "title": "XThRWF0jyYtPKIk9"}, "Q5Me0jKG6mdJ9fe0": {"description": "mWSDxJYmzcLl7879", "title": "q9DOgtoL0D0YAf7s"}}, "passItemId": "u3BVMG4irkVhRA2g"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'YzCKT4cw1iVbmGYj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bBioSG09bfTTVmhg' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'dJMJPkT9UBLh9WjW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'F30g7DnRMnVppqj5' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'e1KKXR0OqvCyIHyx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iZeMBiYcyfLC0drQ' \
    --body '{"autoEnroll": true, "displayOrder": 40, "images": [{"as": "Tp45cPTbYVEuGKR2", "caption": "lO60KIpgn3pVsrdO", "height": 97, "imageUrl": "iZpcTfWS5D2BpWPK", "smallImageUrl": "gSFSBUndKtPs8Dxi", "width": 51}, {"as": "2hTjFUEb30kbI6y7", "caption": "tAHzjrHw7gExlo6n", "height": 70, "imageUrl": "NteDwKlFaczyIkAt", "smallImageUrl": "bTe3OGs2yoMjzQVr", "width": 34}, {"as": "7572GbG0pq7WtC3p", "caption": "aHEHd5Q5RrS00cPp", "height": 90, "imageUrl": "2EGfoTqXRWHk84El", "smallImageUrl": "X5tFHrdaVDYFvNon", "width": 49}], "localizations": {"rNgl5VIZDOZKpRNu": {"description": "e7HggIOi80avuSaK", "title": "mcNACCQxJDc01O7e"}, "tNpGTJjgBT1qq0M9": {"description": "9cWlBaBBKgiNlEp3", "title": "g5pfrdgmTpym2MQh"}, "VHGQVwvVyMJ2K0ov": {"description": "YM5VmyKshkOfj2dz", "title": "96GyW8VUBTS8dFGb"}}, "passItemId": "VBatJJbjRVMd5eqp"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sRBCMwOav4qQhlvy' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XJ03JvutI2GZlg7V' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'P8oPTCyNl9RMJuAd' \
    --q 'Xl7zTbs1YFtQfSY5' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'agt3TqWHPoMcD3II' \
    --body '{"code": "CMnNugq7bEJbVVso", "currency": {"currencyCode": "0QgQKyV1QoC6y68Q", "namespace": "MoCjB7SOrBzt2SW4"}, "image": {"as": "nHfjpv8VvNEVD1vq", "caption": "0HT9pAnYnaEXImf5", "height": 99, "imageUrl": "MLSNNgcBvWQifymR", "smallImageUrl": "IDEZZ8zpfh1MKslU", "width": 58}, "itemId": "FRSjUOVPltbRRrlH", "quantity": 0, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'jJT1PpCkrGMlOzzn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZuSY5wIttXdwxjHL' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'REh75tIiJdFDYey1' \
    --namespace $AB_NAMESPACE \
    --seasonId '3bhzN4Wfq6fiZxg6' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'n2hGx1xQ1soCOS8q' \
    --namespace $AB_NAMESPACE \
    --seasonId '90Krzr8kSzF5eQlg' \
    --body '{"currency": {"currencyCode": "BggDgkA36ODydde1", "namespace": "KSEqcVvCklTON1DC"}, "image": {"as": "I0gHrgbLYOr0rXiM", "caption": "k1NvAGTl8KHBXd3d", "height": 0, "imageUrl": "oiItMtBvhc1PYGvz", "smallImageUrl": "XhuuALPdyn3Q0P2P", "width": 34}, "itemId": "pKowxh4Tq0HAw865", "nullFields": ["wnYUl8weVenAD9EK", "CG3RQlGdsLrW5qgo", "VOVFno99TJYmVjkY"], "quantity": 74, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'd5EtaKdjLpYcC2TG' \
    --limit '76' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'cRoFzNoGUZ5Cx1xo' \
    --body '{"index": 13, "quantity": 66, "tier": {"requiredExp": 90, "rewards": {"MHrXFWquMslJpRvj": ["nnJtSecjKet7mcug", "QJQNutTYKi4NjDQM", "JrwsGFuKOad2KcuT"], "NxGxkS6c7L5SJ3lJ": ["83XlVlbwZFuYjAVK", "4urIrGNbSoV8q4MP", "RrBJbXzPOxSXkzqX"], "j33355EVBOEzl8HH": ["FIQHGgOIxiOfjTwV", "TQYuWMRasO7h2Rnx", "2DRBgtRSxTXipYBy"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'N8WaOB7LQKRgDSzQ' \
    --namespace $AB_NAMESPACE \
    --seasonId '69C5zOLZ4M8BPari' \
    --body '{"requiredExp": 35, "rewards": {"MlaGK9pEPCXJTEXr": ["8msAXicFrjHiR5gT", "GCqyW7PKVEnfXv0Y", "dapY0INW3bB62dWT"], "Q0u8SxzAgEXoy3BZ": ["sDKAfo9lzwqzz1d8", "GMVTDUKlCABYuI1a", "X8Oq3Rbj9mrmaqwV"], "EBxMXgdWHJoA8VCC": ["NHM1KqZAj2KpEkRd", "48kcvmKszfFADO4a", "m4eM2c6uu35TATcB"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'V4VZjNk2C1b4kXdS' \
    --namespace $AB_NAMESPACE \
    --seasonId '2tpj4sB2iBP4PjTT' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Tpj1M6jExogdvVMz' \
    --namespace $AB_NAMESPACE \
    --seasonId '8DUKUjDXqMQPFfIh' \
    --body '{"newIndex": 89}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SdCcSIAjbww2Lc7P' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'aH2PafI2lNcTkeyk' \
    --limit '98' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '5t0SWGnyXhHdQycd' \
    --body '{"exp": 28, "source": "PAID_FOR", "tags": ["xRmCte0R4dk7x3lL", "nnvudVEHHZCVeITn", "UL8GMh9SapMg2uf0"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'mMItmEgMTuDHY0lH' \
    --body '{"passCode": "tBMTFxBGxtVVTUkU", "passItemId": "F9CYe2PlAyjQShRS"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'OCFq0XMgXTvNnlGk' \
    --passCodes '["xEbgYuqbuAU1mID6", "PqWu2M1FJkORfnOI", "yNbnEAjO7SBBUiGr"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'KUhziv8UJqzhEJkn' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Bg1wsRjjhowYK9R5' \
    --body '{"passItemId": "b24KI4GHgoYKFRqr", "tierItemCount": 70, "tierItemId": "utyShfgxr9BgHSMa"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'w509XrG3EXhsNj6v' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'yD6okJBsxAZQ8hju' \
    --body '{"count": 37, "source": "SWEAT", "tags": ["FweIwWQV18ueed4A", "VGVB6pKLNfKe809E", "Ucpo2gOC4wt3qFaa"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'exG8WCU8aGXAXrbo' \
    --from 'Uv7sqvlWJvDVPtoU' \
    --limit '85' \
    --offset '59' \
    --seasonId 'KCtt99MYdiPbxxtQ' \
    --source 'PAID_FOR' \
    --tags '["4tilKd3ojJanvljp", "kcfCN9EUPEvmJCat", "viMfC6ALUfsdT9Px"]' \
    --to 'XzUgXUjPCB9UobPU' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'YmWKZFgcEzyZzAjL' \
    --seasonId 'OSvD9XeRaYBCDa5E' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'THe2lyyo1t4nY7jt' \
    --userId 'b12wDfZ9TRc397HR' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'jGLQpLK4b2q9jGgw' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ymgUzjJ7v4vOVP7z' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'vpDHTFszMbpR0OhK' \
    --body '{"passCode": "9ibR5qAIytvGCO98", "rewardCode": "oUyDVTrn4Mb6qj61", "tierIndex": 5}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lQ8gomXtbm2q2TnH' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HZFoO8EHQ0OgiA7H' \
    --userId '6eStgqKgVBzgWqb0' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE