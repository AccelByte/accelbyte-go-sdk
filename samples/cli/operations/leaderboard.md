## Go Extend SDK CLI Sample App Operation Index for Leaderboard service.

### Operation `get_leaderboard_configurations_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 \
    --namespace 'string' \
    --isArchived false \
    --isDeleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace 'string' \
    --body '{"daily": {}, "descending": false, "iconURL": "string", "leaderboardCode": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    > result.txt
```

### Operation `admin_get_archived_leaderboard_ranking_data_v1_handler`
```sh
$ samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace 'string' \
    --slug 'string' \
    --leaderboardCodes 'string' \
    > result.txt
```

### Operation `create_archived_leaderboard_ranking_data_v1_handler`
```sh
$ samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace 'string' \
    --body '{"leaderboardCodes": ["string"], "limit": 1, "slug": "string"}' \
    > result.txt
```

### Operation `delete_bulk_leaderboard_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace 'string' \
    --body '{"leaderboardCodes": ["string"]}' \
    > result.txt
```

### Operation `get_leaderboard_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_leaderboard_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --body '{"daily": {}, "descending": false, "iconURL": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    > result.txt
```

### Operation `delete_leaderboard_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `hard_delete_leaderboard_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_current_month_leaderboard_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `delete_user_ranking_by_leaderboard_code_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_current_season_leaderboard_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_today_leaderboard_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_user_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --previousVersion 1 \
    > result.txt
```

### Operation `update_user_point_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"inc": 3.14, "latestValue": 3.14}' \
    > result.txt
```

### Operation `delete_user_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_current_week_leaderboard_ranking_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `delete_user_rankings_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace 'string' \
    --userId 'string' \
    --leaderboardCode '["string"]' \
    > result.txt
```

### Operation `admin_anonymize_user_leaderboard_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_leaderboard_rankings_admin_v1`
```sh
$ samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace 'string' \
    --isArchived false \
    --isDeleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace 'string' \
    --body '{"daily": {}, "descending": false, "iconURL": "string", "leaderboardCode": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_archived_leaderboard_ranking_data_v1_handler`
```sh
$ samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --slug 'string' \
    --leaderboardCodes 'string' \
    > result.txt
```

### Operation `get_current_month_leaderboard_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_current_season_leaderboard_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_today_leaderboard_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_user_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --previousVersion 1 \
    > result.txt
```

### Operation `delete_user_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_current_week_leaderboard_ranking_public_v1`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `get_hidden_users_v2`
```sh
$ samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_visibility_status_v2`
```sh
$ samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `set_user_leaderboard_visibility_status_v2`
```sh
$ samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"visibility": false}' \
    > result.txt
```

### Operation `set_user_visibility_status_v2`
```sh
$ samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"visibility": false}' \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v2`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v2`
```sh
$ samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_leaderboard_configurations_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace 'string' \
    --isDeleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace 'string' \
    --body '{"allTime": false, "cycleIds": ["string"], "descending": false, "description": "string", "iconURL": "string", "leaderboardCode": "string", "name": "string", "statCode": "string"}' \
    > result.txt
```

### Operation `delete_bulk_leaderboard_configuration_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace 'string' \
    --body '{"leaderboardCodes": ["string"]}' \
    > result.txt
```

### Operation `get_leaderboard_configuration_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_leaderboard_configuration_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --body '{"allTime": false, "cycleIds": ["string"], "descending": false, "description": "string", "iconURL": "string", "name": "string"}' \
    > result.txt
```

### Operation `delete_leaderboard_configuration_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_current_cycle_leaderboard_ranking_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'string' \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `delete_all_user_ranking_by_cycle_id_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteAllUserRankingByCycleIdAdminV3 \
    --cycleId 'string' \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_user_ranking_by_cycle_id_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingByCycleIdAdminV3 \
    --cycleId 'string' \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `hard_delete_leaderboard_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_user_ranking_by_leaderboard_code_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_hidden_users_v3`
```sh
$ samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_ranking_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --previousVersion 1 \
    > result.txt
```

### Operation `delete_user_ranking_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_visibility_status_v3`
```sh
$ samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `set_user_leaderboard_visibility_v3`
```sh
$ samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"visibility": false}' \
    > result.txt
```

### Operation `delete_user_rankings_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace 'string' \
    --userId 'string' \
    --leaderboardCode '["string"]' \
    > result.txt
```

### Operation `get_user_leaderboard_rankings_admin_v3`
```sh
$ samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `set_user_visibility_v3`
```sh
$ samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"visibility": false}' \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace 'string' \
    --isDeleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_leaderboard_configuration_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_current_cycle_leaderboard_ranking_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'string' \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --previousVersion 1 \
    > result.txt
```

### Operation `bulk_get_users_ranking_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --previousVersion 1 \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `get_user_ranking_public_v3`
```sh
$ samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --previousVersion 1 \
    > result.txt
```

