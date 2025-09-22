## Go Extend SDK CLI Sample App Operation Index for Challenge service.

### Operation `admin_get_challenges`
```sh
$ samples/cli/sample-apps Challenge adminGetChallenges \
    --namespace 'string' \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --status 'INIT' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_challenge`
```sh
$ samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace 'string' \
    --body '{"activeGoalsPerRotation": 1, "assignmentRule": "CUSTOM", "code": "string", "description": "string", "endAfter": 1, "endDate": "2000-01-01T12:34:56Z", "goalsVisibility": "PERIODONLY", "name": "string", "randomizedPerRotation": false, "repeatAfter": 1, "resetConfig": {}, "rotation": "DAILY", "startDate": "2000-01-01T12:34:56Z", "tags": ["string"]}' \
    > result.txt
```

### Operation `admin_get_item_references`
```sh
$ samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `admin_get_active_challenges`
```sh
$ samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_challenge`
```sh
$ samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_challenge`
```sh
$ samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'string' \
    --namespace 'string' \
    --body '{"activeGoalsPerRotation": 1, "assignmentRule": "CUSTOM", "description": "string", "endAfter": 1, "endDate": "2000-01-01T12:34:56Z", "goalsVisibility": "PERIODONLY", "name": "string", "randomizedPerRotation": false, "repeatAfter": 1, "resetConfig": {}, "rotation": "DAILY", "startDate": "2000-01-01T12:34:56Z", "tags": ["string"]}' \
    > result.txt
```

### Operation `admin_delete_challenge`
```sh
$ samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_goals`
```sh
$ samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_goal`
```sh
$ samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'string' \
    --namespace 'string' \
    --body '{"code": "string", "description": "string", "isActive": false, "name": "string", "requirementGroups": [{}], "rewards": [{}], "schedule": {}, "tags": ["string"]}' \
    > result.txt
```

### Operation `admin_get_goal`
```sh
$ samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'string' \
    --code 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_goals`
```sh
$ samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'string' \
    --code 'string' \
    --namespace 'string' \
    --body '{"description": "string", "isActive": false, "name": "string", "requirementGroups": [{}], "rewards": [{}], "schedule": {}, "tags": ["string"]}' \
    > result.txt
```

### Operation `admin_delete_goal`
```sh
$ samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'string' \
    --code 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_schedules_by_goal`
```sh
$ samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'string' \
    --code 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_periods`
```sh
$ samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_randomize_challenge`
```sh
$ samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_list_schedules`
```sh
$ samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'string' \
    --namespace 'string' \
    --dateTime '2000-01-01T12:34:56Z' \
    --limit 1 \
    --offset 1 \
    --userId 'string' \
    > result.txt
```

### Operation `admin_delete_tied_challenge`
```sh
$ samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_tied_challenge_schedule`
```sh
$ samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'string' \
    --namespace 'string' \
    --body '{"action": "ACCELERATE", "endDate": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `admin_get_assignment_plugin`
```sh
$ samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_assignment_plugin`
```sh
$ samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace 'string' \
    --body '{"appName": "string", "extendType": "APP", "grpcServerAddress": "string"}' \
    > result.txt
```

### Operation `admin_create_assignment_plugin`
```sh
$ samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace 'string' \
    --body '{"appName": "string", "extendType": "APP", "grpcServerAddress": "string"}' \
    > result.txt
```

### Operation `admin_delete_assignment_plugin`
```sh
$ samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_evaluate_progress`
```sh
$ samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace 'string' \
    --challengeCode '["string"]' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_claim_users_rewards`
```sh
$ samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace 'string' \
    --body '[{"rewardIds": ["string"], "userId": "string"}]' \
    > result.txt
```

### Operation `admin_claim_user_rewards_by_goal_code`
```sh
$ samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"goalCode": "string"}' \
    > result.txt
```

### Operation `admin_get_user_progression`
```sh
$ samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --dateTime '2000-01-01T12:34:56Z' \
    --goalCode 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_get_user_rewards`
```sh
$ samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace 'string' \
    --userId 'string' \
    --challengeCode 'string' \
    --goalProgressionId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > result.txt
```

### Operation `admin_claim_user_rewards`
```sh
$ samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace 'string' \
    --userId 'string' \
    --body '{"rewardIDs": ["string"]}' \
    > result.txt
```

### Operation `get_challenges`
```sh
$ samples/cli/sample-apps Challenge getChallenges \
    --namespace 'string' \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --status 'INIT' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_scheduled_goals`
```sh
$ samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_schedules_by_goal`
```sh
$ samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'string' \
    --code 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_list_schedules`
```sh
$ samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'string' \
    --namespace 'string' \
    --dateTime '2000-01-01T12:34:56Z' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_claim_user_rewards_by_goal_code`
```sh
$ samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'string' \
    --namespace 'string' \
    --body '{"goalCode": "string"}' \
    > result.txt
```

### Operation `evaluate_my_progress`
```sh
$ samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace 'string' \
    --challengeCode '["string"]' \
    > result.txt
```

### Operation `public_get_user_progression`
```sh
$ samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'string' \
    --namespace 'string' \
    --dateTime '2000-01-01T12:34:56Z' \
    --goalCode 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_past_user_progression`
```sh
$ samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'string' \
    --index 1 \
    --namespace 'string' \
    --goalCode 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_user_rewards`
```sh
$ samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace 'string' \
    --challengeCode 'string' \
    --goalProgressionId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > result.txt
```

### Operation `public_claim_user_rewards`
```sh
$ samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace 'string' \
    --body '{"rewardIDs": ["string"]}' \
    > result.txt
```

