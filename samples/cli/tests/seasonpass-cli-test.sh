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
echo "1..44"

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

#- 2 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '56' \
    --status '["DRAFT", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "5LkdhoDvoOVYhIXc", "defaultRequiredExp": 19, "draftStoreId": "ktGCDC9yTlzQehUo", "end": "1992-02-18T00:00:00Z", "excessStrategy": {"currency": "OTUhX6hrffnzsOlX", "method": "CURRENCY", "percentPerExp": 81}, "images": [{"as": "x6tgdzlIfljgrmS1", "caption": "YUtyAsESFgpiKgYt", "height": 67, "imageUrl": "25wKba4kJ1Dcv5Oq", "smallImageUrl": "HKkzaWDNwOkg4ONl", "width": 45}, {"as": "bhV8uWUuIJE54Bbn", "caption": "AU1fD91r0BgP5qkX", "height": 77, "imageUrl": "csYBlpzcrQLz03JG", "smallImageUrl": "84xTnSRpatDyCrTF", "width": 15}, {"as": "0TpoKK9e8Rl6RHts", "caption": "XgGOPSATnDcdG2YA", "height": 20, "imageUrl": "f1UlZ5tq9jyDJgQt", "smallImageUrl": "r4tEjnbFYRaWjz8G", "width": 57}], "localizations": {"hTKGBoADEdiKPSBn": {"description": "rxwdJBbDvpVEDzyG", "title": "eqT88YfRW9u8lZIK"}, "gYxvsC2ZVhGDkSXQ": {"description": "gMxnMfOiTT9z7hwo", "title": "esgjGnw61G2qWtS7"}, "g5WZiZZYNPyNMMm7": {"description": "Yo1lAxcQRSti1Lcz", "title": "vndee7YNZKxC6rxJ"}}, "name": "JR9LOsHArNtYHNWd", "start": "1994-07-03T00:00:00Z", "tierItemId": "JMxOJOpk6ErkTL7m"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7qB0u97NfEppV3ml", "PeCZoYM9ABoiZW1n", "Q9Ph2IlN5N7p1xyG"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8ocWIC9pkdarwNP9' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cWLyP9DUdyHSAAQD' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EdnqFVYdL0ly7KPz' \
    --body '{"autoClaim": false, "defaultLanguage": "PvnXTmh4q56CB9Kr", "defaultRequiredExp": 68, "draftStoreId": "jHb6CluEFcIRnsGp", "end": "1982-10-10T00:00:00Z", "excessStrategy": {"currency": "j33yJdktbdoLbomz", "method": "NONE", "percentPerExp": 0}, "images": [{"as": "1D5b5W1xwfdqTiBj", "caption": "FQkB7GF8XQejFg0Y", "height": 47, "imageUrl": "bivZ6q3iy1XNbNzh", "smallImageUrl": "GdTojHsAT6Pw3tTw", "width": 5}, {"as": "GTwFM3tBVx4sPmAj", "caption": "SVvJc0YCoa67cyaO", "height": 60, "imageUrl": "KEDyPBncenHBVgXw", "smallImageUrl": "LoX8gBiUP83NBfwt", "width": 2}, {"as": "xWdbPXHk4HS5sIR0", "caption": "7SH2lspGOX8L35nF", "height": 24, "imageUrl": "3sj8ut8puTd6CTbt", "smallImageUrl": "Ox6odRt4gQCDN7ZV", "width": 56}], "localizations": {"4kbPIA5FglSH67Zw": {"description": "NFzUXICByn36lgKR", "title": "wcyWBgIGcj6t6FSZ"}, "I8RGbFs3hfrP1sA0": {"description": "mOFphu76htVxnddy", "title": "LqlQSbllo3kHNiyy"}, "vBVcroXEIEhciPny": {"description": "PXBU8FyoADvnNKL3", "title": "19uMEe3tbBn2DIro"}}, "name": "MsyLn7NsACDAAs7q", "start": "1977-01-25T00:00:00Z", "tierItemId": "zePLcM6uKFITxJ95"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rBgYgrVVsx9DU7ke' \
    --body '{"end": "1981-03-05T00:00:00Z", "name": "0RfXoo5vH1G9kh8I", "start": "1977-12-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5ebcR6x3yltm37Ra' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '4bpOoC5hbA94WNQ2' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'EQdAdRHA72ImAGQc' \
    --body '{"autoEnroll": false, "code": "EnOnRwTsMjWPTxXH", "displayOrder": 79, "images": [{"as": "CVcdn4zPieGezmaq", "caption": "U9tzBII14kKsJY3F", "height": 58, "imageUrl": "iEO4iF5kTZ8Ef9Kr", "smallImageUrl": "HNA6DYhAB6T3rskF", "width": 44}, {"as": "dtaRvqgqcl9jCM6S", "caption": "PQOmr5jVodonAwFe", "height": 76, "imageUrl": "vKZcA4Or89PBmu9H", "smallImageUrl": "4Xo0YhtzC9wBnsva", "width": 42}, {"as": "gRL7Hf4ruPmRy3eV", "caption": "YRtunACIVBVK4buP", "height": 28, "imageUrl": "N8EXfyNKfs7fB1pW", "smallImageUrl": "qW0WRRyjGHIpG69J", "width": 75}], "localizations": {"uOLoY8bLKasJej7I": {"description": "ejYAbS9rMqwMeUae", "title": "KisbImkUH7LAynWd"}, "gIO1rpKtQHt26Ekz": {"description": "XfCZm0INFe42UBBL", "title": "TjuocheHJhelcKzv"}, "cYxdtnSWHcKLh8CC": {"description": "3YktMkxW0yw4ML7B", "title": "PC9BPZxZekkRYowi"}}, "passItemId": "GKRMmEbNBL6fUYE1"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'M0NzHJdng5sWz1I2' \
    --namespace $AB_NAMESPACE \
    --seasonId '4eSqibRxfH9rFUWC' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'vFA29xAUpE8qgeQO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'g6OG2gHf4JOmtG2L' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'uuF0HeaZ0LAp0gg7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ExrJee6zEFq5bV7J' \
    --body '{"autoEnroll": false, "displayOrder": 98, "images": [{"as": "MmWf8VAGteuMPeJU", "caption": "2V8rxITus1n8Uttp", "height": 75, "imageUrl": "Ig2WFGiXx8Vu9uS5", "smallImageUrl": "UaiBNPTHi6BKmgXW", "width": 90}, {"as": "Nn6dxx0quLsHT8ib", "caption": "2XKPdwhExj4lvb3e", "height": 56, "imageUrl": "razBRxdlAzIYYKwa", "smallImageUrl": "a1naye3DM2Kk4UmW", "width": 78}, {"as": "NYufBbEdc66ytNs5", "caption": "G4bxTWGSdYNMn41N", "height": 19, "imageUrl": "Is0SleRySk8ddhKI", "smallImageUrl": "hM4t3G88zXCACQnY", "width": 5}], "localizations": {"1xYLlmeDO1eBN9X5": {"description": "4jEGqDkNL9WcFwZA", "title": "VSu4M65x5dHxxd1q"}, "68dpjR5DttKdRmW9": {"description": "3UIjhP6PQHmfwwdg", "title": "GRd7V1VoGNR4AnAE"}, "sICZR9tGcESA1cn6": {"description": "G04kMhO2KpsYJfaR", "title": "Ni2OY88FI2rSSuRp"}}, "passItemId": "WCQJi00Pkp2vVhDW"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fqxTzlkNOeLzhGQs' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sdhq8IzMwp8r4qb5' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'zGXLCQgwWTkpS30z' \
    --q 'nsTEHsQYgrT0tlrh' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'BPCRwcxgtzgYeiL9' \
    --body '{"code": "6kTiLI17ZI4ykOl4", "currency": {"currencyCode": "qUZOvnyWLIC5qYS4", "namespace": "KhhVGHRoOx6P6csi"}, "image": {"as": "pjXBeoPROSXrxZsO", "caption": "qVBAGSdSK9NOolwd", "height": 87, "imageUrl": "9cJgIh1WC5gHqAp6", "smallImageUrl": "dNbbjldVi98qpkhO", "width": 49}, "itemId": "TB1FCDzO7aPbVRO4", "quantity": 99, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'UFmh9mshlBHcKtNc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gVIEWZPonZIKb0AD' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'psuliY80n94XDgzc' \
    --namespace $AB_NAMESPACE \
    --seasonId '5ifWl1zdy6jKAig2' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'm1E2gRrjy03r8uMQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Sdv7IRA9gThg6hcS' \
    --body '{"currency": {"currencyCode": "MBLbnifEMAEpE7eo", "namespace": "3iZEwPFXEyKD3WPc"}, "image": {"as": "MjI4C0Qehe6J8SxO", "caption": "gyJ98bd1rfU8VVJx", "height": 41, "imageUrl": "MZ76TOibkgg7nDOK", "smallImageUrl": "yZu5YqW3aM2mmwXN", "width": 38}, "itemId": "4f3CaTWujZXq2JZS", "nullFields": ["6rnXjlgPdOQhCcpN", "wK00EtsTNrt32r2U", "xo3T8tVXFL26xjN2"], "quantity": 69, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'KoiCpkvLMdZpSLMo' \
    --limit '57' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'kLrFsbrDL01BoYDV' \
    --body '{"index": 40, "quantity": 30, "tier": {"requiredExp": 48, "rewards": {"sbNhmrJg8AU2Pev3": ["mynxDCn7e94nSJCF", "vbwfd2pZInIVzDqu", "hpwGsBTbsnq9MgkI"], "O34hHfd64joatcgL": ["vadqQk2dkUxddKGN", "cx4Ub8ugIdsatyIY", "rHrRggx46X7nE6tD"], "lNVrbC3Zi9CXdSIz": ["FP3LdVUV58yP5mb7", "fLQ9lgjvCWRGYVr7", "Ne8vCJHyu6mAgKDm"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'IUxQRODhF9Za2jBj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'L68NPysabNaZ3JZy' \
    --body '{"requiredExp": 82, "rewards": {"hHH88YfXL1D73jqG": ["A5WNHsCg1cgNoZsV", "JFBQ2QnUwh12POLt", "zBwfGwEc2oLU9kPX"], "wK5gq8yHfissW8dT": ["Nm4LM7MM5hpiUdg4", "o4L589TXSaEti56p", "WbLx9CoP9KB4BuDh"], "06ecqWQNxY9XZSSZ": ["CHM4NQs43cmTPetf", "TFBJZnC4nc7IBMMW", "XfTBe5Dv5LGxRCPf"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'jIJM3iIrajNdEl3f' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JhTXxVRu0Ej8Xhsr' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'yM8sYt5leXA4UfFH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'f2avEwcdrOOtUlwe' \
    --body '{"newIndex": 24}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '20JUe665SkxDIgZ1' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'JGHMfUqSi6FK0RHH' \
    --limit '18' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'w18m5CnyNpWGjpmh' \
    --body '{"exp": 59, "source": "SWEAT", "tags": ["5iHQnXgGypKflQ2i", "G5zegPfmd7TwMckI", "sfdxlLMijUfjZzA8"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'FHShxKwvp46PnkSx' \
    --body '{"passCode": "dswyGSc7UXSuPJGe", "passItemId": "OejgUP7z50nAtuQY"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'c3VjK1Q3Vqy6r4oO' \
    --passCodes '["Ak2xuiDKFsKkegQE", "2W07Z6mEJlaDToyS", "PCbeFQPxUkmjBa92"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '09sUejk7ZNsvuv97' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '3vkuOI1qJLqpnKjm' \
    --body '{"passItemId": "4dSOY6LaYm8eFdkm", "tierItemCount": 63, "tierItemId": "G0wyoRTeDrdSmzv0"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '3XeCYuAaIf1z6Vci' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '7x42K7H8yQRTvzO2' \
    --body '{"count": 67, "source": "SWEAT", "tags": ["eCAG3G4TgB4lFzg8", "P1dxfSl6FU5ZA2rk", "AXboHyqF6RgNzN9f"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '5TXSqzLEyWjlgCz3' \
    --from 'FJG5CvVWmMELrvTB' \
    --limit '22' \
    --offset '41' \
    --seasonId 'aCdnf7y05g9TAUv4' \
    --source 'PAID_FOR' \
    --tags '["g5AQ4pB5FmvUt2zZ", "XADwyCpaOL0Ed7ps", "2CsqGFHPy4IaR3J6"]' \
    --to 'chZhEkSgAqV2Z0Cd' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'cYRDUzGvusd6e7BV' \
    --seasonId '3u6wfxbdt0siM7Pt' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yAuaPPkT7FDLTOxe' \
    --userId 'RwcXcrOzyZibRj41' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'k3mpu0QqoGTSM35T' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'C6uHM0itewGmIXMx' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'cE8um1WEWpYgcdHy' \
    --body '{"passCode": "2fsi4S7HMolqvroj", "rewardCode": "tMELcaBTXuLorH0N", "tierIndex": 94}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ak81iKfZplJhpng9' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DmBFutLFcPDOYfXg' \
    --userId 'X1WGvYfuhN4XQSNI' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE