## Go Extend SDK CLI Sample App Operation Index for Seasonpass service.

### Operation `export_season`
```sh
$ samples/cli/sample-apps Seasonpass exportSeason \
    --namespace 'string' \
    > result.txt
```

### Operation `query_seasons`
```sh
$ samples/cli/sample-apps Seasonpass querySeasons \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --status '["DRAFT"]' \
    > result.txt
```

### Operation `create_season`
```sh
$ samples/cli/sample-apps Seasonpass createSeason \
    --namespace 'string' \
    --body '{"autoClaim": false, "defaultLanguage": "string", "defaultRequiredExp": 1, "draftStoreId": "string", "end": "2000-01-01T12:34:56Z", "excessStrategy": {}, "images": [{}], "localizations": {"string": {}}, "name": "string", "start": "2000-01-01T12:34:56Z", "tierItemId": "string"}' \
    > result.txt
```

### Operation `get_current_season`
```sh
$ samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace 'string' \
    > result.txt
```

### Operation `bulk_get_user_season_progression`
```sh
$ samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `get_item_references`
```sh
$ samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `get_season`
```sh
$ samples/cli/sample-apps Seasonpass getSeason \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `delete_season`
```sh
$ samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `update_season`
```sh
$ samples/cli/sample-apps Seasonpass updateSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"autoClaim": false, "defaultLanguage": "string", "defaultRequiredExp": 1, "draftStoreId": "string", "end": "2000-01-01T12:34:56Z", "excessStrategy": {}, "images": [{}], "localizations": {"string": {}}, "name": "string", "start": "2000-01-01T12:34:56Z", "tierItemId": "string"}' \
    > result.txt
```

### Operation `clone_season`
```sh
$ samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"end": "2000-01-01T12:34:56Z", "name": "string", "start": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `get_full_season`
```sh
$ samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `query_passes`
```sh
$ samples/cli/sample-apps Seasonpass queryPasses \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `create_pass`
```sh
$ samples/cli/sample-apps Seasonpass createPass \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"autoEnroll": false, "code": "string", "displayOrder": 1, "images": [{}], "localizations": {"string": {}}, "passItemId": "string"}' \
    > result.txt
```

### Operation `get_pass`
```sh
$ samples/cli/sample-apps Seasonpass getPass \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `delete_pass`
```sh
$ samples/cli/sample-apps Seasonpass deletePass \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `update_pass`
```sh
$ samples/cli/sample-apps Seasonpass updatePass \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"autoEnroll": false, "displayOrder": 1, "images": [{}], "localizations": {"string": {}}, "passItemId": "string"}' \
    > result.txt
```

### Operation `publish_season`
```sh
$ samples/cli/sample-apps Seasonpass publishSeason \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `retire_season`
```sh
$ samples/cli/sample-apps Seasonpass retireSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --force false \
    > result.txt
```

### Operation `query_rewards`
```sh
$ samples/cli/sample-apps Seasonpass queryRewards \
    --namespace 'string' \
    --seasonId 'string' \
    --q 'string' \
    > result.txt
```

### Operation `create_reward`
```sh
$ samples/cli/sample-apps Seasonpass createReward \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"code": "string", "currency": {}, "image": {}, "itemId": "string", "quantity": 1, "type": "CURRENCY"}' \
    > result.txt
```

### Operation `get_reward`
```sh
$ samples/cli/sample-apps Seasonpass getReward \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `delete_reward`
```sh
$ samples/cli/sample-apps Seasonpass deleteReward \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `update_reward`
```sh
$ samples/cli/sample-apps Seasonpass updateReward \
    --code 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"currency": {}, "image": {}, "itemId": "string", "nullFields": ["string"], "quantity": 1, "type": "CURRENCY"}' \
    > result.txt
```

### Operation `query_tiers`
```sh
$ samples/cli/sample-apps Seasonpass queryTiers \
    --namespace 'string' \
    --seasonId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_tier`
```sh
$ samples/cli/sample-apps Seasonpass createTier \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"index": 1, "quantity": 1, "tier": {}}' \
    > result.txt
```

### Operation `update_tier`
```sh
$ samples/cli/sample-apps Seasonpass updateTier \
    --id 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"requiredExp": 1, "rewards": {"string": []}}' \
    > result.txt
```

### Operation `delete_tier`
```sh
$ samples/cli/sample-apps Seasonpass deleteTier \
    --id 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `reorder_tier`
```sh
$ samples/cli/sample-apps Seasonpass reorderTier \
    --id 'string' \
    --namespace 'string' \
    --seasonId 'string' \
    --body '{"newIndex": 1}' \
    > result.txt
```

### Operation `unpublish_season`
```sh
$ samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --force false \
    > result.txt
```

### Operation `get_user_participated_seasons`
```sh
$ samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `grant_user_exp`
```sh
$ samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace 'string' \
    --userId 'string' \
    --body '{"exp": 1, "source": "PAID_FOR", "tags": ["string"]}' \
    > result.txt
```

### Operation `grant_user_pass`
```sh
$ samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace 'string' \
    --userId 'string' \
    --body '{"passCode": "string", "passItemId": "string"}' \
    > result.txt
```

### Operation `exists_any_pass_by_pass_codes`
```sh
$ samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace 'string' \
    --userId 'string' \
    --passCodes '["string"]' \
    > result.txt
```

### Operation `get_current_user_season_progression`
```sh
$ samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `check_season_purchasable`
```sh
$ samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace 'string' \
    --userId 'string' \
    --body '{"passItemId": "string", "tierItemCount": 1, "tierItemId": "string"}' \
    > result.txt
```

### Operation `reset_user_season`
```sh
$ samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `grant_user_tier`
```sh
$ samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace 'string' \
    --userId 'string' \
    --body '{"count": 1, "source": "PAID_FOR", "tags": ["string"]}' \
    > result.txt
```

### Operation `query_user_exp_grant_history`
```sh
$ samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace 'string' \
    --userId 'string' \
    --from 'string' \
    --limit 1 \
    --offset 1 \
    --seasonId 'string' \
    --source 'PAID_FOR' \
    --tags '["string"]' \
    --to 'string' \
    > result.txt
```

### Operation `query_user_exp_grant_history_tag`
```sh
$ samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace 'string' \
    --userId 'string' \
    --seasonId 'string' \
    > result.txt
```

### Operation `get_user_season`
```sh
$ samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_current_season`
```sh
$ samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace 'string' \
    --language 'string' \
    > result.txt
```

### Operation `public_get_current_user_season`
```sh
$ samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_claim_user_reward`
```sh
$ samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace 'string' \
    --userId 'string' \
    --body '{"passCode": "string", "rewardCode": "string", "tierIndex": 1}' \
    > result.txt
```

### Operation `public_bulk_claim_user_rewards`
```sh
$ samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_season`
```sh
$ samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace 'string' \
    --seasonId 'string' \
    --userId 'string' \
    > result.txt
```

