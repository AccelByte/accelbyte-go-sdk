## Go Extend SDK CLI Sample App Operation Index for Reporting service.

### Operation `admin_find_action_list`
```sh
$ samples/cli/sample-apps Reporting adminFindActionList \
    > result.txt
```

### Operation `admin_create_mod_action`
```sh
$ samples/cli/sample-apps Reporting adminCreateModAction \
    --body '{"actionId": "string", "actionName": "string", "eventName": "string"}' \
    > result.txt
```

### Operation `admin_find_extension_category_list`
```sh
$ samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategory' \
    > result.txt
```

### Operation `admin_create_extension_category`
```sh
$ samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "string", "extensionCategoryName": "string", "serviceSource": "string"}' \
    > result.txt
```

### Operation `get`
```sh
$ samples/cli/sample-apps Reporting get \
    --namespace 'string' \
    --category 'all' \
    > result.txt
```

### Operation `upsert`
```sh
$ samples/cli/sample-apps Reporting upsert \
    --namespace 'string' \
    --body '{"categoryLimits": [{}], "timeInterval": 1, "userMaxReportPerTimeInterval": 1}' \
    > result.txt
```

### Operation `admin_list_reason_groups`
```sh
$ samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_reason_group`
```sh
$ samples/cli/sample-apps Reporting createReasonGroup \
    --namespace 'string' \
    --body '{"reasonIds": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `get_reason_group`
```sh
$ samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_reason_group`
```sh
$ samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_reason_group`
```sh
$ samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"reasonIds": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `admin_get_reasons`
```sh
$ samples/cli/sample-apps Reporting adminGetReasons \
    --namespace 'string' \
    --group 'string' \
    --limit 1 \
    --offset 1 \
    --title 'string' \
    > result.txt
```

### Operation `create_reason`
```sh
$ samples/cli/sample-apps Reporting createReason \
    --namespace 'string' \
    --body '{"description": "string", "groupIds": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `admin_get_all_reasons`
```sh
$ samples/cli/sample-apps Reporting adminGetAllReasons \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_unused_reasons`
```sh
$ samples/cli/sample-apps Reporting adminGetUnusedReasons \
    --namespace 'string' \
    --extensionCategory 'string' \
    --category 'string' \
    > result.txt
```

### Operation `admin_get_reason`
```sh
$ samples/cli/sample-apps Reporting adminGetReason \
    --namespace 'string' \
    --reasonId 'string' \
    > result.txt
```

### Operation `delete_reason`
```sh
$ samples/cli/sample-apps Reporting deleteReason \
    --namespace 'string' \
    --reasonId 'string' \
    > result.txt
```

### Operation `update_reason`
```sh
$ samples/cli/sample-apps Reporting updateReason \
    --namespace 'string' \
    --reasonId 'string' \
    --body '{"description": "string", "groupIds": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `list_reports`
```sh
$ samples/cli/sample-apps Reporting listReports \
    --namespace 'string' \
    --category 'string' \
    --limit 1 \
    --offset 1 \
    --reportedUserId 'string' \
    --sortBy 'string' \
    > result.txt
```

### Operation `admin_submit_report`
```sh
$ samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace 'string' \
    --body '{"additionalInfo": {"string": {}}, "category": "CHAT", "comment": "string", "extensionCategory": "string", "objectId": "string", "objectType": "string", "reason": "string", "userId": "string"}' \
    > result.txt
```

### Operation `create_moderation_rule`
```sh
$ samples/cli/sample-apps Reporting createModerationRule \
    --namespace 'string' \
    --body '{"action": "HideContent", "actions": {}, "active": false, "category": "CHAT", "extensionCategory": "string", "reason": "string", "threshold": 1}' \
    > result.txt
```

### Operation `update_moderation_rule`
```sh
$ samples/cli/sample-apps Reporting updateModerationRule \
    --namespace 'string' \
    --ruleId 'string' \
    --body '{"action": "HideContent", "actions": {}, "active": false, "category": "CHAT", "extensionCategory": "string", "reason": "string", "threshold": 1}' \
    > result.txt
```

### Operation `delete_moderation_rule`
```sh
$ samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace 'string' \
    --ruleId 'string' \
    > result.txt
```

### Operation `update_moderation_rule_status`
```sh
$ samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace 'string' \
    --ruleId 'string' \
    --body '{"active": false}' \
    > result.txt
```

### Operation `get_moderation_rules`
```sh
$ samples/cli/sample-apps Reporting getModerationRules \
    --namespace 'string' \
    --category 'string' \
    --extensionCategory 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_moderation_rule_details`
```sh
$ samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace 'string' \
    --ruleId 'string' \
    > result.txt
```

### Operation `list_tickets`
```sh
$ samples/cli/sample-apps Reporting listTickets \
    --namespace 'string' \
    --category 'string' \
    --extensionCategory 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --reportedUserId 'string' \
    --sortBy 'string' \
    --status 'string' \
    > result.txt
```

### Operation `ticket_statistic`
```sh
$ samples/cli/sample-apps Reporting ticketStatistic \
    --namespace 'string' \
    --extensionCategory 'string' \
    --category 'string' \
    > result.txt
```

### Operation `get_ticket_detail`
```sh
$ samples/cli/sample-apps Reporting getTicketDetail \
    --namespace 'string' \
    --ticketId 'string' \
    > result.txt
```

### Operation `delete_ticket`
```sh
$ samples/cli/sample-apps Reporting deleteTicket \
    --namespace 'string' \
    --ticketId 'string' \
    > result.txt
```

### Operation `get_reports_by_ticket`
```sh
$ samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace 'string' \
    --ticketId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_ticket_resolutions`
```sh
$ samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace 'string' \
    --ticketId 'string' \
    --body '{"notes": "string", "status": "AUTO_MODERATED"}' \
    > result.txt
```

### Operation `public_list_reason_groups`
```sh
$ samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_reasons`
```sh
$ samples/cli/sample-apps Reporting publicGetReasons \
    --namespace 'string' \
    --group 'string' \
    --limit 1 \
    --offset 1 \
    --title 'string' \
    > result.txt
```

### Operation `submit_report`
```sh
$ samples/cli/sample-apps Reporting submitReport \
    --namespace 'string' \
    --body '{"additionalInfo": {"string": {}}, "category": "CHAT", "comment": "string", "extensionCategory": "string", "objectId": "string", "objectType": "string", "reason": "string", "userId": "string"}' \
    > result.txt
```

