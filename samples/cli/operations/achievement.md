## Go Extend SDK CLI Sample App Operation Index for Achievement service.

### Operation `admin_list_achievements`
```sh
$ samples/cli/sample-apps Achievement adminListAchievements \
    --namespace 'string' \
    --global false \
    --limit 1 \
    --offset 1 \
    --sortBy 'listOrder' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_new_achievement`
```sh
$ samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace 'string' \
    --body '{"achievementCode": "string", "customAttributes": {"string": {}}, "defaultLanguage": "string", "description": {"string": "string"}, "global": false, "goalValue": 3.14, "hidden": false, "incremental": false, "lockedIcons": [{}], "name": {"string": "string"}, "statCode": "string", "tags": ["string"], "unlockedIcons": [{}]}' \
    > result.txt
```

### Operation `export_achievements`
```sh
$ samples/cli/sample-apps Achievement exportAchievements \
    --namespace 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `import_achievements`
```sh
$ samples/cli/sample-apps Achievement importAchievements \
    --namespace 'string' \
    --file 'tmp.dat' \
    --strategy 'string' \
    > result.txt
```

### Operation `admin_get_achievement`
```sh
$ samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_achievement`
```sh
$ samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {"string": {}}, "defaultLanguage": "string", "description": {"string": "string"}, "global": false, "goalValue": 3.14, "hidden": false, "incremental": false, "lockedIcons": [{}], "name": {"string": "string"}, "statCode": "string", "tags": ["string"], "unlockedIcons": [{}]}' \
    > result.txt
```

### Operation `admin_delete_achievement`
```sh
$ samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_achievement_list_order`
```sh
$ samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'string' \
    --namespace 'string' \
    --body '{"targetOrder": 1}' \
    > result.txt
```

### Operation `admin_list_global_achievements`
```sh
$ samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace 'string' \
    --achievementCodes 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'achievedAt' \
    --status 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_list_global_achievement_contributors`
```sh
$ samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'contributedValue' \
    > result.txt
```

### Operation `reset_global_achievement`
```sh
$ samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `bulk_create_psn_event`
```sh
$ samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `admin_list_tags`
```sh
$ samples/cli/sample-apps Achievement adminListTags \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `admin_list_user_achievements`
```sh
$ samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --preferUnlocked false \
    --sortBy 'achievedAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_reset_achievement`
```sh
$ samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_unlock_achievement`
```sh
$ samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_anonymize_user_achievement`
```sh
$ samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_list_user_contributions`
```sh
$ samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace 'string' \
    --userId 'string' \
    --achievementCodes 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'contributedValue' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_achievements`
```sh
$ samples/cli/sample-apps Achievement publicListAchievements \
    --namespace 'string' \
    --global false \
    --limit 1 \
    --offset 1 \
    --sortBy 'listOrder' \
    --tags '["string"]' \
    --language 'string' \
    > result.txt
```

### Operation `public_get_achievement`
```sh
$ samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    --language 'string' \
    > result.txt
```

### Operation `public_list_global_achievements`
```sh
$ samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace 'string' \
    --achievementCodes 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'achievedAt' \
    --status 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `list_global_achievement_contributors`
```sh
$ samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'contributedValue' \
    > result.txt
```

### Operation `public_list_tags`
```sh
$ samples/cli/sample-apps Achievement publicListTags \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'createdAt' \
    > result.txt
```

### Operation `public_list_user_achievements`
```sh
$ samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --preferUnlocked false \
    --sortBy 'achievedAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_unlock_achievement`
```sh
$ samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `list_user_contributions`
```sh
$ samples/cli/sample-apps Achievement listUserContributions \
    --namespace 'string' \
    --userId 'string' \
    --achievementCodes 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'contributedValue' \
    --tags '["string"]' \
    > result.txt
```

### Operation `claim_global_achievement_reward`
```sh
$ samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

