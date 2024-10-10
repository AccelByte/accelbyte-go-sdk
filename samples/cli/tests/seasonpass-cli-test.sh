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
    --limit '61' \
    --offset '65' \
    --status '["RETIRED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "TDx8rdXJHPkzPTX7", "defaultRequiredExp": 84, "draftStoreId": "2vKeB5MpioDm56ZF", "end": "1989-01-28T00:00:00Z", "excessStrategy": {"currency": "Odr9s6thKKtxiqYb", "method": "NONE", "percentPerExp": 61}, "images": [{"as": "moNBwncVD3e7Y7gf", "caption": "kIKTdT64v92BjnV6", "height": 4, "imageUrl": "6LUSxWFreOZYZwcM", "smallImageUrl": "9pqEgPJDhmgICUjC", "width": 65}, {"as": "uTf0jKCx9ZKDCiB7", "caption": "kph5s49esV3Rk3dI", "height": 80, "imageUrl": "sHR5L96Bj6jMQPBS", "smallImageUrl": "XhBVOvGTUDIZHNGx", "width": 85}, {"as": "Tghg6Kc5m2lxutsM", "caption": "2s3zZzmMOw1pBwEs", "height": 3, "imageUrl": "a3oEfcwgK67X2D13", "smallImageUrl": "UFWpnMjG7Blzw9Ma", "width": 54}], "localizations": {"Q0OLBe50SJoZyC0T": {"description": "jiK3vy0j3cVfz5Eb", "title": "sPWNtzJO04NVIJ5O"}, "DXQFcssilb7g5go6": {"description": "eUThD67MqOGmj6sf", "title": "ohV0mrm9lqfONuAq"}, "HUn1u0CgiVlSltIk": {"description": "UsYrawcE8OzpMaLB", "title": "5km1QntBaY7Cicjr"}}, "name": "dsJciPXm4c7qvDP4", "start": "1978-01-24T00:00:00Z", "tierItemId": "SZWACdx7rydJCdmj"}' \
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
    --body '{"userIds": ["oGaA5jQVW4GTdXqu", "0hkPRI39fvUFmqte", "cwkum8UW7loxj8xy"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ae4zrTsWdn9au0H1' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'J7Er9WhMnChlx5IW' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DjuPwP08lqrslcXp' \
    --body '{"autoClaim": true, "defaultLanguage": "XeilnwGP2K4ITdNH", "defaultRequiredExp": 96, "draftStoreId": "zjopjTrwx5PJ8Al7", "end": "1987-02-15T00:00:00Z", "excessStrategy": {"currency": "hcKY2pbctNlDzxyv", "method": "CURRENCY", "percentPerExp": 45}, "images": [{"as": "u1WPYrKdZM16oOps", "caption": "wPVdhSnIaCDYFMMy", "height": 15, "imageUrl": "Ae81V2hgsstNSq1f", "smallImageUrl": "sUeMFMCJ3BEc4IJQ", "width": 64}, {"as": "5iZklAsfGRnG3U6K", "caption": "sJXWNC7kKmQRxsrY", "height": 45, "imageUrl": "fD9BwSASi4MmBcaE", "smallImageUrl": "u6yqcKMSL5jJBcWd", "width": 100}, {"as": "zpbyHCmsECLMiQi1", "caption": "SF2FAP7Xqf7Kqlvr", "height": 82, "imageUrl": "zveGzTgM2punv0ud", "smallImageUrl": "jrR7PEF0eoS9ad2q", "width": 70}], "localizations": {"YhEYeHjEeOKS9woC": {"description": "ATnjcBUiX43xCyEa", "title": "KHca6bto90CVXMB0"}, "bzNj6hX7DHM4EbDB": {"description": "miLQA6zejZjfNUdH", "title": "LPnJB7QjUGmRrM8R"}, "o7RxVJEWIEQoRmXO": {"description": "ZsMFCxyNT3XwV3wR", "title": "bisMk7XzJSsHIjau"}}, "name": "Vd5FyBd0tySdA7cP", "start": "1983-01-25T00:00:00Z", "tierItemId": "UO2U4oxYUTKuudyM"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UiPzE7gLxAaN9OUj' \
    --body '{"end": "1995-02-07T00:00:00Z", "name": "nnOWlvSftDVhG9af", "start": "1993-06-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rUS5CEorJRGRUJOD' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '9mdLWEMKfSeFyq38' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'F2xzCnMvzkXdWzSf' \
    --body '{"autoEnroll": true, "code": "DnDB2DR2mjvHdiX0", "displayOrder": 76, "images": [{"as": "mpky47UaIWQFgB5I", "caption": "qocLsbdacSDbtpYP", "height": 1, "imageUrl": "kn0QH8uWaxsLFZdJ", "smallImageUrl": "PGywfmuEq9VuuELL", "width": 84}, {"as": "NB4bVm4vFa2uZ5Gf", "caption": "5fOvJ2d4aNpEjt1Y", "height": 78, "imageUrl": "iuMjLjc3I9VgMZbZ", "smallImageUrl": "l00A0orvUAceLYOk", "width": 82}, {"as": "i3p1Wkl353a8rfwy", "caption": "jZeUSYWPGBVXDphi", "height": 95, "imageUrl": "BnSXjxnSkRFAazYZ", "smallImageUrl": "nLvQGTYw3XQD6AJL", "width": 75}], "localizations": {"ZvHe9car0wbvD45q": {"description": "CzlKrXtA5iEWWWeF", "title": "lIAQW77ezrpXuc0E"}, "4K9zXZnXLitrq8eX": {"description": "IGIXYveadVzqxN9q", "title": "uLXnS4ejx1YovBNV"}, "2JhRP6ykSofVQTr4": {"description": "MjhxRL2to6wHkR5X", "title": "dYqWrAZv55fzSNVU"}}, "passItemId": "0XOZPxEKBOWq7lWx"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'ZMHvgyRZPdToJlWu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mQL00dg6al09PfpX' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'rdAaFwl2mzuP94V0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FSFCMB36bZHCmjL0' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'gGMLoFcaEoCaWM04' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gpGR0qOP2W1SoDpq' \
    --body '{"autoEnroll": false, "displayOrder": 96, "images": [{"as": "FRr0hVoDcgHDF6KJ", "caption": "QfwgAe9wmdf9dtid", "height": 50, "imageUrl": "mwLYj5a4ItJhpiKc", "smallImageUrl": "4f1pQ73ssxW1AcnQ", "width": 49}, {"as": "3RxETf4W9hn0fN3K", "caption": "xITnEw0gnnQzttge", "height": 61, "imageUrl": "4YLpKjvPkSvZtZfP", "smallImageUrl": "ZZ6OOVcO5G4xr4uy", "width": 59}, {"as": "DO5vTHmwSVqSerMr", "caption": "YEHXy4pl7teeJj4u", "height": 46, "imageUrl": "TBeKDWXhjZZygDdh", "smallImageUrl": "SDmf36rLut5eyiDp", "width": 69}], "localizations": {"FLmsMCfaIsMuKYjJ": {"description": "GL3LBeLYsiz65HHz", "title": "Em93V9y69V6TYHls"}, "QKu4OthXuC92ZgEo": {"description": "hHVNlwyGg7yhYMrZ", "title": "zLZfj4XbBj5sNIXy"}, "OpTCZRHmRE73A23v": {"description": "WWdZZL3ASs1pke0I", "title": "5OZDvcOqm7HAmiWp"}}, "passItemId": "X0nj8USQymcze7gk"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qg2jnCfCCV1Pl4Zt' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FHuEZRPFcNkblTjv' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'gbpmIrPNbXQHUGm0' \
    --q 'kXXkQgmmY3eIiMFh' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'cnkzhUsYfPFqFiBl' \
    --body '{"code": "bq6TCIxrABQ71Hxd", "currency": {"currencyCode": "y9uDEtf0AgXZuuh8", "namespace": "UzmQ5QVBYFw3QbFG"}, "image": {"as": "a3qUY1uAo6uhOxeG", "caption": "f3lM2idxzrdGJUtp", "height": 99, "imageUrl": "mwbxM6pLgDAKpXQ6", "smallImageUrl": "o3EGfhpyzBFYDfzy", "width": 35}, "itemId": "spOWxqNifXeIPcK3", "quantity": 86, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'DYFE9baOso3cpwck' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PK01PlTTYpRdOaRy' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'XRPOH0nh9L8W9pag' \
    --namespace $AB_NAMESPACE \
    --seasonId 'x7UN7vWtaVTFRKNV' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'd0NHYZEHyJOo1EZG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PmcsiFypRDLO0rHR' \
    --body '{"currency": {"currencyCode": "Qrb0icMN5zIa5AMp", "namespace": "Qi1B8NU1XnGnRiJ6"}, "image": {"as": "NUT4mZYrDDnIHrCi", "caption": "cLXsUYFC5zObmvuD", "height": 90, "imageUrl": "eNkmEuXsnQtCg7lA", "smallImageUrl": "JeW3adTAwID00Xrd", "width": 4}, "itemId": "LA1PEKNjhb7jMANa", "nullFields": ["uK1qitrgjiBaK1nL", "bl2osleKxG0bfo8z", "JztQaiIRsls5vQGG"], "quantity": 33, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'oOhfaRWHy65FxRw6' \
    --limit '46' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'GCQwXRfSt4SLKFNa' \
    --body '{"index": 14, "quantity": 18, "tier": {"requiredExp": 94, "rewards": {"lW7BA4m5tS0KFK9x": ["AsvNuv7nuUipsnAn", "C4pVz3rWQDG6e9aC", "UTkfSCYq7reYbPSD"], "5PBw2KKe1NKr475Y": ["VmTaGU13T4mJAOd6", "3m4OJDKDZTWxVu7a", "oRQkXNzIJ5S3ywKn"], "W84xUx3KUXA427ih": ["bgQ0pL7J6R9l3DBQ", "d2OPZeXS6PbCCy4O", "0FYoFLUj3r86V4ar"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'blcU9PyFfaS8JDYd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lUYxw0LtI6pdQzXG' \
    --body '{"requiredExp": 70, "rewards": {"CJPp2RYfCf4wLz2N": ["sCYc6z3wfDfwyTiZ", "a2BIjn4qwIJRmFf5", "39qzJeCdX224DyfX"], "vatQ961Omz1f6za5": ["U0eg3S61f9U9nVHR", "3oVzmDlOwkRxoIoj", "qFSYK69bNaRsY6Tv"], "n1rM1jbU7HLPQDgv": ["qEbzTVxiz35JxASO", "1vCpOJO7c61kj9iY", "emh33tXJoeNDrqaR"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'R442sVn0K5vq9tkT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YUyCaVZigZqeQAGT' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Mfb1mSey01q5mdnZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FPPl7loTFZKJ8rVs' \
    --body '{"newIndex": 91}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pLX4BxlCqBh8R83v' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'MIIXxOtga9DlPzhf' \
    --limit '48' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'DIcBKUeQL84wfUkh' \
    --body '{"exp": 65, "source": "SWEAT", "tags": ["J5fWlfm8rLe9h3Ms", "aGFWse4DnJzqjcQQ", "IaDPqlCWNtvkwO8h"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'EGyvFR80ohksnMDc' \
    --body '{"passCode": "xAnZ8dSkb9eX4Isk", "passItemId": "clROtLH0xAg9dcno"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'xhOLjfN7upnttlPm' \
    --passCodes '["rLRrerroBZJo29R9", "3f04QZ5hD3vqcW7l", "ZjeLwjVofMS8OVSf"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '2VRFJYpLxKqPUVLo' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'JKkftjx6rAArP5RD' \
    --body '{"passItemId": "Ee6PFjktHrn7WV5D", "tierItemCount": 96, "tierItemId": "fkWjvxIsHCZqJ55V"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'nZKLB6sphUe2AvjQ' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '4faUFCoErxH9cXZD' \
    --body '{"count": 24, "source": "PAID_FOR", "tags": ["b8VgJUCeykVNbOhB", "MvfYPKw8fbYeqzfL", "eF1z509eQXpWeFth"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'wC1FiVuujrTkGDkS' \
    --from 'llifjdDlaL5AmOJj' \
    --limit '27' \
    --offset '24' \
    --seasonId 'y314GyACNnf7pF2O' \
    --source 'SWEAT' \
    --tags '["B033i32XDoscafSb", "AR35veUuIk0nA6jL", "SBzI3Ov9UHzOH8iF"]' \
    --to '8G6HAz2tvkBeDo9t' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '3P3OsCWUdUID3vJ5' \
    --seasonId 'P14e33T6kj5e17DL' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xgyzPsfxmKqNj6Uu' \
    --userId '1mh7Ux6aKqFkbx90' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'ELALMLJadHCQha1d' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'cQ40KXtdj1bgme9b' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'zcOw00X9w76qTDfO' \
    --body '{"passCode": "Ds0kDEpxelOBci0h", "rewardCode": "5NOvj6690XnBmqd9", "tierIndex": 55}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YzZnXIOpxDoDNyr3' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bMkEekejvbOIHjGt' \
    --userId 'pKXxlKI3vCJhFhxS' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE