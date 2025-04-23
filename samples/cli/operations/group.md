## Go Extend SDK CLI Sample App Operation Index for Group service.

### Operation `list_group_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_group_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace 'string' \
    --body '{"allowMultiple": false, "configurationCode": "string", "description": "string", "globalRules": [{}], "groupAdminRoleId": "string", "groupMaxMember": 1, "groupMemberRoleId": "string", "name": "string"}' \
    > result.txt
```

### Operation `initiate_group_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_group_configuration_v1`
```sh
$ samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_group_configuration_admin_v1`
```sh
$ samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'string' \
    --namespace 'string' \
    --body '{"description": "string", "groupMaxMember": 1, "name": "string"}' \
    > result.txt
```

### Operation `update_group_configuration_global_rule_admin_v1`
```sh
$ samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'string' \
    --configurationCode 'string' \
    --namespace 'string' \
    --body '{"ruleDetail": [{}]}' \
    > result.txt
```

### Operation `delete_group_configuration_global_rule_admin_v1`
```sh
$ samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'string' \
    --configurationCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_list_admin_v1`
```sh
$ samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace 'string' \
    --configurationCode 'string' \
    --groupName 'string' \
    --groupRegion 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_single_group_admin_v1`
```sh
$ samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_group_admin_v1`
```sh
$ samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_members_list_admin_v1`
```sh
$ samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `get_member_roles_list_admin_v1`
```sh
$ samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_member_role_admin_v1`
```sh
$ samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace 'string' \
    --body '{"memberRoleName": "string", "memberRolePermissions": [{}]}' \
    > result.txt
```

### Operation `get_single_member_role_admin_v1`
```sh
$ samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_member_role_admin_v1`
```sh
$ samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_member_role_admin_v1`
```sh
$ samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"memberRoleName": "string"}' \
    > result.txt
```

### Operation `update_member_role_permission_admin_v1`
```sh
$ samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"memberRolePermissions": [{}]}' \
    > result.txt
```

### Operation `get_group_list_public_v1`
```sh
$ samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace 'string' \
    --groupName 'string' \
    --groupRegion 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_new_group_public_v1`
```sh
$ samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace 'string' \
    --body '{"configurationCode": "string", "customAttributes": {"string": {}}, "groupDescription": "string", "groupIcon": "string", "groupMaxMember": 1, "groupName": "string", "groupRegion": "string", "groupRules": {}, "groupType": "OPEN"}' \
    > result.txt
```

### Operation `get_single_group_public_v1`
```sh
$ samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_single_group_v1`
```sh
$ samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    > result.txt
```

### Operation `delete_group_public_v1`
```sh
$ samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_patch_single_group_public_v1`
```sh
$ samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    > result.txt
```

### Operation `update_group_custom_attributes_public_v1`
```sh
$ samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {"string": {}}}' \
    > result.txt
```

### Operation `accept_group_invitation_public_v1`
```sh
$ samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `reject_group_invitation_public_v1`
```sh
$ samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `join_group_v1`
```sh
$ samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `cancel_group_join_request_v1`
```sh
$ samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_join_request_public_v1`
```sh
$ samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_group_members_list_public_v1`
```sh
$ samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `update_group_custom_rule_public_v1`
```sh
$ samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"groupCustomRule": {"string": {}}}' \
    > result.txt
```

### Operation `update_group_predefined_rule_public_v1`
```sh
$ samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'string' \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"ruleDetail": [{}]}' \
    > result.txt
```

### Operation `delete_group_predefined_rule_public_v1`
```sh
$ samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'string' \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `leave_group_public_v1`
```sh
$ samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `get_member_roles_list_public_v1`
```sh
$ samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_member_role_public_v1`
```sh
$ samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `delete_member_role_public_v1`
```sh
$ samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `get_group_invitation_request_public_v1`
```sh
$ samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_group_information_public_v1`
```sh
$ samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `invite_group_public_v1`
```sh
$ samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `accept_group_join_request_public_v1`
```sh
$ samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `reject_group_join_request_public_v1`
```sh
$ samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `kick_group_member_public_v1`
```sh
$ samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_list_group_by_i_ds_admin_v2`
```sh
$ samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace 'string' \
    --body '{"groupIDs": ["string"]}' \
    > result.txt
```

### Operation `get_user_joined_group_information_public_v2`
```sh
$ samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_user_group_status_information_v2`
```sh
$ samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `create_new_group_public_v2`
```sh
$ samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace 'string' \
    --body '{"configurationCode": "string", "customAttributes": {"string": {}}, "groupDescription": "string", "groupIcon": "string", "groupMaxMember": 1, "groupName": "string", "groupRegion": "string", "groupRules": {}, "groupType": "OPEN"}' \
    > result.txt
```

### Operation `get_list_group_by_i_ds_v2`
```sh
$ samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace 'string' \
    --body '{"groupIDs": ["string"]}' \
    > result.txt
```

### Operation `update_put_single_group_public_v2`
```sh
$ samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    > result.txt
```

### Operation `delete_group_public_v2`
```sh
$ samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_patch_single_group_public_v2`
```sh
$ samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    > result.txt
```

### Operation `update_group_custom_attributes_public_v2`
```sh
$ samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {"string": {}}}' \
    > result.txt
```

### Operation `accept_group_invitation_public_v2`
```sh
$ samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `reject_group_invitation_public_v2`
```sh
$ samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_invite_request_public_v2`
```sh
$ samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `join_group_v2`
```sh
$ samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_group_join_request_public_v2`
```sh
$ samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `leave_group_public_v2`
```sh
$ samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_group_custom_rule_public_v2`
```sh
$ samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"groupCustomRule": {"string": {}}}' \
    > result.txt
```

### Operation `update_group_predefined_rule_public_v2`
```sh
$ samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'string' \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"ruleDetail": [{}]}' \
    > result.txt
```

### Operation `delete_group_predefined_rule_public_v2`
```sh
$ samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'string' \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_member_roles_list_public_v2`
```sh
$ samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_member_role_public_v2`
```sh
$ samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'string' \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `delete_member_role_public_v2`
```sh
$ samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'string' \
    --memberRoleId 'string' \
    --namespace 'string' \
    --body '{"userId": "string"}' \
    > result.txt
```

### Operation `get_user_group_information_public_v2`
```sh
$ samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_my_group_join_request_v2`
```sh
$ samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `invite_group_public_v2`
```sh
$ samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `cancel_invitation_group_member_v2`
```sh
$ samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `accept_group_join_request_public_v2`
```sh
$ samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `reject_group_join_request_public_v2`
```sh
$ samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `kick_group_member_public_v2`
```sh
$ samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_group_status_information_v2`
```sh
$ samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

